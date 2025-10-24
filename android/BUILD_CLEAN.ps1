# BUILD_CLEAN.ps1
# Windows Build Temizleme Scripti
# Kullanım: PowerShell'de ".\BUILD_CLEAN.ps1" komutuyla çalıştır

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "   OCR Mobile App - Build Cleaner      " -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# 1. Gradle daemon'u durdur
Write-Host "🛑 Gradle daemon durduruluyor..." -ForegroundColor Yellow
.\gradlew --stop
Start-Sleep -Seconds 2

# 2. Gradle cache temizle
Write-Host "🧹 Gradle cache temizleniyor..." -ForegroundColor Yellow
if (Test-Path "$env:USERPROFILE\.gradle\caches") {
    Remove-Item -Recurse -Force "$env:USERPROFILE\.gradle\caches" -ErrorAction SilentlyContinue
    Write-Host "   ✓ Gradle caches silindi" -ForegroundColor Green
}

if (Test-Path "$env:USERPROFILE\.gradle\daemon") {
    Remove-Item -Recurse -Force "$env:USERPROFILE\.gradle\daemon" -ErrorAction SilentlyContinue
    Write-Host "   ✓ Gradle daemon cache silindi" -ForegroundColor Green
}

# 3. Gradle clean
Write-Host "🧹 Gradle clean çalıştırılıyor..." -ForegroundColor Yellow
.\gradlew clean --no-daemon
Write-Host "   ✓ Gradle clean tamamlandı" -ForegroundColor Green

# 4. Build klasörlerini temizle
Write-Host "🧹 Build klasörleri temizleniyor..." -ForegroundColor Yellow

if (Test-Path ".\app\build") {
    Remove-Item -Recurse -Force ".\app\build" -ErrorAction SilentlyContinue
    Write-Host "   ✓ app/build silindi" -ForegroundColor Green
}

if (Test-Path ".\build") {
    Remove-Item -Recurse -Force ".\build" -ErrorAction SilentlyContinue
    Write-Host "   ✓ build silindi" -ForegroundColor Green
}

# 5. .gradle klasörünü temizle (proje içindeki)
if (Test-Path ".\.gradle") {
    Remove-Item -Recurse -Force ".\.gradle" -ErrorAction SilentlyContinue
    Write-Host "   ✓ .gradle klasörü silindi" -ForegroundColor Green
}

# Tamamlandı
Write-Host ""
Write-Host "========================================" -ForegroundColor Green
Write-Host "   ✅ TEMIZLIK TAMAMLANDI!             " -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Green
Write-Host ""
Write-Host "🚀 Şimdi build edebilirsiniz:" -ForegroundColor Cyan
Write-Host "   .\gradlew assembleDebug --no-daemon" -ForegroundColor White
Write-Host ""
Write-Host "   veya React Native ile:" -ForegroundColor Cyan
Write-Host "   npm run android" -ForegroundColor White
Write-Host ""
