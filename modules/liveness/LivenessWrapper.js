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

    useEffect(() => {
        let isMounted = true;

        // Initialize camera
        setIsCameraActive(true);

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
                setCurrentChallenge(challenge);
                animateFaceBox();
                // Update challenge index
                setChallengeIndex((prev) => prev + 1);
            }
        });

        // Start test after 3 second countdown
        let count = 3;
        const countdownInterval = setInterval(() => {
            count--;
            if (isMounted) {
                setCountdown(count);
            }

            if (count <= 0) {
                clearInterval(countdownInterval);
                if (isMounted) {
                    setCountdown(null);
                    startTest();
                }
            }
        }, 1000);

        // Cleanup
        return () => {
            isMounted = false;
            setIsCameraActive(false);
            livenessModule.stopLiveness();

            try {
                Tts.stop();
            } catch (error) {
                // Ignore
            }
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
            Logger.info('[LivenessWrapper] Liveness testi başlatılıyor...');
            setIsDetecting(true);

            // Start with head movement challenges only:
            // düz bakma, sağa, sola, yukarı, aşağı
            await livenessModule.startLiveness([
                'lookStraight',
                'turnHeadRight',
                'turnHeadLeft',
                'lookUp',
                'lookDown'
            ]);
        } catch (error) {
            Logger.error('[LivenessWrapper] Test başlatma hatası:', error);
            if (onError) {
                onError(error);
            }
        }
    };

    // Real face detection using ML Kit
    useEffect(() => {
        if (!isDetecting || !isCameraActive || !currentChallenge) {
            setFaceDetected(false);
            return;
        }

        let isActive = true;

        const detectFace = async () => {
            if (!isActive || !cameraRef.current) return;

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
                    performanceMode: 'fast',
                    landmarkMode: 'all',
                    classificationMode: 'all',
                });

                if (isActive) {
                    const detected = faces && faces.length > 0;
                    setFaceDetected(detected);

                    if (detected) {
                        // Convert ML Kit faces to expected format
                        const faceData = faces.map(face => ({
                            bounds: face.frame,
                            smilingProbability: face.smilingProbability,
                            leftEyeOpenProbability: face.leftEyeOpenProbability,
                            rightEyeOpenProbability: face.rightEyeOpenProbability,
                            // FIX: Correct ML Kit angle mapping
                            // headEulerAngleX = Pitch (up/down), headEulerAngleY = Yaw (left/right)
                            xAngle: face.headEulerAngleX || 0,  // Pitch - yukarı/aşağı
                            yAngle: face.headEulerAngleY || 0,  // Yaw - sola/sağa
                            zAngle: face.headEulerAngleZ || 0,  // Roll - yana eğilme
                        }));

                        livenessModule.processFaceData(faceData);
                    } else {
                        livenessModule.processFaceData([]);
                    }
                }
            } catch (error) {
                Logger.error('[LivenessWrapper] Face detection error:', error);
            }

            // Continue detection
            if (isActive) {
                setTimeout(detectFace, 500);
            }
        };

        detectFace();

        return () => {
            isActive = false;
        };
    }, [isDetecting, isCameraActive, currentChallenge]);

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
