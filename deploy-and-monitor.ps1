# ====================================
# React Native - Temiz Build ve Deploy Script
# ====================================

Write-Host "==================================" -ForegroundColor Cyan
Write-Host "React Native Build & Deploy Tool" -ForegroundColor Cyan
Write-Host "==================================" -ForegroundColor Cyan
Write-Host ""

# Fonksiyon: Cihaz kontrolü
function Check-Device {
    Write-Host "[1/6] Cihaz kontrolü yapılıyor..." -ForegroundColor Yellow
    $devices = adb devices
    if ($devices -match "device$") {
        Write-Host "✓ Cihaz bağlı ve hazır" -ForegroundColor Green
        Write-Host $devices
        return $true
    } else {
        Write-Host "✗ Cihaz bulunamadı!" -ForegroundColor Red
        Write-Host "Lütfen USB debugging açık bir Android cihaz bağlayın." -ForegroundColor Red
        return $false
    }
}

# Fonksiyon: Metro bundler'ı durdur
function Stop-MetroBundler {
    Write-Host "[2/6] Eski Metro bundler kapatılıyor..." -ForegroundColor Yellow
    Get-Process -Name "node" -ErrorAction SilentlyContinue | Where-Object {
        $_.MainWindowTitle -like "*Metro*"
    } | Stop-Process -Force
    Write-Host "✓ Metro bundler temizlendi" -ForegroundColor Green
}

# Fonksiyon: Temiz build
function Clean-Build {
    Write-Host "[3/6] Temiz build başlatılıyor..." -ForegroundColor Yellow
    
    # Android temizleme
    Push-Location android
    Write-Host "  - Gradle clean çalıştırılıyor..." -ForegroundColor Gray
    .\gradlew.bat clean
    Pop-Location
    
    # Metro cache temizleme
    Write-Host "  - Metro cache temizleniyor..." -ForegroundColor Gray
    npx react-native start --reset-cache &
    Start-Sleep -Seconds 3
    Get-Process -Name "node" -ErrorAction SilentlyContinue | Stop-Process -Force
    
    Write-Host "✓ Temizleme tamamlandı" -ForegroundColor Green
}

# Fonksiyon: Build ve yükleme
function Build-And-Install {
    Write-Host "[4/6] Uygulama build ediliyor ve yükleniyor..." -ForegroundColor Yellow
    Write-Host "  - Bu işlem 2-5 dakika sürebilir..." -ForegroundColor Gray
    
    npx react-native run-android --verbose
    
    if ($LASTEXITCODE -eq 0) {
        Write-Host "✓ Uygulama başarıyla yüklendi" -ForegroundColor Green
        return $true
    } else {
        Write-Host "✗ Build hatası oluştu" -ForegroundColor Red
        return $false
    }
}

# Fonksiyon: Metro başlat
function Start-Metro {
    Write-Host "[5/6] Metro bundler başlatılıyor..." -ForegroundColor Yellow
    Start-Process powershell -ArgumentList "-NoExit", "-Command", "npx react-native start"
    Start-Sleep -Seconds 5
    Write-Host "✓ Metro bundler yeni pencerede başlatıldı" -ForegroundColor Green
}

# Fonksiyon: Log takibi
function Start-Logging {
    Write-Host "[6/6] Log takibi başlatılıyor..." -ForegroundColor Yellow
    Write-Host "  - Loglar filtrelenmiş olarak gösterilecek" -ForegroundColor Gray
    Write-Host "  - Durdurmak için Ctrl+C tuşlayın" -ForegroundColor Gray
    Write-Host ""
    Write-Host "==================================" -ForegroundColor Cyan
    Write-Host "LOG AKIŞI BAŞLADI" -ForegroundColor Cyan
    Write-Host "==================================" -ForegroundColor Cyan
    Write-Host ""
    
    # React Native logları
    adb logcat -s ReactNative:V ReactNativeJS:V AndroidRuntime:E *:E
}

# Ana akış
Write-Host "Bu script şunları yapacak:" -ForegroundColor White
Write-Host "  1. Cihaz kontrolü" -ForegroundColor White
Write-Host "  2. Eski process'leri temizleme" -ForegroundColor White
Write-Host "  3. Temiz build (clean + cache temizleme)" -ForegroundColor White
Write-Host "  4. Telefona yükleme" -ForegroundColor White
Write-Host "  5. Metro bundler başlatma" -ForegroundColor White
Write-Host "  6. Log takibi" -ForegroundColor White
Write-Host ""

$continue = Read-Host "Devam etmek istiyor musunuz? (E/H)"
if ($continue -ne "E" -and $continue -ne "e") {
    Write-Host "İşlem iptal edildi." -ForegroundColor Yellow
    exit
}

Write-Host ""

# Adımları çalıştır
if (-not (Check-Device)) {
    exit
}

Stop-MetroBundler
Clean-Build
$buildSuccess = Build-And-Install

if ($buildSuccess) {
    Start-Metro
    Start-Sleep -Seconds 2
    Start-Logging
} else {
    Write-Host ""
    Write-Host "Build başarısız oldu. Lütfen hataları kontrol edin." -ForegroundColor Red
}
