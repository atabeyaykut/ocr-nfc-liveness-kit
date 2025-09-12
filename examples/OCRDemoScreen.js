// OCR Demo Screen - Runnable demo for OCR workflow
import React, { useState, useCallback } from 'react';
import {
  View,
  StyleSheet,
  Text,
  TouchableOpacity,
  ScrollView,
  Alert,
  SafeAreaView,
  Modal,
  ActivityIndicator,
} from 'react-native';
import OCRReader from '../modules/ocr/OCRReader';
import OCRCamera from '../modules/ocr/OCRCamera';
import Logger from '../utils/logger';
import { OCR_STATUS } from '../modules/ocr/types';

const OCRDemoScreen = () => {
  const [ocrReader] = useState(
    () =>
      new OCRReader({
        onSuccess: handleOCRSuccess,
        onError: handleOCRError,
        onStatusChange: handleStatusChange,
      })
  );

  const [isOCRActive, setIsOCRActive] = useState(false);
  const [showCamera, setShowCamera] = useState(false);
  const [extractedText, setExtractedText] = useState(null);
  const [extractedFields, setExtractedFields] = useState({});
  const [isProcessing, setIsProcessing] = useState(false);
  const [status, setStatus] = useState(OCR_STATUS.IDLE);
  const [logs, setLogs] = useState([]);

  function handleOCRSuccess(result) {
    Logger.info('OCR Success callback triggered', result);
    setExtractedText(result);

    // Extract specific fields from the text
    const fields = {
      tcNo: ocrReader.extractField(result.text, 'tc_no'),
      name: ocrReader.extractField(result.text, 'name'),
      surname: ocrReader.extractField(result.text, 'surname'),
    };

    setExtractedFields(fields);
    addLog(`✅ OCR Başarılı: ${result.text.substring(0, 50)}...`);
    setShowCamera(false);
    setIsProcessing(false);
  }

  function handleOCRError(error) {
    Logger.error('OCR Error callback triggered', error);
    addLog(`❌ Hata: ${error.message}`);
    Alert.alert('OCR Hatası', error.message);
    setIsProcessing(false);
  }

  function handleStatusChange(newStatus, oldStatus) {
    Logger.info('OCR Status changed', { from: oldStatus, to: newStatus });
    setStatus(newStatus);
    addLog(`📊 Durum: ${oldStatus} → ${newStatus}`);
  }

  const addLog = useCallback((message) => {
    const timestamp = new Date().toLocaleTimeString('tr-TR');
    setLogs((prev) => [...prev.slice(-9), `[${timestamp}] ${message}`]);
  }, []);

  const startOCRSession = async () => {
    try {
      setIsProcessing(true);
      addLog('🚀 OCR sistemi başlatılıyor...');

      await ocrReader.startOCR();
      setIsOCRActive(true);
      addLog('✅ OCR sistemi hazır');

      Alert.alert(
        'Başarılı',
        'OCR sistemi başlatıldı. Şimdi kamera ile fotoğraf çekebilirsiniz.'
      );
    } catch (error) {
      addLog(`❌ OCR başlatma hatası: ${error.message}`);
      Alert.alert('Hata', `OCR başlatılamadı: ${error.message}`);
    } finally {
      setIsProcessing(false);
    }
  };

  const openCamera = () => {
    if (!isOCRActive) {
      Alert.alert('Uyarı', 'Önce OCR sistemini başlatın');
      return;
    }
    setShowCamera(true);
    addLog('📷 Kamera açılıyor...');
  };

  const handleImageCaptured = async (photo) => {
    try {
      setIsProcessing(true);
      addLog('📸 Fotoğraf çekildi, OCR işlemi başlıyor...');

      // OCR processing will be handled by the success callback
      await ocrReader.extractText(photo.uri, {
        language: 'tr',
        confidence: 0.7,
        enhanceImage: true,
      });
    } catch (error) {
      addLog(`❌ OCR işlem hatası: ${error.message}`);
      Alert.alert('OCR Hatası', error.message);
      setIsProcessing(false);
    }
  };

  const handleCameraError = (error) => {
    addLog(`❌ Kamera hatası: ${error.message}`);
    Alert.alert('Kamera Hatası', error.message);
    setShowCamera(false);
  };

  const testWithMockData = async () => {
    try {
      setIsProcessing(true);
      addLog('🧪 Mock veri ile test başlatılıyor...');

      if (ocrReader.getStatus() === OCR_STATUS.IDLE) {
        await ocrReader.startOCR();
        setIsOCRActive(true);
      }

      // Simulate capturing and processing
      const mockImageUri = await ocrReader.captureImage();
      addLog('📸 Mock fotoğraf çekildi');

      // Mock OCR result for demo
      const mockResult = {
        text: 'TÜRKİYE CUMHURİYETİ KİMLİK KARTI AD: MEHMET SOYAD: YILMAZ T.C. KİMLİK NO: 12345678901',
        confidence: 0.92,
        blocks: [
          { text: 'TÜRKİYE CUMHURİYETİ KİMLİK KARTI', confidence: 0.95 },
          { text: 'AD: MEHMET', confidence: 0.9 },
          { text: 'SOYAD: YILMAZ', confidence: 0.88 },
          { text: 'T.C. KİMLİK NO: 12345678901', confidence: 0.92 },
        ],
        language: 'tr',
        processingTime: 1500,
        timestamp: Date.now(),
      };

      handleOCRSuccess(mockResult);
    } catch (error) {
      addLog(`❌ Mock test hatası: ${error.message}`);
      Alert.alert('Test Hatası', error.message);
      setIsProcessing(false);
    }
  };

  const resetOCR = () => {
    ocrReader.reset();
    setIsOCRActive(false);
    setExtractedText(null);
    setExtractedFields({});
    setShowCamera(false);
    setIsProcessing(false);
    addLog('🔄 OCR sistemi sıfırlandı');
  };

  const clearLogs = () => {
    setLogs([]);
  };

  return (
    <SafeAreaView style={styles.container}>
      <ScrollView style={styles.scrollView}>
        {/* Header */}
        <View style={styles.header}>
          <Text style={styles.title}>OCR Demo Uygulaması</Text>
          <Text style={styles.subtitle}>
            Durum:{' '}
            <Text style={[styles.status, { color: getStatusColor(status) }]}>
              {getStatusText(status)}
            </Text>
          </Text>
        </View>

        {/* Control Buttons */}
        <View style={styles.buttonContainer}>
          <TouchableOpacity
            style={[
              styles.button,
              styles.primaryButton,
              isProcessing && styles.buttonDisabled,
            ]}
            onPress={startOCRSession}
            disabled={isProcessing || isOCRActive}
          >
            <Text style={styles.buttonText}>
              {isOCRActive ? '✅ OCR Aktif' : '🚀 OCR Başlat'}
            </Text>
          </TouchableOpacity>

          <TouchableOpacity
            style={[
              styles.button,
              styles.cameraButton,
              (!isOCRActive || isProcessing) && styles.buttonDisabled,
            ]}
            onPress={openCamera}
            disabled={!isOCRActive || isProcessing}
          >
            <Text style={styles.buttonText}>📷 Kamera Aç</Text>
          </TouchableOpacity>

          <TouchableOpacity
            style={[
              styles.button,
              styles.testButton,
              isProcessing && styles.buttonDisabled,
            ]}
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

        {/* Processing Indicator */}
        {isProcessing && (
          <View style={styles.processingContainer}>
            <ActivityIndicator size="large" color="#007AFF" />
            <Text style={styles.processingText}>İşlem devam ediyor...</Text>
          </View>
        )}

        {/* Extracted Text Results */}
        {extractedText && (
          <View style={styles.resultContainer}>
            <Text style={styles.resultTitle}>📄 Çıkarılan Metin</Text>
            <ScrollView style={styles.textContainer} nestedScrollEnabled>
              <Text style={styles.extractedText}>{extractedText.text}</Text>
            </ScrollView>

            <View style={styles.metaInfo}>
              <Text style={styles.metaText}>
                Güven: {(extractedText.confidence * 100).toFixed(1)}% |
                {extractedText.blocks?.length || 0} | Süre:{' '}
                {extractedText.processingTime}ms
              </Text>
            </View>
          </View>
        )}

        {/* Extracted Fields */}
        {Object.keys(extractedFields).length > 0 && (
          <View style={styles.fieldsContainer}>
            <Text style={styles.fieldsTitle}>🏷️ Çıkarılan Alanlar</Text>
            {extractedFields.tcNo && (
              <View style={styles.fieldRow}>
                <Text style={styles.fieldLabel}>T.C. Kimlik No:</Text>
                <Text style={styles.fieldValue}>{extractedFields.tcNo}</Text>
              </View>
            )}
            {extractedFields.name && (
              <View style={styles.fieldRow}>
                <Text style={styles.fieldLabel}>Ad:</Text>
                <Text style={styles.fieldValue}>{extractedFields.name}</Text>
              </View>
            )}
            {extractedFields.surname && (
              <View style={styles.fieldRow}>
                <Text style={styles.fieldLabel}>Soyad:</Text>
                <Text style={styles.fieldValue}>{extractedFields.surname}</Text>
              </View>
            )}
          </View>
        )}

        {/* Logs */}
        <View style={styles.logsContainer}>
          <View style={styles.logsHeader}>
            <Text style={styles.logsTitle}>📋 İşlem Logları</Text>
            <TouchableOpacity onPress={clearLogs} style={styles.clearButton}>
              <Text style={styles.clearButtonText}>Temizle</Text>
            </TouchableOpacity>
          </View>
          <ScrollView style={styles.logsScrollView} nestedScrollEnabled>
            {logs.map((log, index) => (
              <Text key={index} style={styles.logText}>
                {log}
              </Text>
            ))}
            {logs.length === 0 && (
              <Text style={styles.emptyLogsText}>Henüz log kaydı yok</Text>
            )}
          </ScrollView>
        </View>
      </ScrollView>

      {/* Camera Modal */}
      <Modal
        visible={showCamera}
        animationType="slide"
        onRequestClose={() => setShowCamera(false)}
      >
        <OCRCamera
          onImageCaptured={handleImageCaptured}
          onError={handleCameraError}
          guidanceText="Kimlik kartınızı çerçeve içine yerleştirin"
        />
        <TouchableOpacity
          style={styles.closeCameraButton}
          onPress={() => setShowCamera(false)}
        >
          <Text style={styles.closeCameraText}>✕ Kapat</Text>
        </TouchableOpacity>
      </Modal>
    </SafeAreaView>
  );
};

// Helper functions
const getStatusColor = (status) => {
  switch (status) {
    case OCR_STATUS.IDLE:
      return '#666';
    case OCR_STATUS.INITIALIZING:
      return '#FF9500';
    case OCR_STATUS.READY:
      return '#34C759';
    case OCR_STATUS.CAPTURING:
      return '#007AFF';
    case OCR_STATUS.PROCESSING:
      return '#FF9500';
    case OCR_STATUS.SUCCESS:
      return '#34C759';
    case OCR_STATUS.ERROR:
      return '#FF3B30';
    default:
      return '#666';
  }
};

const getStatusText = (status) => {
  switch (status) {
    case OCR_STATUS.IDLE:
      return 'Beklemede';
    case OCR_STATUS.INITIALIZING:
      return 'Başlatılıyor';
    case OCR_STATUS.READY:
      return 'Hazır';
    case OCR_STATUS.CAPTURING:
      return 'Fotoğraf Çekiliyor';
    case OCR_STATUS.PROCESSING:
      return 'İşleniyor';
    case OCR_STATUS.SUCCESS:
      return 'Başarılı';
    case OCR_STATUS.ERROR:
      return 'Hata';
    default:
      return 'Bilinmiyor';
  }
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#f5f5f5',
  },
  scrollView: {
    flex: 1,
  },
  header: {
    backgroundColor: '#fff',
    padding: 20,
    borderBottomWidth: 1,
    borderBottomColor: '#e0e0e0',
  },
  title: {
    fontSize: 24,
    fontWeight: 'bold',
    color: '#333',
    textAlign: 'center',
  },
  subtitle: {
    fontSize: 16,
    color: '#666',
    textAlign: 'center',
    marginTop: 8,
  },
  status: {
    fontWeight: 'bold',
  },
  buttonContainer: {
    flexDirection: 'row',
    flexWrap: 'wrap',
    justifyContent: 'space-around',
    padding: 20,
    backgroundColor: '#fff',
    marginTop: 10,
  },
  button: {
    paddingHorizontal: 16,
    paddingVertical: 12,
    borderRadius: 8,
    minWidth: '45%',
    marginBottom: 10,
  },
  primaryButton: {
    backgroundColor: '#007AFF',
  },
  cameraButton: {
    backgroundColor: '#34C759',
  },
  testButton: {
    backgroundColor: '#FF9500',
  },
  resetButton: {
    backgroundColor: '#FF3B30',
  },
  buttonDisabled: {
    backgroundColor: '#ccc',
  },
  buttonText: {
    color: '#fff',
    fontSize: 14,
    fontWeight: 'bold',
    textAlign: 'center',
  },
  processingContainer: {
    backgroundColor: '#fff',
    padding: 20,
    alignItems: 'center',
    marginTop: 10,
  },
  processingText: {
    marginTop: 10,
    fontSize: 16,
    color: '#666',
  },
  resultContainer: {
    backgroundColor: '#fff',
    margin: 10,
    padding: 15,
    borderRadius: 8,
  },
  resultTitle: {
    fontSize: 18,
    fontWeight: 'bold',
    marginBottom: 10,
    color: '#333',
  },
  textContainer: {
    maxHeight: 120,
    backgroundColor: '#f8f8f8',
    padding: 10,
    borderRadius: 5,
    marginBottom: 10,
  },
  extractedText: {
    fontSize: 14,
    color: '#333',
    lineHeight: 20,
  },
  metaInfo: {
    borderTopWidth: 1,
    borderTopColor: '#e0e0e0',
    paddingTop: 10,
  },
  metaText: {
    fontSize: 12,
    color: '#666',
  },
  fieldsContainer: {
    backgroundColor: '#fff',
    margin: 10,
    padding: 15,
    borderRadius: 8,
  },
  fieldsTitle: {
    fontSize: 18,
    fontWeight: 'bold',
    marginBottom: 10,
    color: '#333',
  },
  fieldRow: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    paddingVertical: 8,
    borderBottomWidth: 1,
    borderBottomColor: '#f0f0f0',
  },
  fieldLabel: {
    fontSize: 14,
    color: '#666',
    fontWeight: '500',
  },
  fieldValue: {
    fontSize: 14,
    color: '#333',
    fontWeight: 'bold',
  },
  logsContainer: {
    backgroundColor: '#fff',
    margin: 10,
    borderRadius: 8,
    maxHeight: 200,
  },
  logsHeader: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    padding: 15,
    borderBottomWidth: 1,
    borderBottomColor: '#e0e0e0',
  },
  logsTitle: {
    fontSize: 16,
    fontWeight: 'bold',
    color: '#333',
  },
  clearButton: {
    paddingHorizontal: 12,
    paddingVertical: 6,
    backgroundColor: '#FF3B30',
    borderRadius: 4,
  },
  clearButtonText: {
    color: '#fff',
    fontSize: 12,
    fontWeight: 'bold',
  },
  logsScrollView: {
    maxHeight: 120,
    padding: 15,
  },
  logText: {
    fontSize: 12,
    color: '#333',
    marginBottom: 4,
    fontFamily: 'monospace',
  },
  emptyLogsText: {
    fontSize: 14,
    color: '#999',
    textAlign: 'center',
    fontStyle: 'italic',
  },
  closeCameraButton: {
    position: 'absolute',
    top: 50,
    right: 20,
    backgroundColor: 'rgba(0,0,0,0.7)',
    paddingHorizontal: 15,
    paddingVertical: 10,
    borderRadius: 20,
  },
  closeCameraText: {
    color: '#fff',
    fontSize: 16,
    fontWeight: 'bold',
  },
});

export default OCRDemoScreen;
