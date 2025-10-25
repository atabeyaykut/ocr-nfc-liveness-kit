# FULL_CLEAN.ps1
# React Native Tam Temizleme Scripti - RNCamera Error Fix
# Kullanım: PowerShell'de ".\FULL_CLEAN.ps1" komutuyla çalıştır

Write-Host "============================================" -ForegroundColor Cyan
Write-Host "   OCR Mobile App - Full Clean Script      " -ForegroundColor Cyan
Write-Host "   RNCamera Error Fix                      " -ForegroundColor Cyan
Write-Host "============================================" -ForegroundColor Cyan
Write-Host ""

$ErrorActionPreference = "SilentlyContinue"

# 0. Çalışan Metro process'lerini kapat
Write-Host "[0/8] Metro Bundler kapatılıyor..." -ForegroundColor Yellow
Get-Process -Name "node" | Where-Object { $_.Path -like "*node.exe*" } | Stop-Process -Force 2>$null
Start-Sleep -Seconds 2
Write-Host "   ✓ Metro durduruldu" -ForegroundColor Green

# 1. Metro bundler cache temizle
Write-Host "[1/8] Metro cache temizleniyor..." -ForegroundColor Yellow
Remove-Item -Recurse -Force "$env:TEMP\metro-*" 2>$null
Remove-Item -Recurse -Force "$env:TEMP\react-*" 2>$null
Remove-Item -Recurse -Force "$env:TEMP\haste-*" 2>$null
Remove-Item -Recurse -Force "$env:LOCALAPPDATA\Temp\metro-*" 2>$null
Remove-Item -Recurse -Force "$env:LOCALAPPDATA\Temp\react-*" 2>$null
Write-Host "   ✓ Metro cache temizlendi" -ForegroundColor Green

# 2. Watchman cache (eğer yüklüyse)
Write-Host "[2/8] Watchman temizleniyor..." -ForegroundColor Yellow
if (Get-Command watchman -ErrorAction SilentlyContinue) {
    watchman watch-del-all 2>$null
    Write-Host "   ✓ Watchman cache temizlendi" -ForegroundColor Green
} else {
    Write-Host "   ℹ Watchman yüklü değil (optional)" -ForegroundColor Gray
}

# 3. Gradle daemon durdur ve cache temizle
Write-Host "[3/8] Gradle temizleniyor..." -ForegroundColor Yellow
if (Test-Path "android") {
    Push-Location android
    .\gradlew --stop 2>$null
    Start-Sleep -Seconds 2
    .\gradlew clean 2>$null
    Pop-Location
    Write-Host "   ✓ Gradle temizlendi" -ForegroundColor Green
} else {
    Write-Host "   ⚠ android klasörü bulunamadı" -ForegroundColor Red
}

# 4. Gradle cache (global)
Write-Host "[4/8] Global Gradle cache temizleniyor..." -ForegroundColor Yellow
Remove-Item -Recurse -Force "$env:USERPROFILE\.gradle\caches" 2>$null
Remove-Item -Recurse -Force "$env:USERPROFILE\.gradle\daemon" 2>$null
Write-Host "   ✓ Global Gradle cache temizlendi" -ForegroundColor Green

# 5. Android build klasörleri
Write-Host "[5/8] Android build klasörleri temizleniyor..." -ForegroundColor Yellow
Remove-Item -Recurse -Force "android\app\build" 2>$null
Remove-Item -Recurse -Force "android\build" 2>$null
Remove-Item -Recurse -Force "android\.gradle" 2>$null
Write-Host "   ✓ Android build klasörleri temizlendi" -ForegroundColor Green

# 6. React Native global cache
Write-Host "[6/8] React Native global cache temizleniyor..." -ForegroundColor Yellow
Remove-Item -Recurse -Force "$env:USERPROFILE\.rncache" 2>$null
Write-Host "   ✓ RN global cache temizlendi" -ForegroundColor Green

# 7. Node modules ve package-lock
Write-Host "[7/8] Node modules temizleniyor..." -ForegroundColor Yellow
Remove-Item -Recurse -Force "node_modules" 2>$null
Remove-Item -Force "package-lock.json" 2>$null
Write-Host "   ✓ Node modules temizlendi" -ForegroundColor Green

# 8. Yeniden yükle
Write-Host "[8/8] Node modules yeniden yükleniyor..." -ForegroundColor Yellow
Write-Host "   (Bu 2-5 dakika sürebilir...)" -ForegroundColor Gray
npm install
if ($LASTEXITCODE -eq 0) {
    Write-Host "   ✓ Node modules yüklendi" -ForegroundColor Green
} else {
    Write-Host "   ⚠ npm install hatası!" -ForegroundColor Red
    exit 1
}

Write-Host ""
Write-Host "============================================" -ForegroundColor Green
Write-Host "   ✅ TAM TEMİZLİK TAMAMLANDI!             " -ForegroundColor Green
Write-Host "============================================" -ForegroundColor Green
Write-Host ""
Write-Host "🚀 Şimdi uygulamayı çalıştır:" -ForegroundColor Cyan
Write-Host ""
Write-Host "   TERMINAL 1 (Metro Bundler):" -ForegroundColor Yellow
Write-Host "   npx react-native start --reset-cache" -ForegroundColor White
Write-Host ""
Write-Host "   TERMINAL 2 (Android):" -ForegroundColor Yellow
Write-Host "   npx react-native run-android" -ForegroundColor White
Write-Host ""
Write-Host "💡 İpucu: Metro'yu --reset-cache ile başlatmayı unutma!" -ForegroundColor Cyan
Write-Host ""
