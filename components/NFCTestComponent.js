/**
 * NFC Test Component - Real Device Flow
 * Uses the actual NFCReaderModule for live NFC interactions
 */

import React, { useState, useEffect, useRef, useCallback } from 'react';
import {
  View,
  Text,
  TouchableOpacity,
  StyleSheet,
  ScrollView,
  Alert,
  ActivityIndicator,
  Vibration,
} from 'react-native';
import NfcManager from 'react-native-nfc-manager';
import { NFCReaderModule } from '../modules/nfc/NFCReaderModule';

const NFCTestComponent = () => {
  const [isScanning, setIsScanning] = useState(false);
  const [nfcResult, setNfcResult] = useState(null);
  const [error, setError] = useState(null);
  const [logs, setLogs] = useState([]);
  const [nfcSupported, setNfcSupported] = useState(true);
  const [nfcEnabled, setNfcEnabled] = useState(true);
  const [checkingNfc, setCheckingNfc] = useState(true);

  const nfcModuleRef = useRef(null);
  if (!nfcModuleRef.current) {
    nfcModuleRef.current = new NFCReaderModule();
  }
  const nfcModule = nfcModuleRef.current;

  const addLog = useCallback((message) => {
    const timestamp = new Date().toLocaleTimeString('tr-TR');
    setLogs((prev) => [`[${timestamp}] ${message}`, ...prev].slice(0, 50));
    console.log('[NFC TEST]', message);
  }, []);

  const checkNfcStatus = useCallback(async () => {
    setCheckingNfc(true);
    try {
      const supported = await NfcManager.isSupported();
      setNfcSupported(supported);

      if (!supported) {
        setError('Bu cihaz NFC desteklemiyor.');
        return;
      }

      const enabled = await NfcManager.isEnabled();
      setNfcEnabled(enabled);

      if (!enabled) {
        setError('NFC kapalı. Lütfen cihaz ayarlarından etkinleştirin.');
      } else {
        setError(null);
      }
    } catch (statusError) {
      console.error('[NFC TEST] Status check failed:', statusError);
      setError('NFC durumu kontrol edilirken bir hata oluştu.');
    } finally {
      setCheckingNfc(false);
    }
  }, []);

  useEffect(() => {
    checkNfcStatus();
  }, [checkNfcStatus]);

  useEffect(() => {
    const module = nfcModule;

    module.onNFCResult((result) => {
      setNfcResult(result);
      setIsScanning(false);
      addLog('NFC okuma başarıyla tamamlandı.');
      Vibration.vibrate([80, 120, 80]);
    });

    module.onNFCError((errorResponse) => {
      setError(errorResponse.error);
      setIsScanning(false);
      addLog(`Hata: ${errorResponse.error}`);
      Alert.alert('NFC Hatası', errorResponse.error);
    });

    module.onNFCStarted(() => {
      setIsScanning(true);
      addLog('NFC dinleme modu başlatıldı.');
    });

    module.onNFCStopped(() => {
      setIsScanning(false);
      addLog('NFC dinleme modu durduruldu.');
    });

    return () => {
      module.stopNFC().catch(() => { });
    };
  }, [nfcModule, addLog]);

  const startScanning = useCallback(async () => {
    if (!nfcSupported) {
      Alert.alert('NFC Desteklenmiyor', 'Bu cihazda NFC kullanılamıyor.');
      return;
    }

    if (!nfcEnabled) {
      Alert.alert('NFC Kapalı', 'Lütfen cihaz ayarlarından NFC\'yi etkinleştirin.');
      return;
    }

    setNfcResult(null);
    setError(null);
    addLog('NFC okuma başlatılıyor...');

    try {
      await nfcModule.startNFC();
    } catch (startError) {
      console.error('[NFC TEST] start error:', startError);
      setError(startError.message);
      addLog(`Başlatma hatası: ${startError.message}`);
    }
  }, [nfcModule, nfcSupported, nfcEnabled, addLog]);

  const stopScanning = useCallback(async () => {
    addLog('NFC dinlemesi manuel olarak durduruluyor...');
    try {
      await nfcModule.stopNFC();
    } catch (stopError) {
      console.error('[NFC TEST] stop error:', stopError);
      addLog(`Durdurma hatası: ${stopError.message}`);
    }
  }, [nfcModule, addLog]);

  const parsedFields = Object.entries(nfcResult?.parsedFields || {});

  return (
    <View style={styles.container}>
      <Text style={styles.title}>📡 NFC Test Modülü</Text>
      <Text style={styles.subtitle}>Gerçek cihaz üzerinden NFC okuma</Text>

      <ScrollView style={styles.scrollView} contentContainerStyle={styles.scrollContent}>
        <View style={styles.statusCard}>
          <Text style={styles.sectionTitle}>Cihaz Durumu</Text>
          <View style={styles.statusRow}>
            <Text style={styles.statusLabel}>Destek:</Text>
            <Text style={[styles.statusValue, nfcSupported ? styles.successText : styles.errorText]}>
              {nfcSupported ? 'Destekleniyor' : 'Desteklenmiyor'}
            </Text>
          </View>
          <View style={styles.statusRow}>
            <Text style={styles.statusLabel}>NFC:</Text>
            <Text style={[styles.statusValue, nfcEnabled ? styles.successText : styles.errorText]}>
              {nfcEnabled ? 'Açık' : 'Kapalı'}
            </Text>
          </View>

          {checkingNfc ? (
            <ActivityIndicator style={styles.statusLoader} color="#0EA5E9" />
          ) : (
            <View style={styles.actionRow}>
              <TouchableOpacity
                style={[styles.actionButton, (!nfcSupported || isScanning) && styles.buttonDisabled]}
                onPress={startScanning}
                disabled={!nfcSupported || !nfcEnabled || isScanning}
              >
                <Text style={styles.actionButtonText}>Okumayı Başlat</Text>
              </TouchableOpacity>

              <TouchableOpacity
                style={[styles.secondaryButton, !isScanning && styles.buttonDisabled]}
                onPress={stopScanning}
                disabled={!isScanning}
              >
                <Text style={styles.secondaryButtonText}>Durdur</Text>
              </TouchableOpacity>

              <TouchableOpacity style={styles.ghostButton} onPress={checkNfcStatus}>
                <Text style={styles.ghostButtonText}>Durumu Yenile</Text>
              </TouchableOpacity>
            </View>
          )}
        </View>

        {error && (
          <View style={styles.errorContainer}>
            <Text style={styles.errorText}>⚠️ {error}</Text>
          </View>
        )}

        {isScanning && (
          <View style={styles.scanningCard}>
            <Text style={styles.scanningTitle}>Kartı cihazın arkasına yaklaştırın</Text>
            <Text style={styles.scanningHint}>Sabit tutun, titreşim hissettiğinizde kartı çekebilirsiniz.</Text>
            <View style={styles.instructionsList}>
              <Text style={styles.instructionItem}>• Telefonun NFC bobini genelde üst orta kısımdadır.</Text>
              <Text style={styles.instructionItem}>• Kartı en az 2-3 saniye sabit tutun.</Text>
              <Text style={styles.instructionItem}>• Kart ile cihaz arasında metal yüzeyler olmamasına dikkat edin.</Text>
            </View>
            <ActivityIndicator color="#2563EB" style={styles.scanningLoader} />
          </View>
        )}

        {nfcResult && (
          <View style={styles.resultsContainer}>
            <Text style={styles.sectionTitle}>📋 NFC Okuma Sonuçları</Text>

            <View style={styles.metaInfo}>
              <View style={styles.metaRow}>
                <Text style={styles.metaLabel}>Kart Tipi:</Text>
                <Text style={styles.metaValue}>{nfcResult.cardType || 'Bilinmiyor'}</Text>
              </View>
              <View style={styles.metaRow}>
                <Text style={styles.metaLabel}>Okuma Zamanı:</Text>
                <Text style={styles.metaValue}>
                  {new Date(nfcResult.timestamp || Date.now()).toLocaleString('tr-TR')}
                </Text>
              </View>
            </View>

            {parsedFields.length === 0 ? (
              <Text style={styles.emptyState}>Karttan anlamlı veri dönmedi.</Text>
            ) : (
              parsedFields.map(([key, value]) => (
                <View key={key} style={styles.dataItem}>
                  <Text style={styles.dataLabel}>{key}:</Text>
                  <Text style={styles.dataValue}>{String(value)}</Text>
                </View>
              ))
            )}
          </View>
        )}

        <View style={styles.logContainer}>
          <Text style={styles.sectionTitle}>Debug Logları</Text>
          {logs.length === 0 ? (
            <Text style={styles.emptyState}>Henüz log yok.</Text>
          ) : (
            <ScrollView style={styles.logList}>
              {logs.map((log, index) => (
                <Text key={`${log}-${index}`} style={styles.logItem}>
                  {log}
                </Text>
              ))}
            </ScrollView>
          )}
        </View>
      </ScrollView>
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#f8fafc',
    padding: 16,
  },
  title: {
    fontSize: 20,
    fontWeight: 'bold',
    color: '#0f172a',
    textAlign: 'center',
    marginBottom: 6,
  },
  subtitle: {
    fontSize: 14,
    color: '#475569',
    textAlign: 'center',
    marginBottom: 16,
  },
  scrollView: {
    flex: 1,
  },
  scrollContent: {
    paddingBottom: 32,
  },
  statusCard: {
    backgroundColor: '#fff',
    borderRadius: 16,
    padding: 16,
    shadowColor: '#000',
    shadowOffset: { width: 0, height: 2 },
    shadowOpacity: 0.08,
    shadowRadius: 4,
    elevation: 2,
  },
  sectionTitle: {
    fontSize: 16,
    fontWeight: '600',
    color: '#0f172a',
    marginBottom: 12,
  },
  statusRow: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    marginBottom: 6,
  },
  statusLabel: {
    fontSize: 14,
    color: '#334155',
  },
  statusValue: {
    fontSize: 14,
    fontWeight: '600',
  },
  actionRow: {
    marginTop: 12,
    flexDirection: 'row',
    flexWrap: 'wrap',
    gap: 8,
  },
  actionButton: {
    flexGrow: 1,
    backgroundColor: '#2563EB',
    borderRadius: 10,
    paddingVertical: 12,
    alignItems: 'center',
  },
  actionButtonText: {
    color: '#fff',
    fontWeight: '600',
  },
  secondaryButton: {
    paddingVertical: 12,
    paddingHorizontal: 20,
    borderRadius: 10,
    backgroundColor: '#f1f5f9',
  },
  secondaryButtonText: {
    color: '#0f172a',
    fontWeight: '600',
  },
  ghostButton: {
    paddingVertical: 12,
    paddingHorizontal: 12,
  },
  ghostButtonText: {
    color: '#2563EB',
    fontWeight: '600',
  },
  buttonDisabled: {
    opacity: 0.5,
  },
  statusLoader: {
    marginTop: 12,
  },
  errorContainer: {
    marginTop: 16,
    backgroundColor: '#fff1f2',
    borderRadius: 12,
    padding: 12,
    borderWidth: 1,
    borderColor: '#fecdd3',
  },
  errorText: {
    color: '#b91c1c',
    fontSize: 14,
  },
  scanningCard: {
    marginTop: 16,
    backgroundColor: '#fff',
    borderRadius: 16,
    padding: 16,
    shadowColor: '#000',
    shadowOffset: { width: 0, height: 2 },
    shadowOpacity: 0.08,
    shadowRadius: 4,
    elevation: 2,
  },
  scanningTitle: {
    fontSize: 16,
    fontWeight: '600',
    color: '#0f172a',
    marginBottom: 8,
  },
  scanningHint: {
    fontSize: 13,
    color: '#475569',
    marginBottom: 12,
  },
  instructionsList: {
    backgroundColor: '#f8fafc',
    borderRadius: 10,
    padding: 12,
    marginBottom: 12,
  },
  instructionItem: {
    fontSize: 13,
    color: '#475569',
    marginBottom: 6,
  },
  scanningLoader: {
    marginTop: 8,
  },
  resultsContainer: {
    marginTop: 16,
    backgroundColor: '#fff',
    borderRadius: 16,
    padding: 16,
    shadowColor: '#000',
    shadowOffset: { width: 0, height: 2 },
    shadowOpacity: 0.08,
    shadowRadius: 4,
    elevation: 2,
  },
  metaInfo: {
    marginBottom: 12,
  },
  metaRow: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    marginBottom: 6,
  },
  metaLabel: {
    fontSize: 13,
    color: '#475569',
  },
  metaValue: {
    fontSize: 13,
    fontWeight: '600',
    color: '#0f172a',
  },
  dataItem: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    paddingVertical: 6,
    borderBottomWidth: StyleSheet.hairlineWidth,
    borderBottomColor: '#e2e8f0',
  },
  dataLabel: {
    flex: 1,
    fontSize: 13,
    color: '#475569',
  },
  dataValue: {
    flex: 1,
    fontSize: 13,
    fontWeight: '600',
    color: '#0f172a',
    textAlign: 'right',
  },
  logContainer: {
    marginTop: 16,
    backgroundColor: '#0f172a',
    borderRadius: 16,
    padding: 16,
  },
  logList: {
    maxHeight: 160,
    marginTop: 8,
  },
  logItem: {
    color: '#e2e8f0',
    fontSize: 12,
    marginBottom: 4,
  },
  emptyState: {
    fontSize: 13,
    color: '#94a3b8',
  },
  successText: {
    color: '#16a34a',
  },
  errorTextGeneral: {
    color: '#dc2626',
  },
});

export default NFCTestComponent;
