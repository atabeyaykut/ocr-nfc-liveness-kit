/**
 * Face Comparison Module
 * NFC pasaport fotoğrafı ile liveness fotoğraflarını karşılaştırır
 * GDPR & KVKK compliant - tüm veriler geçicidir
 */

const Logger = require('../../utils/logger');
const FaceDetection = require('@react-native-ml-kit/face-detection');

// Face comparison configuration
const COMPARISON_CONFIG = {
    minSimilarityScore: 0.75, // Minimum %75 benzerlik gerekli
    minPhotosToCompare: 3, // En az 3 fotoğraf karşılaştır
    confidenceThreshold: 0.7, // Face detection confidence threshold
    maxComparisonTime: 5000, // 5 saniye max işlem süresi
};

/**
 * Face Comparison Class
 * NFC ve Liveness fotoğraflarını karşılaştırır
 */
class FaceComparison {
    constructor(config = {}) {
        this.config = { ...COMPARISON_CONFIG, ...config };
        this.nfcFaceData = null;
        this.livenessFaces = [];

        Logger.info('FaceComparison initialized', this.config);
    }

    /**
     * NFC'den gelen fotoğrafı yükle ve yüz verilerini çıkar
     * @param {string} nfcPhotoUri - NFC'den gelen fotoğraf URI
     * @returns {Promise<object>} Face detection sonucu
     */
    async loadNFCPhoto(nfcPhotoUri) {
        try {
            Logger.info('Loading NFC photo for face extraction...', { uri: nfcPhotoUri });

            if (!nfcPhotoUri) {
                throw new Error('NFC fotoğraf URI\'si boş');
            }

            // NFC fotoğrafından yüz verilerini çıkar
            const faces = await FaceDetection.detect(nfcPhotoUri, {
                performanceMode: 'accurate',
                landmarkMode: 'all',
                classificationMode: 'all',
            });

            if (!faces || faces.length === 0) {
                throw new Error('NFC fotoğrafında yüz algılanamadı');
            }

            if (faces.length > 1) {
                Logger.warn('NFC fotoğrafında birden fazla yüz var, ilki kullanılıyor');
            }

            // En büyük/merkezdeki yüzü al
            const primaryFace = this.selectPrimaryFace(faces);

            this.nfcFaceData = {
                face: primaryFace,
                landmarks: this.extractLandmarks(primaryFace),
                features: this.extractFaceFeatures(primaryFace),
                photoUri: nfcPhotoUri,
                timestamp: Date.now(),
            };

            Logger.info('NFC face data extracted successfully', {
                faceId: primaryFace.trackingId,
                confidence: primaryFace.confidence,
                landmarkCount: Object.keys(this.nfcFaceData.landmarks).length,
            });

            return this.nfcFaceData;

        } catch (error) {
            Logger.error('NFC photo loading failed:', error);
            throw new Error(`NFC fotoğraf yükleme hatası: ${error.message}`);
        }
    }

    /**
     * Liveness sırasında çekilen fotoğrafı ekle
     * @param {string} photoUri - Liveness fotoğraf URI
     * @param {object} metadata - Fotoğraf metadata (command, timestamp, etc.)
     * @returns {Promise<object>} Face detection sonucu
     */
    async addLivenessPhoto(photoUri, metadata = {}) {
        try {
            Logger.info('Adding liveness photo for comparison...', { uri: photoUri });

            const faces = await FaceDetection.detect(photoUri, {
                performanceMode: 'accurate',
                landmarkMode: 'all',
                classificationMode: 'all',
            });

            if (!faces || faces.length === 0) {
                Logger.warn('Liveness fotoğrafında yüz algılanamadı');
                return null;
            }

            const primaryFace = this.selectPrimaryFace(faces);

            const livenessData = {
                face: primaryFace,
                landmarks: this.extractLandmarks(primaryFace),
                features: this.extractFaceFeatures(primaryFace),
                photoUri,
                metadata,
                timestamp: Date.now(),
            };

            this.livenessFaces.push(livenessData);

            Logger.info('Liveness photo added', {
                totalPhotos: this.livenessFaces.length,
                faceId: primaryFace.trackingId,
                command: metadata.command,
            });

            return livenessData;

        } catch (error) {
            Logger.error('Liveness photo addition failed:', error);
            return null;
        }
    }

    /**
     * NFC ve Liveness fotoğraflarını karşılaştır
     * @returns {Promise<object>} Karşılaştırma sonucu
     */
    async comparePhotos() {
        try {
            Logger.info('Starting face comparison...', {
                nfcLoaded: !!this.nfcFaceData,
                livenessCount: this.livenessFaces.length,
            });

            // Validasyonlar
            if (!this.nfcFaceData) {
                throw new Error('NFC fotoğrafı yüklenmemiş');
            }

            if (this.livenessFaces.length < this.config.minPhotosToCompare) {
                throw new Error(
                    `En az ${this.config.minPhotosToCompare} liveness fotoğrafı gerekli. Mevcut: ${this.livenessFaces.length}`
                );
            }

            const startTime = Date.now();
            const comparisonResults = [];

            // Her liveness fotoğrafını NFC ile karşılaştır
            for (const livenessFace of this.livenessFaces) {
                const similarity = this.calculateFaceSimilarity(
                    this.nfcFaceData,
                    livenessFace
                );

                comparisonResults.push({
                    photoUri: livenessFace.photoUri,
                    command: livenessFace.metadata.command,
                    similarity,
                    timestamp: livenessFace.timestamp,
                    passed: similarity.score >= this.config.minSimilarityScore,
                });

                Logger.info('Photo comparison result', {
                    command: livenessFace.metadata.command,
                    score: similarity.score,
                    passed: similarity.score >= this.config.minSimilarityScore,
                });
            }

            // Genel değerlendirme
            const passedCount = comparisonResults.filter(r => r.passed).length;
            const averageScore =
                comparisonResults.reduce((sum, r) => sum + r.similarity.score, 0) /
                comparisonResults.length;

            const maxScore = Math.max(...comparisonResults.map(r => r.similarity.score));

            // En az %75 fotoğraf eşleşmeli
            const requiredPassCount = Math.ceil(comparisonResults.length * 0.75);
            const overallPassed = passedCount >= requiredPassCount;

            const processingTime = Date.now() - startTime;

            const result = {
                passed: overallPassed,
                averageScore: parseFloat(averageScore.toFixed(3)),
                maxScore: parseFloat(maxScore.toFixed(3)),
                passedPhotos: passedCount,
                totalPhotos: comparisonResults.length,
                requiredPassCount,
                details: comparisonResults,
                nfcPhoto: {
                    uri: this.nfcFaceData.photoUri,
                    faceConfidence: this.nfcFaceData.face.confidence,
                },
                processingTime,
                timestamp: new Date().toISOString(),
            };

            Logger.info('Face comparison completed', {
                passed: result.passed,
                score: result.averageScore,
                passedPhotos: `${passedCount}/${comparisonResults.length}`,
            });

            // GDPR: Karşılaştırma sonrası verileri temizle
            this.cleanup();

            return result;

        } catch (error) {
            Logger.error('Face comparison failed:', error);
            throw new Error(`Yüz karşılaştırma hatası: ${error.message}`);
        }
    }

    /**
     * İki yüz arasındaki benzerliği hesapla
     * @param {object} face1 - İlk yüz verisi
     * @param {object} face2 - İkinci yüz verisi
     * @returns {object} Benzerlik skoru ve detaylar
     */
    calculateFaceSimilarity(face1, face2) {
        // Landmark bazlı benzerlik
        const landmarkSimilarity = this.compareLandmarks(
            face1.landmarks,
            face2.landmarks
        );

        // Geometrik benzerlik (yüz şekli, oranlar)
        const geometricSimilarity = this.compareGeometry(
            face1.face,
            face2.face
        );

        // Özellik benzerliği (göz rengi, yüz ifadesi - sınırlı)
        const featureSimilarity = this.compareFeatures(
            face1.features,
            face2.features
        );

        // Ağırlıklı ortalama
        const weights = {
            landmarks: 0.5,
            geometry: 0.3,
            features: 0.2,
        };

        const score =
            landmarkSimilarity * weights.landmarks +
            geometricSimilarity * weights.geometry +
            featureSimilarity * weights.features;

        return {
            score: parseFloat(score.toFixed(3)),
            breakdown: {
                landmarks: parseFloat(landmarkSimilarity.toFixed(3)),
                geometry: parseFloat(geometricSimilarity.toFixed(3)),
                features: parseFloat(featureSimilarity.toFixed(3)),
            },
            confidence: Math.min(face1.face.confidence, face2.face.confidence),
        };
    }

    /**
     * Landmark'ları karşılaştır
     * @param {object} landmarks1 - İlk yüz landmark'ları
     * @param {object} landmarks2 - İkinci yüz landmark'ları
     * @returns {number} Benzerlik skoru (0-1)
     */
    compareLandmarks(landmarks1, landmarks2) {
        const commonLandmarks = Object.keys(landmarks1).filter(
            key => landmarks2[key]
        );

        if (commonLandmarks.length === 0) {
            return 0;
        }

        let totalDistance = 0;
        let maxDistance = 0;

        // Her landmark çifti için Euclidean mesafe hesapla
        for (const key of commonLandmarks) {
            const l1 = landmarks1[key];
            const l2 = landmarks2[key];

            const distance = Math.sqrt(
                Math.pow(l1.x - l2.x, 2) + Math.pow(l1.y - l2.y, 2)
            );

            totalDistance += distance;
            maxDistance = Math.max(maxDistance, distance);
        }

        const avgDistance = totalDistance / commonLandmarks.length;

        // Normalize et: düşük mesafe = yüksek benzerlik
        // Assume max meaningful distance is 100 pixels
        const similarity = Math.max(0, 1 - avgDistance / 100);

        return similarity;
    }

    /**
     * Geometrik özellikleri karşılaştır
     * @param {object} face1 - İlk yüz
     * @param {object} face2 - İkinci yüz
     * @returns {number} Benzerlik skoru (0-1)
     */
    compareGeometry(face1, face2) {
        const bounds1 = face1.bounds;
        const bounds2 = face2.bounds;

        // Yüz boyutu oranı
        const width1 = bounds1.width || bounds1.right - bounds1.left;
        const height1 = bounds1.height || bounds1.bottom - bounds1.top;
        const width2 = bounds2.width || bounds2.right - bounds2.left;
        const height2 = bounds2.height || bounds2.bottom - bounds2.top;

        const ratio1 = width1 / height1;
        const ratio2 = width2 / height2;
        const ratioSimilarity = 1 - Math.abs(ratio1 - ratio2) / Math.max(ratio1, ratio2);

        // Euler açıları (baş pozisyonu)
        const yawDiff = Math.abs(
            (face1.headEulerAngleY || face1.rotationY || 0) -
            (face2.headEulerAngleY || face2.rotationY || 0)
        );
        const pitchDiff = Math.abs(
            (face1.headEulerAngleX || face1.rotationX || 0) -
            (face2.headEulerAngleX || face2.rotationX || 0)
        );

        // Açı farkı normalize et (max 45 derece kabul edilebilir)
        const angleSimilarity = Math.max(0, 1 - (yawDiff + pitchDiff) / 90);

        // Ortalama al
        return (ratioSimilarity * 0.6 + angleSimilarity * 0.4);
    }

    /**
     * Yüz özelliklerini karşılaştır
     * @param {object} features1 - İlk yüz özellikleri
     * @param {object} features2 - İkinci yüz özellikleri
     * @returns {number} Benzerlik skoru (0-1)
     */
    compareFeatures(features1, features2) {
        let similarity = 0;
        let count = 0;

        // Göz açıklığı benzerliği
        if (features1.leftEyeOpen !== undefined && features2.leftEyeOpen !== undefined) {
            const eyeDiff = Math.abs(features1.leftEyeOpen - features2.leftEyeOpen);
            similarity += 1 - eyeDiff;
            count++;
        }

        // Gülümseme benzerliği (çok değişken olabilir)
        if (features1.smiling !== undefined && features2.smiling !== undefined) {
            const smileDiff = Math.abs(features1.smiling - features2.smiling);
            similarity += Math.max(0, 1 - smileDiff * 0.5); // Düşük ağırlık
            count++;
        }

        return count > 0 ? similarity / count : 0.5;
    }

    /**
     * En uygun yüzü seç (en büyük ve merkezde olan)
     * @param {array} faces - Yüz listesi
     * @returns {object} Seçilen yüz
     */
    selectPrimaryFace(faces) {
        if (faces.length === 1) {
            return faces[0];
        }

        // En büyük alana sahip yüzü seç
        return faces.reduce((largest, current) => {
            const currentArea =
                (current.bounds.width || current.bounds.right - current.bounds.left) *
                (current.bounds.height || current.bounds.bottom - current.bounds.top);

            const largestArea =
                (largest.bounds.width || largest.bounds.right - largest.bounds.left) *
                (largest.bounds.height || largest.bounds.bottom - largest.bounds.top);

            return currentArea > largestArea ? current : largest;
        });
    }

    /**
     * Yüz landmark'larını çıkar
     * @param {object} face - Face detection sonucu
     * @returns {object} Landmark'lar
     */
    extractLandmarks(face) {
        const landmarks = {};

        if (face.landmarks) {
            face.landmarks.forEach(landmark => {
                landmarks[landmark.type] = {
                    x: landmark.position.x,
                    y: landmark.position.y,
                };
            });
        }

        return landmarks;
    }

    /**
     * Yüz özelliklerini çıkar
     * @param {object} face - Face detection sonucu
     * @returns {object} Özellikler
     */
    extractFaceFeatures(face) {
        return {
            leftEyeOpen: face.leftEyeOpenProbability,
            rightEyeOpen: face.rightEyeOpenProbability,
            smiling: face.smilingProbability,
            confidence: face.confidence,
        };
    }

    /**
     * Tüm verileri temizle (GDPR compliance)
     */
    cleanup() {
        Logger.info('Cleaning up face comparison data (GDPR compliance)');
        this.nfcFaceData = null;
        this.livenessFaces = [];
    }

    /**
     * Liveness fotoğraf sayısını getir
     * @returns {number} Fotoğraf sayısı
     */
    getLivenessPhotoCount() {
        return this.livenessFaces.length;
    }

    /**
     * NFC fotoğrafı yüklenmiş mi?
     * @returns {boolean}
     */
    isNFCPhotoLoaded() {
        return !!this.nfcFaceData;
    }
}

module.exports = FaceComparison;
module.exports.COMPARISON_CONFIG = COMPARISON_CONFIG;
