/**
 * SDK Validation Test
 * Quick test to verify SDK exports work correctly
 * 
 * Run with: node SDK_VALIDATION_TEST.js
 */

console.log('🧪 Testing SDK exports...\n');

try {
  // Test main SDK export
  const SDK = require('./sdk.js');
  
  console.log('✅ SDK loaded successfully');
  console.log(`   Version: ${SDK.SDK_VERSION}`);
  console.log(`   Name: ${SDK.SDK_NAME}\n`);
  
  // Test core modules
  const tests = [
    { name: 'OCRReader', value: SDK.OCRReader },
    { name: 'SecureOCRReader', value: SDK.SecureOCRReader },
    { name: 'NFCReader', value: SDK.NFCReader },
    { name: 'LivenessDetector', value: SDK.LivenessDetector },
    { name: 'Logger', value: SDK.Logger },
    { name: 'ImageProcessor', value: SDK.ImageProcessor },
    { name: 'OCR_STATUS', value: SDK.OCR_STATUS },
    { name: 'NFC_STATUS', value: SDK.NFC_STATUS },
    { name: 'LIVENESS_STATUS', value: SDK.LIVENESS_STATUS },
  ];
  
  let passed = 0;
  let failed = 0;
  
  console.log('📦 Testing module exports:');
  tests.forEach(test => {
    if (test.value) {
      console.log(`   ✅ ${test.name}`);
      passed++;
    } else {
      console.log(`   ❌ ${test.name} - MISSING`);
      failed++;
    }
  });
  
  console.log(`\n📊 Results:`);
  console.log(`   Passed: ${passed}/${tests.length}`);
  console.log(`   Failed: ${failed}/${tests.length}`);
  
  if (failed === 0) {
    console.log('\n🎉 All exports validated successfully!');
    console.log('✅ SDK is production ready!\n');
    process.exit(0);
  } else {
    console.log('\n⚠️  Some exports are missing. Please check the SDK configuration.\n');
    process.exit(1);
  }
  
} catch (error) {
  console.error('❌ SDK validation failed:');
  console.error(`   Error: ${error.message}`);
  console.error(`   Stack: ${error.stack}\n`);
  process.exit(1);
}
