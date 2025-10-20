#!/usr/bin/env node

/**
 * NFC Test Script
 * Quick NFC functionality test
 * 
 * Usage:
 *   node scripts/test-nfc.js
 */

const readline = require('readline');

// Mock NFC Reader for testing
class MockNFCReader {
  constructor() {
    this.status = 'idle';
  }

  async startNFC() {
    console.log('🔄 Starting NFC...');
    await this.delay(1000);
    this.status = 'ready';
    console.log('✅ NFC Ready');
    return true;
  }

  async readNFCData(options = {}) {
    console.log(`\n📡 Reading NFC Data (timeout: ${options.timeout || 10000}ms)...`);
    this.status = 'scanning';
    
    await this.delay(500);
    console.log('🔍 Scanning for NFC card...');
    
    await this.delay(1000);
    console.log('📖 Card detected, reading data...');
    this.status = 'reading';
    
    await this.delay(1500);
    console.log('⚙️ Processing data...');
    this.status = 'processing';
    
    await this.delay(500);
    
    const mockData = {
      firstName: 'AHMET',
      lastName: 'YILMAZ',
      idNumber: '12345678901',
      birthDate: '01.01.1990',
      birthPlace: 'ANKARA',
      nationality: 'T.C.',
      gender: 'E',
      serialNumber: 'A12B34567',
      documentNumber: 'ABC123456',
      issueDate: '01.01.2020',
      expiryDate: '01.01.2030',
      cardType: 'Turkish ID Card',
      nfcData: {
        uid: '04:12:34:56:78:90:AB',
        technology: 'IsoDep',
        readTime: new Date().toISOString(),
        signalStrength: Math.floor(Math.random() * 40) + 60
      },
      verification: {
        isValid: true,
        checksum: 'VALID',
        digitalSignature: 'VERIFIED',
        readMethod: 'MOCK_TEST'
      }
    };
    
    this.status = 'success';
    console.log('✅ Read complete!\n');
    
    return mockData;
  }

  async stopNFC() {
    console.log('🛑 Stopping NFC...');
    await this.delay(500);
    this.status = 'idle';
    console.log('✅ NFC Stopped');
  }

  delay(ms) {
    return new Promise(resolve => setTimeout(resolve, ms));
  }
}

// Display NFC data in formatted table
function displayNFCData(data) {
  console.log('\n╔══════════════════════════════════════════════════════════╗');
  console.log('║           NFC OKUMA SONUÇLARI                            ║');
  console.log('╠══════════════════════════════════════════════════════════╣');
  console.log('║                                                          ║');
  console.log(`║  👤 Ad Soyad      : ${data.firstName} ${data.lastName}`.padEnd(60) + '║');
  console.log(`║  🆔 T.C. No       : ${data.idNumber}`.padEnd(60) + '║');
  console.log(`║  📅 Doğum Tarihi  : ${data.birthDate}`.padEnd(60) + '║');
  console.log(`║  📍 Doğum Yeri    : ${data.birthPlace}`.padEnd(60) + '║');
  console.log(`║  🏳️  Uyruk         : ${data.nationality}`.padEnd(60) + '║');
  console.log(`║  ⚧  Cinsiyet      : ${data.gender}`.padEnd(60) + '║');
  console.log('║                                                          ║');
  console.log('╠══════════════════════════════════════════════════════════╣');
  console.log('║  📋 BELGE BİLGİLERİ                                      ║');
  console.log('╠══════════════════════════════════════════════════════════╣');
  console.log(`║  🔢 Seri No       : ${data.serialNumber}`.padEnd(60) + '║');
  console.log(`║  📄 Belge No      : ${data.documentNumber}`.padEnd(60) + '║');
  console.log(`║  📆 Veriliş       : ${data.issueDate}`.padEnd(60) + '║');
  console.log(`║  ⏰ Geçerlilik    : ${data.expiryDate}`.padEnd(60) + '║');
  console.log('║                                                          ║');
  console.log('╠══════════════════════════════════════════════════════════╣');
  console.log('║  🔐 DOĞRULAMA                                            ║');
  console.log('╠══════════════════════════════════════════════════════════╣');
  console.log(`║  ✅ Geçerlilik    : ${data.verification.isValid ? 'GEÇERLİ' : 'GEÇERSİZ'}`.padEnd(60) + '║');
  console.log(`║  🔏 Checksum      : ${data.verification.checksum}`.padEnd(60) + '║');
  console.log(`║  🔐 Dijital İmza  : ${data.verification.digitalSignature}`.padEnd(60) + '║');
  console.log(`║  📡 Okuma Yöntemi : ${data.verification.readMethod}`.padEnd(60) + '║');
  console.log('║                                                          ║');
  console.log('╠══════════════════════════════════════════════════════════╣');
  console.log('║  🔧 TEKNİK BİLGİLER                                      ║');
  console.log('╠══════════════════════════════════════════════════════════╣');
  console.log(`║  🆔 UID           : ${data.nfcData.uid}`.padEnd(60) + '║');
  console.log(`║  📶 Teknoloji     : ${data.nfcData.technology}`.padEnd(60) + '║');
  console.log(`║  📊 Sinyal Gücü   : ${data.nfcData.signalStrength}%`.padEnd(60) + '║');
  console.log(`║  ⏱  Okuma Zamanı  : ${new Date(data.nfcData.readTime).toLocaleString('tr-TR')}`.padEnd(60) + '║');
  console.log('║                                                          ║');
  console.log('╚══════════════════════════════════════════════════════════╝\n');
}

// Interactive menu
async function showMenu() {
  const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
  });

  return new Promise((resolve) => {
    console.log('\n┌─────────────────────────────────────┐');
    console.log('│   NFC TEST MENÜSÜ                   │');
    console.log('├─────────────────────────────────────┤');
    console.log('│  1. NFC Oku (5 saniye timeout)     │');
    console.log('│  2. NFC Oku (10 saniye timeout)    │');
    console.log('│  3. NFC Oku (15 saniye timeout)    │');
    console.log('│  4. Hızlı Test (3 saniye)          │');
    console.log('│  5. Çıkış                           │');
    console.log('└─────────────────────────────────────┘\n');

    rl.question('Seçiminiz (1-5): ', (answer) => {
      rl.close();
      resolve(answer);
    });
  });
}

// Main test function
async function runNFCTest() {
  console.clear();
  console.log('╔══════════════════════════════════════════════════════════╗');
  console.log('║                 NFC TEST UYGULAMASI                      ║');
  console.log('║              React Native OCR/NFC/Liveness SDK           ║');
  console.log('╚══════════════════════════════════════════════════════════╝\n');

  const nfcReader = new MockNFCReader();
  
  try {
    // Initialize NFC
    await nfcReader.startNFC();
    
    // Interactive loop
    let running = true;
    while (running) {
      const choice = await showMenu();
      
      switch (choice) {
        case '1':
          try {
            const data = await nfcReader.readNFCData({ timeout: 5000 });
            displayNFCData(data);
          } catch (error) {
            console.error('❌ Error:', error.message);
          }
          break;
          
        case '2':
          try {
            const data = await nfcReader.readNFCData({ timeout: 10000 });
            displayNFCData(data);
          } catch (error) {
            console.error('❌ Error:', error.message);
          }
          break;
          
        case '3':
          try {
            const data = await nfcReader.readNFCData({ timeout: 15000 });
            displayNFCData(data);
          } catch (error) {
            console.error('❌ Error:', error.message);
          }
          break;
          
        case '4':
          try {
            const data = await nfcReader.readNFCData({ timeout: 3000 });
            displayNFCData(data);
          } catch (error) {
            console.error('❌ Error:', error.message);
          }
          break;
          
        case '5':
          console.log('\n👋 Çıkılıyor...\n');
          running = false;
          break;
          
        default:
          console.log('\n⚠️  Geçersiz seçim! Lütfen 1-5 arası bir sayı girin.\n');
      }
    }
    
    // Cleanup
    await nfcReader.stopNFC();
    
    console.log('✅ Test tamamlandı!\n');
    process.exit(0);
    
  } catch (error) {
    console.error('\n❌ Test başarısız:', error.message);
    process.exit(1);
  }
}

// Error handling
process.on('SIGINT', () => {
  console.log('\n\n🛑 Test iptal edildi\n');
  process.exit(0);
});

process.on('uncaughtException', (error) => {
  console.error('\n❌ Beklenmeyen hata:', error.message);
  process.exit(1);
});

// Run the test
if (require.main === module) {
  runNFCTest().catch(error => {
    console.error('Fatal error:', error);
    process.exit(1);
  });
}

module.exports = { MockNFCReader, displayNFCData };
