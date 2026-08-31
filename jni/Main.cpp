#include <android/log.h>
#include <dlfcn.h>
#include <stdint.h>
#include <time.h>
#include <jni.h>

#include "LawnApp.h"
#include "StarConvert.h"
#include "GameEventMgr.h"
#include "gameNetWork/NetworkMsgProcess.h"
#include "PlayerInfo.h"

#include "And64InlineHook.hpp"

#define LOG_TAG "SrcExt"
#define LOGI(...) __android_log_print(ANDROID_LOG_INFO, LOG_TAG, __VA_ARGS__)
#define LOGW(...) __android_log_print(ANDROID_LOG_WARN, LOG_TAG, __VA_ARGS__)
#define LOGE(...) __android_log_print(ANDROID_LOG_ERROR, LOG_TAG, __VA_ARGS__)

static int g_hookOk   = 0;
static int g_hookFail = 0;

static void *SafeResolve(const char *i_name)
{
    void *sym = dlsym(RTLD_NEXT, i_name);
    if (sym == nullptr) {
        void *h = dlopen("libSrc.so", RTLD_NOLOAD);
        if (h != nullptr)
            sym = dlsym(h, i_name);
    }
    return sym;
}

static void SafeHook(const char *i_name, void *i_replacement, void **i_original = nullptr)
{
    void *sym = SafeResolve(i_name);
    if (sym == nullptr) {
        LOGW("SafeHook: simbolo NO encontrado: %s", i_name);
        ++g_hookFail;
        return;
    }
    A64HookFunction(sym, i_replacement, i_original);
    LOGI("SafeHook: hookeado %s @ %p", i_name, sym);
    ++g_hookOk;
}

long GetDigitalSignature()
{
    return -865154223;
}

bool IsForbiddenPlatform()
{
    return false;
}

int64_t RetZero()
{
    return 0;
}

int64_t RetTrue()
{
    return 1;
}

static bool    sCheatMenuOpen  = false;
static int     gCheatsEnabled  = 0;
static int     sCheatTaps      = 0;
static int64_t sCheatTapLastUs = 0;
static int64_t sBootUs         = 0;

static int64_t NowUs()
{
    struct timespec ts;
    clock_gettime(CLOCK_MONOTONIC, &ts);
    return (int64_t)ts.tv_sec * 1000000000ll + ts.tv_nsec;
}

static JavaVM *g_jvm = nullptr;

int64_t MyIsAbstract()
{
    return gCheatsEnabled;
}

extern "C" JNIEXPORT jint JNI_OnLoad(JavaVM *vm, void *reserved)
{
    g_jvm = vm;
    return JNI_VERSION_1_6;
}

static void DoToast(const char *i_text)
{
    if (g_jvm == nullptr)
        return;
    JNIEnv *env = nullptr;
    bool attached = false;
    if (g_jvm->GetEnv((void **)&env, JNI_VERSION_1_6) != JNI_OK)
    {
        if (g_jvm->AttachCurrentThread(&env, nullptr) != JNI_OK)
            return;
        attached = true;
    }
    jclass appClass = env->FindClass("android/app/ActivityThread");
    jclass toastClass = env->FindClass("android/widget/Toast");
    if (appClass != nullptr && toastClass != nullptr)
    {
        jmethodID getApp = env->GetStaticMethodID(appClass, "currentApplication",
            "()Landroid/app/Application;");
        jmethodID makeText = env->GetStaticMethodID(toastClass, "makeText",
            "(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;");
        jmethodID show = env->GetMethodID(toastClass, "show", "()V");
        if (getApp != nullptr && makeText != nullptr && show != nullptr)
        {
            jobject app = env->CallStaticObjectMethod(appClass, getApp);
            jstring msg = env->NewStringUTF(i_text);
            jobject toast = env->CallStaticObjectMethod(toastClass, makeText, app, msg, 0);
            env->CallVoidMethod(toast, show);
            env->DeleteLocalRef(msg);
            env->DeleteLocalRef(app);
            env->DeleteLocalRef(toast);
        }
    }
    if (appClass != nullptr)
        env->DeleteLocalRef(appClass);
    if (toastClass != nullptr)
        env->DeleteLocalRef(toastClass);
    if (attached)
        g_jvm->DetachCurrentThread();
}

int64_t (*_GameStateMgrDraw)(void *self, void *graphics);
int64_t MyGameStateMgrDraw(void *self, void *g)
{
    int64_t ret = _GameStateMgrDraw(self, g);
    if (gCheatsEnabled && g != nullptr)
    {
        static void (*fnSetColor)(void *, const void *) = nullptr;
        static void (*fnFillRect)(void *, int, int, int, int) = nullptr;
        if (fnSetColor == nullptr)
            fnSetColor = (void (*)(void *, const void *))
                SafeResolve("_ZN4Sexy8Graphics8SetColorERKNS_5ColorE");
        if (fnFillRect == nullptr)
            fnFillRect = (void (*)(void *, int, int, int, int))
                SafeResolve("_ZN4Sexy8Graphics8FillRectEiiii");
        if (fnSetColor != nullptr && fnFillRect != nullptr)
        {
            int color[4] = { 36, 120, 40, 255 };
            fnSetColor(g, (const void *)color);
            fnFillRect(g, 6, 6, 96, 16);
        }
    }

    // Auto-arm: activar cheats de forma segura una vez terminado el bootstrap
    // (20s tras el arranque). Evita el SIGSEGV del login/red si se encienden
    // durante el arranque.
    if (!sCheatMenuOpen && sBootUs != 0 && NowUs() - sBootUs >= 20000000000ll)
    {
        sCheatMenuOpen = true;
        gCheatsEnabled = 1;
        DoToast("CHEATS: ON");
        LOGI("MyGameStateMgrDraw: cheats activados automaticamente (boot+20s)");
    }
    return ret;
}

static void ToggleCheatMenu()
{
    static void *(*fnGetPanel)() = nullptr;
    static void  (*fnSetVisible)(void *, bool) = nullptr;
    if (fnGetPanel == nullptr)
        fnGetPanel = (void *(*)())SafeResolve("_ZN4Sexy13LazySingletonI12CheatUIPanelE14GetInstancePtrEv");
    if (fnSetVisible == nullptr)
        fnSetVisible = (void (*)(void *, bool))SafeResolve("_ZN12CheatUIPanel10SetVisibleEb");
    if (fnGetPanel == nullptr || fnSetVisible == nullptr)
    {
        LOGE("ToggleCheatMenu: no se pudo resolver CheatUIPanel::GetInstancePtr/SetVisible");
        return;
    }
    sCheatMenuOpen = !sCheatMenuOpen;
    if (sCheatMenuOpen && (sBootUs == 0 || NowUs() - sBootUs < 20000000000ll))
    {
        // Ventana protegida: no activar cheats durante el bootstrap de arranque.
        sCheatMenuOpen = false;
        LOGI("ToggleCheatMenu: ignorado, ventana de arranque protegida");
        return;
    }
    gCheatsEnabled = sCheatMenuOpen;
    fnSetVisible(fnGetPanel(), sCheatMenuOpen);
    DoToast(sCheatMenuOpen ? "CHEATS: ON" : "CHEATS: OFF");
    LOGI("ToggleCheatMenu: cheats=%d menu_debug=%s", gCheatsEnabled,
        sCheatMenuOpen ? "abierto" : "cerrado");
}

int64_t (*_LawnAppTouchBegan)(void *self, const void *touch);
int64_t MyLawnAppTouchBegan(void *self, const void *touch)
{
    int64_t ret = _LawnAppTouchBegan(self, touch);

    int x = *(const int *)((const char *)touch + 16);
    int y = *(const int *)((const char *)touch + 20);
    struct timespec ts;
    clock_gettime(CLOCK_MONOTONIC, &ts);
    int64_t now = (int64_t)ts.tv_sec * 1000000000ll + ts.tv_nsec;
    if (x >= 0 && y >= 0 && x < 120 && y < 120)
    {
        if (now - sCheatTapLastUs > 600000000ll)
            sCheatTaps = 0;
        sCheatTapLastUs = now;
        if (++sCheatTaps >= 5)
        {
            sCheatTaps = 0;
            ToggleCheatMenu();
        }
    }
    else
    {
        sCheatTaps = 0;
    }
    return ret;
}

void TryCheckAccount()
{
    LOGI("TryCheckAccount -> broadcast SyncPlayerInfoFinish(true)");
    gMessageRouter->Broadcast(Message::SyncPlayerInfoFinish, true);
}

void (*_OnStarConverted)(StarConvertObject *self, bool i_success);
void StarConvertObject::OnStarConverted(bool i_success)
{
    return _OnStarConverted(this, true);
}

bool (*_PlayerHasCompletedTutorial)(const PlayerInfo *self, MapTutorialState i_state);
bool PlayerInfo::PlayerHasCompletedTutorial(MapTutorialState i_state) const
{
    if (i_state == TUTORIAL_NEW_DAILY_SIGN || i_state == TUTORIAL_GACHA_INTRO_1 ||
        i_state == TUTORIAL_GACHA_INTRO_2 || i_state == TUTORIAL_ACCESSORY ||
        i_state == TUTORIAL_PLANTADVENTURE_INTRO || i_state == TUTORIAL_TRANSGENOSIS ||
        i_state == TUTORIAL_GENEENHANCEMENT_NEW
    ) {
        return true;
    }
    return _PlayerHasCompletedTutorial(this, i_state);
}

bool (*_IsUnlockRechargeNode)(PlayerInfo *self, RechargeNode i_node);
bool PlayerInfo::IsUnlockRechargeNode(RechargeNode i_node)
{
    if (i_node == RECHARGE_DOUBLE_SPEED) {
        return true;
    }
    return _IsUnlockRechargeNode(this, i_node);
}

__attribute__((constructor))
void mainFunc()
{
    LOGI("libSrcExt: entrada de extension cargada");
    g_hookOk   = 0;
    g_hookFail = 0;
    sBootUs    = NowUs();

    SafeHook("_ZN4Sexy21AndroidAntiHackDriver19GetDigitalSignatureEv",
        (void *)GetDigitalSignature);
    SafeHook("_ZN7LawnApp19IsForbiddenPlatformEv",
        (void *)IsForbiddenPlatform);
    SafeHook("_ZN16AccountRemoveMgr15TryCheckAccountEb",
        (void *)TryCheckAccount);
    SafeHook("_ZN4Sexy17AndroidHttpDriver16GetNetworkStatusEv",
        (void *)RetZero);
    SafeHook("_ZN24androidNetworkMsgProcess15SendHttpRequestERSt3mapISsSsSt4lessISsESaISt4pairIKSsSsEEEbRS4_bb",
        (void *)RetZero);
    SafeHook("_ZN17StarConvertObject15OnStarConvertedEb",
        (void *)&StarConvertObject::OnStarConverted, (void **)&_OnStarConverted);
    SafeHook("_ZNK10PlayerInfo26PlayerHasCompletedTutorialE16MapTutorialState",
        (void *)&PlayerInfo::PlayerHasCompletedTutorial, (void **)&_PlayerHasCompletedTutorial);
    SafeHook("_ZN10PlayerInfo20IsUnlockRechargeNodeE12RechargeNode",
        (void *)&PlayerInfo::IsUnlockRechargeNode, (void **)&_IsUnlockRechargeNode);

    SafeHook("_ZN4Sexy13LazySingletonIN3Lua10CLuaEngineEE14GetInstancePtrEv",
        (void *)RetZero);
    SafeHook("_ZN12LuaUpdateMgr4InitEv",
        (void *)RetZero);
    SafeHook("_ZN3Lua10CLuaEngine20ExecuteTableFunctionEPKcS2_",
        (void *)RetZero);
    SafeHook("_ZN3Lua10CLuaEngine12OnNetworkMsgESsR11_NetWorkMsg",
        (void *)RetZero);
    SafeHook("_ZN7LawnApp17ShowPlantFamilyUIEi",
        (void *)RetZero);

    // Menu debug/cheat del motor (CheatUIPanel). Forzar el guard de red para que
    // SetVisible(true) abra el menu de verdad y no muestre el dialogo de sincronizacion.
    SafeHook("_ZN14NetworkItemMgr27HasNetworkCacheSyncCompleteEv", (void *)RetTrue);
    // Master switch real de cheats del engine "touched": todos los sitios de cheat
    // (plantar gratis, poder de fuego ilimitado, etc.) leen INetworkData::IsAbstract().
    SafeHook("_ZNK12INetworkData10IsAbstractEv", (void *)MyIsAbstract);
    // Badge por-frame cuando los cheats estan activos.
    SafeHook("_ZN12GameStateMgr4DrawEPN4Sexy8GraphicsE",
        (void *)MyGameStateMgrDraw, (void **)&_GameStateMgrDraw);
    // Apertura del menu: 5 toques rapidos en la esquina superior izquierda.
    SafeHook("_ZN7LawnApp10TouchBeganERKN4Sexy5TouchE",
        (void *)MyLawnAppTouchBegan, (void **)&_LawnAppTouchBegan);

    LOGI("libSrcExt: hooks instalados (ok=%d, fail=%d)", g_hookOk, g_hookFail);
    LOGI("libSrcExt: listo!");
}