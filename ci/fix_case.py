#!/usr/bin/env python3
"""Crea aliases (symlinks) con el case exacto que piden los #include.

El build original compilaba en Windows, donde el filesystem resuelve los
nombres de fichero ignorando mayusculas/minusculas. En el runner de GitHub
(Linux, case-sensitive) esos #include fallan (p.ej. "common.h" -> Common.h,
"eastl/string.h" -> EASTL/string.h).

Este script recorre los .h del arbol header/ + fuentes de jni/, simula la
resolucion de #include (directorio del archivo para comillas, luego las
raices de -I de Android.mk) y crea un symlink con la ortografia exacta que
pide el include apuntando al archivo real. Idempotente. Corre antes de
ndk-build en CI.
"""

import os
import re
import sys

SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.dirname(SCRIPT_DIR)
HEADER = os.path.join(ROOT, "header")

INCLUDE_ROOTS = [
    "",
    "SexyAppFramework",
    "SexyAppFramework/EATech/EAText/1.09.07/include",
    "SexyAppFramework/EATech/EASTL/1.17.00/include",
    "SexyAppFramework/EATech/EABase/2.06.01/include/Common",
    "SexyAppFramework/EATech/EAStdC/1.10.02/include",
    "SexyAppFramework/EATech/FontFusion/4.5a.06/core",
    "SexyAppFramework/EATech/EAIO/2.17.03/include",
    "SexyAppFramework/EATech/coreallocator/1.03.11/include",
    "SexyAppFramework/EATech/EAThread/1.22.05/include",
    "SexyAppFramework/EATech/PPMalloc/1.20.03/include",
    "pvz",
    "pvz/UIEditor",
    "pvz/TodLib",
    "pvz/gameNetWork",
    "pvz/PVP",
    "pvz/dnode",
    "pvz/Social/Widgets",
    "pvz/Social/Data",
    "SexyAppFramework/EATech/EATrace/2.09.07/include",
]
ROOT_DIRS = [os.path.join(HEADER, r) for r in INCLUDE_ROOTS]

INCLUDE_RE = re.compile(r'#\s*include\s*([<"])([^>"]+)[>"]')
EXT_RE = re.compile(r"\.(h|hpp|hh|c|cc|cpp|inl|inc)$", re.IGNORECASE)


def collect_files():
    files = []
    for top in (HEADER, os.path.join(ROOT, "jni")):
        for base, _dirs, names in os.walk(top):
            for n in names:
                if EXT_RE.search(n):
                    files.append(os.path.join(base, n))
    return files


def walk_resolve(dirpath, parts, created):
    """Resuelve parts[] bajo dirpath creando symlinks de case si falta.
    Usa listado del directorio + comparacion exacta de bytes (portable
    incluso en Windows/NTFS, que por si solo es case-insensitive)."""
    if not parts:
        return False
    comp = parts[0]
    try:
        children = os.listdir(dirpath)
    except OSError:
        return False
    if comp in children:
        p = os.path.join(dirpath, comp)
        if len(parts) == 1:
            return True
        if os.path.isdir(p):
            return walk_resolve(p, parts[1:], created)
        return True
    cis = [e for e in children if e.lower() == comp.lower()]
    if len(cis) != 1:
        return False
    real = cis[0]
    target = os.path.join(dirpath, real)
    try:
        os.symlink(real, os.path.join(dirpath, comp))
        created.append(os.path.join(dirpath, comp))
    except OSError as exc:
        sys.stderr.write("warning: no pude crear %s: %s\n" % (os.path.join(dirpath, comp), exc))
        return False
    if len(parts) == 1:
        return True
    if os.path.isdir(target):
        return walk_resolve(target, parts[1:], created)
    return True


def main():
    created = []
    disabled = []

    for f in collect_files():
        try:
            with open(f, "rb") as fh:
                raw = fh.read()
            text = raw.decode("utf-8", "replace")
        except OSError:
            continue
        own_dir = os.path.dirname(f)
        for m in INCLUDE_RE.finditer(text):
            quoted, inc = m.group(1) == '"', m.group(2)
            parts = [x for x in inc.replace("\\", "/").split("/") if x]
            bases = ([own_dir] if quoted else []) + ROOT_DIRS
            hit = False
            for base in bases:
                if walk_resolve(base, parts, created):
                    hit = True
                    break
            if not hit and len(bases) < 3 and inc.endswith(".h"):
                disabled.append(inc)

    if created:
        sys.stdout.write("fix_case: %d alias creados\n" % len(created))
    else:
        sys.stdout.write("fix_case: sin cambios\n")
    if disabled:
        sys.stdout.write("(sin resolver auto, probablemente headers NDK/sistema): %s\n"
                         % ", ".join(sorted(set(disabled))[:15]))
    return 0


if __name__ == "__main__":
    sys.exit(main())