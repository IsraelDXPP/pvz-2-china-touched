#include <android/log.h>
#include <dlfcn.h>
#include <stdint.h>

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

    LOGI("libSrcExt: hooks instalados (ok=%d, fail=%d)", g_hookOk, g_hookFail);
    LOGI("libSrcExt: listo!");
}