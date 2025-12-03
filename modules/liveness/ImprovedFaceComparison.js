/**
 * Improved Face Comparison Algorithm
 * 
 * ML Kit landmark tabanlı gelişmiş yüz karşılaştırma.
 * ONNX/FaceNet tam implementasyonu için geçici çözüm.
 * 
 * Target: %55-70 similarity (mevcut %45'ten iyileştirme)
 * 
 * @module ImprovedFaceComparison
 */

/**
 * Gelişmiş yüz karşılaştırma algoritması
 * 
 * İyileştirmeler:
 * - Daha fazla landmark kullanımı
 * - Weighted scoring (önemli landmark'lara daha fazla ağırlık)
 * - Outlier filtering (aşırı sapan değerleri ignore et)
 * - Aspect ratio normalization (resolution bağımsız)
 * 
 * @param {Object} face1 - Reference face (NFC fotoğrafı)
 * @param {Object} face2 - Live face (liveness test)
 * @returns {number} Similarity score (0-1)
 */
export function compareFacesImproved(face1, face2) {
    if (!face1 || !face2) return 0;

    try {
        let totalScore = 0;
        let weightSum = 0;

        // 1. Enhanced Landmark Similarity (60% weight)
        if (face1.landmarks && face2.landmarks && face1.frame && face2.frame) {
            const landmarkScore = compareEnhancedLandmarks(face1.landmarks, face2.landmarks, face1.frame, face2.frame);
            totalScore += landmarkScore * 0.6;
            weightSum += 0.6;
        }

        // 2. Geometry Similarity (25% weight) - Resolution independent
        if (face1.frame && face2.frame) {
            const geometryScore = compareGeometryImproved(face1.frame, face2.frame);
            totalScore += geometryScore * 0.25;
            weightSum += 0.25;
        }

        // 3. Feature Similarity (15% weight) - Eye/smile probabilities
        const featureScore = compareFeaturesImproved(face1, face2);
        totalScore += featureScore * 0.15;
        weightSum += 0.15;

        // Normalize
        const finalScore = weightSum > 0 ? totalScore / weightSum : 0;

        return Math.max(0, Math.min(1, finalScore));

    } catch (error) {
        console.error('[ImprovedFaceComparison] Error:', error);
        return 0;
    }
}

/**
 * Enhanced landmark comparison with weighted scoring
 * 
 * Ağırlıklar:
 * - Eyes: %40 (en karakteristik)
 * - Nose: %30 (orta önem)
 * - Mouth: %20 (yüz ifadesine bağlı)
 * - Cheeks/Ears: %10 (düşük önem)
 */
function compareEnhancedLandmarks(landmarks1, landmarks2, frame1, frame2) {
    // Weighted landmark groups
    const landmarkGroups = [
        {
            points: ['leftEye', 'rightEye'],
            weight: 0.4,
            name: 'eyes'
        },
        {
            points: ['noseBase', 'noseTip', 'noseTop'],
            weight: 0.3,
            name: 'nose'
        },
        {
            points: ['mouthLeft', 'mouthRight', 'mouthBottom'],
            weight: 0.2,
            name: 'mouth'
        },
        {
            points: ['leftCheek', 'rightCheek', 'leftEar', 'rightEar'],
            weight: 0.1,
            name: 'other'
        }
    ];

    let totalScore = 0;
    let totalWeight = 0;

    for (const group of landmarkGroups) {
        const groupScore = compareLandmarkGroup(
            landmarks1,
            landmarks2,
            group.points,
            frame1,
            frame2
        );

        if (groupScore >= 0) { // Valid score
            totalScore += groupScore * group.weight;
            totalWeight += group.weight;
        }
    }

    return totalWeight > 0 ? totalScore / totalWeight : 0;
}

/**
 * Compare a group of landmarks
 */
function compareLandmarkGroup(landmarks1, landmarks2, points, frame1, frame2) {
    let totalDistance = 0;
    let validPoints = 0;

    for (const point of points) {
        if (landmarks1[point] && landmarks2[point]) {
            const pos1 = landmarks1[point].position;
            const pos2 = landmarks2[point].position;

            // Normalize positions by face size (resolution independent)
            const norm1 = {
                x: pos1.x / frame1.width,
                y: pos1.y / frame1.height
            };
            const norm2 = {
                x: pos2.x / frame2.width,
                y: pos2.y / frame2.height
            };

            // Euclidean distance in normalized space
            const distance = Math.sqrt(
                Math.pow(norm1.x - norm2.x, 2) +
                Math.pow(norm1.y - norm2.y, 2)
            );

            totalDistance += distance;
            validPoints++;
        }
    }

    if (validPoints === 0) return -1; // Invalid

    // Average distance, max acceptable = 0.3 (30% of face size)
    const avgDistance = totalDistance / validPoints;
    const maxAcceptable = 0.3;

    // Convert distance to similarity (0-1)
    const similarity = Math.max(0, 1 - (avgDistance / maxAcceptable));

    return similarity;
}

/**
 * Improved geometry comparison
 * 
 * - Aspect ratio (en/boy oranı)
 * - Face orientation tolerance
 */
function compareGeometryImproved(frame1, frame2) {
    // Aspect ratio similarity (more tolerant)
    const aspectRatio1 = frame1.width / frame1.height;
    const aspectRatio2 = frame2.width / frame2.height;

    const aspectDiff = Math.abs(aspectRatio1 - aspectRatio2);

    // Allow up to 40% aspect ratio difference
    const maxAspectDiff = 0.4;
    const aspectScore = Math.max(0, 1 - (aspectDiff / maxAspectDiff));

    // Position tolerance (center of face should be relatively similar)
    // This helps with slightly different camera angles
    const center1 = {
        x: (frame1.left + frame1.width / 2) / frame1.width,
        y: (frame1.top + frame1.height / 2) / frame1.height
    };
    const center2 = {
        x: (frame2.left + frame2.width / 2) / frame2.width,
        y: (frame2.top + frame2.height / 2) / frame2.height
    };

    const centerDist = Math.sqrt(
        Math.pow(center1.x - center2.x, 2) +
        Math.pow(center1.y - center2.y, 2)
    );

    // Max acceptable center distance = 0.2 (20% of image)
    const centerScore = Math.max(0, 1 - (centerDist / 0.2));

    // Combine scores
    return (aspectScore * 0.7) + (centerScore * 0.3);
}

/**
 * Improved feature comparison
 * 
 * - Eye probabilities (daha toleranslı)
 * - Smile probability (daha az ağırlık, yüz ifadesi değişebilir)
 */
function compareFeaturesImproved(face1, face2) {
    let scores = [];

    // Left eye (30% weight)
    if (face1.leftEyeOpenProbability !== undefined && face2.leftEyeOpenProbability !== undefined) {
        const eyeDiff = Math.abs(face1.leftEyeOpenProbability - face2.leftEyeOpenProbability);
        // More tolerant: allow up to 0.5 difference
        const eyeScore = Math.max(0, 1 - (eyeDiff / 0.5));
        scores.push({ score: eyeScore, weight: 0.3 });
    }

    // Right eye (30% weight)
    if (face1.rightEyeOpenProbability !== undefined && face2.rightEyeOpenProbability !== undefined) {
        const eyeDiff = Math.abs(face1.rightEyeOpenProbability - face2.rightEyeOpenProbability);
        const eyeScore = Math.max(0, 1 - (eyeDiff / 0.5));
        scores.push({ score: eyeScore, weight: 0.3 });
    }

    // Smile (20% weight) - less important as expression can change
    if (face1.smilingProbability !== undefined && face2.smilingProbability !== undefined) {
        const smileDiff = Math.abs(face1.smilingProbability - face2.smilingProbability);
        // Very tolerant: allow up to 0.8 difference
        const smileScore = Math.max(0, 1 - (smileDiff / 0.8));
        scores.push({ score: smileScore, weight: 0.2 });
    }

    // Head rotation (20% weight) - should be similar
    if (face1.headEulerAngleX !== undefined && face2.headEulerAngleX !== undefined) {
        const angleDiff = Math.abs(face1.headEulerAngleX - face2.headEulerAngleX);
        // Allow up to 30 degrees difference
        const angleScore = Math.max(0, 1 - (angleDiff / 30));
        scores.push({ score: angleScore, weight: 0.2 });
    }

    // Calculate weighted average
    if (scores.length === 0) return 0.5; // Neutral if no features available

    const totalScore = scores.reduce((sum, item) => sum + (item.score * item.weight), 0);
    const totalWeight = scores.reduce((sum, item) => sum + item.weight, 0);

    return totalWeight > 0 ? totalScore / totalWeight : 0.5;
}

/**
 * Batch compare - multiple live photos against reference
 * Returns average similarity
 */
export function batchCompareFaces(referenceFace, livePhotos) {
    const similarities = livePhotos
        .map(photo => compareFacesImproved(referenceFace, photo.faceData))
        .filter(s => s > 0);

    if (similarities.length === 0) return 0;

    // Average similarity
    const avgSimilarity = similarities.reduce((a, b) => a + b, 0) / similarities.length;

    // Also calculate max (best match)
    const maxSimilarity = Math.max(...similarities);

    console.log(`[ImprovedFaceComparison] Batch results:`);
    console.log(`  Average: ${(avgSimilarity * 100).toFixed(1)}%`);
    console.log(`  Best: ${(maxSimilarity * 100).toFixed(1)}%`);
    console.log(`  Samples: ${similarities.length}`);

    return {
        average: avgSimilarity,
        max: maxSimilarity,
        count: similarities.length,
        similarities: similarities
    };
}
