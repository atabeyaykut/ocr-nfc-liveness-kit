/**
 * Liveness + NFC Face Comparison Example
 * NFC pasaport fotoğrafı ile liveness testini birleştiren örnek
 */

const LivenessDetector = require('../modules/liveness/LivenessDetector');
const Logger = require('../utils/logger');

/**
 * NFC + Liveness Verification Akışı
 * 
 * Adımlar:
 * 1. NFC okuyucu ile pasaport bilgilerini al
 * 2. NFC'den gelen fotoğrafı yükle
 * 3. Liveness testi başlat
 * 4. Liveness sırasında rastgele fotoğraflar çek
 * 5. Liveness tamamlandıktan sonra NFC ile karşılaştır
 * 6. Sonucu değerlendir
 */

class NFCLivenessVerification {
    constructor(cameraRef) {
        this.cameraRef = cameraRef;

        // LivenessDetector yapılandırması
        this.livenessDetector = new LivenessDetector({
            enableFaceComparison: true,
            capturePhotosForComparison: true,
            photoCaptureInterval: 2, // Her 2 komuttan 1 fotoğraf
            realTimeMode: true,
            maxRetries: 3,
        });

        // Callbacks ayarla
        this.setupCallbacks();
    }

    setupCallbacks() {
        // Liveness progress
        this.livenessDetector.onProgress = (message) => {
            console.log('📱 Progress:', message);
        };

        // Fotoğraf çekildiğinde
        this.livenessDetector.onPhotoCapture = (data) => {
            console.log('📸 Photo captured:', {
                command: data.metadata.command,
                totalPhotos: data.totalPhotos,
            });
        };

        // Face comparison tamamlandığında
        this.livenessDetector.onFaceComparisonComplete = (result) => {
            console.log('🔍 Face Comparison Result:', {
                passed: result.passed,
                score: (result.averageScore * 100).toFixed(1) + '%',
                passedPhotos: `${result.passedPhotos}/${result.totalPhotos}`,
            });
        };

        // Liveness başarılı
        this.livenessDetector.onSuccess = (result) => {
            console.log('✅ Liveness Successful:', result);
        };

        // Hata
        this.livenessDetector.onError = (error) => {
            console.error('❌ Error:', error.message);
        };

        // Komut değiştiğinde
        this.livenessDetector.onInstructionGiven = (instruction) => {
            console.log('👤 Instruction:', instruction.message);
        };
    }

    /**
     * ADIM 1: NFC okuyucu ile pasaport bilgilerini al
     * (Bu kısmı NFC modülünüz ile entegre edin)
     */
    async readNFCPassport() {
        try {
            console.log('🔐 NFC okuyucu başlatılıyor...');

            // NFC modülünüzü kullanın
            // const nfcModule = require('../modules/nfc/NFCReaderModule');
            // const passportData = await nfcModule.readPassport();

            // Örnek için hardcoded
            const passportData = {
                personalInfo: {
                    name: 'John',
                    surname: 'Doe',
                    documentNumber: 'U123456789',
                    nationality: 'TR',
                    dateOfBirth: '1990-01-01',
                },
                photo: {
                    uri: '/path/to/nfc/photo.jpg', // NFC'den gelen fotoğraf
                    base64: '...', // veya base64
                },
            };

            Logger.info('NFC pasaport bilgileri okundu', {
                documentNumber: passportData.personalInfo.documentNumber,
                hasPhoto: !!passportData.photo.uri,
            });

            return passportData;

        } catch (error) {
            Logger.error('NFC okuma hatası:', error);
            throw error;
        }
    }

    /**
     * ADIM 2: NFC fotoğrafını yükle ve analiz et
     */
    async loadNFCPhoto(nfcPhotoUri) {
        try {
            console.log('📄 NFC fotoğrafı yükleniyor...');

            const result = await this.livenessDetector.loadNFCPhoto(nfcPhotoUri);

            console.log('✅ NFC fotoğrafı yüklendi:', {
                faceDetected: result.faceDetected,
                confidence: (result.confidence * 100).toFixed(1) + '%',
                landmarkCount: result.landmarkCount,
            });

            return result;

        } catch (error) {
            Logger.error('NFC fotoğraf yükleme hatası:', error);
            throw error;
        }
    }

    /**
     * ADIM 3-4: Liveness testi başlat ve fotoğraf çek
     */
    async startLivenessWithPhotoCapture() {
        try {
            console.log('👁️ Liveness testi başlatılıyor...');

            // Liveness testi başlat
            const livenessPromise = this.livenessDetector.startLivenessTest({
                commandCount: 5,
                difficulty: 'medium',
                requireHeadMovements: true,
            });

            // Fotoğraf çekme işlemini paralel çalıştır
            let photoCount = 0;
            const captureInterval = setInterval(async () => {
                if (this.livenessDetector.getStatus() === 'INSTRUCTION_GIVEN') {
                    const currentCommand = this.livenessDetector.currentCommand;

                    if (currentCommand && photoCount % 2 === 0) { // Her 2 komuttan 1
                        await this.livenessDetector.capturePhotoForComparison(
                            this.cameraRef,
                            {
                                command: currentCommand.type,
                                sequenceId: currentCommand.sequenceId,
                                timestamp: Date.now(),
                            }
                        );
                    }
                    photoCount++;
                }
            }, 1000); // Her saniye kontrol et

            // Liveness testi tamamlanana kadar bekle
            await livenessPromise;

            // Interval'i temizle
            clearInterval(captureInterval);

            console.log('✅ Liveness testi tamamlandı');

            // Çekilen fotoğraf sayısını kontrol et
            const status = this.livenessDetector.getFaceComparisonStatus();
            console.log('📊 Karşılaştırma durumu:', status);

            if (!status.ready) {
                throw new Error(
                    `Yetersiz fotoğraf: ${status.livenessCapturedCount} (min: 3 gerekli)`
                );
            }

            return true;

        } catch (error) {
            Logger.error('Liveness testi hatası:', error);
            throw error;
        }
    }

    /**
     * ADIM 5: NFC ile karşılaştır
     */
    async compareWithNFC() {
        try {
            console.log('🔍 NFC ile karşılaştırma başlatılıyor...');

            const comparisonResult = await this.livenessDetector.compareWithNFC();

            console.log('📊 Karşılaştırma Sonucu:', {
                passed: comparisonResult.passed ? '✅ BAŞARILI' : '❌ BAŞARISIZ',
                averageScore: (comparisonResult.averageScore * 100).toFixed(1) + '%',
                maxScore: (comparisonResult.maxScore * 100).toFixed(1) + '%',
                passedPhotos: `${comparisonResult.passedPhotos}/${comparisonResult.totalPhotos}`,
                processingTime: comparisonResult.processingTime + 'ms',
            });

            // Detaylı sonuçlar
            console.log('\n📸 Fotoğraf Detayları:');
            comparisonResult.details.forEach((detail, index) => {
                console.log(`  ${index + 1}. ${detail.command}: ${(detail.similarity.score * 100).toFixed(1)}% ${detail.passed ? '✅' : '❌'}`);
            });

            return comparisonResult;

        } catch (error) {
            Logger.error('Karşılaştırma hatası:', error);
            throw error;
        }
    }

    /**
     * TAM AKIŞ: NFC + Liveness + Comparison
     */
    async runFullVerification() {
        try {
            console.log('\n🚀 BAŞLATILIYOR: NFC + Liveness Doğrulama\n');

            // 1. NFC okuma
            console.log('=== ADIM 1: NFC Okuma ===');
            const passportData = await this.readNFCPassport();

            // 2. NFC fotoğrafını yükle
            console.log('\n=== ADIM 2: NFC Fotoğraf Yükleme ===');
            await this.loadNFCPhoto(passportData.photo.uri);

            // 3-4. Liveness + Fotoğraf çekme
            console.log('\n=== ADIM 3-4: Liveness + Fotoğraf Çekme ===');
            await this.startLivenessWithPhotoCapture();

            // 5. Karşılaştırma
            console.log('\n=== ADIM 5: NFC ile Karşılaştırma ===');
            const comparisonResult = await this.compareWithNFC();

            // 6. Final sonuç
            console.log('\n=== SONUÇ ===');
            const finalResult = {
                verification: comparisonResult.passed ? 'BAŞARILI ✅' : 'BAŞARISIZ ❌',
                identity: passportData.personalInfo,
                faceMatchScore: (comparisonResult.averageScore * 100).toFixed(1) + '%',
                livenessPhotos: comparisonResult.totalPhotos,
                matchedPhotos: comparisonResult.passedPhotos,
                timestamp: new Date().toISOString(),
            };

            console.log(JSON.stringify(finalResult, null, 2));

            return finalResult;

        } catch (error) {
            console.error('\n❌ DOĞRULAMA BAŞARISIZ:', error.message);
            throw error;
        } finally {
            // Cleanup
            this.livenessDetector.reset();
        }
    }
}

// Kullanım Örneği
async function example(cameraRef) {
    const verification = new NFCLivenessVerification(cameraRef);

    try {
        const result = await verification.runFullVerification();

        if (result.verification.includes('BAŞARILI')) {
            console.log('\n🎉 Kimlik doğrulama başarılı!');
            console.log('👤 Kullanıcı:', result.identity.name, result.identity.surname);
            console.log('🆔 Belge No:', result.identity.documentNumber);
            console.log('🔍 Eşleşme Skoru:', result.faceMatchScore);
        } else {
            console.log('\n⚠️ Kimlik doğrulama başarısız!');
            console.log('Lütfen tekrar deneyin veya manuel doğrulama yapın.');
        }

    } catch (error) {
        console.error('Hata:', error.message);
    }
}

module.exports = NFCLivenessVerification;
module.exports.example = example;
