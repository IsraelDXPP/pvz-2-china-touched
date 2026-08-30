# PvZ2 China Touched

Build automatizado (GitHub Actions) que reempaqueta el APK original de PvZ2 China
(`com.talkweb.securitypay.TwApplication.apk`) en una variante "tocada":
motor con la tabla de símbolos exportada (necesario para los hooks nativos),
`libSrcExt.so` con los hooks y una edición mínima de smali (`loadLibrary("SrcExt")`).

## Qué hace el mod

- `GetDigitalSignature()` → `-865154223` (salta la validación de firma)
- `IsForbiddenPlatform()` → `false`
- `TryCheckAccount(...)` → difunde `Message::SyncPlayerInfoFinish = true`
- `GetNetworkStatus()` / `SendHttpRequest(...)` → `0` (offline), `RetZero`
- Motor Lua desactivado (`CLuaEngine::GetInstancePtr`, `Init`,
  `ExecuteTableFunction`, `OnNetworkMsg` → no-op)
- `ShowPlantFamilyUI(...)` → no-op
- Tutoriales (gacha/accessory/recharge/transgénesis) → completados
- `IsUnlockRechargeNode(DoubleSpeed)` → `true`

Se compila para **arm64-v8a** y **armeabi-v7a**.

## Cómo funciona el "touched"

El APK original trae `.dynsym` recortado: exporta `0/13` de los símbolos C++ que
los hooks necesitan, así que no se le pueden aplicar los hooks vía `dlsym`.
En `prebuilt/` hay dos motores reconstruidos **sin recortar la tabla de símbolos**
(`13/13`). No llevan código de hooks incrustado: solo exportan los símbolos para que
`libSrcExt.so` los localice.

| ABI | Stock (original) | Touched (prebuilt) |
|-----|------------------|--------------------|
| arm64-v8a | 73 MB (`0/13`) | `prebuilt/arm64-v8a/libSrc.so` (104 MB, `13/13`) |
| armeabi-v7a | 45 MB (`0/13`) | `prebuilt/armeabi-v7a/libSrc.so` (77 MB, `13/13`) |

Los hooks viven en:
- ARM64 → `jni/And64InlineHook` (AArch64)
- ARMv7 → `jni/Arm32InlineHook` (trampolín ARM de 8 bytes `LDR PC,[PC,#-4]` +
  backup reubicado para las funciones que llaman al original; las 13 funciones
  objetivo son modo ARM)

## Pipeline

1. **Entrada**: URL o file-id de Google Drive del APK original (~1.2 GB).
2. **Nativo**: NDK → `libs/<ABI>/libSrcExt.so` (Main.cpp + hook según ABI).
   CI usa NDK **r14b** (mismo gcc 4.9 + gnustl_static; Google ya no hospeda r10e en `dl.google.com`).
3. **Decodificar**: `apktool d -f -o ws original.apk`.
4. **Swap**: `lib/<ABI>/libSrc.so` stock → touched (ambas ABIs).
5. **Inyección**: `lib/<ABI>/libSrcExt.so`.
6. **Smali**: inserta `System.loadLibrary("SrcExt")` junto a `loadLibrary("Src")`
   en `SexyAppFrameworkActivity.smali` (ver `patch/patch_smali.py`, idempotente).
7. **Empaquetar**: `apktool b` → `zipalign` → `apksigner` (keystore `CN=Offline`).

## Uso — GitHub Actions

`Actions → build-n-publish → Run workflow → inputs`:

| Input | Descripción |
|-------|-------------|
| `apk_source` *(obligatorio)* | URL de Google Drive o file-id del APK original |
| `apk_name` | Nombre del APK final (default `PvZ2CH_Touched.apk`) |
| `release_tag` | Tag para publicar GitHub Release (vacío = solo artifact) |
| `release_title` | Título del release (default `PvZ2 China Touched (offline)`) |

Ejemplo de `apk_source`:
```
https://drive.google.com/file/d/1JPAh9GNGTTevbe27tOQ8NBMjICgojM5C/view?usp=sharing
```

## Uso — Local

Requisitos: NDK r10e, JDK 17, apktool 3.0.3 (Android 2.3.3+ compatible), build-tools 30.0.3, Python 3.

```bash
# 1) motor nativo
./build.sh                            # o build.bat en Windows -> libs/<ABI>/libSrcExt.so

# 2) decodificar el original
apktool d -f -o ws original.apk

# 3) swap + inyección
cp prebuilt/arm64-v8a/libSrc.so    ws/lib/arm64-v8a/libSrc.so
cp prebuilt/armeabi-v7a/libSrc.so  ws/lib/armeabi-v7a/libSrc.so
cp libs/arm64-v8a/libSrcExt.so     ws/lib/arm64-v8a/libSrcExt.so
cp libs/armeabi-v7a/libSrcExt.so   ws/lib/armeabi-v7a/libSrcExt.so

# 4) smali
python3 patch/patch_smali.py \
  ws/smali/com/popcap/SexyAppFramework/SexyAppFrameworkActivity.smali

# 5) rebuild + alinear + firmar
apktool b -o unsigned.apk ws
zipalign -f -p 4 unsigned.apk aligned.apk
apksigner sign --ks offline.keystore --ks-key-alias pvz2ch \
  --ks-pass pass:offline123 --out PvZ2CH_Touched.apk aligned.apk
```

## Estructura

```
header/                       headers C++ del motor
prebuilt/<ABI>/libSrc.so      motores reconstruidos con .dynsym exportado (Git LFS)
jni/Main.cpp                  hooks / reemplazos
jni/Android.mk                selecciona hook según ABI (And64InlineHook / Arm32InlineHook)
jni/Application.mk            arm64-v8a + armeabi-v7a (NDK r10e, gnustl_static)
patch/patch_smali.py          inserta loadLibrary("SrcExt") (idempotente)
.github/workflows/build.yml   pipeline CI completo
```

## Avisos

- El APK original **no** se versiona: el pipeline lo descarga desde `apk_source`.
- Firma `CN=Offline` no oficial: para instalarlo hay que desinstalar la versión firmada por el OEM.
- Los motores `prebuilt` se suben con Git LFS (superan el límite de 100 MB de GitHub).