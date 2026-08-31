#include <android/log.h>
#include <dlfcn.h>
#include <stdint.h>
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

// --- Estado de los trucos del menu (feature ids: 1..5) ---
static volatile int g_infiniteSun   = 0;  // 1_Toggle (boton) -> no consume sol
static volatile int g_addSunPending = 0;  // 2_Button  +1000 (se consume en Board::Update)
static volatile int g_freePlants    = 0;  // 3_Toggle  -> plantas y sol gratis
static volatile int g_noCooldown    = 0;  // 4_Toggle  -> cooldown de tarjetas a 0
static volatile int g_victoryPending= 0;  // 5_Button  -> victoria inmediata (Board::Update)

// --- Natives del menu (com.android.support.CkHomuraMenu / Preferences) ---
static const char *gt_featureList[] = {
    "1_Toggle_Sol Infinito",
    "2_Button_+1000 Sol",
    "3_Toggle_Plantas Gratis",
    "4_Toggle_Sin Enfriamiento",
    "5_Button_Victoria Instantánea",
};

static const char *gt_settingsList[] = {
    "-1_Toggle_Save Settings on Exit",
};

extern "C" JNIEXPORT jobjectArray JNICALL
Java_com_android_support_CkHomuraMenu_GetFeatureList(JNIEnv *env, jobject thiz)
{
    int n = (int)(sizeof(gt_featureList) / sizeof(gt_featureList[0]));
    jclass strCls = env->FindClass("java/lang/String");
    jobjectArray ret = env->NewObjectArray(n, strCls, nullptr);
    for (int i = 0; i < n; ++i)
        env->SetObjectArrayElement(ret, i, env->NewStringUTF(gt_featureList[i]));
    return ret;
}

extern "C" JNIEXPORT jobjectArray JNICALL
Java_com_android_support_CkHomuraMenu_SettingsList(JNIEnv *env, jobject thiz)
{
    int n = (int)(sizeof(gt_settingsList) / sizeof(gt_settingsList[0]));
    jclass strCls = env->FindClass("java/lang/String");
    jobjectArray ret = env->NewObjectArray(n, strCls, nullptr);
    for (int i = 0; i < n; ++i)
        env->SetObjectArrayElement(ret, i, env->NewStringUTF(gt_settingsList[i]));
    return ret;
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_android_support_CkHomuraMenu_GetCurrentFormation(JNIEnv *env, jobject thiz)
{
    return env->NewStringUTF("");
}

extern "C" JNIEXPORT void JNICALL
Java_com_android_support_Preferences_Changes(JNIEnv *env, jclass clazz, jobject con, jint fNum,
    jstring fName, jint value, jboolean b, jstring str)
{
    switch (fNum) {
    case 1: g_infiniteSun = (b == JNI_TRUE); break;
    case 2: g_addSunPending += 1000; break;
    case 3: g_freePlants = (b == JNI_TRUE); break;
    case 4: g_noCooldown = (b == JNI_TRUE); break;
    case 5: g_victoryPending = 1; break;
    default: break;
    }
    LOGI("Changes(fNum=%d, value=%d, bool=%d)", (int)fNum, (int)value, (int)b);
}

void TryCheckAccount()
{
    LOGI("TryCheckAccount -> broadcast SyncPlayerInfoFinish(true)");
    gMessageRouter->Broadcast(Message::SyncPlayerInfoFinish, true);
}

// --- Hooks del menu de trucos ---
typedef bool (*TakeSunMoney_t)(void *self, int i_amount, bool i_force, bool i_theme);
static TakeSunMoney_t _TakeSunMoney = nullptr;

bool TakeSunMoneyHook(void *self, int i_amount, bool i_force, bool i_theme)
{
    if (g_infiniteSun || g_freePlants)
        return true;                      // sin dedicción ni mensajes rotos
    return _TakeSunMoney(self, i_amount, i_force, i_theme);
}

typedef bool (*CanTakeSunMoney_t)(void *self, int i_amount);
static CanTakeSunMoney_t _CanTakeSunMoney = nullptr;

bool CanTakeSunMoneyHook(void *self, int i_amount)
{
    if (g_freePlants || g_infiniteSun)
        return true;
    return _CanTakeSunMoney(self, i_amount);
}

typedef void *(*updateState_NotReady_t)(void *self);
static updateState_NotReady_t _updateState_NotReady = nullptr;

void *updateState_NotReadyHook(void *self)
{
    if (g_noCooldown)
        *(float *)((char *)self + 404) = 0.0f;  // m_cooldownEndTime -> listo
    return _updateState_NotReady(self);
}

typedef void (*BoardUpdate_t)(void *self);
static BoardUpdate_t _BoardUpdate = nullptr;
typedef void (*BoardAddSunMoney_t)(void *self, int i_amount);
static BoardAddSunMoney_t _BoardAddSunMoney = nullptr;
typedef void (*BoardPlayerWon_t)(void *self);
static BoardPlayerWon_t _BoardPlayerWon = nullptr;

void BoardUpdateHook(void *self)
{
    if (g_addSunPending > 0) {
        int amount = g_addSunPending;
        g_addSunPending = 0;
        if (_BoardAddSunMoney)
            _BoardAddSunMoney(self, amount);
    }
    if (g_victoryPending
            && *(int *)((char *)self + 0x104) != 0xA          // no en ended
            && *(int *)((char *)self + 0xAC0) == 0) {         // no ya ganado
        g_victoryPending = 0;
        if (_BoardPlayerWon)
            _BoardPlayerWon(self);
    }
    _BoardUpdate(self);
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

    // Offline: forzar el sincronizado de cache de red como "completado" para
    // que el juego siga adelante sin conexion.
    SafeHook("_ZN14NetworkItemMgr27HasNetworkCacheSyncCompleteEv", (void *)RetTrue);

    // Menu de trucos: hooks seguros (todos con tamaño suficiente para inline)
    SafeHook("_ZN5Board12TakeSunMoneyEibb",
        (void *)TakeSunMoneyHook, (void **)&_TakeSunMoney);
    SafeHook("_ZN5Board15CanTakeSunMoneyEi",
        (void *)CanTakeSunMoneyHook, (void **)&_CanTakeSunMoney);
    SafeHook("_ZN10SeedPacket20updateState_NotReadyEv",
        (void *)updateState_NotReadyHook, (void **)&_updateState_NotReady);
    SafeHook("_ZN5Board6UpdateEv",
        (void *)BoardUpdateHook, (void **)&_BoardUpdate);

    // Apuntadores helper (sin hookear): AddSunMoney y PlayerWon
    _BoardAddSunMoney = (BoardAddSunMoney_t)SafeResolve("_ZN5Board11AddSunMoneyEi");
    _BoardPlayerWon  = (BoardPlayerWon_t)SafeResolve("_ZN5Board9PlayerWonEv");
    if (_BoardAddSunMoney == nullptr)
        LOGW("menu: AddSunMoney no resuelto");
    if (_BoardPlayerWon == nullptr)
        LOGW("menu: PlayerWon no resuelto");

    LOGI("libSrcExt: hooks instalados (ok=%d, fail=%d)", g_hookOk, g_hookFail);
    LOGI("libSrcExt: listo!");
}