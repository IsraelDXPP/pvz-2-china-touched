#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
patch_smali.py — P.V.Z 2 China Touched.

Inserta, tras CADA System.loadLibrary("Src") de SexyAppFrameworkActivity, el bloque:

    const-string <vN>, "SrcExt"
    invoke-static {<vN>}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

que carga libSrcExt.so (los hooks nativos de offline) después de libSrc.so.

IMPORTANTE: el archivo tiene DOS puntos que cargan libSrc.so:
  - LazyCreate(Bundle)   -> usado en algunos flujos ("preinstalado")
  - onCreate(Bundle)     -> el que se ejecuta SIEMPRE al arrancar

El engine real se inicia por onCreate(); inyectar solo en el primero dejaba
libSrcExt.so sin cargar (ni rastro en /proc/maps, ni hooks). Por eso el patch
recorre TODOS los sitios "Src" y añade la carga de la extensión en cada uno.
System.loadLibrary es idempotente, asi que es seguro tenerlo en ambos.

Idempotente por sitio: si el bloque "SrcExt" ya acompaña a un "Src", lo deja.

Uso:
    python3 patch_smali.py <ruta/a/SexyAppFrameworkActivity.smali>
"""

import re
import sys

LOADLIB = "Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V"

SRC_RE = re.compile(
    r"^\s*const-string\s+(v\d+),\s*\"Src\"\s*\n"
    r"(?:[ \t]*(?:#[^\n]*)?\n)*"               # lineas en blanco / comentarios
    r"[ \t]*invoke-static\s*\{\1\},\s*"
    + re.escape(LOADLIB)
    + r"\s*\n",
    re.MULTILINE,
)

EXT_RE = re.compile(
    r"[ \t]*const-string\s+(v\d+),\s*\"SrcExt\"\s*\n"
    r"(?:[ \t]*(?:#[^\n]*)?\n)*"
    r"[ \t]*invoke-static\s*\{\1\},\s*"
    + re.escape(LOADLIB)
    + r"\s*\n",
    re.MULTILINE,
)


def patch(path: str) -> int:
    with open(path, encoding="utf-8") as f:
        src = f.read()

    blocks = list(SRC_RE.finditer(src))
    if not blocks:
        print(
            "ERR: no se encontro const-string vN,\"Src\" + loadLibrary(%s) en %s"
            % (LOADLIB, path),
            file=sys.stderr,
        )
        return 1

    indent = " " * 4
    inject = (
        "\n"
        + indent
        + 'const-string %s, "SrcExt"\n'
        + indent
        + "invoke-static {%s}, %s\n"
    )

    changes = []
    for m in blocks:
        reg = m.group(1)
        tail = src[m.end(): m.end() + 800]
        if EXT_RE.search(tail):
            print("[i] sitio con SrcExt ya presente (reg=%s)" % reg)
            continue
        changes.append((m.end(), inject % (reg, reg, LOADLIB), reg))

    for end, text, reg in reversed(changes):
        src = src[:end] + text + src[end:]

    with open(path, "w", encoding="utf-8") as f:
        f.write(src)

    if not changes:
        print("[i] YA parcheado (%s)" % path)
        return 0
    print("OK: loadLibrary(\"SrcExt\") insertado en %d sitio(s): %s" % (
        len(changes), ", ".join(c[2] for c in changes)))
    return 0


if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("uso: python3 patch_smali.py <SexyAppFrameworkActivity.smali>", file=sys.stderr)
        sys.exit(2)
    sys.exit(patch(sys.argv[1]))