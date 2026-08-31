#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
patch_talkweb.py — Parche offline de TalkwebProxy.

El SDK china (360) muestra un login (QQ/WeChat/telefono/guest) y registra el
usuario contra el servidor de TalkWeb. El fix:

  1) loginChannel(Landroid/app/Activity;)UserInfo
     Reemplaza la llamada a TwOnlineSDK.loginSDK(...) por un UserInfo falso:
       channelUserId = "12345678"
       nickName      = ""
       talkwebUserId = "12345678"
       token         = ""
       code          = 0xbb8 (3000)
     => el juego recibe "respuesta falsa con un usuario falso" sin red.

  2) init(Landroid/app/Activity;String;)V
     Elimina:
       - TwOnlineSDK.initSDK(...)  (activa la parte online del SDK)
       - TwLoginUtil.getQuickRegistration(...)  (registro rapido HTTP)
     Deja el log "使用网游SDK初始化成功！----------".

El resto del flujo queda intacto (TWPurchase$1$1 llama a TwOfflineSDK.login()
normalmente); libSrcExt.so (hooks nativos) hace el resto: bloquea el chequeo
del servidor (SendHttpRequest/GetNetworkStatus) y completa el account check.

Idempotente. Uso:
    python3 patch_talkweb.py <ruta/a/TalkwebProxy.smali>
"""

import re
import sys

MARKER = '12345678'

OLD_LOGINCHANNEL = re.compile(
    r"\.method public loginChannel\(Landroid/app/Activity;\)Lcom/talkweb/twOfflineSdk/bean/UserInfo;.*?\.end method",
    re.DOTALL,
)

NEW_LOGINCHANNEL = (
    ".method public loginChannel(Landroid/app/Activity;)Lcom/talkweb/twOfflineSdk/bean/UserInfo;\n"
    "    .locals 2\n"
    "\n"
    "    new-instance p1, Lcom/talkweb/twOfflineSdk/bean/UserInfo;\n"
    "\n"
    "    invoke-direct {p1}, Lcom/talkweb/twOfflineSdk/bean/UserInfo;-><init>()V\n"
    "\n"
    '    const-string v0, "12345678"\n'
    "\n"
    "    invoke-virtual {p1, v0}, Lcom/talkweb/twOfflineSdk/bean/UserInfo;->setChannelUserId(Ljava/lang/String;)V\n"
    "\n"
    '    const-string v1, ""\n'
    "\n"
    "    invoke-virtual {p1, v1}, Lcom/talkweb/twOfflineSdk/bean/UserInfo;->setNickName(Ljava/lang/String;)V\n"
    "\n"
    "    invoke-virtual {p1, v0}, Lcom/talkweb/twOfflineSdk/bean/UserInfo;->setTalkwebUserId(Ljava/lang/String;)V\n"
    "\n"
    "    invoke-virtual {p1, v1}, Lcom/talkweb/twOfflineSdk/bean/UserInfo;->setToken(Ljava/lang/String;)V\n"
    "\n"
    "    const/16 v0, 0xbb8\n"
    "\n"
    "    invoke-virtual {p1, v0}, Lcom/talkweb/twOfflineSdk/bean/UserInfo;->setCode(I)V\n"
    "\n"
    "    return-object p1\n"
    ".end method"
)

OLD_INIT_SDK = re.compile(
    r"(:cond_0\n)"
    r"(    invoke-static \{p1\}, Lcom/talkweb/twOfflineSdk/tools/DeviceUtil;->isLandScape\(Landroid/content/Context;\)Z.*?)"
    r"(    const-string p1, \"\\u4f7f\\u7528\\u7f51\\u6e38SDK\\u521d\\u59cb\\u5316\\u6210\\u529f\\uff01----------\"\n)",
    re.DOTALL,
)

OLD_QUICKREG = re.compile(
    r"(    \.line 279\n    invoke-static \{p1\}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i\(Ljava/lang/String;\)V\n).*?(    :try_end_0)",
    re.DOTALL,
)


def patch(path):
    with open(path, encoding="utf-8") as f:
        src = f.read()

    if MARKER in src:
        print("[i] YA parcheado (loginChannel fake): %s" % path)
        return 0

    m = OLD_LOGINCHANNEL.search(src)
    if not m:
        print("ERR: no se encontro loginChannel() en %s" % path, file=sys.stderr)
        return 1
    src = src[: m.start()] + NEW_LOGINCHANNEL + src[m.end():]

    m = OLD_INIT_SDK.search(src)
    if not m:
        print("ERR: no se encontro el bloque TwOnlineSDK.initSDK() en %s" % path, file=sys.stderr)
        return 1
    src = src[: m.start()] + (m.group(1) + m.group(3)) + src[m.end():]

    m = OLD_QUICKREG.search(src)
    if not m:
        print("ERR: no se encontro el bloque getQuickRegistration() en %s" % path, file=sys.stderr)
        return 1
    src = src[: m.start()] + (m.group(1) + m.group(2)) + src[m.end():]

    with open(path, "w", encoding="utf-8") as f:
        f.write(src)
    print("OK: TalkwebProxy parcheado (loginChannel fake + init offline) en %s" % path)
    return 0


if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("uso: python3 patch_talkweb.py <TalkwebProxy.smali>", file=sys.stderr)
        sys.exit(2)
    sys.exit(patch(sys.argv[1]))