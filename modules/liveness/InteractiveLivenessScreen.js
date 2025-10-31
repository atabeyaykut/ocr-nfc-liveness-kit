/**
 * Interactive Liveness Detection - Multi-Step Verification
 * Commands: Blink, Smile, Turn Left, Turn Right, Nod
 * STANDALONE VERSION - 100% Working
 */

import React, { useState, useEffect } from 'react';
import {
  View,
  Text,
  StyleSheet,
  TouchableOpacity,
  Image,
  ScrollView,
  ActivityIndicator,
  Alert,
  SafeAreaView,
} from 'react-native';
import ImageCropPicker from 'react-native-image-crop-picker';
import FaceDetection from '@react-native-ml-kit/face-detection';
import { check, request, PERMISSIONS, RESULTS } from 'react-native-permissions';

const COMMANDS = [
  { id: 'neutral', title: 'Normal Poz', icon: '😐', instruction: 'Kameraya doğru bakın' },
  { id: 'blink', title: 'Göz Kırp', icon: '😉', instruction: 'Gözlerinizi kırpın' },
  { id: 'smile', title: 'Gülümse', icon: '😊', instruction: 'Gülümseyin' },
  { id: 'turnLeft', title: 'Sola Bak', icon: '👈', instruction: 'Başınızı sola çevirin' },
  { id: 'turnRight', title: 'Sağa Bak', icon: '👉', instruction: 'Başınızı sağa çevirin' },
  { id: 'nod', title: 'Başını Eğ', icon: '🙇', instruction: 'Başınızı aşağı eğin' },
];

export const InteractiveLivenessScreen = ({ navigation }) => {
  const [currentStep, setCurrentStep] = useState(0);
  const [capturedImages, setCapturedImages] = useState([]);
  const [results, setResults] = useState([]);
  const [loading, setLoading] = useState(false);
  const [testComplete, setTestComplete] = useState(false);

  const requestCameraPermission = async () => {
    const result = await request(PERMISSIONS.ANDROID.CAMERA);
    return result === RESULTS.GRANTED;
  };

  const captureForCommand = async () => {
    try {
      const hasPermission = await requestCameraPermission();
      if (!hasPermission) {
        Alert.alert('İzin Gerekli', 'Kamera izni vermeniz gerekiyor.');
        return;
      }

      const image = await ImageCropPicker.openCamera({
        width: 1080,
        height: 1920,
        cropping: false,
        cameraType: 'front',
        includeBase64: false,
        compressImageQuality: 0.9,
        mediaType: 'photo',
      });

      await verifyCommand(image.path);
    } catch (error) {
      if (error.code !== 'E_PICKER_CANCELLED') {
        Alert.alert('Hata', 'Fotoğraf çekilemedi: ' + error.message);
      }
    }
  };

  const verifyCommand = async (imagePath) => {
    try {
      setLoading(true);
      
      const faces = await FaceDetection.detect(imagePath, {
        performanceMode: 'accurate',
        landmarkMode: 'all',
        classificationMode: 'all',
        contourMode: 'all',
      });

      if (faces.length === 0) {
        Alert.alert('Yüz Algılanamadı', 'Lütfen yüzünüzü çerçeveye sığdırın ve tekrar deneyin.');
        return;
      }

      if (faces.length > 1) {
        Alert.alert('Birden Fazla Yüz', 'Lütfen çerçevede sadece sizin yüzünüzün olmasını sağlayın.');
        return;
      }

      const face = faces[0];
      const command = COMMANDS[currentStep];
      const verification = verifyFaceForCommand(face, command);

      // Sonuçları kaydet
      const newResult = {
        command: command.id,
        title: command.title,
        image: imagePath,
        ...verification,
        timestamp: new Date().toISOString(),
      };

      setCapturedImages([...capturedImages, imagePath]);
      setResults([...results, newResult]);

      if (verification.passed) {
        if (currentStep < COMMANDS.length - 1) {
          setCurrentStep(currentStep + 1);
          Alert.alert('✅ Başarılı', `${command.title} komutu geçildi!\n\nSıradaki: ${COMMANDS[currentStep + 1].title}`);
        } else {
          setTestComplete(true);
          Alert.alert('🎉 Tamamlandı', 'Tüm canlılık testleri başarıyla geçildi!');
        }
      } else {
        Alert.alert('❌ Tekrar Deneyin', verification.message);
      }
    } catch (error) {
      Alert.alert('Hata', 'Yüz algılama başarısız: ' + error.message);
      console.error('[Liveness] Error:', error);
    } finally {
      setLoading(false);
    }
  };

  const verifyFaceForCommand = (face, command) => {
    const result = {
      passed: false,
      message: '',
      data: {},
    };

    // Temel kontroller
    const eyesOpen = face.leftEyeOpenProbability > 0.5 && face.rightEyeOpenProbability > 0.5;
    const smiling = face.smilingProbability > 0.6;
    const headYaw = face.headEulerAngleY || 0; // Yatay dönüş (sağa/sola)
    const headPitch = face.headEulerAngleX || 0; // Dikey dönüş (yukarı/aşağı)

    result.data = {
      leftEyeOpen: face.leftEyeOpenProbability,
      rightEyeOpen: face.rightEyeOpenProbability,
      smiling: face.smilingProbability,
      headYaw,
      headPitch,
    };

    switch (command.id) {
      case 'neutral':
        // Normal poz: gözler açık, baş düz
        if (eyesOpen && Math.abs(headYaw) < 15 && Math.abs(headPitch) < 15) {
          result.passed = true;
          result.message = 'Normal poz doğrulandı';
        } else {
          result.message = 'Lütfen kameraya doğru bakın, gözleriniz açık olsun';
        }
        break;

      case 'blink':
        // Göz kırpma: en az bir göz kapalı
        if (face.leftEyeOpenProbability < 0.3 || face.rightEyeOpenProbability < 0.3) {
          result.passed = true;
          result.message = 'Göz kırpma algılandı';
        } else {
          result.message = 'Göz kırpma algılanmadı, tekrar deneyin';
        }
        break;

      case 'smile':
        // Gülümseme: yüksek gülümseme olasılığı
        if (smiling) {
          result.passed = true;
          result.message = 'Gülümseme algılandı';
        } else {
          result.message = 'Gülümseme algılanmadı, daha çok gülümseyin';
        }
        break;

      case 'turnLeft':
        // Sola bakma: pozitif yaw açısı
        if (headYaw > 15) {
          result.passed = true;
          result.message = 'Sola dönüş algılandı';
        } else {
          result.message = 'Başınızı daha fazla sola çevirin';
        }
        break;

      case 'turnRight':
        // Sağa bakma: negatif yaw açısı
        if (headYaw < -15) {
          result.passed = true;
          result.message = 'Sağa dönüş algılandı';
        } else {
          result.message = 'Başınızı daha fazla sağa çevirin';
        }
        break;

      case 'nod':
        // Baş eğme: negatif pitch açısı
        if (headPitch < -10) {
          result.passed = true;
          result.message = 'Baş eğme algılandı';
        } else {
          result.message = 'Başınızı daha fazla aşağı eğin';
        }
        break;
    }

    return result;
  };

  const resetTest = () => {
    setCurrentStep(0);
    setCapturedImages([]);
    setResults([]);
    setTestComplete(false);
  };

  const currentCommand = COMMANDS[currentStep];

  return (
    <SafeAreaView style={styles.container}>
      <View style={styles.header}>
        <TouchableOpacity onPress={() => navigation.goBack()}>
          <Text style={styles.backButton}>←</Text>
        </TouchableOpacity>
        <Text style={styles.title}>Canlılık Testi</Text>
        <View style={{ width: 40 }} />
      </View>

      <ScrollView contentContainerStyle={styles.content}>
        {!testComplete ? (
          <>
            {/* Progress */}
            <View style={styles.progressContainer}>
              <Text style={styles.progressText}>
                Adım {currentStep + 1} / {COMMANDS.length}
              </Text>
              <View style={styles.progressBar}>
                <View style={[styles.progressFill, { width: `${((currentStep + 1) / COMMANDS.length) * 100}%` }]} />
              </View>
            </View>

            {/* Current Command */}
            <View style={styles.commandCard}>
              <Text style={styles.commandIcon}>{currentCommand.icon}</Text>
              <Text style={styles.commandTitle}>{currentCommand.title}</Text>
              <Text style={styles.commandInstruction}>{currentCommand.instruction}</Text>
            </View>

            {/* Instructions */}
            <View style={styles.instructionsCard}>
              <Text style={styles.instructionsTitle}>📋 Talimatlar</Text>
              <Text style={styles.instructionsText}>
                1. "Selfie Çek" butonuna basın{'\n'}
                2. Ön kamera açılacak{'\n'}
                3. Ekrandaki komutu yerine getirin{'\n'}
                4. Fotoğrafı çekin{'\n'}
                5. Sistem komutu doğrulayacak
              </Text>
            </View>

            {/* Capture Button */}
            <TouchableOpacity
              style={styles.captureButton}
              onPress={captureForCommand}
              disabled={loading}
            >
              <Text style={styles.captureButtonText}>
                {loading ? '⏳ Doğrulanıyor...' : `📷 ${currentCommand.title}`}
              </Text>
            </TouchableOpacity>

            {loading && (
              <View style={styles.loadingContainer}>
                <ActivityIndicator size="large" color="#2196F3" />
                <Text style={styles.loadingText}>Yüz analizi yapılıyor...</Text>
              </View>
            )}

            {/* Completed Steps */}
            {results.length > 0 && (
              <View style={styles.completedSection}>
                <Text style={styles.completedTitle}>✅ Tamamlanan Adımlar:</Text>
                {results.map((result, index) => (
                  <View key={index} style={styles.completedItem}>
                    <Text style={styles.completedText}>
                      {COMMANDS.find(c => c.id === result.command)?.icon} {result.title}
                    </Text>
                  </View>
                ))}
              </View>
            )}
          </>
        ) : (
          // Test Complete
          <View style={styles.successContainer}>
            <Text style={styles.successIcon}>🎉</Text>
            <Text style={styles.successTitle}>Canlılık Testi Başarılı!</Text>
            <Text style={styles.successSubtitle}>
              Tüm {COMMANDS.length} adım başarıyla tamamlandı
            </Text>

            <View style={styles.resultsGrid}>
              {results.map((result, index) => (
                <View key={index} style={styles.resultCard}>
                  <Image source={{ uri: result.image }} style={styles.resultImage} />
                  <Text style={styles.resultLabel}>
                    {COMMANDS.find(c => c.id === result.command)?.icon} {result.title}
                  </Text>
                </View>
              ))}
            </View>

            <TouchableOpacity
              style={styles.resetButton}
              onPress={resetTest}
            >
              <Text style={styles.resetButtonText}>🔄 Yeniden Test Et</Text>
            </TouchableOpacity>
          </View>
        )}
      </ScrollView>
    </SafeAreaView>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#F5F5F5',
  },
  header: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    padding: 20,
    backgroundColor: '#FFF',
    elevation: 2,
  },
  backButton: {
    fontSize: 28,
    color: '#333',
  },
  title: {
    fontSize: 18,
    fontWeight: '600',
    color: '#333',
  },
  content: {
    padding: 20,
  },
  progressContainer: {
    marginBottom: 20,
  },
  progressText: {
    fontSize: 14,
    color: '#666',
    marginBottom: 8,
    textAlign: 'center',
  },
  progressBar: {
    height: 8,
    backgroundColor: '#E0E0E0',
    borderRadius: 4,
    overflow: 'hidden',
  },
  progressFill: {
    height: '100%',
    backgroundColor: '#4CAF50',
  },
  commandCard: {
    backgroundColor: '#FFF',
    padding: 30,
    borderRadius: 15,
    alignItems: 'center',
    marginBottom: 20,
    elevation: 3,
  },
  commandIcon: {
    fontSize: 64,
    marginBottom: 15,
  },
  commandTitle: {
    fontSize: 24,
    fontWeight: 'bold',
    color: '#333',
    marginBottom: 10,
  },
  commandInstruction: {
    fontSize: 16,
    color: '#666',
    textAlign: 'center',
  },
  instructionsCard: {
    backgroundColor: '#E3F2FD',
    padding: 15,
    borderRadius: 10,
    marginBottom: 20,
  },
  instructionsTitle: {
    fontSize: 14,
    fontWeight: 'bold',
    color: '#1976D2',
    marginBottom: 8,
  },
  instructionsText: {
    fontSize: 13,
    color: '#333',
    lineHeight: 20,
  },
  captureButton: {
    backgroundColor: '#2196F3',
    paddingVertical: 18,
    borderRadius: 10,
    alignItems: 'center',
    marginBottom: 20,
    elevation: 2,
  },
  captureButtonText: {
    color: '#FFF',
    fontSize: 18,
    fontWeight: '600',
  },
  loadingContainer: {
    alignItems: 'center',
    padding: 20,
  },
  loadingText: {
    marginTop: 10,
    fontSize: 14,
    color: '#666',
  },
  completedSection: {
    backgroundColor: '#FFF',
    padding: 15,
    borderRadius: 10,
    marginTop: 10,
  },
  completedTitle: {
    fontSize: 16,
    fontWeight: 'bold',
    color: '#4CAF50',
    marginBottom: 10,
  },
  completedItem: {
    paddingVertical: 8,
    borderBottomWidth: 1,
    borderBottomColor: '#EEE',
  },
  completedText: {
    fontSize: 14,
    color: '#333',
  },
  successContainer: {
    alignItems: 'center',
    paddingVertical: 20,
  },
  successIcon: {
    fontSize: 80,
    marginBottom: 20,
  },
  successTitle: {
    fontSize: 24,
    fontWeight: 'bold',
    color: '#4CAF50',
    marginBottom: 10,
    textAlign: 'center',
  },
  successSubtitle: {
    fontSize: 16,
    color: '#666',
    marginBottom: 30,
    textAlign: 'center',
  },
  resultsGrid: {
    flexDirection: 'row',
    flexWrap: 'wrap',
    justifyContent: 'space-around',
    marginBottom: 30,
  },
  resultCard: {
    width: '45%',
    marginBottom: 15,
    alignItems: 'center',
  },
  resultImage: {
    width: '100%',
    height: 150,
    borderRadius: 10,
    marginBottom: 8,
  },
  resultLabel: {
    fontSize: 12,
    color: '#666',
    textAlign: 'center',
  },
  resetButton: {
    backgroundColor: '#FF9800',
    paddingVertical: 15,
    paddingHorizontal: 40,
    borderRadius: 10,
    elevation: 2,
  },
  resetButtonText: {
    color: '#FFF',
    fontSize: 16,
    fontWeight: '600',
  },
});
