# ⚠️ Proje Sorun Raporu

## 🔍 Tespit Edilen Sorunlar

### 1. ❌ KRITIK: Eksik Bağımlılık - react-native-image-picker

**Dosya**: `examples/SecureOCRExample.js:18`

```javascript
import { launchCamera } from 'react-native-image-picker';
```

**Sorun**: Bu paket `package.json`'da YOK ama kod içinde kullanılıyor.

**Etki**: SecureOCRExample ekranı açıldığında crash olacak (RNCamera hatası gibi).

**Çözüm**:
```powershell
npm install react-native-image-picker
cd android && .\gradlew clean && cd ..
```

**VEYA** Varolan `react-native-image-crop-picker` kullan:
```javascript
// Dosya: examples/SecureOCRExample.js
// Değiştir:
import { launchCamera } from 'react-native-image-picker';
// Şununla:
import ImageCropPicker from 'react-native-image-crop-picker';

// Ve fonksiyonu güncelle:
const image = await ImageCropPicker.openCamera({
  width: 1920,
  height: 1080,
  cropping: false,
  includeBase64: false,
});
```

---

### 2. ⚠️ UYARI: Deprecated API - useCameraDevices

**Dosyalar**:
- `modules/camera/CameraModule.js`
- `modules/ocr/OCRCamera.js`
- `modules/ocr/OCRCameraCapture.js`
- `examples/LivenessDemoScreen.js`

**Sorun**: `react-native-vision-camera` v4'te `useCameraDevices()` deprecated oldu.

**Mevcut Kod**:
```javascript
const devices = useCameraDevices();
const device = devices.back;
```

**Önerilen Kod**:
```javascript
const device = useCameraDevice('back');
```

**Etki**: Şu an çalışıyor ama gelecekte kaldırılacak. Warning logları oluşturur.

**Çözüm**: API'yi güncellemek için tüm dosyaları düzelt.

---

### 3. ℹ️ DÜŞÜK: Test Dosyası Kullanımda Değil

**Dosya**: `SecureOCRExample.js`

Bu dosya MainApp.js'de import edilmiyor, navigation'da yok.

**Sorun**: Dead code.

**Önerilen**: Ya kullan ya da sil.

---

## 📊 Özet

| Sorun | Önem Derecesi | Durum | Hızlı Çözüm |
|-------|--------------|-------|------------|
| react-native-image-picker eksik | 🔴 KRITIK | Aktif Değil | Paketi yükle VEYA kodu düzelt |
| useCameraDevices deprecated | 🟡 UYARI | Çalışıyor | API güncellemesi lazım |
| SecureOCRExample kullanılmıyor | ⚪ BİLGİ | Zarar yok | Temizlik yapılabilir |

---

## ✅ Önerilen Aksiyonlar

### Hemen Yapılması Gerekenler:

#### 1. SecureOCRExample Düzeltmesi (ÖNERİLEN)

Mevcut `react-native-image-crop-picker` kullan:

```javascript
// examples/SecureOCRExample.js
// ESKİ:
import { launchCamera } from 'react-native-image-picker';

const result = await launchCamera({
  mediaType: 'photo',
  quality: 1,
});

// YENİ:
import ImageCropPicker from 'react-native-image-crop-picker';

const image = await ImageCropPicker.openCamera({
  width: 1920,
  height: 1080,
  cropping: false,
  includeBase64: false,
  mediaType: 'photo',
});

const result = {
  assets: [{ uri: image.path }]
};
```

#### 2. VEYA Yeni Paket Yükle

```powershell
npm install react-native-image-picker
cd android
.\gradlew clean
cd ..
npx react-native start --reset-cache
```

---

## 🔧 API Güncelleme Scripti (Gelecek İçin)

`useCameraDevices()` yerine `useCameraDevice()` kullanmak için:

### Değiştirilmesi Gereken Dosyalar:

1. **modules/camera/CameraModule.js**
2. **modules/ocr/OCRCamera.js**  
3. **modules/ocr/OCRCameraCapture.js**
4. **examples/LivenessDemoScreen.js**

### Değişiklik Şablonu:

```javascript
// ESKİ:
import { Camera, useCameraDevices } from 'react-native-vision-camera';
const devices = useCameraDevices();
const device = devices.back; // veya devices.front

// YENİ:
import { Camera, useCameraDevice } from 'react-native-vision-camera';
const device = useCameraDevice('back'); // veya 'front'
```

---

## 🛡️ Benzer Sorunları Önleme

### 1. Bağımlılık Kontrolü Scripti

`package.json`'a ekle:
```json
{
  "scripts": {
    "check:imports": "node scripts/check-imports.js"
  }
}
```

Script içeriği (`scripts/check-imports.js`):
```javascript
// Tüm import'ları tara
// package.json ile karşılaştır
// Eksik paketleri raporla
```

### 2. Pre-commit Hook

Commit öncesi kontrol:
```bash
npm run check:imports
```

### 3. Düzenli Paket Auditi

```powershell
npm audit
npm outdated
```

---

## 📝 Sonuç

**Şu An Çalışabilir mi?**
- ✅ Ana modüller (OCR, NFC, Liveness) çalışıyor
- ❌ SecureOCRExample ekranı crash olur (ama navigation'da yok)
- ⚠️ useCameraDevices warning'leri var ama çalışıyor

**Önerilen**: SecureOCRExample'ı düzelt (yukarıdaki çözümle).

**İsteğe Bağlı**: API güncellemesi yap (zaman ayırabilirsen).

---

**Rapor Tarihi**: 25 Ekim 2025, 03:19
**Durum**: Cache sorunu çözüldü, yeni sorunlar tespit edildi
**Öncelik**: DÜŞÜK (ana akış çalışıyor)
