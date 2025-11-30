/**
 * Liveness Wrapper - VerificationFlowScreen ile uyumlu
 * 1b35c8b3 commit'indeki çalışan LivenessDetectionModule'ü kullanır
 */

import React, { useState, useEffect, useRef } from 'react';
import {
    View,
    Text,
    StyleSheet,
    TouchableOpacity,
    Alert,
    Animated,
    Dimensions,
    Platform,
} from 'react-native';
import { Camera, useCameraDevice } from 'react-native-vision-camera';
import Tts from 'react-native-tts';
import FaceDetection from '@react-native-ml-kit/face-detection';
import LivenessDetectionModule from './LivenessModule';
import Logger from '../../utils/logger';

const { width: screenWidth, height: screenHeight } = Dimensions.get('window');

/**
 * Wrapper component that adapts class-based LivenessDetectionModule
 * to props-based interface for VerificationFlowScreen
 */
export const LivenessModule = ({
    referencePhotoUri,
    onSuccess,
    onError,
    onCancel
}) => {
    const [isDetecting, setIsDetecting] = useState(false);
    const [currentChallenge, setCurrentChallenge] = useState(null);
    const [faceDetected, setFaceDetected] = useState(false);
    const [countdown, setCountdown] = useState(3);
    const [isCameraActive, setIsCameraActive] = useState(false);
    const [challengeIndex, setChallengeIndex] = useState(0);
    const [totalChallenges] = useState(5);

    const cameraRef = useRef(null);
    const device = useCameraDevice('front');
    const livenessModule = useRef(new LivenessDetectionModule()).current;
    const pulseAnim = useRef(new Animated.Value(1)).current;
    const lastFaceLogTime = useRef(0); // Throttle face detection logs

    useEffect(() => {
        let isMounted = true;
        Logger.info('[LivenessWrapper] 📷 Component mounted, initializing...');

        // Initialize camera
        Logger.info('[LivenessWrapper] 📷 Activating camera...');
        setIsCameraActive(true);

        // Warm up camera during countdown by taking dummy photos
        const warmupCamera = async () => {
            await new Promise(resolve => setTimeout(resolve, 500)); // Wait for camera to activate
            if (cameraRef.current && isMounted) {
                try {
                    Logger.info('[LivenessWrapper] 🔥 Warming up camera...');
                    // Take 2 quick dummy photos to initialize camera hardware
                    await cameraRef.current.takePhoto({ qualityPrioritization: 'speed', flash: 'off' });
                    await new Promise(resolve => setTimeout(resolve, 300));
                    await cameraRef.current.takePhoto({ qualityPrioritization: 'speed', flash: 'off' });
                    Logger.info('[LivenessWrapper] ✅ Camera warm-up complete');
                } catch (error) {
                    Logger.warn('[LivenessWrapper] ⚠️ Camera warm-up failed, continuing anyway');
                }
            }
        };
        warmupCamera();

        // Setup callbacks
        livenessModule.onLivenessResult((result) => {
            if (isMounted) {
                Logger.info('[LivenessWrapper] Test tamamlandı');
                Logger.info(`[LivenessWrapper] Durum: ${result.passed ? 'BAŞARILI' : 'BAŞARISIZ'}`);
                Logger.info(`[LivenessWrapper] Skor: ${result.score}%`);

                if (result.details) {
                    Logger.info(`[LivenessWrapper] Başarılı: ${result.details.successfulChallenges}/${result.details.totalChallenges}`);

                    if (result.details.challenges) {
                        result.details.challenges.forEach((ch, idx) => {
                            Logger.info(`[LivenessWrapper] ${idx + 1}. ${ch.challenge}: ${ch.success ? '✓' : '✗'} (${ch.duration}ms)`);
                        });
                    }
                }

                setIsDetecting(false);
                setIsCameraActive(false);
                setCurrentChallenge(null);

                if (onSuccess) {
                    onSuccess(result);
                }
            }
        });

        livenessModule.onLivenessError((error) => {
            if (isMounted) {
                Logger.error('[LivenessWrapper] Test hatası:', error);
                setIsDetecting(false);

                if (onError) {
                    onError(error);
                }
            }
        });

        livenessModule.onChallengeChanged((challenge) => {
            if (isMounted) {
                Logger.info(`[LivenessWrapper] 🎯 Challenge changed: "${challenge.instruction}"`);
                setCurrentChallenge(challenge);
                animateFaceBox();
                // Update challenge index
                setChallengeIndex((prev) => {
                    const newIndex = prev + 1;
                    Logger.info(`[LivenessWrapper] 📊 Challenge progress: ${newIndex}/${totalChallenges}`);
                    return newIndex;
                });
            }
        });

        // Enable face detection BEFORE countdown to pre-warm everything
        Logger.info('[LivenessWrapper] 🔍 Pre-enabling face detection for faster start');
        setIsDetecting(true);

        // Start test after 3 second countdown
        Logger.info('[LivenessWrapper] ⏱️ Starting 3 second countdown...');
        let count = 3;
        const countdownInterval = setInterval(() => {
            count--;
            Logger.info(`[LivenessWrapper] 🔢 Countdown: ${count}`);
            if (isMounted) {
                setCountdown(count);
            }

            if (count <= 0) {
                clearInterval(countdownInterval);
                if (isMounted) {
                    Logger.info('[LivenessWrapper] ▶️ Countdown complete, starting test');
                    setCountdown(null);
                    startTest();
                }
            }
        }, 1000);

        // Cleanup
        return () => {
            Logger.info('[LivenessWrapper] 🧹 Component unmounting, cleaning up...');
            isMounted = false;
            setIsCameraActive(false);
            livenessModule.stopLiveness();

            try {
                Tts.stop();
            } catch (error) {
                Logger.error('[LivenessWrapper] ⚠️ Error stopping TTS:', error);
            }
            Logger.info('[LivenessWrapper] ✅ Cleanup complete');
        };
    }, []);

    const animateFaceBox = () => {
        Animated.sequence([
            Animated.timing(pulseAnim, {
                toValue: 1.1,
                duration: 300,
                useNativeDriver: true,
            }),
            Animated.timing(pulseAnim, {
                toValue: 1,
                duration: 300,
                useNativeDriver: true,
            }),
        ]).start();
    };

    const startTest = async () => {
        try {
            Logger.info('[LivenessWrapper] 🚀 Liveness testi başlatılıyor...');

            // Use most reliable challenges for better UX:
            // lookUp removed due to front camera angle issues (users confuse it with turnRight)
            const challenges = [
                'lookStraight',
                'turnHeadLeft',
                'turnHeadRight',
                'lookDown',
                'blink'
            ];
            Logger.info('[LivenessWrapper] 📋 Challenges:', challenges);

            // Note: isDetecting already set to true during countdown for faster response
            await livenessModule.startLiveness(challenges);
            Logger.info('[LivenessWrapper] ✅ Test başlatıldı');
        } catch (error) {
            Logger.error('[LivenessWrapper] ❌ Test başlatma hatası:', error);
            if (onError) {
                Logger.info('[LivenessWrapper] 📢 Calling onError callback');
                onError(error);
            }
        }
    };

    // Real face detection using ML Kit
    useEffect(() => {
        if (!isDetecting || !isCameraActive) {
            setFaceDetected(false);
            return;
        }

        const challengeInfo = currentChallenge ? `"${currentChallenge.instruction}"` : "waiting...";
        Logger.info(`[LivenessWrapper] 🔍 Starting face detection for: ${challengeInfo}`);
        let isActive = true;

        const detectFace = async () => {
            if (!isActive || !cameraRef.current) {
                if (!cameraRef.current) {
                    Logger.error('[LivenessWrapper] ❌ Camera ref not available');
                }
                return;
            }

            try {
                const photo = await cameraRef.current.takePhoto({
                    qualityPrioritization: 'speed',
                    flash: 'off',
                });

                // Fix Android file path - ML Kit needs file:// prefix
                const photoPath = Platform.OS === 'android' && !photo.path.startsWith('file://')
                    ? `file://${photo.path}`
                    : photo.path;

                const faces = await FaceDetection.detect(photoPath, {
                    performanceMode: 'accurate',  // Changed from 'fast' to get better angle detection
                    landmarkMode: 'all',
                    classificationMode: 'all',
                    contourMode: 'all',  // Added for better face tracking
                });

                // Throttle logs to every 2 seconds
                const now = Date.now();
                const shouldLog = now - lastFaceLogTime.current > 2000;

                if (shouldLog) {
                    Logger.info(`[LivenessWrapper] 👤 Detected ${faces.length} face(s)`);
                    lastFaceLogTime.current = now;
                }

                if (isActive) {
                    const detected = faces && faces.length > 0;
                    setFaceDetected(detected);

                    if (detected) {
                        // DEBUG: Log raw face angles for troubleshooting
                        if (shouldLog && faces[0]) {
                            Logger.info(`[LivenessWrapper] 📊 ML Kit angles - rotationX: ${faces[0].rotationX?.toFixed(1)}°, rotationY: ${faces[0].rotationY?.toFixed(1)}°, rotationZ: ${faces[0].rotationZ?.toFixed(1)}°`);
                        }

                        // Convert ML Kit faces to expected format
                        const faceData = faces.map(face => {
                            const data = {
                                bounds: face.frame,
                                smilingProbability: face.smilingProbability,
                                leftEyeOpenProbability: face.leftEyeOpenProbability,
                                rightEyeOpenProbability: face.rightEyeOpenProbability,
                                // FIX: ML Kit uses "rotation" not "headEulerAngle"
                                // rotationX = Pitch (up/down), rotationY = Yaw (left/right), rotationZ = Roll
                                xAngle: face.rotationX || 0,  // Pitch - yukarı/aşağı
                                yAngle: face.rotationY || 0,  // Yaw - sola/sağa
                                zAngle: face.rotationZ || 0,  // Roll - yana eğilme
                            };

                            if (shouldLog) {
                                Logger.info(`[LivenessWrapper] 📍 Face: x=${data.xAngle.toFixed(1)}°, y=${data.yAngle.toFixed(1)}°, z=${data.zAngle.toFixed(1)}°`);
                            }
                            return data;
                        });

                        livenessModule.processFaceData(faceData);
                    } else {
                        if (shouldLog) {
                            Logger.info('[LivenessWrapper] ⚠️ No face in frame');
                        }
                        livenessModule.processFaceData([]);
                    }
                }
            } catch (error) {
                Logger.error('[LivenessWrapper] ❌ Face detection error:', error);
                Logger.error('[LivenessWrapper] ❌ Error details:', {
                    message: error.message,
                    code: error.code,
                    stack: error.stack?.split('\n')[0]
                });
            }

            // Continue detection
            if (isActive) {
                setTimeout(detectFace, 500);
            }
        };

        detectFace();

        return () => {
            Logger.info('[LivenessWrapper] 🛝 Stopping face detection');
            isActive = false;
        };
    }, [isDetecting, isCameraActive]);

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
                isActive={isCameraActive}
                photo={true}
            />

            <View style={styles.overlay}>
                {/* Header */}
                <View style={styles.header}>
                    <Text style={styles.title}>👤 Canlılık Testi</Text>
                    {isDetecting && currentChallenge && (
                        <Text style={styles.progressText}>
                            {challengeIndex} / {totalChallenges}
                        </Text>
                    )}
                </View>

                {/* Face Guide */}
                <Animated.View
                    style={[
                        styles.faceGuide,
                        { transform: [{ scale: pulseAnim }] }
                    ]}
                >
                    <View style={[
                        styles.faceCorner,
                        styles.faceCornerTopLeft,
                        { borderColor: faceDetected ? '#00FF00' : '#FF0000' }
                    ]} />
                    <View style={[
                        styles.faceCorner,
                        styles.faceCornerTopRight,
                        { borderColor: faceDetected ? '#00FF00' : '#FF0000' }
                    ]} />
                    <View style={[
                        styles.faceCorner,
                        styles.faceCornerBottomLeft,
                        { borderColor: faceDetected ? '#00FF00' : '#FF0000' }
                    ]} />
                    <View style={[
                        styles.faceCorner,
                        styles.faceCornerBottomRight,
                        { borderColor: faceDetected ? '#00FF00' : '#FF0000' }
                    ]} />

                    {faceDetected ? (
                        <Text style={styles.faceHint}>✓ Yüz algılandı</Text>
                    ) : (
                        <Text style={[styles.faceHint, styles.faceHintWarning]}>⚠ Yüzünüzü çerçeveye yerleştirin</Text>
                    )}
                </Animated.View>

                {/* Countdown */}
                {countdown !== null && countdown > 0 && (
                    <View style={styles.countdownContainer}>
                        <Text style={styles.countdownNumber}>{countdown}</Text>
                        <Text style={styles.countdownText}>Test başlıyor...</Text>
                    </View>
                )}

                {/* Challenge Instruction */}
                {currentChallenge && countdown === null && (
                    <View style={styles.challengeContainer}>
                        <Text style={styles.challengeInstruction}>
                            {currentChallenge.instruction}
                        </Text>
                    </View>
                )}

                {/* Cancel Button */}
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
        alignItems: 'center',
    },
    title: {
        color: '#FFF',
        fontSize: 20,
        fontWeight: 'bold',
    },
    progressText: {
        color: '#00FF00',
        fontSize: 16,
        fontWeight: '600',
        marginTop: 5,
    },
    errorText: {
        color: '#FFF',
        fontSize: 16,
        textAlign: 'center',
    },
    countdownContainer: {
        position: 'absolute',
        top: '40%',
        alignSelf: 'center',
        alignItems: 'center',
        backgroundColor: 'rgba(0,0,0,0.8)',
        paddingVertical: 30,
        paddingHorizontal: 50,
        borderRadius: 20,
    },
    countdownNumber: {
        fontSize: 72,
        fontWeight: 'bold',
        color: '#00FF00',
    },
    countdownText: {
        fontSize: 18,
        color: '#FFF',
        marginTop: 10,
    },
    faceGuide: {
        position: 'absolute',
        top: '30%',
        alignSelf: 'center',
        width: 250,
        height: 320,
        justifyContent: 'center',
        alignItems: 'center',
    },
    faceCorner: {
        position: 'absolute',
        width: 40,
        height: 40,
        borderWidth: 3,
        // borderColor dinamik olarak inline verilecek (yeşil/kırmızı)
    },
    faceCornerTopLeft: {
        top: -2,
        left: -2,
        borderRightWidth: 0,
        borderBottomWidth: 0,
        borderTopLeftRadius: 20,
    },
    faceCornerTopRight: {
        top: -2,
        right: -2,
        borderLeftWidth: 0,
        borderBottomWidth: 0,
        borderTopRightRadius: 20,
    },
    faceCornerBottomLeft: {
        bottom: -2,
        left: -2,
        borderRightWidth: 0,
        borderTopWidth: 0,
        borderBottomLeftRadius: 20,
    },
    faceCornerBottomRight: {
        bottom: -2,
        right: -2,
        borderLeftWidth: 0,
        borderTopWidth: 0,
        borderBottomRightRadius: 20,
    },
    faceHint: {
        position: 'absolute',
        bottom: -40,
        color: '#FFF',
        fontSize: 14,
        textAlign: 'center',
        backgroundColor: 'rgba(0,0,0,0.7)',
        paddingHorizontal: 15,
        paddingVertical: 5,
        borderRadius: 15,
    },
    faceHintWarning: {
        backgroundColor: 'rgba(255,0,0,0.7)',
        color: '#FFF',
    },
    challengeContainer: {
        position: 'absolute',
        top: 100,
        left: 0,
        right: 0,
        alignItems: 'center',
        backgroundColor: 'rgba(0,0,0,0.8)',
        paddingVertical: 20,
    },
    challengeInstruction: {
        color: '#FFF',
        fontSize: 20,
        fontWeight: '600',
        textAlign: 'center',
    },
    cancelButton: {
        position: 'absolute',
        bottom: 30,
        alignSelf: 'center',
        backgroundColor: '#F44336',
        paddingHorizontal: 30,
        paddingVertical: 12,
        borderRadius: 25,
    },
    cancelButtonText: {
        color: '#FFF',
        fontSize: 14,
        fontWeight: '600',
    },
});

export default LivenessModule;
