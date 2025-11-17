import React, { useEffect, useMemo, useState, useCallback } from 'react';
import { View, Text, StyleSheet, TouchableOpacity, StatusBar } from 'react-native';
import { useFocusEffect } from '@react-navigation/native';
import {
  buildCoreConsistencyReport,
} from './utils/consistencyReport';
import {
  normalizeMrzDataFromOCR,
  normalizeNfcData,
} from './utils/verificationUtils';

const STEP_STATUS = {
  PENDING: 'pending',
  IN_PROGRESS: 'in_progress',
  COMPLETED: 'completed',
};

const STEP_LABELS = {
  ocr: 'OCR',
  nfc: 'NFC',
  liveness: 'Canlılık',
};

const FullVerificationScreen = ({ navigation, route }) => {
  const [steps, setSteps] = useState({
    ocr: { status: STEP_STATUS.PENDING, result: null },
    nfc: { status: STEP_STATUS.PENDING, result: null },
    liveness: { status: STEP_STATUS.PENDING, result: null },
  });
  const [logs, setLogs] = useState([]);
  const [consistencyReport, setConsistencyReport] = useState(null);

  const addLog = useCallback((message) => {
    setLogs((prev) => {
      const timestamp = new Date().toLocaleTimeString('tr-TR');
      return [...prev.slice(-29), `[${timestamp}] ${message}`];
    });
  }, []);

  const updateStepResult = useCallback((stepKey, result) => {
    setSteps((prev) => ({
      ...prev,
      [stepKey]: {
        status: STEP_STATUS.COMPLETED,
        result,
      },
    }));
  }, []);

  const markStepInProgress = useCallback((stepKey) => {
    setSteps((prev) => ({
      ...prev,
      [stepKey]: {
        ...prev[stepKey],
        status: STEP_STATUS.IN_PROGRESS,
      },
    }));
  }, []);

  useFocusEffect(
    useCallback(() => {
      const returnParams = route.params?.returnParams;

      if (returnParams?.sourceStep && returnParams?.stepResult) {
        const { sourceStep, stepResult } = returnParams;
        updateStepResult(sourceStep, stepResult);
        const label = STEP_LABELS[sourceStep] || sourceStep;
        addLog(`${label} adımı tamamlandı.`);

        if (sourceStep === 'ocr') {
          markStepInProgress('nfc');
          addLog('MRZ verisi doğrulandı, NFC adımına yönlendiriliyor...');
        }

        navigation.setParams({ returnParams: null });
      }
    }, [route.params?.returnParams, updateStepResult, addLog, navigation, markStepInProgress])
  );

  useEffect(() => {
    if (steps.ocr.result && steps.nfc.result) {
      const mrzNormalized = normalizeMrzDataFromOCR(steps.ocr.result);
      const nfcNormalized = normalizeNfcData(steps.nfc.result);
      const report = buildCoreConsistencyReport({
        mrzData: mrzNormalized,
        nfcData: nfcNormalized,
      });
      setConsistencyReport(report);
    }
  }, [steps.ocr.result, steps.nfc.result]);

  const allStepsCompleted = useMemo(
    () =>
      steps.ocr.status === STEP_STATUS.COMPLETED &&
      steps.nfc.status === STEP_STATUS.COMPLETED &&
      steps.liveness.status === STEP_STATUS.COMPLETED,
    [steps]
  );

  const handleStartPipeline = () => {
    markStepInProgress('ocr');
    addLog('Doğrulama akışı başlatılıyor...');
    navigation.navigate('OCR', {
      returnTo: 'FullVerification',
      returnParams: { sourceStep: 'ocr' },
      scanMode: 'back-only',
    });
  };

  const handleLaunchStandaloneNFC = () => {
    addLog('NFC modu bağımsız başlatılıyor...');
    navigation.navigate('NFC', {
      autoStart: true,
      returnTo: 'FullVerification',
      returnParams: { sourceStep: 'nfc' },
    });
  };

  return (
    <View style={styles.container}>
      <StatusBar barStyle="light-content" backgroundColor="#0F172A" />
      <View style={styles.contentWrapper}>
        <Text style={styles.heading}>Doğrulamayı Başlat</Text>
        <Text style={styles.description}>
          Tek adımla OCR → NFC süreci başlar ve MRZ verisi otomatik olarak NFC
          taramasına aktarılır.
        </Text>

        <TouchableOpacity style={styles.primaryButton} onPress={handleStartPipeline}>
          <Text style={styles.primaryButtonText}>Doğrulamayı Başlat</Text>
        </TouchableOpacity>

        <TouchableOpacity style={styles.secondaryButton} onPress={handleLaunchStandaloneNFC}>
          <Text style={styles.secondaryButtonText}>Sadece NFC Test Et</Text>
        </TouchableOpacity>

        {allStepsCompleted && (
          <View style={styles.summaryBadge}>
            <Text style={styles.summaryTitle}>✅ Doğrulama Tamamlandı</Text>
            <Text style={styles.summaryText}>OCR ve NFC sonuçları başarıyla eşlendi.</Text>
          </View>
        )}
      </View>
    </View>
  );
};

export default FullVerificationScreen;

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#0F172A',
    justifyContent: 'center',
    alignItems: 'center',
  },
  contentWrapper: {
    width: '90%',
    backgroundColor: '#1E293B',
    borderRadius: 24,
    paddingVertical: 40,
    paddingHorizontal: 24,
    alignItems: 'center',
    shadowColor: '#000',
    shadowOpacity: 0.25,
    shadowRadius: 20,
    shadowOffset: { width: 0, height: 10 },
    elevation: 8,
  },
  heading: {
    fontSize: 26,
    fontWeight: '700',
    color: '#E2E8F0',
    marginBottom: 12,
    textAlign: 'center',
  },
  description: {
    fontSize: 14,
    color: '#CBD5F5',
    textAlign: 'center',
    marginBottom: 24,
    lineHeight: 20,
  },
  primaryButton: {
    width: '100%',
    backgroundColor: '#2563EB',
    paddingVertical: 16,
    borderRadius: 16,
    alignItems: 'center',
    marginBottom: 24,
  },
  primaryButtonText: {
    color: '#FFFFFF',
    fontWeight: '600',
    fontSize: 16,
  },
  secondaryButton: {
    width: '100%',
    backgroundColor: 'rgba(15, 23, 42, 0.6)',
    borderColor: '#38BDF8',
    borderWidth: 1,
    paddingVertical: 14,
    borderRadius: 16,
    alignItems: 'center',
    marginBottom: 16,
  },
  secondaryButtonText: {
    color: '#E0F2FE',
    fontWeight: '600',
    fontSize: 15,
  },
  summaryBadge: {
    width: '100%',
    backgroundColor: '#0F766E',
    borderRadius: 16,
    padding: 16,
  },
  summaryTitle: {
    color: '#ECFDF5',
    fontWeight: '700',
    fontSize: 16,
    marginBottom: 6,
  },
  summaryText: {
    color: '#D1FAE5',
    fontSize: 14,
  },
});
