# BAC 6985 Hatası - Manuel Test Rehberi

## 🔴 Problem
`SW: 6985` hatası = Yanlış BAC kimlik doğrulama parametreleri

## ✅ Çözüm Adımları

### 1. Kimlik Kartı MRZ Kontrolü

Kimlik kartınızın **arka yüzündeki** MRZ satırlarını **çok dikkatli** okuyun:

```
Satır 1: I<TURA43D646181<10945153402<<<
         ↑ ↑   ↑         ↑
         │ │   │         └─ TC Kimlik No
         │ │   └─────────── Belge Numarası (Seri No)
         │ └─────────────── Ülke Kodu
         └───────────────── Belge Türü

Satır 2: 9809170M3308062TUR<<<<<<<<<<<4
         ↑      ↑ ↑       ↑            ↑
         │      │ │       │            └─ Genel Check Digit
         │      │ │       └────────────── Ülke
         │      │ └────────────────────── Son Kullanma Tarihi (YYMMDD)
         │      └──────────────────────── Cinsiyet
         └─────────────────────────────── Doğum Tarihi (YYMMDD)

Satır 3: AYKUT<<ATABEY<<<<<<<<<<<<<<<<<
         ↑     ↑ ↑
         │     │ └─ Ad
         │     └─── Ayırıcı
         └───────── Soyad
```

### 2. BAC Key Oluşturma Formülü

```
documentNo + birthDate + expiryDate
A43D646181 + 980917 + 330806
```

**JMRTD otomatik check digit ekler!**

### 3. Manuel Test

```bash
## Adımlar

1. `npm install`
2. `cd android`
3. `./gradlew clean`
4. `../node_modules/.bin/react-native start`
5. `../node_modules/.bin/react-native run-android`

### Metro Olmadan Standalone APK

```
npm run android:standalone
adb install -r android/app/build/outputs/apk/release/app-universal-release.apk
```

# 3. Native logları izle
adb logcat -s NFCPassportReader:D
```

### 4. Beklenen Loglar

```
=== mrzSeed detailed contents ===
  tcNo: 10945153402
  documentNo: A43D646181
  serialNo: A43D646181
  birthDate: 980917
  validUntil: 330806
  expiryDate: 330806
=== end mrzSeed ===

✓ documentNo extracted: 'A43D646181'
✓ birthDate converted to MRZ format: '980917'
✓ expiryDate converted to MRZ format: '330806'

=== BAC KEY PARAMETERS ===
  Document No (raw): 'A43D646181' (length: 10)
  Birth Date (MRZ): '980917' (length: 6)
  Expiry Date (MRZ): '330806' (length: 6)
=== end BAC params ===
```

### 5. Olası Hatalar

#### a) Belge Numarası Yanlış
```
❌ 10945153402 (TC No kullanılmış)
✅ A43D646181 (Doğru seri no)
```

#### b) Tarih Formatı Yanlış
```
❌ 17.09.1998 (dd.mm.yyyy)
✅ 980917 (YYMMDD)
```

#### c) Check Digit Eklenmiş
```
❌ A43D646181 + check digit manuel eklenmemeli
✅ A43D646181 (JMRTD otomatik ekler)
```

### 6. E-Devlet Karşılaştırması

E-Devlet uygulaması nasıl çalışıyor?

```bash
# APK'yı decompile et
apktool d base.apk

# BAC kodunu ara
grep -r "BACKey" base_jadx/sources/
```

Muhtemelen şunu yapıyorlar:
```java
String documentNo = mrzLine1.substring(5, 14).replace('<', '');
String birthDate = mrzLine2.substring(0, 6);
String expiryDate = mrzLine2.substring(8, 14);
```

### 7. Son Çare: Doğru MRZ'yi Al

Eğer yukarıdaki hiçbiri işe yaramazsa:

**Seçenek A:** OCR ile MRZ oku
```bash
# Android kamerayı kullan, OCR sonuçlarını logla
# Gerçek MRZ verisini gör
```

**Seçenek B:** NFC App ile test et
- Play Store'dan "NFC Tools" indir
- MRZ verilerini dene
- Hangi kombinasyon çalışıyorsa onu kullan

### 8. Check Digit Hesaplama (Manuel)

Eğer JMRTD check digit hesaplamıyorsa:

```javascript
function calculateCheckDigit(input) {
  const weights = [7, 3, 1];
  let sum = 0;
  
  for (let i = 0; i < input.length; i++) {
    const char = input[i];
    let value;
    
    if (char === '<') value = 0;
    else if (char >= '0' && char <= '9') value = parseInt(char);
    else value = char.charCodeAt(0) - 55; // A=10, B=11, etc.
    
    sum += value * weights[i % 3];
  }
  
  return sum % 10;
}

// Örnek:
// A43D646181
// Check: calculateCheckDigit('A43D646181') = ?
```

## 🎯 Hızlı Fix

Eğer hala çalışmıyorsa:

1. Kartı tekrar okut
2. OCR sonuçlarını kaydet
3. Mock data'yı **tam olarak** güncelle
4. Clean build yap
5. Tekrar dene
