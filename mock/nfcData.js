/**
 * Mock NFC Data for Testing
 * Contains sample Turkish ID card data for NFC testing
 */

const mockNFCData = {
  default: {
    cardData: {
      cardType: 'Turkish ID Card',
      firstName: 'MEHMET',
      lastName: 'YILMAZ',
      name: 'MEHMET',
      surname: 'YILMAZ',
      idNumber: '12345678901',
      birthDate: '01.01.1990',
      birthPlace: 'İSTANBUL',
      nationality: 'T.C.',
      gender: 'E',
      motherName: 'AYŞE',
      fatherName: 'ALİ',
      serialNumber: 'A01B12345',
      documentNumber: 'ABC123456',
      issueDate: '01.01.2020',
      expiryDate: '01.01.2030',
      issuingAuthority: 'ANKARA NÜFUS MÜDÜRLÜĞÜ'
    },
    nfcData: {
      uid: '04:A1:B2:C3:D4:E5:F6',
      technology: 'IsoDep',
      readTime: new Date().toISOString(),
      signalStrength: 85,
      tagType: 'Type4A'
    },
    verification: {
      isValid: true,
      checksum: 'VALID',
      digitalSignature: 'VERIFIED',
      readMethod: 'NFC_MOCK'
    }
  },

  sample1: {
    cardData: {
      cardType: 'Turkish ID Card',
      firstName: 'AYŞE',
      lastName: 'KAYA',
      name: 'AYŞE',
      surname: 'KAYA',
      idNumber: '98765432109',
      birthDate: '15.05.1985',
      birthPlace: 'ANKARA',
      nationality: 'T.C.',
      gender: 'K',
      motherName: 'FATMA',
      fatherName: 'MUSTAFA',
      serialNumber: 'B02C67890',
      documentNumber: 'DEF789012',
      issueDate: '15.03.2019',
      expiryDate: '15.03.2029',
      issuingAuthority: 'İSTANBUL NÜFUS MÜDÜRLÜĞÜ'
    },
    nfcData: {
      uid: '04:B1:C2:D3:E4:F5:A6',
      technology: 'IsoDep',
      readTime: new Date().toISOString(),
      signalStrength: 92,
      tagType: 'Type4A'
    },
    verification: {
      isValid: true,
      checksum: 'VALID',
      digitalSignature: 'VERIFIED',
      readMethod: 'NFC_MOCK'
    }
  },

  sample2: {
    cardData: {
      cardType: 'Turkish ID Card',
      firstName: 'AHMET',
      lastName: 'DEMİR',
      name: 'AHMET',
      surname: 'DEMİR',
      idNumber: '55566677788',
      birthDate: '20.12.1978',
      birthPlace: 'İZMİR',
      nationality: 'T.C.',
      gender: 'E',
      motherName: 'ZEYNEP',
      fatherName: 'HASAN',
      serialNumber: 'C03D45678',
      documentNumber: 'GHI345678',
      issueDate: '10.07.2021',
      expiryDate: '10.07.2031',
      issuingAuthority: 'İZMİR NÜFUS MÜDÜRLÜĞÜ'
    },
    nfcData: {
      uid: '04:C1:D2:E3:F4:A5:B6',
      technology: 'IsoDep',
      readTime: new Date().toISOString(),
      signalStrength: 78,
      tagType: 'Type4A'
    },
    verification: {
      isValid: true,
      checksum: 'VALID',
      digitalSignature: 'VERIFIED',
      readMethod: 'NFC_MOCK'
    }
  },

  // Gerçek test verisi - Kullanıcının kendi MRZ datası
  realTest: {
    mrz: {
      line1: 'I<TURA43D646181<10945153402<<<',
      line2: '9809170M3308062TUR<<<<<<<<<<<4',
      line3: 'AYKUT<<ATABEY<<<<<<<<<<<<<<<<<'
    },
    parsedMRZ: {
      documentType: 'I',
      issuingCountry: 'TUR',
      documentNumber: 'A43D646181',
      idNumber: '10945153402',
      birthDate: '980917',
      gender: 'M',
      expiryDate: '330806',
      nationality: 'TUR',
      surname: 'AYKUT',
      givenNames: 'ATABEY'
    },
    cardData: {
      cardType: 'Turkish ID Card',
      firstName: 'ATABEY',
      lastName: 'AYKUT',
      name: 'ATABEY',
      surname: 'AYKUT',
      idNumber: '10945153402',
      birthDate: '17.09.1998',
      birthPlace: 'İSTANBUL', // MRZ'de yok, varsayılan
      nationality: 'T.C.',
      gender: 'E',
      motherName: '-', // MRZ'de yok
      fatherName: '-', // MRZ'de yok
      serialNumber: 'A43D646181',
      documentNumber: 'A43D646181',
      issueDate: '01.01.2023', // MRZ'de yok, varsayılan
      expiryDate: '06.08.2033',
      issuingAuthority: 'NÜFUS MÜDÜRLÜĞÜ' // MRZ'de yok
    },
    nfcData: {
      uid: '04:E1:F2:A3:B4:C5:D6',
      technology: 'IsoDep',
      readTime: new Date().toISOString(),
      signalStrength: 88,
      tagType: 'Type4A'
    },
    verification: {
      isValid: true,
      checksum: 'VALID',
      digitalSignature: 'VERIFIED',
      readMethod: 'NFC_REAL_TEST',
      mrzMatch: true
    }
  },

  error: {
    cardData: null,
    nfcData: null,
    verification: {
      isValid: false,
      checksum: 'INVALID',
      digitalSignature: 'FAILED',
      readMethod: 'NFC_MOCK',
      error: 'NFC kartı okunamadı'
    }
  }
};

module.exports = mockNFCData;
