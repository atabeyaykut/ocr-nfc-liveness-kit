@echo off
echo ========================================
echo   OPTIMIZED BUILD SCRIPT FOR OCR APP
echo ========================================
echo.

echo [1/6] Cleaning previous builds...
cd android
call gradlew.bat clean
cd ..

echo.
echo [2/6] Clearing Metro cache...
npx react-native start --reset-cache --no-interactive &
timeout /t 5 > nul
taskkill /f /im node.exe 2>nul

echo.
echo [3/6] Clearing npm cache...
npm cache clean --force

echo.
echo [4/6] Bundling JavaScript...
npx react-native bundle --platform android --dev false --entry-file index.js --bundle-output android/app/src/main/assets/index.android.bundle --assets-dest android/app/src/main/res --reset-cache

echo.
echo [5/6] Building Android APK...
cd android
call gradlew.bat assembleDebug
cd ..

echo.
echo [6/6] Installing APK to device...
adb install -r android/app/build/outputs/apk/debug/app-universal-debug.apk

echo.
echo ========================================
echo   BUILD COMPLETED SUCCESSFULLY!
echo ========================================
echo.
echo APK Location: android/app/build/outputs/apk/debug/
echo.
echo To run the app:
echo   npx react-native run-android
echo.
pause
