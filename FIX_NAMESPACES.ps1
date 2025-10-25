# ============================================================================
# ANDROID NAMESPACE FIX SCRIPT
# ============================================================================
# Bu script tüm React Native paketlerinin namespace hatalarını düzeltir
# Windows PowerShell için optimize edilmiştir

Write-Host "============================================" -ForegroundColor Cyan
Write-Host "  ANDROID NAMESPACE FIX" -ForegroundColor Cyan
Write-Host "============================================" -ForegroundColor Cyan
Write-Host ""

# Ana dizinde olduğumuzu kontrol et
if (-not (Test-Path "package.json")) {
    Write-Host "HATA: package.json bulunamadı!" -ForegroundColor Red
    Write-Host "Lütfen proje ana dizininde çalıştırın." -ForegroundColor Red
    exit 1
}

# 1. node_modules'ü temizle ve yeniden yükle
Write-Host "[1/5] node_modules temizleniyor ve yeniden yükleniyor..." -ForegroundColor Yellow
if (Test-Path "node_modules") {
    Remove-Item -Recurse -Force "node_modules" 2>$null
}
Remove-Item -Force "package-lock.json" -ErrorAction SilentlyContinue
Remove-Item -Force "yarn.lock" -ErrorAction SilentlyContinue

Write-Host "   → npm cache temizleniyor..." -ForegroundColor Gray
npm cache clean --force 2>$null

Write-Host "   → npm install çalıştırılıyor..." -ForegroundColor Gray
npm install
if ($LASTEXITCODE -ne 0) {
    Write-Host "   ✗ npm install BAŞARISIZ!" -ForegroundColor Red
    exit 1
}
Write-Host "   ✓ node_modules yeniden yüklendi" -ForegroundColor Green
Write-Host ""

# 2. patch-package yüklü mü kontrol et
Write-Host "[2/5] patch-package kontrol ediliyor..." -ForegroundColor Yellow
$patchPackageExists = Test-Path "node_modules/.bin/patch-package.cmd"
if (-not $patchPackageExists) {
    Write-Host "   → patch-package yükleniyor..." -ForegroundColor Gray
    npm install --save-dev patch-package
}
Write-Host "   ✓ patch-package hazır" -ForegroundColor Green
Write-Host ""

# 3. Patch dosyalarını uygula
Write-Host "[3/5] Namespace patch'leri uygulanıyor..." -ForegroundColor Yellow

# ML Kit Text Recognition
$textRecognitionBuildGradle = "node_modules\@react-native-ml-kit\text-recognition\android\build.gradle"
if (Test-Path $textRecognitionBuildGradle) {
    Write-Host "   → ML Kit Text Recognition namespace ekleniyor..." -ForegroundColor Gray
    
    $content = Get-Content $textRecognitionBuildGradle -Raw
    if ($content -notmatch 'namespace\s+"com\.rnmlkit\.textrecognition"') {
        $content = $content -replace '(android\s*\{)', "`$1`n    namespace `"com.rnmlkit.textrecognition`""
        Set-Content $textRecognitionBuildGradle -Value $content -NoNewline
        Write-Host "   ✓ Text Recognition namespace eklendi" -ForegroundColor Green
    } else {
        Write-Host "   ℹ Text Recognition namespace zaten mevcut" -ForegroundColor Gray
    }
    
    # AndroidManifest.xml'den package attribute'u kaldır
    $textRecognitionManifest = "node_modules\@react-native-ml-kit\text-recognition\android\src\main\AndroidManifest.xml"
    if (Test-Path $textRecognitionManifest) {
        $manifestContent = Get-Content $textRecognitionManifest -Raw
        $manifestContent = $manifestContent -replace '\s*package="[^"]*"', ''
        Set-Content $textRecognitionManifest -Value $manifestContent -NoNewline
    }
} else {
    Write-Host "   ⚠ ML Kit Text Recognition bulunamadı (yüklü değil mi?)" -ForegroundColor Yellow
}

# ML Kit Face Detection
$faceDetectionBuildGradle = "node_modules\@react-native-ml-kit\face-detection\android\build.gradle"
if (Test-Path $faceDetectionBuildGradle) {
    Write-Host "   → ML Kit Face Detection namespace kontrol ediliyor..." -ForegroundColor Gray
    
    $content = Get-Content $faceDetectionBuildGradle -Raw
    if ($content -notmatch 'namespace\s+"com\.rnmlkit\.facedetection"') {
        $content = $content -replace '(android\s*\{)', "`$1`n    namespace `"com.rnmlkit.facedetection`""
        Set-Content $faceDetectionBuildGradle -Value $content -NoNewline
        Write-Host "   ✓ Face Detection namespace eklendi" -ForegroundColor Green
    } else {
        Write-Host "   ℹ Face Detection namespace zaten mevcut" -ForegroundColor Gray
    }
    
    # AndroidManifest.xml'den package attribute'u kaldır
    $faceDetectionManifest = "node_modules\@react-native-ml-kit\face-detection\android\src\main\AndroidManifest.xml"
    if (Test-Path $faceDetectionManifest) {
        $manifestContent = Get-Content $faceDetectionManifest -Raw
        $manifestContent = $manifestContent -replace '\s*package="[^"]*"', ''
        Set-Content $faceDetectionManifest -Value $manifestContent -NoNewline
    }
} else {
    Write-Host "   ⚠ ML Kit Face Detection bulunamadı" -ForegroundColor Yellow
}

# React Native NFC Manager
$nfcBuildGradle = "node_modules\react-native-nfc-manager\android\build.gradle"
if (Test-Path $nfcBuildGradle) {
    Write-Host "   → NFC Manager namespace kontrol ediliyor..." -ForegroundColor Gray
    
    $content = Get-Content $nfcBuildGradle -Raw
    if ($content -notmatch 'namespace\s+"community\.revteltech\.nfc"') {
        $content = $content -replace '(android\s*\{)', "`$1`n    namespace `"community.revteltech.nfc`""
        Set-Content $nfcBuildGradle -Value $content -NoNewline
        Write-Host "   ✓ NFC Manager namespace eklendi" -ForegroundColor Green
    } else {
        Write-Host "   ℹ NFC Manager namespace zaten mevcut" -ForegroundColor Gray
    }
}

# React Native Vision Camera
$visionCameraBuildGradle = "node_modules\react-native-vision-camera\android\build.gradle"
if (Test-Path $visionCameraBuildGradle) {
    Write-Host "   → Vision Camera namespace kontrol ediliyor..." -ForegroundColor Gray
    
    $content = Get-Content $visionCameraBuildGradle -Raw
    if ($content -notmatch 'namespace\s+"com\.mrousavy\.camera"') {
        $content = $content -replace '(android\s*\{)', "`$1`n    namespace `"com.mrousavy.camera`""
        Set-Content $visionCameraBuildGradle -Value $content -NoNewline
        Write-Host "   ✓ Vision Camera namespace eklendi" -ForegroundColor Green
    } else {
        Write-Host "   ℹ Vision Camera namespace zaten mevcut" -ForegroundColor Gray
    }
}

# React Native Image Crop Picker
$imageCropPickerBuildGradle = "node_modules\react-native-image-crop-picker\android\build.gradle"
if (Test-Path $imageCropPickerBuildGradle) {
    Write-Host "   → Image Crop Picker namespace kontrol ediliyor..." -ForegroundColor Gray
    
    $content = Get-Content $imageCropPickerBuildGradle -Raw
    if ($content -notmatch 'namespace\s+"com\.reactnative\.ivpusic\.imagepicker"') {
        $content = $content -replace '(android\s*\{)', "`$1`n    namespace `"com.reactnative.ivpusic.imagepicker`""
        Set-Content $imageCropPickerBuildGradle -Value $content -NoNewline
        Write-Host "   ✓ Image Crop Picker namespace eklendi" -ForegroundColor Green
    } else {
        Write-Host "   ℹ Image Crop Picker namespace zaten mevcut" -ForegroundColor Gray
    }
}

Write-Host ""

# 4. Patch dosyalarını oluştur (gelecek için)
Write-Host "[4/5] Patch dosyaları oluşturuluyor..." -ForegroundColor Yellow
if (Test-Path "node_modules\.bin\patch-package.cmd") {
    Write-Host "   → Değişiklikler patch olarak kaydediliyor..." -ForegroundColor Gray
    & "node_modules\.bin\patch-package.cmd" "@react-native-ml-kit/text-recognition" 2>$null
    & "node_modules\.bin\patch-package.cmd" "@react-native-ml-kit/face-detection" 2>$null
    Write-Host "   ✓ Patch dosyaları oluşturuldu (patches/ klasöründe)" -ForegroundColor Green
} else {
    Write-Host "   ⚠ patch-package bulunamadı, manuel düzeltmeler kalıcı değil" -ForegroundColor Yellow
}
Write-Host ""

# 5. Gradle clean
Write-Host "[5/5] Gradle temizleniyor..." -ForegroundColor Yellow
if (Test-Path "android") {
    Push-Location android
    Write-Host "   → gradlew clean çalıştırılıyor..." -ForegroundColor Gray
    .\gradlew clean 2>$null
    if ($LASTEXITCODE -eq 0) {
        Write-Host "   ✓ Gradle clean başarılı" -ForegroundColor Green
    } else {
        Write-Host "   ⚠ Gradle clean başarısız (normal olabilir)" -ForegroundColor Yellow
    }
    Pop-Location
}
Write-Host ""

# Özet
Write-Host "============================================" -ForegroundColor Cyan
Write-Host "  ✓ NAMESPACE FIX TAMAMLANDI!" -ForegroundColor Green
Write-Host "============================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "ŞİMDİ YAPIN:" -ForegroundColor Yellow
Write-Host "1. cd android" -ForegroundColor White
Write-Host "2. .\gradlew clean" -ForegroundColor White
Write-Host "3. .\gradlew assembleDebug" -ForegroundColor White
Write-Host ""
Write-Host "VEYA:" -ForegroundColor Yellow
Write-Host "npx react-native run-android" -ForegroundColor White
Write-Host ""
