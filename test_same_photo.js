/**
 * TEST: Aynı fotoğrafı kendisiyle karşılaştır
 * Beklenen sonuç: %95+ similarity
 * Eğer düşük çıkarsa → FaceNet preprocessing problemi!
 */

import FaceRecognitionService from './modules/liveness/FaceRecognitionService.js';

async function testSamePhotoComparison() {
    console.log('========================================');
    console.log('🧪 TEST: Same Photo Self-Comparison');
    console.log('========================================');

    const faceRecognition = new FaceRecognitionService();

    try {
        // Initialize FaceNet
        console.log('🤖 Initializing FaceNet...');
        await faceRecognition.initialize();

        // Test 1: NFC fotoğrafı kendi kendisiyle
        const nfcPhotoPath = 'file:///data/user/0/com.ocrmobilesdk.debug/cache/nfc_photo_1765004099163.jpg';
        const nfcFaceFrame = {
            left: 21,
            top: 59,
            height: 199,
            width: 203
        };

        console.log('\n📸 Test 1: NFC photo vs itself');
        console.log('Expected: >95% similarity');

        const result1 = await faceRecognition.compareFaces(
            nfcPhotoPath,
            nfcFaceFrame,
            nfcPhotoPath,  // SAME photo!
            nfcFaceFrame   // SAME bbox!
        );

        console.log('\n✅ Result:');
        console.log(`  Similarity: ${(result1.similarity * 100).toFixed(1)}%`);
        console.log(`  Match: ${result1.isMatch ? '✅ YES' : '❌ NO'}`);

        if (result1.similarity < 0.95) {
            console.log('\n❌ PROBLEM DETECTED!');
            console.log('Same photo should give >95% similarity!');
            console.log('This indicates FaceNet preprocessing issue.');
        } else {
            console.log('\n✅ FaceNet working correctly!');
            console.log('Problem is likely: different persons or low quality NFC photo');
        }

    } catch (error) {
        console.error('❌ Test failed:', error);
    }

    console.log('========================================');
}

// Run test
testSamePhotoComparison()
    .then(() => console.log('✅ Test completed'))
    .catch(err => console.error('❌ Test error:', err));
