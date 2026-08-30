#!/usr/bin/env bash
: '
P.V.Z 2 China Touched — compila libSrcExt.so (arm64-v8a + armeabi-v7a) con NDK r10e.
Uso:
  export NDK_BUILD=/ruta/android-ndk-r10e/ndk-build   # (o en PATH)
  ./build.sh
Salida: libs/arm64-v8a/libSrcExt.so y libs/armeabi-v7a/libSrcExt.so
'

set -e
cd "$(dirname "$0")"

if [ -z "${NDK_BUILD:-}" ]; then
    if command -v ndk-build >/dev/null 2>&1; then
        NDK_BUILD=ndk-build
    elif [ -n "${NDK_HOME:-}" ] && [ -x "$NDK_HOME/ndk-build" ]; then
        NDK_BUILD="$NDK_HOME/ndk-build"
    elif [ -x "$HOME/android-ndk-r10e/ndk-build" ]; then
        NDK_BUILD="$HOME/android-ndk-r10e/ndk-build"
    else
        echo "ERROR: no se encontró ndk-build." >&2
        echo "  - Descarga NDK r10e y exporta: export NDK_BUILD=/ruta/ndk-build" >&2
        exit 1
    fi
fi
echo "== ndk-build: $NDK_BUILD"

rm -rf obj libs
"$NDK_BUILD" -j4

echo ""
echo "== BUILD OK =="
ls -la libs/arm64-v8a/ libs/armeabi-v7a/
echo ""
echo "libSrcExt.so listo. El workflow/empaquetado lo inyecta como"
echo "lib/<ABI>/libSrcExt.so dentro del APK final."