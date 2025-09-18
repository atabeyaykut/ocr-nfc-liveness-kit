# Device Testing Commands for OCR Mobile SDK

## Prerequisites
- Android device or emulator connected via USB debugging
- ADB installed and accessible in PATH

## Installation and Testing Commands

### 1. Check Connected Devices
```bash
adb devices
```

### 2. Install APK (Force Reinstall)
```bash
adb install -r android/app/build/outputs/apk/release/app-universal-release.apk
```

### 3. Launch Application
```bash
adb shell am start -n com.ocrmobilesdk/com.ocrmobilesdk.MainActivity
```

### 4. Monitor Application Logs
```bash
# Real-time logs
adb logcat | grep -E "(ReactNativeJS|OCRMobileSDK)"

# Capture logs to file
adb logcat -d | grep -E "(ReactNativeJS|Loading JS bundle|index.android.bundle|Unable to load script|DevServer)" > /tmp/rn_logs.txt
cat /tmp/rn_logs.txt
```

### 5. Expected Log Indicators
✅ **Success Indicators:**
- `Loading JS bundle from file:///android_asset/index.android.bundle`
- `ReactNativeJS: Running application "OCRMobileSDK"`
- No Metro/localhost:8081 references

❌ **Failure Indicators:**
- `Unable to load script from assets`
- `Metro server` or `localhost:8081` references
- `DevServer` connection attempts

### 6. Package Information
```bash
# Get package details
aapt dump badging android/app/build/outputs/apk/release/app-universal-release.apk | grep package

# Expected output: package: name='com.ocrmobilesdk' versionCode='1' versionName='1.0.0'
```

### 7. Uninstall (if needed)
```bash
adb uninstall com.ocrmobilesdk
```
