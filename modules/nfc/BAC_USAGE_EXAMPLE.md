# BAC Authentication - Kullanım Örneği

## ❌ Sorun: MRZ Verisi Eksik

Log'lardan görülen hata:
```
[NFC][BAC] MRZ Seed: { tcNo: '***3402', birthDate: 'missing', documentNo: 'missing' }
[NFC][BAC] Authentication error: Cannot read property 'includes' of undefined
```

**Neden**: BAC authentication için sadece `tcNo` gönderilmiş, ama BAC aşağıdaki verileri gerektirir:
- ✅ `documentNo` (Belge No / Seri No)
- ✅ `birthDate` (Doğum Tarihi)
- ⚠️ `expiryDate` (Son Kullanma Tarihi - opsiyonel)

## ✅ Doğru Kullanım

### 1. Önce OCR ile MRZ Okuma

```javascript
import OCRReader from './OCRReader';

// Kimlik kartının MRZ alanını OCR ile oku
const ocrResult = await OCRReader.scanDocument(imageUri);

// OCR'den gelen veri:
const mrzData = {
  documentNo: 'A43D64618',      // Belge numarası
  birthDate: '17.09.1998',      // Doğum tarihi (DD.MM.YYYY)
  expiryDate: '03.03.2033',     // Son kullanma (opsiyonel)
  // MRZ check digits (OCR'den gelirse kullan)
  mrzCheckDigits: {
    documentNo: '1',
    birthDate: '7',
    expiryDate: '0'
  }
};
```

### 2. NFC Okuma ile BAC Authentication

```javascript
import NFCReader from './modules/nfc/NFCReaderModule';

// OCR verilerini NFC okumaya aktar
const nfcReader = new NFCReader({
  onStarted: () => console.log('NFC başladı'),
  onResult: (data) => console.log('NFC verisi:', data),
  onError: (error) => console.error('Hata:', error),
  onStopped: () => console.log('NFC durdu')
});

// MRZ verilerini NFC okumaya gönder
await nfcReader.startNFC({
  cardType: 'tc_kimlik',
  mrzSeed: {
    // OCR'den gelen veriler
    documentNo: mrzData.documentNo,      // ✅ ZORUNLU
    birthDate: mrzData.birthDate,        // ✅ ZORUNLU
    expiryDate: mrzData.expiryDate,      // ⚠️ Opsiyonel (yoksa hesaplanır)
    mrzCheckDigits: mrzData.mrzCheckDigits  // ⚠️ Varsa kullan (daha güvenilir)
  }
});
```

## 📋 MRZ Seed Formatları

### Minimum Gereksinimler

```javascript
{
  documentNo: 'A43D64618',    // 9 karakter (veya daha az, otomatik padding)
  birthDate: '17.09.1998'     // DD.MM.YYYY veya YYMMDD
}
```

### Tam Format (Önerilen)

```javascript
{
  documentNo: 'A43D64618',
  birthDate: '17.09.1998',
  expiryDate: '03.03.2033',
  
  // OCR'den gelen check digits (varsa)
  mrzCheckDigits: {
    documentNo: '1',
    birthDate: '7',
    expiryDate: '0'
  }
}
```

### Alternatif Format (tcNo ile)

```javascript
{
  tcNo: '10945153402',        // TC Kimlik No
  documentNo: 'A43D64618',    // Belge No
  birthDate: '17.09.1998',    // Doğum tarihi
  // expiryDate: opsiyonel
}
```

## 🔧 Tarih Formatları

BAC modülü aşağıdaki formatları destekler:

```javascript
// ✅ Desteklenen formatlar
birthDate: '17.09.1998'   // DD.MM.YYYY (önerilen)
birthDate: '17/09/1998'   // DD/MM/YYYY
birthDate: '1998-09-17'   // YYYY-MM-DD (ISO format)
birthDate: '980917'       // YYMMDD (MRZ format)

// ❌ Desteklenmeyen
birthDate: '1998.09.17'   // YYYY.MM.DD
birthDate: 'Sep 17, 1998' // Text format
```

## 🚨 Yaygın Hatalar ve Çözümleri

### Hata 1: `Cannot read property 'includes' of undefined`

**Neden**: `birthDate` veya `documentNo` gönderilmemiş

**Çözüm**:
```javascript
// ❌ YANLIŞ
mrzSeed: {
  tcNo: '10945153402'  // Sadece TC No yeterli değil!
}

// ✅ DOĞRU
mrzSeed: {
  tcNo: '10945153402',
  documentNo: 'A43D64618',  // Ekle
  birthDate: '17.09.1998'   // Ekle
}
```

### Hata 2: `BAC authentication requires documentNo`

**Neden**: `documentNo` eksik

**Çözüm**: OCR'den belge numarasını oku ve gönder

### Hata 3: `Invalid date string`

**Neden**: Tarih formatı yanlış veya boş

**Çözüm**:
```javascript
// ❌ YANLIŞ
birthDate: ''
birthDate: null
birthDate: '1998'

// ✅ DOĞRU
birthDate: '17.09.1998'
birthDate: '980917'
```

## 📖 Tam Örnek: OCR + NFC İşlem Akışı

```javascript
import React, { useState } from 'react';
import { View, Button, Text } from 'react-native';
import OCRReader from './OCRReader';
import NFCReader from './modules/nfc/NFCReaderModule';

function IdentityCardReader() {
  const [mrzData, setMrzData] = useState(null);
  const [nfcData, setNfcData] = useState(null);

  // Adım 1: OCR ile MRZ okuma
  const scanDocument = async () => {
    try {
      const result = await OCRReader.scanDocument(photoUri);
      
      setMrzData({
        documentNo: result.documentNo,
        birthDate: result.birthDate,
        expiryDate: result.expiryDate,
        mrzCheckDigits: result.mrzCheckDigits
      });
      
      console.log('✅ OCR başarılı, şimdi NFC okuyabilirsiniz');
    } catch (error) {
      console.error('OCR hatası:', error);
    }
  };

  // Adım 2: NFC ile BAC authentication ve veri okuma
  const readNFC = async () => {
    if (!mrzData) {
      alert('Önce belgeyi OCR ile tarayın!');
      return;
    }

    const nfcReader = new NFCReader({
      onStarted: () => console.log('NFC başladı'),
      onResult: (data) => {
        console.log('✅ NFC verisi alındı:', data);
        setNfcData(data);
      },
      onError: (error) => {
        console.error('❌ NFC hatası:', error);
      }
    });

    try {
      await nfcReader.startNFC({
        cardType: 'tc_kimlik',
        mrzSeed: mrzData  // OCR'den gelen veriyi kullan
      });
    } catch (error) {
      console.error('NFC başlatma hatası:', error);
    }
  };

  return (
    <View>
      <Button title="1. Belgeyi Tara (OCR)" onPress={scanDocument} />
      {mrzData && (
        <>
          <Text>✅ MRZ verisi hazır</Text>
          <Button title="2. NFC ile Oku" onPress={readNFC} />
        </>
      )}
      {nfcData && <Text>✅ NFC verisi alındı!</Text>}
    </View>
  );
}
```

## 🎯 Özet

1. **OCR ile MRZ oku** → `documentNo`, `birthDate`, `expiryDate` al
2. **NFC'ye MRZ verilerini aktar** → `mrzSeed` parametresi ile
3. **BAC authentication otomatik** → Secure channel kurulur
4. **Kişisel verileri oku** → Encrypted communication

## ⚠️ Önemli Notlar

- **PACE vs BAC**: Yeni Türk kimlik kartları (2017+) PACE kullanıyor olabilir. Eğer BAC başarısız olursa PACE implementation gerekebilir.
- **Check Digits**: OCR'den gelen check digits kullanılmalı (hesaplanan check digits yanlış olabilir)
- **Expiry Date**: Türk kimlik kartlarında son kullanma tarihi olmayabilir - bu durumda otomatik hesaplanır
- **Test**: Önce bilinen test vektörleri ile test edin (ICAO 9303 spec'te var)

## 📚 Referanslar

- [ICAO 9303 Part 11](https://www.icao.int/publications/Documents/9303_p11_cons_en.pdf) - BAC specification
- [BAC_FIX_SUMMARY.md](./BAC_FIX_SUMMARY.md) - Yapılan düzeltmeler
- [NFC_DEBUG_GUIDE.md](../../NFC_DEBUG_GUIDE.md) - Debug rehberi
