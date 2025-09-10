/**
 * NFC Demo Screen - Day 4 Demo Application
 * NFC Reader testing with mock data and JSON result display
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
  SafeAreaView,
  Dimensions
} from 'react-native';

import { NFCReader } from '../modules/nfc/NFCReader';
import { Logger } from '../utils/logger';

const { width, height } = Dimensions.get('window');

const NFCDemoScreen = () => {
  const [isProcessing, setIsProcessing] = useState(false);
  const [nfcResult, setNfcResult] = useState(null);
  const [processingStatus, setProcessingStatus] = useState('');
  const [logs, setLogs] = useState([]);
  const [isNFCSupported, setIsNFCSupported] = useState(null);
  
  const nfcReaderRef = useRef(null);

  // Initialize NFC Reader with callbacks
  const initializeNFC = () => {
    if (!nfcReaderRef.current) {
      nfcReaderRef.current = new NFCReader({
        onSuccess: handleNFCSuccess,
        onError: handleNFCError,
        onStatusChange: handleStatusChange,
        onProgress: handleProgress
      });
    }
    return nfcReaderRef.current;
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

  const handleNFCSuccess = (result) => {
    addLog('NFC okuma başarıyla tamamlandı', 'success');
    setNfcResult(result);
    setIsProcessing(false);
    
    Alert.alert(
      'NFC Başarılı! 🎉',
      `Kart okundu: ${result.name} ${result.surname}\nT.C. No: ${result.idNumber}`,
      [{ text: 'Tamam', style: 'default' }]
    );
  };

  const handleNFCError = (error) => {
    addLog(`NFC hatası: ${error.message}`, 'error');
    setIsProcessing(false);
    
    Alert.alert(
      'NFC Hatası ❌',
      error.message,
      [
        { text: 'Tekrar Dene', onPress: startNFCReading },
        { text: 'İptal', style: 'cancel' }
      ]
    );
  };

  const handleStatusChange = (newStatus, oldStatus) => {
    setProcessingStatus(newStatus);
    addLog(`Durum değişti: ${oldStatus} → ${newStatus}`, 'info');
  };

  const handleProgress = (message) => {
    addLog(`İlerleme: ${message}`, 'progress');
  };

  const startNFCReading = async () => {
    try {
      setIsProcessing(true);
      setNfcResult(null);
      addLog('NFC okuma işlemi başlatılıyor...', 'info');

      const nfcReader = initializeNFC();
      
      // Initialize NFC
      const isInitialized = await nfcReader.startNFC();
      if (!isInitialized) {
        return; // Error handled by callback
      }

      setIsNFCSupported(true);
      addLog('NFC başarıyla başlatıldı', 'success');

      // Start reading NFC data
      await nfcReader.readNFCData();

    } catch (error) {
      handleNFCError(error);
    }
  };

  const testNFCSupport = async () => {
    try {
      setIsProcessing(true);
      addLog('NFC desteği kontrol ediliyor...', 'info');

      const nfcReader = initializeNFC();
      const isSupported = await nfcReader.startNFC();
      
      setIsNFCSupported(isSupported);
      
      if (isSupported) {
        addLog('✅ NFC destekleniyor ve etkin', 'success');
        Alert.alert('NFC Desteği', 'NFC destekleniyor ve etkin! 📱', [{ text: 'Tamam' }]);
      } else {
        addLog('❌ NFC desteklenmiyor veya etkin değil', 'error');
      }
      
      setIsProcessing(false);

    } catch (error) {
      handleNFCError(error);
    }
  };

  const stopNFC = async () => {
    try {
      if (nfcReaderRef.current) {
        await nfcReaderRef.current.stopNFC();
        addLog('NFC işlemleri durduruldu', 'info');
      }
      setIsProcessing(false);
      setProcessingStatus('');
    } catch (error) {
      addLog(`NFC durdurma hatası: ${error.message}`, 'error');
    }
  };

  const resetNFC = () => {
    if (nfcReaderRef.current) {
      nfcReaderRef.current.reset();
    }
    setNfcResult(null);
    setIsProcessing(false);
    setProcessingStatus('');
    setIsNFCSupported(null);
    setLogs([]);
    addLog('NFC sıfırlandı', 'info');
  };

  const renderNFCResult = () => {
    if (!nfcResult) return null;

    return (
      <View style={styles.resultContainer}>
        <Text style={styles.resultTitle}>📱 NFC Okuma Sonucu</Text>
        
        {/* Personal Information */}
        <View style={styles.personalInfoContainer}>
          <Text style={styles.sectionTitle}>👤 Kişisel Bilgiler:</Text>
          <View style={styles.fieldRow}>
            <Text style={styles.fieldKey}>Ad:</Text>
            <Text style={styles.fieldValue}>{nfcResult.name}</Text>
          </View>
          <View style={styles.fieldRow}>
            <Text style={styles.fieldKey}>Soyad:</Text>
            <Text style={styles.fieldValue}>{nfcResult.surname}</Text>
          </View>
          <View style={styles.fieldRow}>
            <Text style={styles.fieldKey}>T.C. No:</Text>
            <Text style={styles.fieldValue}>{nfcResult.idNumber}</Text>
          </View>
          <View style={styles.fieldRow}>
            <Text style={styles.fieldKey}>Doğum Tarihi:</Text>
            <Text style={styles.fieldValue}>{nfcResult.birthDate}</Text>
          </View>
          <View style={styles.fieldRow}>
            <Text style={styles.fieldKey}>Doğum Yeri:</Text>
            <Text style={styles.fieldValue}>{nfcResult.birthPlace}</Text>
          </View>
        </View>

        {/* NFC Technical Data */}
        {nfcResult.nfcData && (
          <View style={styles.technicalContainer}>
            <Text style={styles.sectionTitle}>🔧 NFC Teknik Bilgiler:</Text>
            <View style={styles.fieldRow}>
              <Text style={styles.fieldKey}>UID:</Text>
              <Text style={styles.fieldValue}>{nfcResult.nfcData.uid}</Text>
            </View>
            <View style={styles.fieldRow}>
              <Text style={styles.fieldKey}>Teknoloji:</Text>
              <Text style={styles.fieldValue}>{nfcResult.nfcData.technology}</Text>
            </View>
            <View style={styles.fieldRow}>
              <Text style={styles.fieldKey}>Sinyal Gücü:</Text>
              <Text style={styles.fieldValue}>{nfcResult.nfcData.signalStrength}%</Text>
            </View>
            <View style={styles.fieldRow}>
              <Text style={styles.fieldKey}>Okuma Zamanı:</Text>
              <Text style={styles.fieldValue}>
                {new Date(nfcResult.nfcData.readTime).toLocaleString('tr-TR')}
              </Text>
            </View>
          </View>
        )}

        {/* Verification Status */}
        {nfcResult.verification && (
          <View style={styles.verificationContainer}>
            <Text style={styles.sectionTitle}>✅ Doğrulama Durumu:</Text>
            <View style={styles.fieldRow}>
              <Text style={styles.fieldKey}>Geçerli:</Text>
              <Text style={[styles.fieldValue, styles.validStatus]}>
                {nfcResult.verification.isValid ? '✅ Geçerli' : '❌ Geçersiz'}
              </Text>
            </View>
            <View style={styles.fieldRow}>
              <Text style={styles.fieldKey}>Checksum:</Text>
              <Text style={styles.fieldValue}>{nfcResult.verification.checksum}</Text>
            </View>
            <View style={styles.fieldRow}>
              <Text style={styles.fieldKey}>Dijital İmza:</Text>
              <Text style={styles.fieldValue}>{nfcResult.verification.digitalSignature}</Text>
            </View>
          </View>
        )}

        {/* Raw JSON Result */}
        <View style={styles.jsonContainer}>
          <Text style={styles.jsonTitle}>🔧 Ham JSON Verisi:</Text>
          <ScrollView style={styles.jsonScroll} nestedScrollEnabled>
            <Text style={styles.jsonText}>
              {JSON.stringify(nfcResult, null, 2)}
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

  const renderSupportStatus = () => {
    if (isNFCSupported === null) return null;
    
    return (
      <View style={[styles.supportContainer, isNFCSupported ? styles.supportedContainer : styles.unsupportedContainer]}>
        <Text style={styles.supportText}>
          {isNFCSupported ? '✅ NFC Destekleniyor' : '❌ NFC Desteklenmiyor'}
        </Text>
      </View>
    );
  };

  return (
    <SafeAreaView style={styles.container}>
      <ScrollView style={styles.scrollContainer} contentContainerStyle={styles.scrollContent}>
        {/* Header */}
        <View style={styles.header}>
          <Text style={styles.title}>📱 NFC Test Ekranı</Text>
          <Text style={styles.subtitle}>Kimlik Kartı NFC Okuma Testi</Text>
        </View>

        {/* NFC Support Status */}
        {renderSupportStatus()}

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
            onPress={startNFCReading}
            disabled={isProcessing}
          >
            {isProcessing ? (
              <ActivityIndicator color="#fff" size="small" />
            ) : (
              <Text style={styles.buttonText}>📱 NFC Oku</Text>
            )}
          </TouchableOpacity>

          <TouchableOpacity
            style={[styles.button, styles.secondaryButton, isProcessing && styles.disabledButton]}
            onPress={testNFCSupport}
            disabled={isProcessing}
          >
            <Text style={styles.buttonText}>🔍 NFC Desteği Kontrol Et</Text>
          </TouchableOpacity>

          <TouchableOpacity
            style={[styles.button, styles.warningButton]}
            onPress={stopNFC}
          >
            <Text style={styles.buttonText}>⏹️ NFC Durdur</Text>
          </TouchableOpacity>

          <TouchableOpacity
            style={[styles.button, styles.resetButton]}
            onPress={resetNFC}
          >
            <Text style={styles.buttonText}>🔄 Sıfırla</Text>
          </TouchableOpacity>
        </View>

        {/* Results */}
        {renderNFCResult()}

        {/* Logs */}
        {renderLogs()}
      </ScrollView>
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
  supportContainer: {
    padding: 12,
    borderRadius: 8,
    marginBottom: 16,
    alignItems: 'center',
  },
  supportedContainer: {
    backgroundColor: '#e8f5e8',
    borderColor: '#4caf50',
    borderWidth: 1,
  },
  unsupportedContainer: {
    backgroundColor: '#ffebee',
    borderColor: '#f44336',
    borderWidth: 1,
  },
  supportText: {
    fontSize: 16,
    fontWeight: '600',
    color: '#333',
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
    backgroundColor: '#2196f3',
  },
  secondaryButton: {
    backgroundColor: '#4caf50',
  },
  warningButton: {
    backgroundColor: '#ff9800',
  },
  resetButton: {
    backgroundColor: '#9e9e9e',
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
  personalInfoContainer: {
    marginBottom: 16,
    padding: 12,
    backgroundColor: '#f8f9fa',
    borderRadius: 8,
  },
  technicalContainer: {
    marginBottom: 16,
    padding: 12,
    backgroundColor: '#e3f2fd',
    borderRadius: 8,
  },
  verificationContainer: {
    marginBottom: 16,
    padding: 12,
    backgroundColor: '#e8f5e8',
    borderRadius: 8,
  },
  sectionTitle: {
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
    width: 120,
  },
  fieldValue: {
    fontSize: 14,
    color: '#333',
    flex: 1,
  },
  validStatus: {
    fontWeight: '600',
    color: '#4caf50',
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
  log_progress: {
    backgroundColor: '#fff3e0',
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
});

export default NFCDemoScreen;
