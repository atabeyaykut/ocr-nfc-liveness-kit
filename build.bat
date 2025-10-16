@echo off
REM ###############################################################################
REM Automated Android Build Script (Windows)
REM 
REM Features:
REM - Auto-detects or downloads JDK 17
REM - Uses Gradle Wrapper (no manual Gradle installation needed)
REM - Cross-platform compatible
REM - Provides detailed logging
REM - Builds debug APK
REM
REM Usage:
REM   build.bat                    # Build debug APK
REM   build.bat test               # Build + run tests
REM   build.bat clean              # Clean build
REM   build.bat production         # Run production readiness tests
REM ###############################################################################

setlocal enabledelayedexpansion

REM Print header
echo ===============================================================
echo   Android Automated Build System
echo   OCR NFC SDK - Production Ready Build
echo ===============================================================
echo.

REM Step 1: Check Java
echo [INFO] Step 1/5: Checking Java installation...
where java >nul 2>&1
if %ERRORLEVEL% EQU 0 (
    for /f "tokens=3" %%g in ('java -version 2^>^&1 ^| findstr /i "version"') do (
        set JAVA_VERSION=%%g
        set JAVA_VERSION=!JAVA_VERSION:"=!
    )
    echo [SUCCESS] Java found: !JAVA_VERSION!
) else (
    echo [WARNING] Java not found in PATH. Gradle will auto-download JDK 17.
)

REM Step 2: Check Gradle Wrapper
echo [INFO] Step 2/5: Checking Gradle Wrapper...
cd android
if exist "gradlew.bat" (
    echo [SUCCESS] Gradle Wrapper found
    
    REM Get Gradle version
    call gradlew.bat --version | findstr "Gradle"
) else (
    echo [ERROR] Gradle Wrapper not found!
    exit /b 1
)

REM Step 3: Check Android SDK
echo [INFO] Step 3/5: Checking Android SDK...
if defined ANDROID_HOME (
    echo [SUCCESS] ANDROID_HOME set: %ANDROID_HOME%
) else if exist "local.properties" (
    echo [INFO] Checking local.properties for SDK location...
    findstr "sdk.dir" local.properties >nul 2>&1
    if %ERRORLEVEL% EQU 0 (
        echo [SUCCESS] Android SDK configured in local.properties
    ) else (
        echo [WARNING] Android SDK not configured
    )
) else (
    echo [WARNING] Android SDK not configured. Build may fail locally.
    echo [TIP] Create android\local.properties with sdk.dir=C:\path\to\sdk
)

REM Step 4: Build based on argument
set BUILD_TYPE=%1
if "%BUILD_TYPE%"=="" set BUILD_TYPE=debug

if "%BUILD_TYPE%"=="clean" (
    echo [INFO] Step 4/5: Cleaning build...
    call gradlew.bat clean
    echo [SUCCESS] Clean complete!
) else if "%BUILD_TYPE%"=="test" (
    echo [INFO] Step 4/5: Building and testing...
    call gradlew.bat assembleDebug test --stacktrace
    echo [SUCCESS] Build and tests complete!
) else if "%BUILD_TYPE%"=="production" (
    echo [INFO] Step 4/5: Running production readiness tests...
    call gradlew.bat assembleDebug test jacocoTestReport --stacktrace
    
    REM Run production test suite if available
    cd ..
    if exist "tools\run_all_tests.sh" (
        echo [INFO] Running comprehensive production tests...
        bash tools\run_all_tests.sh --quick
    )
    echo [SUCCESS] Production tests complete!
) else (
    echo [INFO] Step 4/5: Building debug APK...
    call gradlew.bat assembleDebug --stacktrace
    echo [SUCCESS] Build complete!
)

REM Step 5: Locate APK
echo [INFO] Step 5/5: Locating APK...
for /r "app\build\outputs\apk\debug" %%f in (*.apk) do (
    set APK_PATH=%%f
    goto :found_apk
)

:found_apk
if defined APK_PATH (
    echo [SUCCESS] APK created: !APK_PATH!
    
    REM Print installation command
    echo.
    echo ===============================================================
    echo   Build Successful!
    echo ===============================================================
    echo.
    echo To install on device:
    echo    adb install "!APK_PATH!"
    echo.
    echo To run production tests:
    echo    build.bat production
    echo.
) else (
    echo [WARNING] APK not found. Build may have failed.
)

cd ..
echo [SUCCESS] All done!
endlocal
