# 🚀 OCR SDK Production Readiness Test Guide

Bu rehber, Android 11 (API 30) cihazda OCR SDK'nın production-ready olup olmadığını tam kapsamlı kontrol etmek için kullanılacak.

## 📋 Ön Gereksinimler

### Cihaz Gereksinimleri
- ✅ Android 11 (API 30) cihaz
- ✅ NFC özelliği (tercihen)
- ✅ Kamera erişimi
- ✅ USB debugging aktif
- ✅ Geliştirici seçenekleri açık

### Yazılım Gereksinimleri
- ✅ adb (Android Debug Bridge) kurulu
- ✅ Node.js kurulu
- ✅ Python 3 kurulu (test fixtures için)
- ✅ OCR SDK APK built ve installed

## 🔧 Kurulum Adımları

### 1. APK Build ve Install
```bash
cd android
./gradlew assembleDebug
adb install -r app/build/outputs/apk/debug/app-debug.apk
```

### 2. Test Fixtures Oluşturma
```bash
cd tools/fixtures
python3 create_test_fixtures.py
```

### 3. Script İzinleri
```bash
chmod +x tools/*.sh
```

## 🧪 Test Execution

### Hızlı Test (Önerilen)
```bash
./tools/run_all_tests.sh --quick
```

### Tam Test Paketi
```bash
./tools/run_all_tests.sh
```

### Bireysel Testler

#### 1. Device Capability Check
```bash
./tools/device_check.sh
# Output: tools/capabilities.json
```

#### 2. Runtime Capability Test
```bash
./tools/run_capability_check.sh
# Output: tools/runtime_capabilities.json
```

#### 3. NFC Tests (Manual Mode)
```bash
./tools/nfc_test_runner.sh --manual
# Output: tools/nfc_logs.txt, tools/nfc_test_results.xml
```

#### 4. OCR Performance Tests
```bash
./tools/ocr_test_runner.sh --count 50
# Output: tools/ocr_results.json, tools/meminfo_*.txt
```

#### 5. Token Lifecycle Tests
```bash
./tools/token_ttl_test.sh --quick
# Output: tools/token_test.json
```

#### 6. PII Log Scanning
```bash
./tools/scan_logs_for_pii.sh
# Output: tools/full_logcat.txt, tools/pii_candidates.txt
```

#### 7. Performance Smoke Tests
```bash
./tools/perf_smoke.sh --count 10
# Output: tools/perf_report.json
```

#### 8. Fallback Tests
```bash
# NFC disabled test
./tools/simulate_no_nfc.sh

# Camera permission revoked test
./tools/simulate_camera_revoked.sh

# Restore permissions
./tools/simulate_no_nfc.sh --restore
./tools/simulate_camera_revoked.sh --restore
```

#### 9. Master Smoke Tests
```bash
./tools/smoke_test.sh --quick
# Output: tools/smoke_results.json
```

## 📊 Sonuç Analizi

### Ana Rapor
```bash
# Ana test raporu
cat tools/production_readiness_report.json | jq '.'

# Özet
jq '.summary' tools/production_readiness_report.json
```

### Bireysel Sonuçlar
```bash
# Device capabilities
jq '.' tools/capabilities.json

# Performance results
jq '.summary' tools/ocr_results.json

# Token test results
jq '.summary' tools/token_test.json

# PII scan results
wc -l tools/pii_candidates.txt
```

## ✅ Kabul Kriterleri

### Kritik Gereksinimler (PASS olmalı)
- ✅ `capabilities.json`: `sdkInt >= 30`, `cameraAvailable: true`
- ✅ `ocr_results.json`: `medianLatencyMs <= 3000`, `heapIncreasePercent <= 20`
- ✅ `token_test.json`: One-time use ve TTL enforced
- ✅ `pii_candidates.txt`: Empty veya sadece false positives
- ✅ `smoke_results.json`: `overallResult: "PASS"`

### Opsiyonel Gereksinimler (WARNING kabul edilebilir)
- ⚠️ NFC tests: Chip yoksa `AA_NOT_SUPPORTED` kabul edilebilir
- ⚠️ Performance: Hafif aşımlar kabul edilebilir
- ⚠️ Fallback tests: Minor issues kabul edilebilir

## 🔍 Troubleshooting

### Common Issues

#### 1. "adb not found"
```bash
# Android SDK Platform Tools kurulu değil
# Download: https://developer.android.com/studio/releases/platform-tools
export PATH=$PATH:/path/to/platform-tools
```

#### 2. "No device connected"
```bash
# USB debugging kontrol et
adb devices
# Eğer "unauthorized" görünüyorsa, cihazda debugging'i onayla
```

#### 3. "App not installed"
```bash
# APK build ve install
cd android
./gradlew assembleDebug
adb install -r app/build/outputs/apk/debug/app-debug.apk
```

#### 4. "NFC not available"
```bash
# NFC settings kontrol et
adb shell dumpsys nfc
# Eğer disabled ise: Settings > Connected devices > NFC
```

#### 5. "Camera permission denied"
```bash
# App permissions kontrol et
adb shell dumpsys package com.ocrmobilesdk | grep CAMERA
# Manuel olarak Settings > Apps > OCR SDK > Permissions
```

### Log Analysis

#### Performance Issues
```bash
# OCR latency yüksekse
jq '.rawData.latencies | sort | .[length/2]' tools/ocr_results.json

# Memory leak varsa
diff tools/meminfo_before.txt tools/meminfo_after.txt
```

#### PII Leakage
```bash
# PII candidates analizi
grep -v "^#" tools/pii_candidates.txt | head -10

# False positive kontrolü
grep "timestamp\|uid\|pid" tools/pii_candidates.txt
```

## 📈 Expected Results

### PASS Scenario
```json
{
  "summary": {
    "totalTests": 10,
    "passedTests": 10,
    "failedTests": 0,
    "successRate": 100.0,
    "overallResult": "PASS"
  }
}
```

### PASS_WITH_WARNINGS Scenario
```json
{
  "summary": {
    "totalTests": 10,
    "passedTests": 8,
    "failedTests": 0,
    "successRate": 80.0,
    "overallResult": "PASS_WITH_WARNINGS"
  }
}
```

### FAIL Scenario
```json
{
  "summary": {
    "totalTests": 10,
    "passedTests": 6,
    "failedTests": 4,
    "successRate": 60.0,
    "overallResult": "FAIL"
  }
}
```

## 🚀 Next Steps

### After PASS
1. ✅ SDK production-ready
2. 📦 Prepare release package
3. 📚 Update documentation
4. 🚀 Deploy to production

### After PASS_WITH_WARNINGS
1. ⚠️ Review warnings
2. 🔧 Fix non-critical issues
3. 📋 Document known limitations
4. 🚀 Consider deployment

### After FAIL
1. ❌ Fix critical issues
2. 🔄 Re-run failed tests
3. 📊 Analyze root causes
4. ⏳ Delay deployment

## 📞 Support

Eğer testler sırasında sorun yaşarsanız:

1. 📋 Test loglarını kontrol edin
2. 🔍 Error kodlarını analiz edin
3. 📊 Performance metrikleri inceleyin
4. 🔧 Gerekli düzeltmeleri yapın
5. 🔄 Testleri tekrar çalıştırın

---

**Son Güncelleme:** 2025-10-16  
**Test Suite Version:** 1.0.0  
**Compatibility:** Android API 23+
