/**
 * Production Liveness Detection App
 * Real-time face detection and liveness verification
 * NO MOCK DATA - Production Ready
 */

import React, { useState, useEffect, useCallback } from 'react';
import {
  View,
  Text,
  TouchableOpacity,
  StyleSheet,
  SafeAreaView,
  StatusBar,
  Alert,
  ActivityIndicator,
  Platform,
} from 'react-native';
import { LivenessDetector } from './modules/liveness';
import Logger from './utils/logger';

// Import PermissionManager (CommonJS export)
const PermissionManager = require('./utils/permissions');

const LivenessApp = () => {
  const [isInitialized, setIsInitialized] = useState(false);
  const [isProcessing, setIsProcessing] = useState(false);
  const [currentStatus, setCurrentStatus] = useState('idle');
  const [currentInstruction, setCurrentInstruction] = useState('');
  const [progress, setProgress] = useState(0);
  const [result, setResult] = useState(null);
  const [error, setError] = useState(null);
  const [detector, setDetector] = useState(null);

  // Initialize LivenessDetector
  useEffect(() => {
    initializeLivenessDetector();
    return () => {
      if (detector) {
        detector.cleanup?.();
      }
    };
  }, []);

  const initializeLivenessDetector = async () => {
    try {
      Logger.info('Initializing LivenessDetector...');
      
      // Check camera permissions
      const cameraPermission = await PermissionManager.requestCameraPermission();
      if (!cameraPermission) {
        throw new Error('Kamera izni gerekli. Lütfen ayarlardan kamera iznini etkinleştirin.');
      }

      // Create detector instance with production config
      const livenessDetector = new LivenessDetector({
        cameraType: 'front',
        captureQuality: 0.9,
        timeoutDuration: 45000,
        instructionDelay: 2000,
        maxRetries: 3,
        enableFaceDetection: true,
        enableMotionDetection: true,
        realTimeMode: true,
      });

      // Set up callbacks
      livenessDetector.onStatusChange = (status) => {
        Logger.info(`Status changed: ${status}`);
        setCurrentStatus(status);
      };

      livenessDetector.onInstructionGiven = (instruction) => {
        Logger.info(`Instruction: ${instruction}`);
        setCurrentInstruction(instruction);
      };

      livenessDetector.onProgress = (progressValue) => {
        setProgress(progressValue);
      };

      livenessDetector.onSuccess = (livenessResult) => {
        Logger.info('Liveness test successful', livenessResult);
        setResult(livenessResult);
        setIsProcessing(false);
        Alert.alert(
          'Başarılı! ✅',
          `Canlılık testi başarıyla tamamlandı.\n\nGüven Skoru: ${(livenessResult.confidence * 100).toFixed(1)}%`,
          [{ text: 'Tamam' }]
        );
      };

      livenessDetector.onError = (err) => {
        Logger.error('Liveness test error', err);
        setError(err.message || 'Bir hata oluştu');
        setIsProcessing(false);
        Alert.alert(
          'Hata ❌',
          err.message || 'Canlılık testi sırasında bir hata oluştu.',
          [{ text: 'Tamam' }]
        );
      };

      livenessDetector.onMotionDetected = (motion) => {
        Logger.debug('Motion detected', motion);
      };

      setDetector(livenessDetector);
      setIsInitialized(true);
      Logger.info('LivenessDetector initialized successfully');
    } catch (err) {
      Logger.error('Failed to initialize LivenessDetector', err);
      setError(err.message);
      Alert.alert(
        'Başlatma Hatası',
        err.message || 'Canlılık dedektörü başlatılamadı.',
        [{ text: 'Tamam' }]
      );
    }
  };

  const startLivenessTest = useCallback(async () => {
    if (!detector) {
      Alert.alert('Hata', 'Dedektör henüz hazır değil. Lütfen bekleyin.');
      return;
    }

    if (isProcessing) {
      Alert.alert('Uyarı', 'Test zaten devam ediyor.');
      return;
    }

    try {
      setIsProcessing(true);
      setResult(null);
      setError(null);
      setProgress(0);
      setCurrentInstruction('Hazırlanıyor...');

      Logger.info('Starting liveness test...');
      await detector.startLivenessTest({
        commandCount: 3,
        randomizeCommands: true,
      });
    } catch (err) {
      Logger.error('Failed to start liveness test', err);
      setError(err.message);
      setIsProcessing(false);
    }
  }, [detector, isProcessing]);

  const resetTest = useCallback(() => {
    setResult(null);
    setError(null);
    setProgress(0);
    setCurrentInstruction('');
    setCurrentStatus('idle');
    setIsProcessing(false);
  }, []);

  const getStatusColor = () => {
    switch (currentStatus) {
      case 'success':
        return '#4CAF50';
      case 'error':
        return '#F44336';
      case 'processing':
      case 'capturing':
        return '#2196F3';
      case 'camera_ready':
        return '#FF9800';
      default:
        return '#9E9E9E';
    }
  };

  const getStatusText = () => {
    switch (currentStatus) {
      case 'idle':
        return 'Hazır';
      case 'initializing':
        return 'Başlatılıyor...';
      case 'camera_ready':
        return 'Kamera Hazır';
      case 'instruction_given':
        return 'Talimat Verildi';
      case 'capturing':
        return 'Yakalanıyor...';
      case 'processing':
        return 'İşleniyor...';
      case 'success':
        return 'Başarılı ✅';
      case 'error':
        return 'Hata ❌';
      default:
        return currentStatus;
    }
  };

  return (
    <SafeAreaView style={styles.container}>
      <StatusBar barStyle="dark-content" backgroundColor="#fff" />
      
      {/* Header */}
      <View style={styles.header}>
        <Text style={styles.headerTitle}>🎭 Canlılık Tespiti</Text>
        <Text style={styles.headerSubtitle}>Gerçek Zamanlı Yüz Tanıma</Text>
      </View>

      {/* Status Card */}
      <View style={[styles.statusCard, { borderLeftColor: getStatusColor() }]}>
        <View style={styles.statusHeader}>
          <Text style={styles.statusLabel}>Durum:</Text>
          <Text style={[styles.statusValue, { color: getStatusColor() }]}>
            {getStatusText()}
          </Text>
        </View>
        
        {currentInstruction && (
          <View style={styles.instructionContainer}>
            <Text style={styles.instructionLabel}>Talimat:</Text>
            <Text style={styles.instructionText}>{currentInstruction}</Text>
          </View>
        )}

        {isProcessing && (
          <View style={styles.progressContainer}>
            <View style={styles.progressBar}>
              <View style={[styles.progressFill, { width: `${progress}%` }]} />
            </View>
            <Text style={styles.progressText}>{Math.round(progress)}%</Text>
          </View>
        )}
      </View>

      {/* Result Card */}
      {result && (
        <View style={styles.resultCard}>
          <Text style={styles.resultTitle}>✅ Test Sonucu</Text>
          <View style={styles.resultRow}>
            <Text style={styles.resultLabel}>Canlılık:</Text>
            <Text style={styles.resultValue}>
              {result.isLive ? 'Canlı ✓' : 'Canlı Değil ✗'}
            </Text>
          </View>
          <View style={styles.resultRow}>
            <Text style={styles.resultLabel}>Güven Skoru:</Text>
            <Text style={styles.resultValue}>
              {(result.confidence * 100).toFixed(1)}%
            </Text>
          </View>
          <View style={styles.resultRow}>
            <Text style={styles.resultLabel}>Test Süresi:</Text>
            <Text style={styles.resultValue}>
              {(result.processingTime / 1000).toFixed(1)}s
            </Text>
          </View>
        </View>
      )}

      {/* Error Card */}
      {error && (
        <View style={styles.errorCard}>
          <Text style={styles.errorTitle}>❌ Hata</Text>
          <Text style={styles.errorText}>{error}</Text>
        </View>
      )}

      {/* Action Buttons */}
      <View style={styles.actionContainer}>
        {!isProcessing && !result && (
          <TouchableOpacity
            style={[styles.button, styles.primaryButton, !isInitialized && styles.buttonDisabled]}
            onPress={startLivenessTest}
            disabled={!isInitialized}
          >
            {!isInitialized ? (
              <ActivityIndicator color="#fff" />
            ) : (
              <Text style={styles.buttonText}>🎬 Testi Başlat</Text>
            )}
          </TouchableOpacity>
        )}

        {(result || error) && (
          <TouchableOpacity
            style={[styles.button, styles.secondaryButton]}
            onPress={resetTest}
          >
            <Text style={styles.buttonText}>🔄 Yeni Test</Text>
          </TouchableOpacity>
        )}
      </View>

      {/* Info Section */}
      <View style={styles.infoContainer}>
        <Text style={styles.infoTitle}>ℹ️ Bilgilendirme</Text>
        <Text style={styles.infoText}>
          • Yüzünüzü kameranın önüne getirin{'\n'}
          • Verilen talimatları takip edin{'\n'}
          • İyi aydınlatma sağlayın{'\n'}
          • Kamerayı sabit tutun
        </Text>
      </View>

      {/* Footer */}
      <View style={styles.footer}>
        <Text style={styles.footerText}>
          Production Mode • Real-time Detection
        </Text>
        <Text style={styles.footerSubtext}>
          React Native 0.74 • Hermes Engine
        </Text>
      </View>
    </SafeAreaView>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#F5F5F5',
  },
  header: {
    backgroundColor: '#fff',
    padding: 20,
    borderBottomWidth: 1,
    borderBottomColor: '#E0E0E0',
    alignItems: 'center',
  },
  headerTitle: {
    fontSize: 28,
    fontWeight: 'bold',
    color: '#212121',
    marginBottom: 4,
  },
  headerSubtitle: {
    fontSize: 14,
    color: '#757575',
  },
  statusCard: {
    backgroundColor: '#fff',
    margin: 16,
    padding: 16,
    borderRadius: 12,
    borderLeftWidth: 4,
    elevation: 2,
    shadowColor: '#000',
    shadowOffset: { width: 0, height: 2 },
    shadowOpacity: 0.1,
    shadowRadius: 4,
  },
  statusHeader: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    marginBottom: 12,
  },
  statusLabel: {
    fontSize: 16,
    color: '#757575',
    fontWeight: '500',
  },
  statusValue: {
    fontSize: 18,
    fontWeight: 'bold',
  },
  instructionContainer: {
    backgroundColor: '#F5F5F5',
    padding: 12,
    borderRadius: 8,
    marginTop: 8,
  },
  instructionLabel: {
    fontSize: 12,
    color: '#757575',
    marginBottom: 4,
  },
  instructionText: {
    fontSize: 16,
    color: '#212121',
    fontWeight: '600',
  },
  progressContainer: {
    marginTop: 16,
  },
  progressBar: {
    height: 8,
    backgroundColor: '#E0E0E0',
    borderRadius: 4,
    overflow: 'hidden',
  },
  progressFill: {
    height: '100%',
    backgroundColor: '#2196F3',
  },
  progressText: {
    fontSize: 12,
    color: '#757575',
    textAlign: 'right',
    marginTop: 4,
  },
  resultCard: {
    backgroundColor: '#E8F5E9',
    margin: 16,
    marginTop: 0,
    padding: 16,
    borderRadius: 12,
    borderWidth: 1,
    borderColor: '#4CAF50',
  },
  resultTitle: {
    fontSize: 18,
    fontWeight: 'bold',
    color: '#2E7D32',
    marginBottom: 12,
  },
  resultRow: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    marginBottom: 8,
  },
  resultLabel: {
    fontSize: 14,
    color: '#558B2F',
  },
  resultValue: {
    fontSize: 14,
    fontWeight: '600',
    color: '#2E7D32',
  },
  errorCard: {
    backgroundColor: '#FFEBEE',
    margin: 16,
    marginTop: 0,
    padding: 16,
    borderRadius: 12,
    borderWidth: 1,
    borderColor: '#F44336',
  },
  errorTitle: {
    fontSize: 18,
    fontWeight: 'bold',
    color: '#C62828',
    marginBottom: 8,
  },
  errorText: {
    fontSize: 14,
    color: '#D32F2F',
  },
  actionContainer: {
    padding: 16,
  },
  button: {
    padding: 16,
    borderRadius: 12,
    alignItems: 'center',
    marginBottom: 12,
  },
  primaryButton: {
    backgroundColor: '#2196F3',
  },
  secondaryButton: {
    backgroundColor: '#757575',
  },
  buttonDisabled: {
    backgroundColor: '#BDBDBD',
  },
  buttonText: {
    color: '#fff',
    fontSize: 16,
    fontWeight: 'bold',
  },
  infoContainer: {
    backgroundColor: '#E3F2FD',
    margin: 16,
    padding: 16,
    borderRadius: 12,
    borderWidth: 1,
    borderColor: '#2196F3',
  },
  infoTitle: {
    fontSize: 16,
    fontWeight: 'bold',
    color: '#1565C0',
    marginBottom: 8,
  },
  infoText: {
    fontSize: 14,
    color: '#1976D2',
    lineHeight: 20,
  },
  footer: {
    padding: 16,
    alignItems: 'center',
    marginTop: 'auto',
  },
  footerText: {
    fontSize: 12,
    color: '#757575',
    fontWeight: '600',
  },
  footerSubtext: {
    fontSize: 10,
    color: '#9E9E9E',
    marginTop: 4,
  },
});

export default LivenessApp;
