/**
 * Liveness Detection Module
 * Canlılık testi modülü - Gerçek yüz algılama ve doğrulama
 * Android 11 uyumlu
 */

import React, { useState, useEffect, useRef } from 'react';
import {
  View,
  Text,
  StyleSheet,
  TouchableOpacity,
  Alert,
  ActivityIndicator,
  Animated,
  Dimensions,
  StatusBar,
  Platform,
  NativeModules,
} from 'react-native';
import { Camera, useCameraDevice } from 'react-native-vision-camera';
import { check, request, PERMISSIONS, RESULTS } from 'react-native-permissions';
import Tts from 'react-native-tts';
import FaceDetection from '@react-native-ml-kit/face-detection';

const { width: screenWidth, height: screenHeight } = Dimensions.get('window');

// Liveness challenge types
const CHALLENGES = {
  BLINK: {
    id: 'blink',
    instruction: 'Gözlerinizi kırpın',
    voice: 'Lütfen gözlerinizi kırpın',
    duration: 3000,
    detectionKey: 'eyes',
  },
  SMILE: {
    id: 'smile',
    instruction: 'Gülümseme',
    voice: 'Lütfen gülümseyin',
    duration: 3000,
    detectionKey: 'smile',
  },
  TURN_HEAD_LEFT: {
    id: 'turnHeadLeft',
    instruction: 'Başınızı sola çevirin',
    voice: 'Lütfen başınızı sola çevirin',
    duration: 3000,
    detectionKey: 'headPose',
  },
  TURN_HEAD_RIGHT: {
    id: 'turnHeadRight',
    instruction: 'Başınızı sağa çevirin',
    voice: 'Lütfen başınızı sağa çevirin',
    duration: 3000,
    detectionKey: 'headPose',
  },
  NOD_HEAD: {
    id: 'nodHead',
    instruction: 'Başınızı aşağı yukarı sallayın',
    voice: 'Lütfen başınızı aşağı yukarı sallayın',
    duration: 3000,
    detectionKey: 'headPose',
  },
  OPEN_MOUTH: {
    id: 'openMouth',
    instruction: 'Ağzınızı açın',
    voice: 'Lütfen ağzınızı açın',
    duration: 3000,
    detectionKey: 'mouth',
  },
};

class LivenessDetectionModule {
  constructor() {
    this.callbacks = {};
    this.challenges = [];
    this.currentChallengeIndex = 0;
    this.results = [];
    this.faceDetected = false;
    this.challengeStartTime = null;
    this.ttsEnabled = true;
    this.noFaceDetectionCount = 0;
  }

  // API Methods
  startLiveness = async (challenges = ['blink', 'turnHeadLeft', 'smile']) => {
    try {
      // Validate challenges
      this.challenges = challenges.map(c => {
        const challenge = Object.values(CHALLENGES).find(ch => ch.id === c);
        if (!challenge) {
          throw new Error(`Invalid challenge: ${c}`);
        }
        return challenge;
      });

      this.currentChallengeIndex = 0;
      this.results = [];

      // Initialize TTS
      await this.initializeTTS();

      if (this.callbacks.onStarted) {
        this.callbacks.onStarted();
      }

      // Start first challenge
      await this.startNextChallenge();
      
    } catch (error) {
      this.handleError(error);
    }
  };

  stopLiveness = () => {
    Tts.stop();
    this.challenges = [];
    this.currentChallengeIndex = 0;
    
    if (this.callbacks.onStopped) {
      this.callbacks.onStopped();
    }
  };

  onLivenessResult = (callback) => {
    this.callbacks.onResult = callback;
  };

  onLivenessError = (callback) => {
    this.callbacks.onError = callback;
  };

  onLivenessStarted = (callback) => {
    this.callbacks.onStarted = callback;
  };

  onLivenessStopped = (callback) => {
    this.callbacks.onStopped = callback;
  };

  onChallengeChanged = (callback) => {
    this.callbacks.onChallengeChanged = callback;
  };

  // Private Methods
  initializeTTS = async () => {
    try {
      await Tts.getInitStatus();
      
      // Check if TTS is available
      const voices = await Tts.voices();
      const turkishVoice = voices.find(v => v.language === 'tr-TR');
      
      if (turkishVoice) {
        await Tts.setDefaultVoice(turkishVoice.id);
      }
      
      this.ttsEnabled = true;
    } catch (error) {
      console.log('TTS not available (running on emulator or no TTS engine), continuing without voice');
      this.ttsEnabled = false;
    }
  };

  startNextChallenge = async () => {
    if (this.currentChallengeIndex >= this.challenges.length) {
      // All challenges completed
      this.completeDetection();
      return;
    }

    const challenge = this.challenges[this.currentChallengeIndex];
    this.challengeStartTime = Date.now();
    this.noFaceDetectionCount = 0; // Reset no-face counter

    // Speak instruction
    if (this.ttsEnabled) {
      try {
        Tts.speak(challenge.voice);
      } catch (error) {
        // TTS not available
      }
    }

    if (this.callbacks.onChallengeChanged) {
      this.callbacks.onChallengeChanged(challenge);
    }

    // Set timeout for challenge (increased to 5 seconds)
    setTimeout(() => {
      this.challengeTimeout(challenge);
    }, challenge.duration + 2000);
  };

  processFaceData = (faces) => {
    if (!faces || faces.length === 0) {
      this.faceDetected = false;
      this.noFaceDetectionCount++;
      
      // If no face detected for too long (10 consecutive checks), fail the challenge
      if (this.noFaceDetectionCount > 10 && this.currentChallengeIndex < this.challenges.length) {
        const challenge = this.challenges[this.currentChallengeIndex];
        console.log('Challenge failed: No face detected');
        this.challengeCompleted(challenge, false);
      }
      return;
    }

    this.faceDetected = true;
    this.noFaceDetectionCount = 0; // Reset counter when face is detected
    const face = faces[0];

    // Check if we have an active challenge
    if (this.currentChallengeIndex >= this.challenges.length) {
      return;
    }

    const challenge = this.challenges[this.currentChallengeIndex];
    const detected = this.detectChallengeCompletion(face, challenge);

    if (detected) {
      this.challengeCompleted(challenge, true);
    }
  };

  detectChallengeCompletion = (face, challenge) => {
    const now = Date.now();
    
    // Make sure enough time has passed since challenge started
    if (now - this.challengeStartTime < 500) {
      return false;
    }

    switch (challenge.id) {
      case 'blink':
        // Detect eye blink - stricter threshold
        const leftEyeOpen = face.leftEyeOpenProbability;
        const rightEyeOpen = face.rightEyeOpenProbability;
        
        if (leftEyeOpen !== undefined && rightEyeOpen !== undefined) {
          // Both eyes closed (blink detected) - must be clearly closed
          if (leftEyeOpen < 0.2 && rightEyeOpen < 0.2) {
            return true;
          }
        }
        break;

      case 'smile':
        // Detect smile - stricter threshold
        const smileProbability = face.smilingProbability;
        if (smileProbability !== undefined && smileProbability > 0.75) {
          return true;
        }
        break;

      case 'turnHeadLeft':
        // Detect head turned left - must turn clearly
        const yAngleLeft = face.yAngle;
        if (yAngleLeft !== undefined && yAngleLeft < -25) {
          return true;
        }
        break;

      case 'turnHeadRight':
        // Detect head turned right - must turn clearly
        const yAngleRight = face.yAngle;
        if (yAngleRight !== undefined && yAngleRight > 25) {
          return true;
        }
        break;

      case 'nodHead':
        // Detect head nod (up/down)
        const xAngle = face.xAngle;
        if (xAngle !== undefined && Math.abs(xAngle) > 15) {
          return true;
        }
        break;

      case 'openMouth':
        // Simple detection based on face bounds change
        // More sophisticated detection would require ML Kit
        const bounds = face.bounds;
        if (bounds && bounds.size.height > bounds.size.width * 1.3) {
          return true;
        }
        break;

      default:
        return false;
    }

    return false;
  };

  challengeCompleted = (challenge, success) => {
    // Record result
    this.results.push({
      challenge: challenge.id,
      success: success,
      timestamp: Date.now(),
      duration: Date.now() - this.challengeStartTime,
    });

    // Move to next challenge
    this.currentChallengeIndex++;
    
    // Small delay before next challenge
    setTimeout(() => {
      this.startNextChallenge();
    }, 1000);
  };

  challengeTimeout = (challenge) => {
    // Check if this challenge is still active
    if (this.currentChallengeIndex < this.challenges.length &&
        this.challenges[this.currentChallengeIndex].id === challenge.id) {
      // Challenge failed due to timeout
      this.challengeCompleted(challenge, false);
    }
  };

  completeDetection = () => {
    // Calculate overall score
    const successCount = this.results.filter(r => r.success).length;
    const totalCount = this.results.length;
    const score = totalCount > 0 ? (successCount / totalCount) * 100 : 0;
    const passed = score >= 66.67; // 66.67% threshold (2/3 challenges must succeed)

    const response = {
      passed: passed,
      score: Math.round(score),
      details: {
        totalChallenges: totalCount,
        successfulChallenges: successCount,
        failedChallenges: totalCount - successCount,
        challenges: this.results,
      },
      timestamp: new Date().toISOString(),
    };

    if (this.callbacks.onResult) {
      this.callbacks.onResult(response);
    }
  };

  handleError = (error) => {
    const errorResponse = {
      success: false,
      error: error.message || 'Liveness detection error',
      code: 'LIVENESS_ERROR',
    };

    if (this.callbacks.onError) {
      this.callbacks.onError(errorResponse);
    }
  };
}
export const LivenessDetectionScreen = ({ navigation, route }) => {
  const [isDetecting, setIsDetecting] = useState(false);
  const [currentChallenge, setCurrentChallenge] = useState(null);
  const [challengeProgress, setChallengeProgress] = useState(0);
  const [livenessScore, setLivenessScore] = useState(0);
  const [faceDetected, setFaceDetected] = useState(false);
  const [livenessResult, setLivenessResult] = useState(null);
  const [detectionResult, setDetectionResult] = useState(null);
  const [countdown, setCountdown] = useState(null);
  const [isCameraActive, setIsCameraActive] = useState(false);
  const cameraRef = useRef(null);
  const device = useCameraDevice('front');
  const livenessModule = useRef(new LivenessDetectionModule()).current;
  const pulseAnim = useRef(new Animated.Value(1)).current;

  useEffect(() => {
    let isMounted = true;

    // Check camera permission and activate
    checkPermissions().then(() => {
      if (isMounted) {
        setIsCameraActive(true);
      }
    });
    
    // Setup callbacks
    livenessModule.onLivenessResult((result) => {
      if (isMounted) {
        setLivenessResult(result);
        setDetectionResult(result);
        setIsDetecting(false);
        setIsCameraActive(false);
        setCurrentChallenge(null);
      }
    });

    livenessModule.onLivenessError((error) => {
      if (isMounted) {
        Alert.alert('Hata', error.error);
        setIsDetecting(false);
      }
    });

    livenessModule.onChallengeChanged((challenge) => {
      if (isMounted) {
        setCurrentChallenge(challenge);
        animateFaceBox();
      }
    });

    // Navigation listeners
    const unsubscribeFocus = navigation.addListener('focus', () => {
      if (isMounted && !detectionResult) {
        setIsCameraActive(true);
      }
    });

    const unsubscribeBlur = navigation.addListener('blur', () => {
      if (isMounted) {
        setIsCameraActive(false);
        livenessModule.stopLiveness();
      }
    });

    // Cleanup
    return () => {
      isMounted = false;
      setIsCameraActive(false);
      livenessModule.stopLiveness();
      
      // Stop TTS if available
      try {
        Tts.stop();
      } catch (error) {
        // TTS not available, ignore
      }
      
      unsubscribeFocus();
      unsubscribeBlur();
    };
  }, [navigation, detectionResult]);

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
        // Take a photo snapshot for face detection
        const photo = await cameraRef.current.takePhoto({
          qualityPrioritization: 'speed',
          flash: 'off',
        });
        
        if (!isActive) return;
        
        // Convert path to file:// URI for ML Kit
        const photoUri = Platform.OS === 'android' 
          ? `file://${photo.path}` 
          : photo.path;
        
        // Detect faces using ML Kit
        const faces = await FaceDetection.detect(photoUri, {
          performanceMode: 'fast',
          landmarkMode: 'all',
          classificationMode: 'all',
        });
        
        if (!isActive) return;
        
        if (faces && faces.length > 0) {
          setFaceDetected(true);
          
          // Log ML Kit face data to see available properties
          const mlKitFace = faces[0];
          console.log('ML Kit Face Data:', JSON.stringify(mlKitFace, null, 2));
          
          // Convert ML Kit face format to our expected format
          const faceData = [{
            leftEyeOpenProbability: mlKitFace.leftEyeOpenProbability || 0.5,
            rightEyeOpenProbability: mlKitFace.rightEyeOpenProbability || 0.5,
            smilingProbability: mlKitFace.smilingProbability || 0,
            yAngle: mlKitFace.rotationY || 0,  // Y-axis rotation (head turn left/right)
            xAngle: mlKitFace.rotationX || 0,  // X-axis rotation (head tilt up/down)
            zAngle: mlKitFace.rotationZ || 0,  // Z-axis rotation (head roll)
          }];
          
          console.log('Converted Face Data:', JSON.stringify(faceData[0], null, 2));
          
          livenessModule.processFaceData(faceData);
        } else {
          setFaceDetected(false);
          livenessModule.processFaceData([]);
        }
      } catch (error) {
        console.log('Face detection error:', error.message);
        setFaceDetected(false);
      }
      
      // Continue detection loop
      if (isActive) {
        setTimeout(detectFace, 300); // Check every 300ms
      }
    };
    
    detectFace();
    
    return () => {
      isActive = false;
    };
  }, [isDetecting, isCameraActive, currentChallenge]);

  const checkPermissions = async () => {
    try {
      const result = await check(PERMISSIONS.ANDROID.CAMERA);
      
      if (result !== RESULTS.GRANTED) {
        const requestResult = await request(PERMISSIONS.ANDROID.CAMERA);
        if (requestResult !== RESULTS.GRANTED) {
          Alert.alert(
            'Kamera İzni Gerekli',
            'Canlılık testi için kamera iznine ihtiyacımız var.',
            [{ text: 'Tamam', onPress: () => navigation.goBack() }]
          );
        }
      }
    } catch (error) {
      console.error('Permission check error:', error);
    }
  };

  const startDetection = async () => {
    try {
      // Reset states
      setDetectionResult(null);
      setCountdown(3);
      
      // Countdown animation
      for (let i = 3; i > 0; i--) {
        setCountdown(i);
        await new Promise(resolve => setTimeout(resolve, 1000));
      }
      
      setCountdown(null);
      setIsDetecting(true);
      
      // Start liveness module
      await livenessModule.startLiveness(['blink', 'smile', 'turnHeadLeft']);
      
    } catch (error) {
      console.error('Start detection error:', error);
      Alert.alert('Hata', 'Canlılık testi başlatılamadı');
    }
  };

  const stopDetection = () => {
    setIsDetecting(false);
    setCurrentChallenge(null);
    livenessModule.stopLiveness();
  };

  const animateFaceBox = () => {
    Animated.sequence([
      Animated.timing(pulseAnim, {
        toValue: 0.9,
        duration: 200,
        useNativeDriver: true,
      }),
      Animated.timing(pulseAnim, {
        toValue: 1,
        duration: 200,
        useNativeDriver: true,
      }),
    ]).start();
  };

  const renderFaceOverlay = () => (
    <View style={styles.faceOverlay}>
      <Animated.View 
        style={[
          styles.faceBox,
          { 
            transform: [{ scale: pulseAnim }],
            borderColor: faceDetected ? '#4CAF50' : '#FF5252',
          }
        ]}
      >
        <View style={[styles.faceCorner, styles.faceCornerTopLeft]} />
        <View style={[styles.faceCorner, styles.faceCornerTopRight]} />
        <View style={[styles.faceCorner, styles.faceCornerBottomLeft]} />
        <View style={[styles.faceCorner, styles.faceCornerBottomRight]} />
      </Animated.View>
      
      {!faceDetected && (
        <Text style={styles.faceHint}>Yüzünüzü çerçeve içine yerleştirin</Text>
      )}
    </View>
  );

  const renderChallenge = () => {
    if (countdown) {
      return (
        <View style={styles.challengeContainer}>
          <Text style={styles.countdownText}>{countdown}</Text>
          <Text style={styles.challengeText}>Hazır olun...</Text>
        </View>
      );
    }

    if (!currentChallenge) return null;

    return (
      <View style={styles.challengeContainer}>
        <Text style={styles.challengeInstruction}>
          {currentChallenge.instruction}
        </Text>
        <ActivityIndicator size="small" color="#FFF" style={{ marginTop: 10 }} />
      </View>
    );
  };

  const renderResult = () => {
    if (!detectionResult) return null;

    return (
      <View style={styles.resultContainer}>
        <View style={[
          styles.resultCard,
          { backgroundColor: detectionResult.passed ? '#E8F5E9' : '#FFEBEE' }
        ]}>
          <Text style={[
            styles.resultIcon,
            { color: detectionResult.passed ? '#4CAF50' : '#F44336' }
          ]}>
            {detectionResult.passed ? '✓' : '✗'}
          </Text>
          
          <Text style={[
            styles.resultTitle,
            { color: detectionResult.passed ? '#2E7D32' : '#C62828' }
          ]}>
            {detectionResult.passed ? 'Canlılık Doğrulandı' : 'Canlılık Doğrulanamadı'}
          </Text>
          
          <Text style={styles.resultScore}>
            Skor: %{detectionResult.score}
          </Text>
          
          <View style={styles.resultDetails}>
            <Text style={styles.resultDetailText}>
              Toplam Test: {detectionResult.details.totalChallenges}
            </Text>
            <Text style={styles.resultDetailText}>
              Başarılı: {detectionResult.details.successfulChallenges}
            </Text>
            <Text style={styles.resultDetailText}>
              Başarısız: {detectionResult.details.failedChallenges}
            </Text>
          </View>
          
          <View style={styles.resultChallenges}>
            {detectionResult.details.challenges.map((challenge, index) => (
              <View key={index} style={styles.challengeResult}>
                <Text style={styles.challengeResultText}>
                  {CHALLENGES[challenge.challenge.toUpperCase()]?.instruction || challenge.challenge}
                </Text>
                <Text style={[
                  styles.challengeResultStatus,
                  { color: challenge.success ? '#4CAF50' : '#F44336' }
                ]}>
                  {challenge.success ? '✓' : '✗'}
                </Text>
              </View>
            ))}
          </View>
          
          <TouchableOpacity style={styles.retryButton} onPress={startDetection}>
            <Text style={styles.retryButtonText}>Tekrar Dene</Text>
          </TouchableOpacity>
        </View>
      </View>
    );
  };

  if (detectionResult) {
    return (
      <View style={styles.container}>
        <StatusBar barStyle="dark-content" backgroundColor="#F5F5F5" />
        
        <View style={styles.header}>
          <TouchableOpacity onPress={() => navigation.goBack()}>
            <Text style={styles.backButton}>←</Text>
          </TouchableOpacity>
          <Text style={styles.headerTitle}>Canlılık Testi Sonucu</Text>
          <View style={{ width: 40 }} />
        </View>
        
        {renderResult()}
      </View>
    );
  }

  if (!device) {
    return (
      <View style={styles.container}>
        <View style={styles.errorContainer}>
          <Text style={styles.errorText}>Kamera bulunamadı</Text>
          <TouchableOpacity
            style={styles.retryButton}
            onPress={() => navigation.goBack()}
          >
            <Text style={styles.retryButtonText}>Geri Dön</Text>
          </TouchableOpacity>
        </View>
      </View>
    );
  }

  return (
    <View style={styles.container}>
      <StatusBar barStyle="light-content" backgroundColor="#000" />
      
      {/* Header with back button */}
      <View style={styles.topHeader}>
        <TouchableOpacity
          style={styles.headerBackButton}
          onPress={() => {
            setIsCameraActive(false);
            navigation.goBack();
          }}
        >
          <Text style={styles.headerBackText}>← Geri</Text>
        </TouchableOpacity>
        <Text style={styles.topHeaderTitle}>Canlılık Testi</Text>
        <View style={styles.headerSpacer} />
      </View>
      
      {device && isCameraActive && isDetecting ? (
        <>
          <Camera
            ref={cameraRef}
            style={styles.camera}
            device={device}
            isActive={isCameraActive && isDetecting}
            photo={true}
            video={false}
          />
          
          {renderFaceOverlay()}
          
          {renderChallenge()}
          
          <TouchableOpacity style={styles.cancelButton} onPress={stopDetection}>
            <Text style={styles.cancelButtonText}>İptal</Text>
          </TouchableOpacity>
        </>
      ) : (
        <View style={styles.startContainer}>
          <View style={styles.header}>
            <TouchableOpacity onPress={() => navigation.goBack()}>
              <Text style={styles.backButton}>←</Text>
            </TouchableOpacity>
            <Text style={styles.headerTitle}>Canlılık Testi</Text>
            <View style={{ width: 40 }} />
          </View>
          
          <View style={styles.content}>
            <Text style={styles.welcomeTitle}>Yüz Doğrulama</Text>
            
            <Text style={styles.welcomeText}>
              Güvenliğiniz için kısa bir canlılık testi yapacağız.
              Ekrandaki yönlendirmeleri takip edin.
            </Text>
            
            <View style={styles.stepsList}>
              <View style={styles.stepItem}>
                <Text style={styles.stepNumber}>1</Text>
                <Text style={styles.stepText}>Yüzünüzü çerçeve içine yerleştirin</Text>
              </View>
              
              <View style={styles.stepItem}>
                <Text style={styles.stepNumber}>2</Text>
                <Text style={styles.stepText}>Sesli yönlendirmeleri takip edin</Text>
              </View>
              
              <View style={styles.stepItem}>
                <Text style={styles.stepNumber}>3</Text>
                <Text style={styles.stepText}>İstenen hareketleri yapın</Text>
              </View>
            </View>
            
            <Text style={styles.durationText}>
              ⏱️ Tahmini süre: 15-20 saniye
            </Text>
            
            <TouchableOpacity style={styles.startButton} onPress={startDetection}>
              <Text style={styles.startButtonText}>Teste Başla</Text>
            </TouchableOpacity>
          </View>
        </View>
      )}
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#000',
  },
  topHeader: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
    paddingHorizontal: 16,
    paddingVertical: 12,
    backgroundColor: 'rgba(0,0,0,0.8)',
    zIndex: 100,
  },
  headerBackButton: {
    padding: 8,
  },
  headerBackText: {
    color: '#FFF',
    fontSize: 16,
    fontWeight: '600',
  },
  topHeaderTitle: {
    color: '#FFF',
    fontSize: 18,
    fontWeight: 'bold',
  },
  headerSpacer: {
    width: 60,
  },
  errorContainer: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#000',
    padding: 20,
  },
  errorText: {
    color: '#FFF',
    fontSize: 16,
    marginBottom: 20,
  },
  header: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    paddingHorizontal: 20,
    paddingTop: 40,
    paddingBottom: 20,
    backgroundColor: '#FFF',
  },
  backButton: {
    fontSize: 28,
    color: '#333',
  },
  headerTitle: {
    fontSize: 18,
    fontWeight: '600',
    color: '#333',
  },
  camera: {
    flex: 1,
  },
  faceOverlay: {
    ...StyleSheet.absoluteFillObject,
    justifyContent: 'center',
    alignItems: 'center',
  },
  faceBox: {
    width: 250,
    height: 320,
    borderWidth: 3,
    borderRadius: 20,
    position: 'relative',
  },
  faceCorner: {
    position: 'absolute',
    width: 50,
    height: 50,
    borderColor: '#FFF',
    borderWidth: 4,
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
  countdownText: {
    color: '#FFF',
    fontSize: 48,
    fontWeight: 'bold',
  },
  challengeText: {
    color: '#FFF',
    fontSize: 16,
    marginTop: 10,
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
  startContainer: {
    flex: 1,
    backgroundColor: '#F5F5F5',
  },
  content: {
    flex: 1,
    padding: 30,
    justifyContent: 'center',
  },
  welcomeTitle: {
    fontSize: 28,
    fontWeight: 'bold',
    color: '#333',
    textAlign: 'center',
    marginBottom: 20,
  },
  welcomeText: {
    fontSize: 16,
    color: '#666',
    textAlign: 'center',
    marginBottom: 40,
    lineHeight: 24,
  },
  stepsList: {
    backgroundColor: '#FFF',
    borderRadius: 15,
    padding: 20,
    marginBottom: 30,
    elevation: 2,
  },
  stepItem: {
    flexDirection: 'row',
    alignItems: 'center',
    marginBottom: 15,
  },
  stepNumber: {
    width: 30,
    height: 30,
    borderRadius: 15,
    backgroundColor: '#2196F3',
    color: '#FFF',
    textAlign: 'center',
    lineHeight: 30,
    marginRight: 15,
    fontWeight: 'bold',
  },
  stepText: {
    flex: 1,
    fontSize: 14,
    color: '#555',
  },
  durationText: {
    textAlign: 'center',
    fontSize: 14,
    color: '#666',
    marginBottom: 30,
  },
  startButton: {
    backgroundColor: '#2196F3',
    paddingVertical: 15,
    borderRadius: 25,
    elevation: 3,
  },
  startButtonText: {
    color: '#FFF',
    fontSize: 18,
    fontWeight: '600',
    textAlign: 'center',
  },
  resultContainer: {
    flex: 1,
    padding: 20,
    justifyContent: 'center',
    backgroundColor: '#F5F5F5',
  },
  resultCard: {
    borderRadius: 20,
    padding: 30,
    alignItems: 'center',
    elevation: 3,
  },
  resultIcon: {
    fontSize: 72,
    marginBottom: 20,
  },
  resultTitle: {
    fontSize: 22,
    fontWeight: 'bold',
    marginBottom: 10,
  },
  resultScore: {
    fontSize: 18,
    color: '#666',
    marginBottom: 20,
  },
  resultDetails: {
    backgroundColor: 'rgba(0,0,0,0.05)',
    borderRadius: 10,
    padding: 15,
    marginBottom: 20,
    width: '100%',
  },
  resultDetailText: {
    fontSize: 14,
    color: '#555',
    marginBottom: 5,
    textAlign: 'center',
  },
  resultChallenges: {
    width: '100%',
    marginBottom: 20,
  },
  challengeResult: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    paddingVertical: 8,
    borderBottomWidth: 1,
    borderBottomColor: '#E0E0E0',
  },
  challengeResultText: {
    fontSize: 14,
    color: '#555',
  },
  challengeResultStatus: {
    fontSize: 18,
    fontWeight: 'bold',
  },
  retryButton: {
    backgroundColor: '#2196F3',
    paddingHorizontal: 40,
    paddingVertical: 12,
    borderRadius: 25,
    marginTop: 10,
  },
  retryButtonText: {
    color: '#FFF',
    fontSize: 16,
    fontWeight: '600',
  },
});

export default LivenessDetectionModule;
