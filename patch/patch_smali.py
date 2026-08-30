#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
patch_smali.py — P.V.Z 2 China Touched.

Inserta, tras el System.loadLibrary("Src") del MotorActivity, el bloque:

    const-string <vN>, "SrcExt"
    invoke-static {<vN>}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

que carga libSrcExt.so (los hooks nativos de offline) después de libSrc.so.

Uso:
    python3 patch_smali.py <ruta/a/SexyAppFrameworkActivity.smali>

Es idempotente: si ya existe la cadena "SrcExt" en el archivo, reporta
"YA parcheado" y termina con codigo 0.
"""

import re
import sys

LOADLIB = "Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V"


def patch(path: str) -> int:
    with open(path, encoding="utf-8") as f:
        src = f.read()

    if '"SrcExt"' in src:
        print("[i] YA parcheado (%s)" % path)
        return 0

    # const-string vN, "Src" ... invoke-static {vN}, System.loadLibrary
    pattern = re.compile(
        r"^\s*const-string\s+(v\d+),\s*\"Src\"\s*\n"
        r"(?:\s*#.*\n|\s*\n)*"                       # tolera lineas en blanco / comentarios
        r"\s*invoke-static\s*\{\1\},\s*"
        + re.escape(LOADLIB)
        + r"\s*\n",
        re.MULTILINE,
    )

    m = pattern.search(src)
    if not m:
        print(
            "ERR: no se encontro const-string vN,\"Src\" + loadLibrary(%s) en %s"
            % (LOADLIB, path),
            file=sys.stderr,
        )
        return 1

    reg = m.group(1)
    indent = " " * 4
    inject = (
        "\n"
        + indent
        + 'const-string %s, "SrcExt"\n'
        + indent
        + "invoke-static {%s}, %s\n" % (reg, LOADLIB)
    )

    src = src[: m.end()] + inject + src[m.end():]
    with open(path, "w", encoding="utf-8") as f:
        f.write(src)
    print("OK: loadLibrary(\"SrcExt\") insertado con registro %s" % reg)
    return 0


if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("uso: python3 patch_smali.py <SexyAppFrameworkActivity.smali>", file=sys.stderr)
        sys.exit(2)
    sys.exit(patch(sys.argv[1]))