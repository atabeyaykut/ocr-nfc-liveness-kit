/**
 * TEST: Ensemble ile aynı fotoğrafı kendisiyle karşılaştır
 * Beklenen sonuç: %95+ similarity
 * Eğer düşük çıkarsa → Ensemble preprocessing problemi!
 */

const FaceRecognitionEnsemble = require('./modules/liveness/FaceRecognitionEnsemble').default;

async function testEnsembleSamePhoto() {
    console.log('========================================');
    console.log('🧪 TEST: Ensemble Same Photo Self-Comparison');
    console.log('========================================');

    const ensemble = new FaceRecognitionEnsemble();

    try {
        // Initialize Ensemble
        console.log('🤖 Initializing Ensemble (FaceNet + ArcFace)...');
        await ensemble.initialize();
        console.log('✅ Ensemble initialized\n');

        // Test 1: NFC fotoğrafı kendi kendisiyle
        const nfcPhotoPath = '/data/user/0/com.ocrmobilesdk.debug/cache/nfc_photo_1765015795881.jpg';
        const nfcFaceFrame = {
            left: 21,
            top: 59,
            height: 199,
            width: 203
        };

        console.log('📸 Test 1: NFC photo vs itself');
        console.log('Expected: >95% similarity for both models');
        console.log('Photo:', nfcPhotoPath);
        console.log('Face bbox:', nfcFaceFrame);

        const result1 = await ensemble.compareFaces(
            nfcPhotoPath,
            nfcFaceFrame,
            nfcPhotoPath,  // SAME photo!
            nfcFaceFrame   // SAME bbox!
        );

        console.log('\n========================================');
        console.log('🎯 ENSEMBLE RESULT:');
        console.log('========================================');
        console.log(`  FaceNet:     ${(result1.individualScores.facenet * 100).toFixed(2)}%`);
        console.log(`  ArcFace:     ${(result1.individualScores.arcface * 100).toFixed(2)}%`);
        console.log(`  Ensemble:    ${(result1.similarity * 100).toFixed(2)}%`);
        console.log('========================================');

        // Validation
        const faceNetOK = result1.individualScores.facenet > 0.95;
        const arcFaceOK = result1.individualScores.arcface > 0.95;
        const ensembleOK = result1.similarity > 0.95;

        console.log('\n📊 Validation:');
        console.log(`  FaceNet:  ${faceNetOK ? '✅' : '❌'} (${faceNetOK ? 'PASS' : 'FAIL'})`);
        console.log(`  ArcFace:  ${arcFaceOK ? '✅' : '❌'} (${arcFaceOK ? 'PASS' : 'FAIL'})`);
        console.log(`  Ensemble: ${ensembleOK ? '✅' : '❌'} (${ensembleOK ? 'PASS' : 'FAIL'})`);

        if (!faceNetOK || !arcFaceOK || !ensembleOK) {
            console.log('\n❌ PROBLEM DETECTED!');
            console.log('Same photo should give >95% similarity!');
            if (!faceNetOK) console.log('  → FaceNet preprocessing issue');
            if (!arcFaceOK) console.log('  → ArcFace preprocessing issue');
        } else {
            console.log('\n✅ ENSEMBLE WORKING PERFECTLY!');
            console.log('Real test failure is due to: different persons or NFC photo quality');
        }

    } catch (error) {
        console.error('\n❌ Test failed:', error);
        console.error('Stack:', error.stack);
    }

    console.log('\n========================================');
}

// Run test
testEnsembleSamePhoto()
    .then(() => console.log('✅ Test completed'))
    .catch(err => console.error('❌ Test error:', err));
