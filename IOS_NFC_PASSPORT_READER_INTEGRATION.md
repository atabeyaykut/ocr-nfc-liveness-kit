# iOS NFCPassportReader Entegrasyon Dökümanı

## Genel Bakış

Bu dokümantasyon, [NFCPassportReader](https://github.com/AndyQ/NFCPassportReader) kütüphanesinin iOS native modülüne entegrasyonunu açıklar.

## Entegre Edilen Özellikler

### 1. NFCPassportReader Kütüphanesi
- ✅ ICAO 9303 standardına uygun pasaport/kimlik okuma
- ✅ BAC (Basic Access Control) desteği
- ✅ PACE (Password Authenticated Connection Establishment) desteği
- ✅ Secure Messaging
- ✅ Passive Authentication
- ✅ Active Authentication
- ✅ Chip Authentication (ECDH DES ve AES)
- ✅ Data Group okuma (DG1, DG2, DG7, DG11, DG12, DG14, DG15)

### 2. React Native Bridge
iOS native modülü React Native JavaScript koduna bridge edildi:
- `startReading()` - NFC okuma başlatır
- `stopReading()` - NFC okumayı durdurur
- `isSupported()` - Cihazın NFC desteğini kontrol eder
- `getStatus()` - Mevcut NFC durumunu döndürür

## Kurulum

### 1. Bağımlılıkları Yükle

```bash
cd ios
pod install
```

### 2. Info.plist Ayarları

iOS projesi için `Info.plist` dosyasına aşağıdaki izinleri ekleyin:

```xml
<key>NFCReaderUsageDescription</key>
<string>Kimlik kartınızı okumak için NFC erişimi gerekiyor</string>
<key>com.apple.developer.nfc.readersession.iso7816.select-identifiers</key>
<array>
    <string>A0000002471001</string>
</array>
```

### 3. Capabilities Ayarları

Xcode'da:
1. Target seçin
2. "Signing & Capabilities" sekmesine gidin
3. "+ Capability" butonuna tıklayın
4. "Near Field Communication Tag Reading" ekleyin

## Kullanım

### JavaScript (React Native) Tarafı

```javascript
import { NativeModules } from 'react-native';
const { NFCReaderModule } = NativeModules;

// OCR'dan alınan MRZ verileri
const mrzSeed = {
  documentNo: 'U123456789',
  birthDate: '01.01.1990',
  validUntil: '01.01.2030',
  mrzCheckDigits: {
    documentNo: '7',
    birthDate: '5',
    expiryDate: '8'
  }
};

// CAN numarası (PACE için - opsiyonel)
const canNumber = '123456';

// NFC okumayı başlat
await NFCReaderModule.startReading({
  mrzSeed: mrzSeed,           // BAC authentication için
  canNumber: canNumber,        // PACE authentication için (opsiyonel)
  alertMessage: 'Kimlik kartınızı cihazınızın arkasına yaklaştırın',
  timeoutSeconds: 60
});

// Event listener'lar
DeviceEventEmitter.addListener('NFC_SCAN_STARTED', (event) => {
  console.log('NFC okuma başladı', event);
});

DeviceEventEmitter.addListener('NFC_SCAN_COMPLETED', (event) => {
  console.log('Kimlik verisi:', event.data);
  // event.data içeriği:
  // {
  //   documentNo: string,
  //   name: string,
  //   surname: string,
  //   nationality: string,
  //   birthDate: string,
  //   validUntil: string,
  //   gender: string,
  //   photoBase64: string,
  //   authenticationMethod: 'BAC' | 'PACE'
  // }
});

DeviceEventEmitter.addListener('NFC_ERROR', (event) => {
  console.error('NFC hatası:', event.error);
});
```

### Mevcut NFCReaderModule.js Entegrasyonu

Mevcut JavaScript modülünüz (`modules/nfc/NFCReaderModule.js`) Android için çalışmaya devam edecek. iOS'ta ise otomatik olarak native Swift implementasyonu kullanılacak.

## Kimlik Doğrulama Metodları

### BAC (Basic Access Control)
- Eski nesil kimlik kartları için
- OCR ile okunan MRZ verilerini kullanır
- Document Number + Birth Date + Expiry Date + Check Digits

```javascript
const mrzSeed = {
  documentNo: 'U123456789',
  birthDate: '01.01.1990',  // DD.MM.YYYY formatı
  validUntil: '01.01.2030',
  mrzCheckDigits: {
    documentNo: '7',
    birthDate: '5',
    expiryDate: '8'
  }
};
```

### PACE (Password Authenticated Connection Establishment)
- Yeni nesil kimlik kartları için
- CAN (Card Access Number) kullanır
- Daha güvenli kriptografik protokol

```javascript
const canNumber = '123456'; // 6 haneli CAN numarası
```

## Check Digit Hesaplama

MRZ check digit'leri OCR'dan alınmalı. Eğer mevcut değilse, kütüphane otomatik hesaplar:

```
Weights: [7, 3, 1] (tekrar eden)
Formula: (sum of (value * weight)) % 10

Örnek: "U123456789"
U=30, 1=1, 2=2, 3=3, 4=4, 5=5, 6=6, 7=7, 8=8, 9=9
(30*7 + 1*3 + 2*1 + 3*7 + 4*3 + 5*1 + 6*7 + 7*3 + 8*1 + 9*7) % 10 = 7
```

## Data Groups

Aşağıdaki data group'lar okunur:
- **COM** - Common data (file list)
- **DG1** - MRZ data (Machine Readable Zone)
- **DG2** - Facial image

İhtiyaca göre ek data group'lar eklenebilir:
- DG7 - Signature image
- DG11 - Additional personal details
- DG12 - Additional document details
- DG14 - Security options
- DG15 - Active authentication public key

## Hata Yönetimi

### BAC Hataları
```
"BAC kimlik doğrulaması başarısız. OCR verilerini kontrol edin."
```
**Çözüm**: MRZ verilerinin doğruluğunu kontrol edin (documentNo, birthDate, expiryDate)

### PACE Hataları
```
"PACE kimlik doğrulaması başarısız. CAN numarasını kontrol edin."
```
**Çözüm**: CAN numarasının doğruluğunu kontrol edin (6 haneli)

### Güvenlik Hataları
```
"Güvenlik şartı sağlanmadı. BAC/PACE kimlik doğrulaması gerekli."
```
**Çözüm**: Modern kimlik kartları için BAC veya PACE authentication gereklidir

## Teknik Detaylar

### NFCPassportReader Özellikleri
- Swift Async/Await kullanır
- iOS 13+ gerektirir
- ICAO 9303 Part 3 ve Part 11 standartlarına uyumlu
- Secure Messaging (ISO/IEC 7816-4)
- Chip Authentication (ICAO Doc 9303 Part 11)

### Performans
- Tipik okuma süresi: 10-15 saniye
- Timeout: 60 saniye (özelleştirilebilir)
- Data group başına ~2-3 saniye

### Güvenlik
- Tüm iletişim Secure Messaging ile şifrelenir (BAC/PACE sonrası)
- Session key'ler ephemeral (geçici)
- Private key'ler cihazdan çıkmaz
- Photo data JPEG formatında base64 encoded

## Test

### Geliştirme Ortamı
```bash
# CocoaPods bağımlılıklarını yükle
cd ios
pod install

# Xcode ile aç
open OCRMobileSDK.xcworkspace

# Build ve Run
```

### Gerçek Cihaz Gerekli
⚠️ **NFC okuma özelliği simulator'de çalışmaz!**
- iPhone 7 veya üstü gerekli
- NFC özelliği olan kimlik kartı gerekli

### Test Senaryoları
1. ✅ OCR + BAC authentication
2. ✅ CAN + PACE authentication
3. ✅ Timeout handling
4. ✅ Kullanıcı cancel
5. ✅ Yanlış MRZ verisi
6. ✅ Yanlış CAN numarası

## Bilinen Sorunlar

1. **JPEG2000 Formatı**: Bazı eski kimlik kartlarında photo JPEG2000 formatında olabilir. NFCPassportReader bu formatı henüz decode etmiyor, ancak raw data'ya erişim mevcut.

2. **Android Uyumluluğu**: Bu entegrasyon sadece iOS içindir. Android için mevcut JavaScript implementasyonu kullanılmaya devam edilecek.

3. **CAN Zorunluluğu**: Bazı yeni kimlik kartları sadece PACE destekler ve CAN numarası zorunludur.

## Katkıda Bulunanlar

- **NFCPassportReader**: Andy Qua (https://github.com/AndyQ/NFCPassportReader)
- **Entegrasyon**: OCR NFC Liveness Kit Team

## Lisans

NFCPassportReader MIT lisansı altında dağıtılmaktadır.

## Referanslar

- [ICAO Doc 9303](https://www.icao.int/publications/pages/publication.aspx?docnum=9303)
- [NFCPassportReader GitHub](https://github.com/AndyQ/NFCPassportReader)
- [Apple NFC Documentation](https://developer.apple.com/documentation/corenfc)
- [ISO/IEC 7816-4](https://www.iso.org/standard/77180.html)

---

**Son Güncelleme**: 22 Kasım 2025
**Versiyon**: 1.0.0
