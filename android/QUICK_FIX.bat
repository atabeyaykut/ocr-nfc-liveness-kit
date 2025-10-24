@echo off
REM QUICK_FIX.bat
REM Windows Gradle Daemon Crash - Hızlı Düzeltme
REM Kullanım: Çift tıkla veya cmd'de "QUICK_FIX.bat"

echo ========================================
echo    OCR Mobile App - Quick Fix
echo ========================================
echo.

REM Gradle daemon'u durdur
echo [1/4] Gradle daemon durduruluyor...
call gradlew.bat --stop
timeout /t 2 /nobreak >nul

REM Gradle clean
echo [2/4] Gradle clean yapiliyor...
call gradlew.bat clean --no-daemon

REM Build klasörlerini temizle
echo [3/4] Build klasorleri temizleniyor...
if exist ".\app\build" rmdir /s /q ".\app\build"
if exist ".\build" rmdir /s /q ".\build"
if exist ".\.gradle" rmdir /s /q ".\.gradle"

REM Build dene
echo [4/4] Build deneniyor...
call gradlew.bat assembleDebug --no-daemon --stacktrace

echo.
echo ========================================
if %errorlevel% equ 0 (
    echo    BUILD BASARILI!
) else (
    echo    BUILD BASARISIZ!
    echo    Detaylar icin FIX_WINDOWS_BUILD.md dosyasina bakin
)
echo ========================================
echo.

pause
