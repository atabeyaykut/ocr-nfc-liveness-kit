# BAC Error 6982 - Troubleshooting Guide

## ❌ Hata: `6982 - Security Status Not Satisfied`

Bu hata **BAC authentication** sırasında kartın "güvenlik durumu sağlanmadı" yanıtını vermesi demektir.

## 🎯 En Olası Neden: Kart PACE Kullanıyor

### Neden Bu Kadar Yaygın?

Modern Türk kimlik kartları (2017+ üretim) **PACE (Password Authenticated Connection Establishment)** protokolünü kullanır. BAC (Basic Access Control) eski bir standarttır ve yeni kartlarda **desteklenmez**.

```
Eski Kartlar (2010-2017):  BAC ✅
Yeni Kartlar (2017+):       PACE ✅, BAC ❌
```

## ✅ Çözüm: Protocol Detection Eklendi

### 1. Otomatik Protocol Tespit

Artık kod otomatik olarak kartın hangi protokolü desteklediğini tespit ediyor:

```javascript
// NFCReaderModule.js - detectAuthenticationProtocol()

detectAuthenticationProtocol = async () => {
  // EF.CardAccess (0x011C) dosyasını okumaya çalış
  const selectCardAccess = [
    0x00, 0xA4, 0x02, 0x0C,  // SELECT FILE
    0x02,                     // Lc
    0x01, 0x1C                // FID = 0x011C
  ];
  
  const response = await NfcManager.transceive(selectCardAccess);
  
  if (response SW = 9000) {
    return 'PACE';  // ✅ Modern kart
  } else {
    return 'BAC';   // ✅ Legacy kart
  }
};
```

### 2. Akıllı Authentication

```javascript
// 1. Protocol tespit et
const protocol = await detectAuthenticationProtocol();

// 2. Protokole göre auth yap
if (protocol === 'PACE') {
  await performPACE(mrzSeed);
} else {
  await performBAC(mrzSeed);
}
```

## 🔧 Yapılan Düzeltmeler

### A. Protocol Detection

✅ `detectAuthenticationProtocol()` fonksiyonu eklendi
✅ EF.CardAccess varlığı kontrol ediliyor
✅ PACE/BAC otomatik seçimi

### B. EXTERNAL_AUTHENTICATE İyileştirmeleri

✅ Le parametresi kaldırıldı (ICAO 9303 spec'e uygun)
✅ Uint8Array desteği eklendi (platform compatibility)
✅ Detaylı error mesajları

```javascript
// Uint8Array desteği
try {
  response = await NfcManager.transceive(new Uint8Array(command));
} catch (error) {
  response = await NfcManager.transceive(command);
}
```

### C. Detaylı Error Handling

```javascript
if (sw === '6982') {
  console.error('❌ SW=6982: Security status not satisfied');
  console.error('🎯 LIKELY: Card requires PACE, not BAC');
  console.error('Modern Turkish ID cards (2017+) use PACE');
  throw new Error('Card likely requires PACE');
}
```

## 📊 Error Code Açıklamaları

| SW Code | Anlamı | Olası Nedenler | Çözüm |
|---------|--------|----------------|-------|
| **6982** | Security status not satisfied | Kart PACE istiyor | EF.CardAccess kontrol et, PACE kullan |
| 6300 | Authentication failed | MAC doğrulama hatası | MRZ data ve check digits kontrol et |
| 6988 | Incorrect encryption | Şifreleme hatası | IV, padding, key parity kontrol et |
| 6A88 | Referenced data not found | APDU formatı yanlış | TLV encoding kontrol et |

## 🧪 Test Senaryoları

### Test 1: Protocol Detection

```javascript
// Kartın hangi protokolü kullandığını öğren
const protocol = await nfcReader.detectAuthenticationProtocol();
console.log('Protocol:', protocol);

// Beklenen çıktı:
// - Yeni kart: "PACE"
// - Eski kart: "BAC"
```

### Test 2: EF.CardAccess Manuel Okuma

```javascript
// Manuel PACE kontrolü
const selectCardAccess = [0x00, 0xA4, 0x02, 0x0C, 0x02, 0x01, 0x1C];
const response = await NfcManager.transceive(selectCardAccess);

if (response[response.length - 2] === 0x90) {
  console.log('✅ PACE supported');
} else {
  console.log('❌ PACE not supported, use BAC');
}
```

## 🚀 Kullanım

### Senaryo 1: Modern Kart (PACE Gerekli)

```javascript
await nfcReader.startNFC({
  cardType: 'tc_kimlik',
  mrzSeed: {
    documentNo: 'A43D64618',
    birthDate: '17.09.1998',
    // PACE için check digits ZORUNLU
    mrzCheckDigits: {
      documentNo: '1',
      birthDate: '7',
      expiryDate: '0'
    }
  }
});

// Log çıktısı:
// [NFC][Protocol] ✅ EF.CardAccess found
// [NFC][Protocol] 🎯 PACE is supported and likely REQUIRED
// [NFC][Auth] 🎯 Card requires PACE authentication
```

### Senaryo 2: Eski Kart (BAC)

```javascript
await nfcReader.startNFC({
  cardType: 'tc_kimlik',
  mrzSeed: {
    documentNo: 'A43D64618',
    birthDate: '17.09.1998'
    // Check digits opsiyonel (BAC için)
  }
});

// Log çıktısı:
// [NFC][Protocol] EF.CardAccess not found
// [NFC][Protocol] Card likely uses BAC (older standard)
// [NFC][Auth] Card uses BAC authentication (legacy)
```

## ⚠️ Dikkat Edilmesi Gerekenler

### 1. PACE Implementation

PACE henüz tam olarak implement edilmemiş. Eğer kartınız PACE gerektiriyorsa:

```javascript
// PACE implementation gerekli:
// - Diffie-Hellman key agreement
// - Chip authentication
// - Secure messaging setup

// Şimdilik workaround:
// 1. Eski bir kart ile test edin (BAC destekli)
// 2. Veya PACE implementation tamamlanmasını bekleyin
```

### 2. MRZ Check Digits

PACE için **mutlaka** MRZ check digits gereklidir:

```javascript
// ❌ YANLIŞ (PACE başarısız olur)
mrzSeed: {
  documentNo: 'A43D64618',
  birthDate: '17.09.1998'
}

// ✅ DOĞRU
mrzSeed: {
  documentNo: 'A43D64618',
  birthDate: '17.09.1998',
  mrzCheckDigits: {
    documentNo: '1',
    birthDate: '7',
    expiryDate: '0'
  }
}
```

### 3. Platform Farkları

Android ve iOS'ta NFC transceive farklı davranabilir:

- Android: `number[]` veya `Uint8Array`
- iOS: Genellikle `Uint8Array` tercih eder

Kod artık her iki durumu da handle ediyor.

## 📚 İlgili Dökümanlar

- [BAC_FIX_SUMMARY.md](./BAC_FIX_SUMMARY.md) - BAC implementation düzeltmeleri
- [BAC_USAGE_EXAMPLE.md](./BAC_USAGE_EXAMPLE.md) - Kullanım örnekleri
- [ICAO 9303 Part 11](https://www.icao.int/publications/Documents/9303_p11_cons_en.pdf) - BAC spec
- [BSI TR-03110](https://www.bsi.bund.de/SharedDocs/Downloads/EN/BSI/Publications/TechGuidelines/TR03110/BSI-TR-03110.pdf) - PACE spec

## 🎯 Özet

| Problem | Çözüm | Durum |
|---------|-------|-------|
| 6982 hatası | Protocol detection eklendi | ✅ |
| PACE destegi | Otomatik tespit yapılıyor | ✅ |
| BAC Le parametresi | Kaldırıldı | ✅ |
| Uint8Array desteği | Eklendi | ✅ |
| Error mesajları | Detaylandırıldı | ✅ |
| PACE implementation | Henüz tamamlanmadı | ⚠️ |

**Sonuç**: Eğer kartınız 2017+ üretimse ve PACE gerektiriyorsa, şu anda authentication başarısız olacaktır. PACE implementation tamamlandığında sorun çözülecektir.

**Geçici Çözüm**: Eski bir Türk kimlik kartı (2010-2017 arası üretim) ile test edin veya PACE implementation'ı tamamlayın.
