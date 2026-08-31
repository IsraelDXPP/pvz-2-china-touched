#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
patch_appname.py — Renombra la app instalada ("PvZ2CH Touched").

El nombre que se ve en el launcher tras instalar el APK es el label de la
aplicacion (AndroidManifest / res). Este script lo cambia en el workspace
decodificado de apktool:

  1) AndroidManifest.xml -> android:label de la etiqueta <application>
  2) res/**/strings.xml  -> <string name="app_name"> (y app_label, si existe)

Idempotente: si ya está el nombre objetivo, no toca nada. Uso:
    python3 patch_appname.py ws [nombre]
"""

import re
import sys
from pathlib import Path


def xml_escape(s: str) -> str:
    return s.replace("&", "&amp;").replace('"', "&quot;")


def patch_manifest(manifest: Path, label: str) -> bool:
    src = manifest.read_text(encoding="utf-8")
    new = label
    if ("android:label=\"%s\"" % new) in src:
        if re.search(r"<application[^>]*android:label=\"%s\"" % re.escape(new), src):
            print("[i] manifest ya renombrado")
            return False
    # Solo dentro del tag <application ...>
    m = re.search(r"<application\b[^>]*>", src, re.DOTALL)
    if not m:
        print("ERR: no se encontro el tag <application> en %s" % manifest, file=sys.stderr)
        return False
    tag = m.group(0)
    tag_new = re.sub(r'android:label="[^"]*"', 'android:label="%s"' % xml_escape(new), tag, count=1)
    if tag_new == tag:
        print("[i] manifest sin android:label en <application> (checked only)")
    src = src[: m.start()] + tag_new + src[m.end():]
    manifest.write_text(src, encoding="utf-8")
    print("OK: manifest label -> %s" % new)
    return True


def patch_strings(res_dir: Path, label: str) -> int:
    changed = 0
    for f in sorted(res_dir.rglob("strings.xml")):
        src = f.read_text(encoding="utf-8")
        out = src
        for name in ("app_name", "app_label"):
            pat = re.compile(r'(<string\s+name="%s"[^>]*>)[^<]*(</string>)' % re.escape(name))
            out = pat.sub(lambda m: m.group(1) + xml_escape(label) + m.group(2), out)
        if out != src:
            f.write_text(out, encoding="utf-8")
            changed += 1
            print("OK: %s" % f)
    return changed


def main() -> int:
    if len(sys.argv) not in (2, 3):
        print("uso: python3 patch_appname.py <workspace> [nombre]", file=sys.stderr)
        return 2
    root = Path(sys.argv[1])
    label = sys.argv[2] if len(sys.argv) == 3 else "PvZ2CH Touched"
    if not root.is_dir():
        print("ERR: workspace no existe: %s" % root, file=sys.stderr)
        return 1
    manifest = root / "AndroidManifest.xml"
    if manifest.exists():
        patch_manifest(manifest, label)
    res = root / "res"
    if res.is_dir():
        patch_strings(res, label)
    print("OK: nombre instalado -> '%s'" % label)
    return 0


if __name__ == "__main__":
    sys.exit(main())