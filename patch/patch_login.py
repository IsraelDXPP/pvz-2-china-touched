#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
patch_login.py — Salta el inicio de sesion del SDK de TalkWeb (twOfflineSdk).

La version china (360) muestra un dialogo de login (QQ/WeChat/telefono/guest)
cuando el SDK inicializa. El flujo real:

    TWPurchase.InitializeSDK() -> TwOfflineSDK.init(...)
      -> onResponse(init OK) -> Native_SDKLoginStart(...) + TwOfflineSDK.login(...)
      -> onResponse(login OK) -> Native_SDKLoginEnd(ptr, 0, token)

Aqui reemplazamos la llamada a TwOfflineSDK.login(...) (la que abre el dialogo)
por un login falso: Native_SDKLoginEnd(ptr, code=0, token="touch-token-0001")
y un mUniqueID fijo. El juego cree que ya hay sesion y arranca sin red.

Idempotente. Uso:
    python3 patch_login.py <ruta/a/TWPurchase$1$1.smali>
"""

import os
import re
import sys

MARKER = 'const-string v1, "offline-touched"'

OLD_BLOCK = re.compile(
    r"invoke-static \{\}, Lcom/popcap/SexyAppFramework/SexyAppFrameworkActivity;->instance\(\)Lcom/popcap/SexyAppFramework/SexyAppFrameworkActivity;\s*"
    r"move-result-object v1\s*"
    r"new-instance v2, Lcom/popcap/purchase/TW/TWPurchase\$1\$1\$1;\s*"
    r"invoke-direct \{v2, p0\}, Lcom/popcap/purchase/TW/TWPurchase\$1\$1\$1;-><init>\(Lcom/popcap/purchase/TW/TWPurchase\$1\$1;\)V\s*"
    r"invoke-static \{v1, v2\}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->login\(Landroid/app/Activity;Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;\)V"
)

NEW_BLOCK = (
    '    const-string v1, "offline-touched"\n'
    "    iget-object v2, p0, Lcom/popcap/purchase/TW/TWPurchase$1$1;->this$1:Lcom/popcap/purchase/TW/TWPurchase$1;\n"
    "\n"
    "    iget-object v2, v2, Lcom/popcap/purchase/TW/TWPurchase$1;->this$0:Lcom/popcap/purchase/TW/TWPurchase;\n"
    "\n"
    "    iput-object v1, v2, Lcom/popcap/purchase/TW/TWPurchase;->mUniqueID:Ljava/lang/String;\n"
    "\n"
    "    iget-wide v3, v2, Lcom/popcap/purchase/TW/TWPurchase;->mNativeDriverPtr:J\n"
    "\n"
    "    const/4 v5, 0x0\n"
    "\n"
    '    const-string v1, "touch-token-0001"\n'
    "\n"
    "    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/popcap/purchase/TW/TWPurchase;->Native_SDKLoginEnd(JILjava/lang/String;)V\n"
)


def patch(path):
    with open(path, encoding="utf-8") as f:
        src = f.read()

    if MARKER in src:
        print("[i] YA parcheado (login fake): %s" % path)
        return 0

    m = OLD_BLOCK.search(src)
    if not m:
        print("ERR: no se encontro el bloque TwOfflineSDK.login(...) en %s" % path, file=sys.stderr)
        return 1

    src = src[: m.start()] + NEW_BLOCK + src[m.end():]
    with open(path, "w", encoding="utf-8") as f:
        f.write(src)
    print("OK: login SDK saltado (Native_SDKLoginEnd fake) en %s" % path)
    return 0


if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("uso: python3 patch_login.py <TWPurchase$1$1.smali>", file=sys.stderr)
        sys.exit(2)
    sys.exit(patch(sys.argv[1]))