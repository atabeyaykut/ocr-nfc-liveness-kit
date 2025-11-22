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
    { type: 'smile', text: 'Gülümseyin 😊', duration: 3000 },
    { type: 'turn_left', text: 'Başınızı sola çevirin ←', duration: 3000 },
    { type: 'turn_right', text: 'Başınızı sağa çevirin →', duration: 3000 },
    { type: 'blink', text: 'Göz kırpın 👁️', duration: 2000 },
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

    // Validate command execution
    const validateCommand = (command, face) => {
        if (!face) return false;

        switch (command.type) {
            case 'smile':
                return face.smilingProbability > 0.7;

            case 'turn_left':
                return face.headEulerAngleY < -15;

            case 'turn_right':
                return face.headEulerAngleY > 15;

            case 'blink':
                return face.leftEyeOpenProbability < 0.2 && face.rightEyeOpenProbability < 0.2;

            default:
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

    // Calculate face similarity (simple version)
    const calculateFaceSimilarity = (face1, face2) => {
        // Compare face properties
        let score = 0;
        let factors = 0;

        // Compare bounds (size)
        const size1 = face1.frame.width * face1.frame.height;
        const size2 = face2.frame.width * face2.frame.height;
        const sizeDiff = Math.abs(size1 - size2) / Math.max(size1, size2);
        score += (1 - sizeDiff) * 100;
        factors++;

        // Compare landmark positions if available
        if (face1.landmarks && face2.landmarks &&
            face1.landmarks.leftEye && face2.landmarks.leftEye) {
            const eyeDistance1 = Math.abs(
                face1.landmarks.rightEye.x - face1.landmarks.leftEye.x
            );
            const eyeDistance2 = Math.abs(
                face2.landmarks.rightEye.x - face2.landmarks.leftEye.x
            );
            const eyeDiff = Math.abs(eyeDistance1 - eyeDistance2) /
                Math.max(eyeDistance1, eyeDistance2);
            score += (1 - eyeDiff) * 100;
            factors++;
        }

        // Average score
        return Math.round(score / factors);
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
                    <Text style={styles.instructionText}>{statusMessage}</Text>
                    {commandPassed && <Text style={styles.checkMark}>✓</Text>}
                </View>

                {detectedFace && (
                    <View style={styles.debugInfo}>
                        <Text style={styles.debugText}>
                            Smile: {(detectedFace.smilingProbability * 100).toFixed(0)}%
                        </Text>
                        <Text style={styles.debugText}>
                            Head Y: {detectedFace.headEulerAngleY?.toFixed(0)}°
                        </Text>
                    </View>
                )}

                {isProcessing && (
                    <View style={styles.processingOverlay}>
                        <ActivityIndicator size="large" color="#FFF" />
                        <Text style={styles.processingText}>{statusMessage}</Text>
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
