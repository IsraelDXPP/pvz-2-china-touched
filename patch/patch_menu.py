#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
patch_menu.py — P.V.Z 2 China Touched.

Inyecta el lanzamiento del menu de trucos en SexyAppActivity.onCreate:

    CkHomuraMenu menu = new CkHomuraMenu(this);  // com.android.support (smali_classes5)
    menu.SetWindowManagerActivity();
    menu.ShowMenu();

El bloque se inserta DESPUES de invoke-super de SexyAppFrameworkActivity.onCreate,
asi el motor ya esta cargado (loadLibrary("SrcExt") corrio en ese invoke-super y
los natives GetFeatureList/SettingsList/Changes estan disponibles).

Seguridad: el lanzamiento se envuelve en try/catch Throwable para que un fallo
del menu jamas tire la app; se usa la instancia en v0 y v1 solo en el catch.

Idempotente: si el metodo ya contiene "CkHomuraMenu", no se toca nada.
Ademas sube .locals al minimo necesario (2).

Uso:
    python3 patch_menu.py <ruta/a/SexyAppActivity.smali>
"""

import re
import sys

OUTER_CLS = "Lcom/popcap/SexyAppFramework/SexyAppFrameworkActivity;"
MENU_CLS = "Lcom/android/support/CkHomuraMenu;"

# Captura toda la declaracion del metodo, incluyendo ".end method"
METHOD_RE = re.compile(
    r"\.method\s+public\s+onCreate\(Landroid/os/Bundle;\)V\s*\n"
    r"(.*?)"
    r"[ \t]*\.end[ \t]+method\s*\n",
    re.MULTILINE | re.DOTALL,
)
SUPER_RE = re.compile(
    r"[ \t]*invoke-super\s*\{[^}]*\},\s*" + re.escape(OUTER_CLS) + r"->onCreate\(Landroid/os/Bundle;\)V\s*\n"
)
LOCALS_RE = re.compile(r"[ \t]*\.locals\s+(\d+)\s*\n")


def patch(path: str) -> int:
    with open(path, encoding="utf-8") as f:
        src = f.read()

    mm = METHOD_RE.search(src)
    if not mm:
        print("ERR: no existe .method public onCreate(Bundle) en %s" % path, file=sys.stderr)
        return 1

    body = mm.group(1)
    if MENU_CLS in body:
        print("[i] YA parcheado (CkHomuraMenu presente) (%s)" % path)
        return 0

    sup = SUPER_RE.search(body)
    if not sup:
        print(
            "ERR: no se encontro invoke-super %s->onCreate(Bundle) en el metodo" % OUTER_CLS,
            file=sys.stderr,
        )
        return 1

    # Subir .locals del metodo a >= 2 (v0 menu, v1 excepcion)
    lm = LOCALS_RE.search(body)
    if not lm:
        print("ERR: no hay .locals en el metodo", file=sys.stderr)
        return 1
    min_locals = max(int(lm.group(1)), 2)
    body = body[: lm.start()] + "    .locals %d\n" % min_locals + body[lm.end():]

    indent = " " * 4
    inject = (
        "\n"
        + indent
        + "# [menu] mostrar menu de trucos (Homura-style) tras arrancar el motor\n"
        + indent
        + ":try_start_0\n"
        + indent
        + "new-instance v0, %s\n" % MENU_CLS
        + indent
        + "invoke-direct {v0, p0}, %s-><init>(Landroid/content/Context;)V\n" % MENU_CLS
        + indent
        + "invoke-virtual {v0}, %s->SetWindowManagerActivity()V\n" % MENU_CLS
        + indent
        + "invoke-virtual {v0}, %s->ShowMenu()V\n" % MENU_CLS
        + indent
        + ":try_end_0\n"
        + indent
        + "goto :goto_0\n"
        + "\n"
        + indent
        + ":catch_0\n"
        + indent
        + "move-exception v1\n"
        + indent
        + ":goto_0\n"
    )
    catch = indent + ".catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0\n"

    body = body[: sup.end()] + "\n" + inject + body[sup.end():]
    body = body + catch

    new_method = ".method public onCreate(Landroid/os/Bundle;)V\n" + body + ".end method\n"
    src = src[: mm.start()] + new_method + src[mm.end():]

    with open(path, "w", encoding="utf-8") as f:
        f.write(src)

    print("OK: menu inyectado en onCreate(Bundle) (%s)" % path)
    return 0


if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("uso: python3 patch_menu.py <SexyAppActivity.smali>", file=sys.stderr)
        sys.exit(2)
    sys.exit(patch(sys.argv[1]))