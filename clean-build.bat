@echo off
echo ========================================
echo   React Native Clean Build Script
echo ========================================
echo.

echo [1/5] Stopping Metro Bundler...
taskkill /F /IM node.exe 2>nul
timeout /t 2 >nul

echo.
echo [2/5] Cleaning Android build cache...
cd android
call gradlew clean
cd ..

echo.
echo [3/5] Removing build directories...
rmdir /S /Q android\app\build 2>nul
rmdir /S /Q android\build 2>nul
rmdir /S /Q node_modules\react-native-reanimated\android\.cxx 2>nul
rmdir /S /Q node_modules\react-native-reanimated\android\build 2>nul

echo.
echo [4/5] Clearing React Native cache...
rmdir /S /Q %TEMP%\metro-* 2>nul
rmdir /S /Q %TEMP%\react-* 2>nul
rmdir /S /Q %TEMP%\haste-* 2>nul

echo.
echo [5/5] Done! Now run: npm start -- --reset-cache
echo Then in another terminal: npx react-native run-android
echo.
pause
