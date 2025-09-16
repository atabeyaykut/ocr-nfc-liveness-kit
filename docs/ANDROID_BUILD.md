# Android Build Guide (React Native Mock OCR/NFC/Liveness)

This project includes a mock test environment that lets you try OCR, NFC and Liveness without real device hardware. The UI is already wired via `App.js` -> `TestEnvironmentApp` and screens under `components/`.

## Requirements

- Node.js 16+
- Java JDK 17 (recommended for RN 0.74)
- Android SDK / Platform Tools
- Android device or emulator (API 24+)

## Project Entry

- Main entry: `App.js`
- Test hub screen: `TestEnvironmentApp.js`
- Mock modules:
  - OCR: `components/OCRTestComponent.js`
  - NFC: `components/NFCTestComponent.js`
  - Liveness: `components/LivenessTestComponent.js`

## Gradle Config Overview

- App module file: `android/app/build.gradle`
  - `buildTypes { debug { ... } release { ... } }`
  - `signingConfigs { debug { ... } release { ... } }`
  - ProGuard/R8 rules: `android/app/proguard-rules.pro`

## Build Commands

All commands below should be run from the project root unless noted.

1. Install JS deps

```sh
npm install
```

2. Start Metro (in a separate terminal)

```sh
npm run start
```

3. Build APKs via Gradle Wrapper

From the `android/` directory:

- Debug APK

```sh
./gradlew assembleDebug
```

- Release APK

```sh
./gradlew assembleRelease
```

- App Bundle (Play Store)

```sh
./gradlew bundleRelease
```

If `gradlew` is missing, initialize the wrapper with your local Gradle or open the project in Android Studio, which will generate wrapper files.

## Where are the outputs?

- Debug APK:
  - `android/app/build/outputs/apk/debug/app-debug.apk`

- Release APKs (per-ABI, because `splits.abi.enable = true`):
  - `android/app/build/outputs/apk/release/app-arm64-v8a-release.apk`
  - `android/app/build/outputs/apk/release/app-armeabi-v7a-release.apk`
  - `android/app/build/outputs/apk/release/app-x86_64-release.apk`
  - `android/app/build/outputs/apk/release/app-x86-release.apk`

- Universal APK (if you set `universalApk true`):
  - `android/app/build/outputs/apk/release/app-universal-release.apk`

- App Bundle (AAB):
  - `android/app/build/outputs/bundle/release/app-release.aab`

## Keystore (Release Signing)

Create a keystore (example):

```sh
keytool -genkeypair \
  -v -storetype JKS \
  -keystore /absolute/path/to/release.keystore \
  -alias my-key-alias \
  -keyalg RSA -keysize 2048 -validity 10000
```

Configure credentials securely.

Option A: Environment variables (recommended):

```sh
export ANDROID_KEYSTORE="/absolute/path/to/release.keystore"
export ANDROID_KEYSTORE_PASSWORD="your-store-pass"
export ANDROID_KEY_ALIAS="my-key-alias"
export ANDROID_KEY_PASSWORD="your-key-pass"
```

Option B: `~/.gradle/gradle.properties` (do NOT commit secrets):

```
RELEASE_STORE_FILE=/absolute/path/to/release.keystore
RELEASE_STORE_PASSWORD=your-store-pass
RELEASE_KEY_ALIAS=my-key-alias
RELEASE_KEY_PASSWORD=your-key-pass
```

The app module picks these in `android/app/build.gradle` under `signingConfigs.release`.

## Running the Mock Test App

- Android (debug):

```sh
npm run android
```

The app opens to the test environment. Choose:

- OCR Test → picks sample images from `assets/test-images/` and shows mock OCR results
- NFC Test → uses mock data from `mock/nfcData.js`
- Liveness Test → simulates steps and returns mock liveness results

No camera, NFC, or microphone permissions are required for the mock flow.

## Troubleshooting

- If `assembleRelease` fails with signing errors, ensure your keystore variables or `gradle.properties` are set.
- If duplicate files or resource merge errors occur, check `packagingOptions` in `android/app/build.gradle` and the versions of RN libraries in `package.json`.
- If Gradle or SDK path issues occur, make sure `ANDROID_HOME`/`ANDROID_SDK_ROOT` is set and the required SDK platforms are installed via Android Studio SDK Manager.
