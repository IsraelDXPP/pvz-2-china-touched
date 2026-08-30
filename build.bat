@echo off
rem P.V.Z 2 China Touched — compila libSrcExt.so (arm64-v8a + armeabi-v7a) con NDK r10e en Windows.
rem Ajusta NDK_PATH a tu instalacion del NDK r10e.
rem Salida: libs\arm64-v8a\libSrcExt.so y libs\armeabi-v7a\libSrcExt.so

setlocal

set NDK_PATH=C:\Android\android-ndk-r10e
if exist "%NDK_PATH%\ndk-build.cmd" goto :build

echo ERROR: no se encontro ndk-build.cmd en %NDK_PATH%
echo Edita este archivo y ajusta la variable NDK_PATH.
exit /b 1

:build
echo == ndk-build: %NDK_PATH%\ndk-build.cmd

cd /d "%~dp0"
if exist obj rmdir /s /q obj
if exist libs rmdir /s /q libs

call "%NDK_PATH%\ndk-build.cmd" -j4

echo.
echo == BUILD OK ==
dir libs\arm64-v8a
dir libs\armeabi-v7a
echo.
echo libSrcExt.so listo. Inyectarlo como lib\<ABI>\libSrcExt.so en el APK final.

endlocal