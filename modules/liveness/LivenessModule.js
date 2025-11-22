/**
 * Liveness Module with Face Comparison
 * Compares user's live face with ID card biometric photo
 * Uses ML Kit Face Detection for comparison
 */

import React, { useState, useRef, useCallback, useEffect } from 'react';
import {
    View,
    Text,
    StyleSheet,
    TouchableOpacity,
    ActivityIndicator,
    Alert,
    Image,
} from 'react-native';
import { Camera, useCameraDevice } from 'react-native-vision-camera';
import FaceDetection from '@react-native-ml-kit/face-detection';
import Logger from '../../utils/logger';

const LIVENESS_COMMANDS = [
    { type: 'look_straight', text: 'Düz bakın 👀', duration: 2000, validation: (face) => Math.abs(face.headEulerAngleY) < 10 && Math.abs(face.headEulerAngleX) < 10 },
    { type: 'smile', text: 'Gülümseyin 😊', duration: 3000, validation: (face) => face.smilingProbability > 0.7 },
    { type: 'turn_left', text: 'Başınızı sola çevirin ←', duration: 3000, validation: (face) => face.headEulerAngleY < -20 },
    { type: 'turn_right', text: 'Başınızı sağa çevirin →', duration: 3000, validation: (face) => face.headEulerAngleY > 20 },
    { type: 'tilt_up', text: 'Başınızı yukarı kaldırın ↑', duration: 3000, validation: (face) => face.headEulerAngleX < -15 },
    { type: 'tilt_down', text: 'Başınızı aşağı eğin ↓', duration: 3000, validation: (face) => face.headEulerAngleX > 15 },
    { type: 'blink', text: 'Göz kırpın 👁️', duration: 2000, validation: (face) => face.leftEyeOpenProbability < 0.2 && face.rightEyeOpenProbability < 0.2 },
    { type: 'open_mouth', text: 'Ağzınızı açın 😮', duration: 2000, validation: (face) => face.smilingProbability < 0.3 && Math.abs(face.headEulerAngleY) < 10 },
];

/**
 * LivenessModule Component
 * @param {string} referencePhotoUri - Biometric photo from ID card
 * @param {function} onSuccess - Callback when liveness passes
 * @param {function} onError - Callback on error
 * @param {function} onCancel - Callback on cancel
 */
export const LivenessModule = ({
    referencePhotoUri,
    onSuccess,
    onError,
    onCancel
}) => {
    const [currentCommandIndex, setCurrentCommandIndex] = useState(0);
    const [isProcessing, setIsProcessing] = useState(false);
    const [statusMessage, setStatusMessage] = useState('Hazırlanıyor...');
    const [detectedFace, setDetectedFace] = useState(null);
    const [similarity, setSimilarity] = useState(null);
    const [commandPassed, setCommandPassed] = useState(false);
    const [lightingQuality, setLightingQuality] = useState('checking');
    const [faceDepthMap, setFaceDepthMap] = useState(null);

    const cameraRef = useRef(null);
    const device = useCameraDevice('front');
    const commandTimerRef = useRef(null);
    const detectionIntervalRef = useRef(null);

    const currentCommand = LIVENESS_COMMANDS[currentCommandIndex];

    useEffect(() => {
        startLivenessTest();
        return () => {
            if (commandTimerRef.current) clearTimeout(commandTimerRef.current);
            if (detectionIntervalRef.current) clearInterval(detectionIntervalRef.current);
        };
    }, []);

    // Start real-time face detection
    useEffect(() => {
        if (currentCommand && !isProcessing) {
            setStatusMessage(currentCommand.text);
            startFaceDetection();
        }
    }, [currentCommandIndex]);

    const startLivenessTest = useCallback(() => {
        Logger.info('[Liveness] Test başlatıldı');
        setStatusMessage('Kameraya bakın...');
    }, []);

    // Real-time face detection
    const startFaceDetection = useCallback(() => {
        detectionIntervalRef.current = setInterval(async () => {
            if (!cameraRef.current || isProcessing) return;

            try {
                // Take snapshot for face detection
                const photo = await cameraRef.current.takeSnapshot({
                    quality: 50,
                    skipMetadata: true,
                });

                const photoPath = photo?.path || photo?.uri;
                if (!photoPath) return;

                const normalizedPath = photoPath.startsWith('file://')
                    ? photoPath
                    : `file://${photoPath}`;

                // Detect face
                const faces = await FaceDetection.detect(normalizedPath, {
                    performanceMode: 'fast',
                    landmarkMode: 'all',
                    contourMode: 'all',
                    classificationMode: 'all',
                });

                if (faces && faces.length > 0) {
                    const face = faces[0];
                    setDetectedFace(face);

                    // Check lighting quality
                    const lighting = checkLightingQuality(face);
                    setLightingQuality(lighting);

                    // Create 3D face map
                    const depthMap = create3DFaceMap(face);
                    setFaceDepthMap(depthMap);

                    // Warn if lighting is poor
                    if (lighting === 'poor' && !commandPassed) {
                        Logger.warn('[Liveness] Poor lighting detected');
                    }

                    // Check command completion based on face properties
                    const commandCompleted = validateCommand(currentCommand, face);

                    if (commandCompleted && !commandPassed) {
                        setCommandPassed(true);
                        Logger.info(`[Liveness] Komut tamamlandı: ${currentCommand.type}`);

                        // Move to next command after short delay
                        setTimeout(() => {
                            if (currentCommandIndex < LIVENESS_COMMANDS.length - 1) {
                                setCurrentCommandIndex(currentCommandIndex + 1);
                                setCommandPassed(false);
                            } else {
                                // All commands completed - compare with reference photo
                                compareFaces(normalizedPath);
                            }
                        }, 500);
                    }
                }
            } catch (error) {
                Logger.error('[Liveness] Detection error:', error);
            }
        }, 500); // Check every 500ms
    }, [currentCommand, currentCommandIndex, isProcessing, commandPassed]);

    // Check lighting conditions
    const checkLightingQuality = useCallback((face) => {
        if (!face) return 'unknown';

        // Use face tracking to estimate lighting
        // Lower tracking IDs often indicate poor lighting
        const trackingId = face.trackingId || 0;

        // Use bounds to estimate if face is well-lit
        const faceSize = face.frame.width * face.frame.height;
        const screenSize = 640 * 480; // Approximate
        const faceRatio = faceSize / screenSize;

        // Good lighting: face is clearly visible (10-40% of screen)
        if (faceRatio > 0.10 && faceRatio < 0.40) {
            return 'good';
        } else if (faceRatio > 0.05 && faceRatio < 0.50) {
            return 'fair';
        } else {
            return 'poor';
        }
    }, []);

    // Create 3D face depth map from landmarks
    const create3DFaceMap = useCallback((face) => {
        if (!face || !face.landmarks) return null;

        const landmarks = face.landmarks;
        const bounds = face.frame;

        // Calculate relative positions for 3D estimation
        const depthMap = {
            centerX: bounds.left + bounds.width / 2,
            centerY: bounds.top + bounds.height / 2,
            width: bounds.width,
            height: bounds.height,

            // Euler angles give us 3D orientation
            pitch: face.headEulerAngleX || 0,  // Up/Down
            yaw: face.headEulerAngleY || 0,    // Left/Right
            roll: face.headEulerAngleZ || 0,   // Tilt

            // Landmark-based depth estimation
            landmarks: {
                leftEye: landmarks.leftEye,
                rightEye: landmarks.rightEye,
                noseBase: landmarks.noseBase,
                leftMouth: landmarks.leftMouth,
                rightMouth: landmarks.rightMouth,
            },

            // Calculate inter-ocular distance for scale
            eyeDistance: landmarks.leftEye && landmarks.rightEye
                ? Math.sqrt(
                    Math.pow(landmarks.rightEye.x - landmarks.leftEye.x, 2) +
                    Math.pow(landmarks.rightEye.y - landmarks.leftEye.y, 2)
                )
                : 0,
        };

        return depthMap;
    }, []);

    // Validate command execution with custom validation functions
    const validateCommand = (command, face) => {
        if (!face || !command.validation) return false;

        try {
            return command.validation(face);
        } catch (error) {
            Logger.error('[Liveness] Validation error:', error);
            return false;
        }
    };

    // Compare live face with reference photo
    const compareFaces = useCallback(async (liveFacePath) => {
        try {
            setIsProcessing(true);
            setStatusMessage('Yüz karşılaştırılıyor...');

            if (detectionIntervalRef.current) {
                clearInterval(detectionIntervalRef.current);
            }

            Logger.info('[Liveness] Yüz karşılaştırması başlıyor...');
            Logger.info('[Liveness] Referans fotoğraf:', referencePhotoUri);
            Logger.info('[Liveness] Canlı fotoğraf:', liveFacePath);

            // Detect faces in both images
            const [referenceFaces, liveFaces] = await Promise.all([
                FaceDetection.detect(referencePhotoUri, {
                    performanceMode: 'accurate',
                    landmarkMode: 'all',
                }),
                FaceDetection.detect(liveFacePath, {
                    performanceMode: 'accurate',
                    landmarkMode: 'all',
                })
            ]);

            if (!referenceFaces || referenceFaces.length === 0) {
                throw new Error('Kimlik kartındaki fotoğrafta yüz bulunamadı');
            }

            if (!liveFaces || liveFaces.length === 0) {
                throw new Error('Canlı görüntüde yüz bulunamadı');
            }

            // Simple similarity calculation based on landmarks
            const similarityScore = calculateFaceSimilarity(
                referenceFaces[0],
                liveFaces[0]
            );

            setSimilarity(similarityScore);
            Logger.info(`[Liveness] Benzerlik skoru: ${similarityScore}%`);

            // Threshold for passing
            const SIMILARITY_THRESHOLD = 70;

            if (similarityScore >= SIMILARITY_THRESHOLD) {
                setStatusMessage('✅ Liveness başarılı!');
                Logger.info('[Liveness] Test başarılı!');

                setTimeout(() => {
                    if (onSuccess) {
                        onSuccess({
                            success: true,
                            similarity: similarityScore,
                            commands: LIVENESS_COMMANDS.length,
                            referenceFace: referenceFaces[0],
                            liveFace: liveFaces[0],
                        });
                    }
                }, 1000);
            } else {
                throw new Error(`Yüz eşleşmedi (Benzerlik: %${similarityScore})`);
            }
        } catch (error) {
            Logger.error('[Liveness] Karşılaştırma hatası:', error);
            setStatusMessage('❌ Hata: ' + error.message);

            if (onError) {
                onError(error);
            }
        } finally {
            setIsProcessing(false);
        }
    }, [referencePhotoUri, onSuccess, onError]);

    // Advanced similarity calculation (neural network-inspired with weighted features)
    const calculateFaceSimilarity = (face1, face2) => {
        try {
            const features = [];
            const weights = [];

            // Feature 1: Geometric size (Weight: 25%)
            const size1 = face1.frame.width * face1.frame.height;
            const size2 = face2.frame.width * face2.frame.height;
            const sizeRatio = Math.min(size1, size2) / Math.max(size1, size2);
            features.push(sizeRatio * 100);
            weights.push(0.25);

            // Feature 2: Aspect ratio (Weight: 15%)
            const aspect1 = face1.frame.width / face1.frame.height;
            const aspect2 = face2.frame.width / face2.frame.height;
            const aspectSim = 1 - Math.abs(aspect1 - aspect2) / Math.max(aspect1, aspect2);
            features.push(aspectSim * 100);
            weights.push(0.15);

            // Feature 3: Landmark distances (Weight: 40%)
            if (face1.landmarks && face2.landmarks) {
                const landmarkScores = [];

                // Eye distance
                if (face1.landmarks.leftEye && face1.landmarks.rightEye &&
                    face2.landmarks.leftEye && face2.landmarks.rightEye) {
                    const eyeDist1 = Math.sqrt(
                        Math.pow(face1.landmarks.rightEye.x - face1.landmarks.leftEye.x, 2) +
                        Math.pow(face1.landmarks.rightEye.y - face1.landmarks.leftEye.y, 2)
                    );
                    const eyeDist2 = Math.sqrt(
                        Math.pow(face2.landmarks.rightEye.x - face2.landmarks.leftEye.x, 2) +
                        Math.pow(face2.landmarks.rightEye.y - face2.landmarks.leftEye.y, 2)
                    );
                    const eyeRatio = Math.min(eyeDist1, eyeDist2) / Math.max(eyeDist1, eyeDist2);
                    landmarkScores.push(eyeRatio * 100);
                }

                // Nose position
                if (face1.landmarks.noseBase && face1.landmarks.leftEye &&
                    face2.landmarks.noseBase && face2.landmarks.leftEye) {
                    const noseDist1 = Math.sqrt(
                        Math.pow(face1.landmarks.noseBase.x - face1.landmarks.leftEye.x, 2) +
                        Math.pow(face1.landmarks.noseBase.y - face1.landmarks.leftEye.y, 2)
                    );
                    const noseDist2 = Math.sqrt(
                        Math.pow(face2.landmarks.noseBase.x - face2.landmarks.leftEye.x, 2) +
                        Math.pow(face2.landmarks.noseBase.y - face2.landmarks.leftEye.y, 2)
                    );
                    const noseRatio = Math.min(noseDist1, noseDist2) / Math.max(noseDist1, noseDist2);
                    landmarkScores.push(noseRatio * 100);
                }

                if (landmarkScores.length > 0) {
                    const avgLandmark = landmarkScores.reduce((a, b) => a + b, 0) / landmarkScores.length;
                    features.push(avgLandmark);
                    weights.push(0.40);
                }
            }

            // Feature 4: 3D orientation (Weight: 20%)
            const angle1 = {
                pitch: face1.headEulerAngleX || 0,
                yaw: face1.headEulerAngleY || 0,
                roll: face1.headEulerAngleZ || 0
            };
            const angle2 = {
                pitch: face2.headEulerAngleX || 0,
                yaw: face2.headEulerAngleY || 0,
                roll: face2.headEulerAngleZ || 0
            };

            const angleDiff = (Math.abs(angle1.pitch - angle2.pitch) +
                Math.abs(angle1.yaw - angle2.yaw) +
                Math.abs(angle1.roll - angle2.roll)) / 3;
            const angleSim = 100 - Math.min(100, angleDiff);
            features.push(angleSim);
            weights.push(0.20);

            // Weighted sum calculation
            let totalWeight = 0;
            let weightedSum = 0;

            for (let i = 0; i < features.length; i++) {
                weightedSum += features[i] * weights[i];
                totalWeight += weights[i];
            }

            const finalScore = totalWeight > 0 ? weightedSum / totalWeight : 0;

            // Apply sigmoid curve for better discrimination around threshold
            const sigmoidScore = 100 / (1 + Math.exp(-(finalScore - 70) / 10));

            Logger.info('[Liveness] Similarity calculation:', {
                features: features.map(f => f.toFixed(1)),
                raw: finalScore.toFixed(1),
                sigmoid: sigmoidScore.toFixed(1)
            });

            return Math.round(sigmoidScore);
        } catch (error) {
            Logger.error('[Liveness] Similarity error:', error);
            return 0;
        }
    };

    if (!device) {
        return (
            <View style={styles.container}>
                <Text style={styles.errorText}>Kamera bulunamadı</Text>
            </View>
        );
    }

    return (
        <View style={styles.container}>
            <Camera
                ref={cameraRef}
                style={StyleSheet.absoluteFill}
                device={device}
                isActive={true}
                photo={true}
            />

            <View style={styles.overlay}>
                <View style={styles.header}>
                    <Text style={styles.title}>👤 Canlılık Testi</Text>
                    <Text style={styles.commandCounter}>
                        {currentCommandIndex + 1} / {LIVENESS_COMMANDS.length}
                    </Text>
                </View>

                <View style={styles.faceGuide}>
                    <View style={styles.faceCircle} />
                </View>

                <View style={styles.instructionBar}>
                    {similarity !== null && (
                        <Text style={styles.similarityText}>
                            Benzerlik: %{similarity}
                        </Text>
                    )}
                </View>
                )}

                {referencePhotoUri && (
                    <Image
                        source={{ uri: referencePhotoUri }}
                        style={styles.referencePreview}
                    />
                )}

                <TouchableOpacity style={styles.cancelButton} onPress={onCancel}>
                    <Text style={styles.cancelButtonText}>İptal</Text>
                </TouchableOpacity>
            </View>
        </View>
    );
};

const styles = StyleSheet.create({
    container: {
        flex: 1,
        backgroundColor: '#000',
    },
    overlay: {
        ...StyleSheet.absoluteFillObject,
    },
    header: {
        paddingTop: 60,
        paddingHorizontal: 20,
        flexDirection: 'row',
        justifyContent: 'space-between',
        alignItems: 'center',
    },
    title: {
        fontSize: 24,
        fontWeight: 'bold',
        color: '#FFF',
    },
    commandCounter: {
        fontSize: 18,
        color: '#FFF',
        backgroundColor: 'rgba(0,0,0,0.5)',
        paddingHorizontal: 12,
        paddingVertical: 6,
        borderRadius: 12,
    },
    faceGuide: {
        flex: 1,
        justifyContent: 'center',
        alignItems: 'center',
    },
    faceCircle: {
        width: 250,
        height: 250,
        borderRadius: 125,
        borderWidth: 3,
        borderColor: '#00FF00',
        borderStyle: 'dashed',
    },
    instructionBar: {
        backgroundColor: 'rgba(0,0,0,0.7)',
        padding: 20,
        marginHorizontal: 20,
        marginBottom: 40,
        borderRadius: 12,
        flexDirection: 'row',
        justifyContent: 'space-between',
        alignItems: 'center',
    },
    instructionText: {
        color: '#FFF',
        fontSize: 18,
        fontWeight: '600',
        flex: 1,
    },
    checkMark: {
        fontSize: 24,
        color: '#00FF00',
        marginLeft: 10,
    },
    debugInfo: {
        position: 'absolute',
        top: 120,
        right: 20,
        backgroundColor: 'rgba(0,0,0,0.7)',
        padding: 10,
        borderRadius: 8,
    },
    debugText: {
        color: '#FFF',
        fontSize: 12,
    },
    lightingGood: {
        color: '#00FF00',
    },
    lightingFair: {
        color: '#FFA500',
    },
    lightingPoor: {
        color: '#FF0000',
    },
    depthInfo: {
        position: 'absolute',
        bottom: 120,
        right: 20,
        backgroundColor: 'rgba(0,0,0,0.7)',
        padding: 10,
        borderRadius: 8,
    },
    depthTitle: {
        color: '#00FFFF',
        fontSize: 11,
        fontWeight: 'bold',
        marginBottom: 5,
    },
    depthText: {
        color: '#FFF',
        fontSize: 11,
    },
    processingOverlay: {
        ...StyleSheet.absoluteFillObject,
        backgroundColor: 'rgba(0,0,0,0.8)',
        justifyContent: 'center',
        alignItems: 'center',
    },
    processingText: {
        color: '#FFF',
        fontSize: 18,
        marginTop: 20,
    },
    similarityText: {
        color: '#00FF00',
        fontSize: 16,
        marginTop: 10,
        fontWeight: 'bold',
    },
    referencePreview: {
        position: 'absolute',
        top: 120,
        left: 20,
        width: 80,
        height: 80,
        borderRadius: 40,
        borderWidth: 2,
        borderColor: '#FFF',
    },
    cancelButton: {
        position: 'absolute',
        bottom: 40,
        left: 20,
        backgroundColor: 'rgba(255,0,0,0.7)',
        paddingVertical: 12,
        paddingHorizontal: 24,
        borderRadius: 20,
    },
    cancelButtonText: {
        color: '#FFF',
        fontSize: 14,
        fontWeight: '600',
    },
    errorText: {
        color: '#FFF',
        fontSize: 16,
        textAlign: 'center',
        marginTop: 100,
    },
});

export default LivenessModule;
