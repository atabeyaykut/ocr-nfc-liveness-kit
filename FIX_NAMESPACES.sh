#!/bin/bash

# ============================================================================
# ANDROID NAMESPACE FIX SCRIPT (macOS/Linux)
# ============================================================================

set -e

echo "============================================"
echo "  ANDROID NAMESPACE FIX"
echo "============================================"
echo ""

# Ana dizinde olduğumuzu kontrol et
if [ ! -f "package.json" ]; then
    echo "❌ HATA: package.json bulunamadı!"
    echo "Lütfen proje ana dizininde çalıştırın."
    exit 1
fi

# 1. node_modules'ü temizle ve yeniden yükle
echo "[1/5] node_modules temizleniyor ve yeniden yükleniyor..."
rm -rf node_modules package-lock.json yarn.lock 2>/dev/null || true
npm cache clean --force
npm install
echo "   ✓ node_modules yeniden yüklendi"
echo ""

# 2. patch-package kontrol et
echo "[2/5] patch-package kontrol ediliyor..."
if [ ! -f "node_modules/.bin/patch-package" ]; then
    npm install --save-dev patch-package
fi
echo "   ✓ patch-package hazır"
echo ""

# 3. Namespace'leri ekle
echo "[3/5] Namespace patch'leri uygulanıyor..."

# ML Kit Text Recognition
TEXT_REC_GRADLE="node_modules/@react-native-ml-kit/text-recognition/android/build.gradle"
if [ -f "$TEXT_REC_GRADLE" ]; then
    echo "   → ML Kit Text Recognition namespace ekleniyor..."
    if ! grep -q 'namespace "com.rnmlkit.textrecognition"' "$TEXT_REC_GRADLE"; then
        sed -i.bak '/^android {$/a\    namespace "com.rnmlkit.textrecognition"' "$TEXT_REC_GRADLE"
        echo "   ✓ Text Recognition namespace eklendi"
    else
        echo "   ℹ Text Recognition namespace zaten mevcut"
    fi
    
    # AndroidManifest.xml'den package kaldır
    TEXT_REC_MANIFEST="node_modules/@react-native-ml-kit/text-recognition/android/src/main/AndroidManifest.xml"
    if [ -f "$TEXT_REC_MANIFEST" ]; then
        sed -i.bak 's/package="[^"]*"//g' "$TEXT_REC_MANIFEST"
    fi
fi

# ML Kit Face Detection
FACE_DET_GRADLE="node_modules/@react-native-ml-kit/face-detection/android/build.gradle"
if [ -f "$FACE_DET_GRADLE" ]; then
    echo "   → ML Kit Face Detection namespace kontrol ediliyor..."
    if ! grep -q 'namespace "com.rnmlkit.facedetection"' "$FACE_DET_GRADLE"; then
        sed -i.bak '/^android {$/a\    namespace "com.rnmlkit.facedetection"' "$FACE_DET_GRADLE"
        echo "   ✓ Face Detection namespace eklendi"
    else
        echo "   ℹ Face Detection namespace zaten mevcut"
    fi
    
    FACE_DET_MANIFEST="node_modules/@react-native-ml-kit/face-detection/android/src/main/AndroidManifest.xml"
    if [ -f "$FACE_DET_MANIFEST" ]; then
        sed -i.bak 's/package="[^"]*"//g' "$FACE_DET_MANIFEST"
    fi
fi

# NFC Manager
NFC_GRADLE="node_modules/react-native-nfc-manager/android/build.gradle"
if [ -f "$NFC_GRADLE" ]; then
    echo "   → NFC Manager namespace kontrol ediliyor..."
    if ! grep -q 'namespace "community.revteltech.nfc"' "$NFC_GRADLE"; then
        sed -i.bak '/^android {$/a\    namespace "community.revteltech.nfc"' "$NFC_GRADLE"
        echo "   ✓ NFC Manager namespace eklendi"
    fi
fi

# Vision Camera
VISION_GRADLE="node_modules/react-native-vision-camera/android/build.gradle"
if [ -f "$VISION_GRADLE" ]; then
    echo "   → Vision Camera namespace kontrol ediliyor..."
    if ! grep -q 'namespace "com.mrousavy.camera"' "$VISION_GRADLE"; then
        sed -i.bak '/^android {$/a\    namespace "com.mrousavy.camera"' "$VISION_GRADLE"
        echo "   ✓ Vision Camera namespace eklendi"
    fi
fi

# Image Crop Picker
IMAGE_PICKER_GRADLE="node_modules/react-native-image-crop-picker/android/build.gradle"
if [ -f "$IMAGE_PICKER_GRADLE" ]; then
    echo "   → Image Crop Picker namespace kontrol ediliyor..."
    if ! grep -q 'namespace "com.reactnative.ivpusic.imagepicker"' "$IMAGE_PICKER_GRADLE"; then
        sed -i.bak '/^android {$/a\    namespace "com.reactnative.ivpusic.imagepicker"' "$IMAGE_PICKER_GRADLE"
        echo "   ✓ Image Crop Picker namespace eklendi"
    fi
fi

# Backup dosyalarını temizle
find node_modules -name "*.bak" -delete 2>/dev/null || true

echo ""

# 4. Patch dosyaları oluştur
echo "[4/5] Patch dosyaları oluşturuluyor..."
npx patch-package @react-native-ml-kit/text-recognition 2>/dev/null || true
npx patch-package @react-native-ml-kit/face-detection 2>/dev/null || true
echo "   ✓ Patch dosyaları oluşturuldu"
echo ""

# 5. Gradle clean
echo "[5/5] Gradle temizleniyor..."
if [ -d "android" ]; then
    cd android
    ./gradlew clean 2>/dev/null || echo "   ⚠ Gradle clean başarısız (normal olabilir)"
    cd ..
fi
echo ""

echo "============================================"
echo "  ✓ NAMESPACE FIX TAMAMLANDI!"
echo "============================================"
echo ""
echo "ŞİMDİ YAPIN:"
echo "1. cd android"
echo "2. ./gradlew clean"
echo "3. ./gradlew assembleDebug"
echo ""
echo "VEYA:"
echo "npx react-native run-android"
echo ""
