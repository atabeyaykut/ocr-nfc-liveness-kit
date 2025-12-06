/**
 * CRITICAL TEST: NFC photo ile kendisini karşılaştır
 * Eğer %95+ değilse → preprocessing hatası
 * Eğer düşükse → model input format problemi
 */

const FaceRecognitionEnsemble = require('./modules/liveness/FaceRecognitionEnsemble').default;

async function testNFCSelfComparison() {
    console.log('========================================');
    console.log('🧪 CRITICAL TEST: NFC Photo Self-Comparison');
    console.log('========================================');

    const ensemble = new FaceRecognitionEnsemble();

    try {
        console.log('🤖 Initializing Ensemble...');
        await ensemble.initialize();
        console.log('✅ Initialized\n');

        // NFC photo path from logs
        const nfcPhoto = '/data/user/0/com.ocrmobilesdk.debug/cache/nfc_photo_1765016779146.jpg';
        const nfcFace = {
            left: 21,
            top: 59,
            height: 199,
            width: 203
        };

        console.log('📸 Testing: NFC photo vs ITSELF');
        console.log('Photo:', nfcPhoto);
        console.log('Expected: >95% similarity for both models\n');

        const result = await ensemble.compareFaces(
            nfcPhoto,
            nfcFace,
            nfcPhoto,  // SAME!
            nfcFace    // SAME!
        );

        console.log('\n========================================');
        console.log('🎯 RESULT:');
        console.log('========================================');
        console.log(`FaceNet:  ${(result.individualScores.facenet * 100).toFixed(2)}%`);
        console.log(`ArcFace:  ${(result.individualScores.arcface * 100).toFixed(2)}%`);
        console.log(`Ensemble: ${(result.similarity * 100).toFixed(2)}%`);
        console.log('========================================\n');

        // Diagnosis
        const faceNetOK = result.individualScores.facenet > 0.95;
        const arcFaceOK = result.individualScores.arcface > 0.95;

        if (!faceNetOK || !arcFaceOK) {
            console.log('❌ PREPROCESSING PROBLEM DETECTED!');
            console.log('Same photo should give >95% similarity!');
            console.log('\nPossible causes:');
            if (!faceNetOK) console.log('  1. FaceNet preprocessing/normalization issue');
            if (!arcFaceOK) console.log('  2. ArcFace preprocessing/normalization issue');
            console.log('  3. JPEG decoding problem');
            console.log('  4. Float32 array format issue');
            console.log('  5. ImageEditor crop corruption');
        } else {
            console.log('✅ PREPROCESSING IS CORRECT!');
            console.log('\nThis means the real photos ARE different people!');
            console.log('Check NFC photo manually to verify identity.');
        }

    } catch (error) {
        console.error('\n❌ Test failed:', error.message);
        console.error('Stack:', error.stack);
    }

    console.log('\n========================================');
}

testNFCSelfComparison()
    .then(() => console.log('✅ Test completed'))
    .catch(err => console.error('❌ Error:', err));
