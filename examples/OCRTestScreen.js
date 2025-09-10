/**
 * OCR Test Screen - Day 3 Demo Application
 * Complete OCR workflow testing with JSON result display
 */

import React, { useState, useRef } from 'react';
import {
  View,
  Text,
  TouchableOpacity,
  StyleSheet,
  ScrollView,
  Alert,
  ActivityIndicator,
  Modal,
  SafeAreaView,
  Dimensions
} from 'react-native';

import { OCRReader } from '../modules/ocr/OCRReader';
import { OCRCamera } from '../modules/ocr/OCRCamera';
import { Logger } from '../utils/logger';

const { width, height } = Dimensions.get('window');

const OCRTestScreen = () => {
  const [isProcessing, setIsProcessing] = useState(false);
  const [ocrResult, setOcrResult] = useState(null);
  const [showCamera, setShowCamera] = useState(false);
  const [processingStatus, setProcessingStatus] = useState('');
  const [performanceMetrics, setPerformanceMetrics] = useState(null);
  const [logs, setLogs] = useState([]);
  
  const ocrReaderRef = useRef(null);

  // Initialize OCR Reader with callbacks
  const initializeOCR = () => {
    if (!ocrReaderRef.current) {
      ocrReaderRef.current = new OCRReader({
        onSuccess: handleOCRSuccess,
        onError: handleOCRError,
        onStatusChange: handleStatusChange
      });
    }
    return ocrReaderRef.current;
  };

  const addLog = (message, type = 'info') => {
    const timestamp = new Date().toLocaleTimeString('tr-TR');
    const newLog = {
      id: Date.now(),
      timestamp,
      message,
      type
    };
    setLogs(prev => [newLog, ...prev].slice(0, 50)); // Keep last 50 logs
  };

  const handleOCRSuccess = (result) => {
    addLog('OCR işlemi başarıyla tamamlandı', 'success');
    setOcrResult(result);
    setPerformanceMetrics(result.performanceMetrics);
    setIsProcessing(false);
    setShowCamera(false);
    
    Alert.alert(
      'OCR Başarılı! 🎉',
      `Metin çıkarıldı: ${result.text.length} karakter\nAlanlar: ${Object.keys(result.extractedFields).length} adet`,
      [{ text: 'Tamam', style: 'default' }]
    );
  };

  const handleOCRError = (error) => {
    addLog(`OCR hatası: ${error.message}`, 'error');
    setIsProcessing(false);
    setShowCamera(false);
    
    Alert.alert(
      'OCR Hatası ❌',
      error.message,
      [
        { text: 'Tekrar Dene', onPress: startOCRWorkflow },
        { text: 'İptal', style: 'cancel' }
      ]
    );
  };

  const handleStatusChange = (status) => {
    setProcessingStatus(status);
    addLog(`Durum değişti: ${status}`, 'info');
  };

  const startOCRWorkflow = async () => {
    try {
      setIsProcessing(true);
      setOcrResult(null);
      setPerformanceMetrics(null);
      addLog('OCR iş akışı başlatılıyor...', 'info');

      const ocrReader = initializeOCR();
      
      // Start complete OCR workflow
      const workflowPromise = ocrReader.startCompleteOCRWorkflow({
        language: 'tr',
        confidence: 0.7,
        autoEnhance: true,
        showCamera: true
      });

      // Show camera for image capture
      setShowCamera(true);
      addLog('Kamera açılıyor...', 'info');

    } catch (error) {
      handleOCRError(error);
    }
  };

  const handleImageCaptured = async (imageData) => {
    try {
      addLog('Görüntü yakalandı, işleniyor...', 'info');
      
      const ocrReader = ocrReaderRef.current;
      if (!ocrReader) {
        throw new Error('OCR Reader başlatılmamış');
      }

      // Process the captured image through the workflow
      await ocrReader.processImageFromWorkflow(imageData);
      
    } catch (error) {
      handleOCRError(error);
    }
  };

  const testWithMockData = async () => {
    try {
      setIsProcessing(true);
      addLog('Mock veri ile test başlatılıyor...', 'info');

      const mockResult = {
        text: `TÜRKİYE CUMHURİYETİ
KİMLİK KARTI

T.C. KİMLİK NO
12345678901

ADI
MEHMET

SOYADI
YILMAZ

DOĞUM TARİHİ
15.06.1985`,
        confidence: 0.92,
        extractedFields: {
          tcNo: '12345678901',
          name: 'MEHMET',
          surname: 'YILMAZ'
        },
        performanceMetrics: {
          totalProcessingTime: 1250,
          imageProcessingTime: 450,
          ocrProcessingTime: 800,
          lastProcessedImageSize: { width: 1200, height: 800 }
        },
        workflow: {
          completed: true,
          totalTime: 1250,
          steps: ['initialize', 'capture', 'optimize', 'crop', 'ocr', 'extract_fields']
        }
      };

      // Simulate processing delay
      setTimeout(() => {
        handleOCRSuccess(mockResult);
      }, 2000);

    } catch (error) {
      handleOCRError(error);
    }
  };

  const resetOCR = () => {
    if (ocrReaderRef.current) {
      ocrReaderRef.current.reset();
    }
    setOcrResult(null);
    setPerformanceMetrics(null);
    setIsProcessing(false);
    setShowCamera(false);
    setProcessingStatus('');
    setLogs([]);
    addLog('OCR sıfırlandı', 'info');
  };

  const renderOCRResult = () => {
    if (!ocrResult) return null;

    return (
      <View style={styles.resultContainer}>
        <Text style={styles.resultTitle}>📄 OCR Sonucu</Text>
        
        {/* Extracted Fields */}
        <View style={styles.fieldsContainer}>
          <Text style={styles.fieldsTitle}>Çıkarılan Alanlar:</Text>
          {Object.entries(ocrResult.extractedFields).map(([key, value]) => (
            <View key={key} style={styles.fieldRow}>
              <Text style={styles.fieldKey}>{key.toUpperCase()}:</Text>
              <Text style={styles.fieldValue}>{value || 'Bulunamadı'}</Text>
            </View>
          ))}
        </View>

        {/* Performance Metrics */}
        {performanceMetrics && (
          <View style={styles.metricsContainer}>
            <Text style={styles.metricsTitle}>⚡ Performans Metrikleri:</Text>
            <Text style={styles.metricText}>
              Toplam Süre: {performanceMetrics.totalProcessingTime}ms
            </Text>
            <Text style={styles.metricText}>
              Görüntü İşleme: {performanceMetrics.imageProcessingTime}ms
            </Text>
            <Text style={styles.metricText}>
              OCR İşleme: {performanceMetrics.ocrProcessingTime}ms
            </Text>
            {performanceMetrics.lastProcessedImageSize && (
              <Text style={styles.metricText}>
                Görüntü Boyutu: {performanceMetrics.lastProcessedImageSize.width}x{performanceMetrics.lastProcessedImageSize.height}
              </Text>
            )}
          </View>
        )}

        {/* Raw JSON Result */}
        <View style={styles.jsonContainer}>
          <Text style={styles.jsonTitle}>🔧 JSON Sonuç:</Text>
          <ScrollView style={styles.jsonScroll} nestedScrollEnabled>
            <Text style={styles.jsonText}>
              {JSON.stringify(ocrResult, null, 2)}
            </Text>
          </ScrollView>
        </View>
      </View>
    );
  };

  const renderLogs = () => (
    <View style={styles.logsContainer}>
      <Text style={styles.logsTitle}>📋 İşlem Logları</Text>
      <ScrollView style={styles.logsScroll} nestedScrollEnabled>
        {logs.map(log => (
          <View key={log.id} style={[styles.logRow, styles[`log_${log.type}`]]}>
            <Text style={styles.logTimestamp}>{log.timestamp}</Text>
            <Text style={styles.logMessage}>{log.message}</Text>
          </View>
        ))}
        {logs.length === 0 && (
          <Text style={styles.noLogsText}>Henüz log kaydı yok</Text>
        )}
      </ScrollView>
    </View>
  );

  return (
    <SafeAreaView style={styles.container}>
      <ScrollView style={styles.scrollContainer} contentContainerStyle={styles.scrollContent}>
        {/* Header */}
        <View style={styles.header}>
          <Text style={styles.title}>🔍 OCR Test Ekranı</Text>
          <Text style={styles.subtitle}>Kimlik Belgesi Okuma Testi</Text>
        </View>

        {/* Status Display */}
        {processingStatus && (
          <View style={styles.statusContainer}>
            <Text style={styles.statusText}>Durum: {processingStatus}</Text>
          </View>
        )}

        {/* Action Buttons */}
        <View style={styles.buttonsContainer}>
          <TouchableOpacity
            style={[styles.button, styles.primaryButton, isProcessing && styles.disabledButton]}
            onPress={startOCRWorkflow}
            disabled={isProcessing}
          >
            {isProcessing ? (
              <ActivityIndicator color="#fff" size="small" />
            ) : (
              <Text style={styles.buttonText}>📷 Kimlik Oku</Text>
            )}
          </TouchableOpacity>

          <TouchableOpacity
            style={[styles.button, styles.secondaryButton, isProcessing && styles.disabledButton]}
            onPress={testWithMockData}
            disabled={isProcessing}
          >
            <Text style={styles.buttonText}>🧪 Mock Test</Text>
          </TouchableOpacity>

          <TouchableOpacity
            style={[styles.button, styles.resetButton]}
            onPress={resetOCR}
          >
            <Text style={styles.buttonText}>🔄 Sıfırla</Text>
          </TouchableOpacity>
        </View>

        {/* Results */}
        {renderOCRResult()}

        {/* Logs */}
        {renderLogs()}
      </ScrollView>

      {/* Camera Modal */}
      <Modal
        visible={showCamera}
        animationType="slide"
        presentationStyle="fullScreen"
      >
        <SafeAreaView style={styles.cameraModal}>
          <View style={styles.cameraHeader}>
            <Text style={styles.cameraTitle}>Kimlik Belgesi Fotoğrafı</Text>
            <TouchableOpacity
              style={styles.closeButton}
              onPress={() => setShowCamera(false)}
            >
              <Text style={styles.closeButtonText}>✕</Text>
            </TouchableOpacity>
          </View>
          
          <OCRCamera
            onImageCaptured={handleImageCaptured}
            onError={handleOCRError}
            style={styles.camera}
          />
        </SafeAreaView>
      </Modal>
    </SafeAreaView>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#f5f5f5',
  },
  scrollContainer: {
    flex: 1,
  },
  scrollContent: {
    padding: 16,
  },
  header: {
    alignItems: 'center',
    marginBottom: 24,
    paddingVertical: 16,
    backgroundColor: '#fff',
    borderRadius: 12,
    shadowColor: '#000',
    shadowOffset: { width: 0, height: 2 },
    shadowOpacity: 0.1,
    shadowRadius: 4,
    elevation: 3,
  },
  title: {
    fontSize: 24,
    fontWeight: 'bold',
    color: '#333',
    marginBottom: 4,
  },
  subtitle: {
    fontSize: 16,
    color: '#666',
  },
  statusContainer: {
    backgroundColor: '#e3f2fd',
    padding: 12,
    borderRadius: 8,
    marginBottom: 16,
    borderLeftWidth: 4,
    borderLeftColor: '#2196f3',
  },
  statusText: {
    fontSize: 14,
    color: '#1976d2',
    fontWeight: '500',
  },
  buttonsContainer: {
    marginBottom: 24,
  },
  button: {
    paddingVertical: 16,
    paddingHorizontal: 24,
    borderRadius: 12,
    marginBottom: 12,
    alignItems: 'center',
    shadowColor: '#000',
    shadowOffset: { width: 0, height: 2 },
    shadowOpacity: 0.1,
    shadowRadius: 4,
    elevation: 3,
  },
  primaryButton: {
    backgroundColor: '#4caf50',
  },
  secondaryButton: {
    backgroundColor: '#2196f3',
  },
  resetButton: {
    backgroundColor: '#ff9800',
  },
  disabledButton: {
    opacity: 0.6,
  },
  buttonText: {
    color: '#fff',
    fontSize: 16,
    fontWeight: '600',
  },
  resultContainer: {
    backgroundColor: '#fff',
    borderRadius: 12,
    padding: 16,
    marginBottom: 16,
    shadowColor: '#000',
    shadowOffset: { width: 0, height: 2 },
    shadowOpacity: 0.1,
    shadowRadius: 4,
    elevation: 3,
  },
  resultTitle: {
    fontSize: 18,
    fontWeight: 'bold',
    color: '#333',
    marginBottom: 16,
  },
  fieldsContainer: {
    marginBottom: 16,
  },
  fieldsTitle: {
    fontSize: 16,
    fontWeight: '600',
    color: '#333',
    marginBottom: 8,
  },
  fieldRow: {
    flexDirection: 'row',
    paddingVertical: 4,
    borderBottomWidth: 1,
    borderBottomColor: '#eee',
  },
  fieldKey: {
    fontSize: 14,
    fontWeight: '500',
    color: '#666',
    width: 80,
  },
  fieldValue: {
    fontSize: 14,
    color: '#333',
    flex: 1,
  },
  metricsContainer: {
    backgroundColor: '#f8f9fa',
    padding: 12,
    borderRadius: 8,
    marginBottom: 16,
  },
  metricsTitle: {
    fontSize: 16,
    fontWeight: '600',
    color: '#333',
    marginBottom: 8,
  },
  metricText: {
    fontSize: 14,
    color: '#666',
    marginBottom: 4,
  },
  jsonContainer: {
    backgroundColor: '#f8f9fa',
    borderRadius: 8,
    padding: 12,
  },
  jsonTitle: {
    fontSize: 16,
    fontWeight: '600',
    color: '#333',
    marginBottom: 8,
  },
  jsonScroll: {
    maxHeight: 200,
  },
  jsonText: {
    fontSize: 12,
    fontFamily: 'Courier',
    color: '#333',
    lineHeight: 16,
  },
  logsContainer: {
    backgroundColor: '#fff',
    borderRadius: 12,
    padding: 16,
    shadowColor: '#000',
    shadowOffset: { width: 0, height: 2 },
    shadowOpacity: 0.1,
    shadowRadius: 4,
    elevation: 3,
  },
  logsTitle: {
    fontSize: 18,
    fontWeight: 'bold',
    color: '#333',
    marginBottom: 12,
  },
  logsScroll: {
    maxHeight: 200,
  },
  logRow: {
    paddingVertical: 8,
    paddingHorizontal: 12,
    marginBottom: 4,
    borderRadius: 6,
  },
  log_info: {
    backgroundColor: '#e3f2fd',
  },
  log_success: {
    backgroundColor: '#e8f5e8',
  },
  log_error: {
    backgroundColor: '#ffebee',
  },
  logTimestamp: {
    fontSize: 12,
    color: '#666',
    marginBottom: 2,
  },
  logMessage: {
    fontSize: 14,
    color: '#333',
  },
  noLogsText: {
    fontSize: 14,
    color: '#999',
    textAlign: 'center',
    fontStyle: 'italic',
  },
  cameraModal: {
    flex: 1,
    backgroundColor: '#000',
  },
  cameraHeader: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    padding: 16,
    backgroundColor: 'rgba(0,0,0,0.8)',
  },
  cameraTitle: {
    fontSize: 18,
    fontWeight: '600',
    color: '#fff',
  },
  closeButton: {
    width: 40,
    height: 40,
    borderRadius: 20,
    backgroundColor: 'rgba(255,255,255,0.2)',
    justifyContent: 'center',
    alignItems: 'center',
  },
  closeButtonText: {
    fontSize: 18,
    color: '#fff',
    fontWeight: 'bold',
  },
  camera: {
    flex: 1,
  },
});

export default OCRTestScreen;
