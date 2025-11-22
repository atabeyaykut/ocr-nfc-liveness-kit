# MRZ → NFC Karşılaştırma Spesifikasyonu

## 📋 Genel Bakış

Bu dokümantasyon, Türk Kimlik Kartı'nın **arka yüzünden** MRZ okuma, NFC ile veri karşılaştırma ve doğrulama akışını açıklar.

---

## 🔄 Akış Diyagramı

```
1. Arka Yüz Çekimi (OCR)
   ↓
2. MRZ Parse (3 satır)
   ↓
3. Text Extraction (Anne/Baba/Veren Makam)
   ↓
4. NFC Okuma (BAC Auth + DG1/DG2)
   ↓
5. MRZ ↔ NFC Karşılaştırma
   ↓
6. Liveness Testi
   ↓
7. Tamamlandı ✅
```

---

## 📸 1. MRZ Extraction (Arka Yüz OCR)

### MRZ Formatı (TD1 - 3 Satır)

```
Line 1: IDTUR{DocumentNo(9)}{CD(1)}{TCNo(11)}<<<<<<
Line 2: {BirthDate(6)}{CD(1)}{Gender(1)}{ExpiryDate(6)}{CD(1)}TUR<<<<<<<<<{CD(1)}
Line 3: {SURNAME}<<{GIVEN_NAMES}<<<<<<
```

### MRZ'den Çıkarılan Veriler

| Field | Kaynak | Format | Örnek |
|-------|--------|--------|-------|
| **tcNo** | MRZ Line 1 | 11 digit | `12345678901` |
| **documentNo** | MRZ Line 1 | 9 chars | `U12345678` |
| **serialNo** | documentNo | Formatted | `U12 345 678` |
| **name** | MRZ Line 3 | UPPERCASE | `AHMET` |
| **surname** | MRZ Line 3 | UPPERCASE | `YILMAZ` |
| **birthDate** | MRZ Line 2 | DD.MM.YYYY | `15.03.1985` |
| **gender** | MRZ Line 2 | Erkek/Kadın | `Erkek` |
| **validUntil** | MRZ Line 2 | DD.MM.YYYY | `15.03.2030` |
| **nationality** | MRZ Line 2 | 3 chars | `TUR` |

### MRZ Check Digits (BAC için kritik!)

```javascript
mrzCheckDigits: {
  documentNo: "3",      // documentNo için check digit
  birthDate: "7",       // birthDate için check digit
  expiryDate: "2",      // expiryDate için check digit
  composite: "5"        // Tüm veriler için composite check digit
}
```

**Not:** Check digit'ler OCR yerine **hesaplanarak** bulunur (daha güvenilir).

---

## 📝 2. Text Extraction (Arka Yüz)

MRZ'nin üstünde yazılı olan bilgiler:

| Field | Pattern | Örnek |
|-------|---------|-------|
| **motherName** | `ANNE ADI` veya `MOTHER'S NAME` | `FATİMA` |
| **fatherName** | `BABA ADI` veya `FATHER'S NAME` | `MEHMET` |
| **issuedBy** | `VEREN MAKAM` veya `ISSUED BY` | `ANKARA/ÇANKAYA` |

---

## 🔐 3. NFC Okuma (BAC Authentication)

### BAC Parametreleri (MRZ'den)

```javascript
{
  documentNumber: "U12345678",    // MRZ Line 1
  dateOfBirth: "850315",          // MRZ Line 2 (YYMMDD)
  dateOfExpiry: "300315"          // MRZ Line 2 (YYMMDD)
}
```

### NFC'den Okunan Data Groups

#### DG1 (MRZ Data)
```javascript
{
  documentNumber: "U12345678",
  personalNumber: "12345678901",  // TC No
  dateOfBirth: "850315",
  dateOfExpiry: "300315",
  sex: "M",                       // M/F
  nationality: "TUR",
  lastName: "YILMAZ",
  firstName: "AHMET"
}
```

#### DG2 (Photo)
```javascript
{
  photo: "base64_encoded_image",
  imageFormat: "JPEG2000"
}
```

---

## ⚖️ 4. MRZ ↔ NFC Karşılaştırma

### Karşılaştırılacak Field'lar

| MRZ Field | NFC Field (DG1) | Karşılaştırma |
|-----------|----------------|---------------|
| `tcNo` | `personalNumber` | Tam eşleşme (11 digit) |
| `documentNo` | `documentNumber` | Tam eşleşme (9 chars) |
| `name` | `firstName` | Case-insensitive |
| `surname` | `lastName` | Case-insensitive |
| `birthDate` | `dateOfBirth` | Format dönüşümü (DD.MM.YYYY → YYMMDD) |
| `validUntil` | `dateOfExpiry` | Format dönüşümü |
| `gender` | `sex` | Mapping: Erkek→M, Kadın→F |
| `nationality` | `nationality` | Tam eşleşme (TUR) |

### Validation Logic

```javascript
function compareOCRWithNFC(ocrData, nfcData) {
  const results = {
    matches: [],
    mismatches: [],
    confidence: 0
  };

  // TC No (en kritik)
  if (ocrData.tcNo === nfcData.personalNumber) {
    results.matches.push('tcNo');
  } else {
    results.mismatches.push({
      field: 'tcNo',
      ocr: ocrData.tcNo,
      nfc: nfcData.personalNumber
    });
  }

  // Document No
  if (ocrData.documentNo === nfcData.documentNumber) {
    results.matches.push('documentNo');
  } else {
    results.mismatches.push({
      field: 'documentNo',
      ocr: ocrData.documentNo,
      nfc: nfcData.documentNumber
    });
  }

  // Birth Date (format dönüşümü)
  const ocrBirthYYMMDD = convertToYYMMDD(ocrData.birthDate);
  if (ocrBirthYYMMDD === nfcData.dateOfBirth) {
    results.matches.push('birthDate');
  } else {
    results.mismatches.push({
      field: 'birthDate',
      ocr: ocrData.birthDate,
      nfc: nfcData.dateOfBirth
    });
  }

  // Name/Surname (case-insensitive)
  if (ocrData.name.toUpperCase() === nfcData.firstName.toUpperCase()) {
    results.matches.push('name');
  }
  
  if (ocrData.surname.toUpperCase() === nfcData.lastName.toUpperCase()) {
    results.matches.push('surname');
  }

  // Gender mapping
  const ocrGender = ocrData.gender === 'Erkek' ? 'M' : 'F';
  if (ocrGender === nfcData.sex) {
    results.matches.push('gender');
  }

  // Confidence: (matches / total) * 100
  results.confidence = (results.matches.length / 8) * 100;

  return results;
}
```

---

## 📊 5. Sonuç Formatı

### OCR Result (Back-Only)

```javascript
{
  success: true,
  data: {
    // MRZ Fields
    tcNo: "12345678901",
    documentNo: "U12345678",
    serialNo: "U12 345 678",
    name: "AHMET",
    surname: "YILMAZ",
    birthDate: "15.03.1985",
    gender: "Erkek",
    validUntil: "15.03.2030",
    nationality: "TUR",
    
    // Text Fields
    motherName: "FATİMA",
    fatherName: "MEHMET",
    issuedBy: "ANKARA/ÇANKAYA",
    
    // BAC Data
    mrzCheckDigits: {
      documentNo: "3",
      birthDate: "7",
      expiryDate: "2",
      composite: "5"
    },
    
    // Metadata
    source: "dual-side-scan",
    confidence: 95,
    completeness: 100,
    validation: { ... },
    conflicts: []
  },
  frontSide: {},  // Empty (back-only mode)
  backSide: { ... },
  biometricPhoto: null,  // Null (no front side)
  timestamp: "2025-11-22T13:08:04.051Z"
}
```

### NFC Result

```javascript
{
  success: true,
  tag: {
    id: "04:6D:E2:1A:B3:54:80",
    type: "ISO-DEP"
  },
  dg1: {
    mrz: {
      documentNumber: "U12345678",
      personalNumber: "12345678901",
      dateOfBirth: "850315",
      dateOfExpiry: "300315",
      sex: "M",
      nationality: "TUR",
      lastName: "YILMAZ",
      firstName: "AHMET"
    }
  },
  dg2: {
    photo: "base64...",
    imageFormat: "JPEG2000"
  },
  bacStatus: "authenticated"
}
```

### Comparison Result

```javascript
{
  matches: [
    "tcNo",
    "documentNo",
    "name",
    "surname",
    "birthDate",
    "validUntil",
    "gender",
    "nationality"
  ],
  mismatches: [],
  confidence: 100,
  status: "verified",
  message: "Tüm bilgiler NFC ile eşleşti ✅"
}
```

---

## 🔍 6. Hata Senaryoları

### MRZ Parse Hatası
```javascript
{
  success: false,
  error: "MRZ_PARSE_ERROR",
  message: "MRZ satırları okunamadı",
  action: "Kartı tekrar çekin"
}
```

### NFC Okuma Hatası
```javascript
{
  success: false,
  error: "NFC_READ_ERROR",
  message: "Kart çipi okunamadı",
  action: "Kartı NFC okuyucuya yaklaştırın"
}
```

### BAC Authentication Hatası
```javascript
{
  success: false,
  error: "BAC_AUTH_FAILED",
  message: "Check digit hatalı",
  action: "MRZ bilgilerini kontrol edin"
}
```

### Karşılaştırma Uyuşmazlığı
```javascript
{
  success: false,
  error: "VALIDATION_MISMATCH",
  mismatches: [
    {
      field: "tcNo",
      ocr: "12345678901",
      nfc: "98765432109",
      severity: "critical"
    }
  ],
  confidence: 12.5,
  action: "Kartı tekrar tarayın"
}
```

---

## ✅ 7. Production Checklist

- [x] MRZ 3-line parsing implemented
- [x] Check digit calculation (BAC)
- [x] Text extraction (anne/baba/veren makam)
- [x] NFC BAC authentication
- [x] DG1 (MRZ) reading
- [x] DG2 (Photo) reading
- [x] MRZ ↔ NFC comparison logic
- [x] Error handling
- [x] Back-only mode support
- [ ] Field mapping implementation (NFC comparison)
- [ ] Liveness test with NFC photo
- [ ] Final verification screen

---

## 📚 Referanslar

- [ICAO Doc 9303](https://www.icao.int/publications/Documents/9303_p3_cons_en.pdf) - Machine Readable Travel Documents
- [ISO/IEC 7501-1](https://www.iso.org/standard/45562.html) - TD1 Card Format
- Turkish ID Card Specifications
- BAC (Basic Access Control) Protocol

---

## 🚀 Next Steps

1. **NFC Comparison Module**
   - Implement `compareOCRWithNFC()` function
   - Add field mapping logic
   - Calculate match confidence

2. **Liveness Enhancement**
   - Use NFC DG2 photo for comparison
   - Fallback to OCR if NFC photo unavailable

3. **Final Verification**
   - Show side-by-side comparison
   - Highlight mismatches
   - Allow manual override

4. **Testing**
   - Test with real Turkish ID cards
   - Validate MRZ parsing
   - Verify NFC authentication
   - Check comparison accuracy

---

## 📞 Support

For technical issues or questions:
- Check logs: `[MRZ]`, `[OCR]`, `[NFC]`
- Review error messages
- Ensure card is clean and flat
- Verify NFC is enabled

---

**Last Updated:** 2025-11-22  
**Version:** 1.0.0
