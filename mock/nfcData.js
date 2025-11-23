/**
 * Mock NFC Data for Testing
 * Contains sample Turkish ID card data for NFC testing
 */

const mockNFCData = {

  // Gerçek test verisi - Kullanıcının kendi MRZ datası
  realTest: {
    mrz: {
      line1: 'I<TURA43D64618<10945153402<<<',
      line2: '9809170M3308062TUR<<<<<<<<<<<4',
      line3: 'AYKUT<<ATABEY<<<<<<<<<<<<<<<<<'
    },
    parsedMRZ: {
      documentType: 'I',
      issuingCountry: 'TUR',
      documentNumber: 'A43D64618',
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
      birthPlace: 'ANKARA', // MRZ'de yok, varsayılan
      nationality: 'T.C.',
      gender: 'E',
      motherName: 'HAYRIYE ASLIHAN', // MRZ'de yok
      fatherName: 'ABDULLAH', // MRZ'de yok
      serialNumber: 'A43D64618',
      documentNumber: 'A43D64618',
      issueDate: '01.01.2023', // MRZ'de yok, varsayılan
      expiryDate: '06.08.2033',
      issuingAuthority: 'TC. İÇİŞLERİ BAKANLIĞI' // MRZ'de yok
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
