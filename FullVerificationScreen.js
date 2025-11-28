import React, { useEffect, useMemo, useState, useCallback } from 'react';
import { View, Text, StyleSheet, TouchableOpacity, StatusBar, Alert } from 'react-native';
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
        } else if (sourceStep === 'nfc') {
          markStepInProgress('liveness');
          addLog('NFC tamamlandı, Liveness testine yönlendiriliyor...');
          // NFC'den fotoğraf varsa liveness'a gönder
          setTimeout(() => {
            navigation.navigate('VerificationFlow');
          }, 1000);
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

  const handleLaunchLiveness = () => {
    if (!steps.nfc.result || !steps.nfc.result.photo) {
      Alert.alert(
        'Uyarı',
        'Liveness testi için önce NFC okuması yapmalısınız. NFC fotoğrafı gereklidir.',
        [{ text: 'Tamam' }]
      );
      return;
    }
    addLog('Liveness testi başlatılıyor...');
    navigation.navigate('VerificationFlow', {
      nfcPhoto: steps.nfc.result.photo,
      returnTo: 'FullVerification',
      returnParams: { sourceStep: 'liveness' },
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

        {steps.nfc.status === STEP_STATUS.COMPLETED && (
          <TouchableOpacity
            style={[styles.secondaryButton, { backgroundColor: '#059669', borderColor: '#10B981' }]}
            onPress={handleLaunchLiveness}
          >
            <Text style={styles.secondaryButtonText}>👁️ Liveness Testi Başlat</Text>
          </TouchableOpacity>
        )}

        {/* Step Status Indicators */}
        <View style={styles.stepIndicators}>
          <View style={[styles.stepBadge, steps.ocr.status === STEP_STATUS.COMPLETED && styles.stepCompleted]}>
            <Text style={styles.stepBadgeText}>
              {steps.ocr.status === STEP_STATUS.COMPLETED ? '✅' : steps.ocr.status === STEP_STATUS.IN_PROGRESS ? '⏳' : '⏸️'} OCR
            </Text>
          </View>
          <View style={[styles.stepBadge, steps.nfc.status === STEP_STATUS.COMPLETED && styles.stepCompleted]}>
            <Text style={styles.stepBadgeText}>
              {steps.nfc.status === STEP_STATUS.COMPLETED ? '✅' : steps.nfc.status === STEP_STATUS.IN_PROGRESS ? '⏳' : '⏸️'} NFC
            </Text>
          </View>
          <View style={[styles.stepBadge, steps.liveness.status === STEP_STATUS.COMPLETED && styles.stepCompleted]}>
            <Text style={styles.stepBadgeText}>
              {steps.liveness.status === STEP_STATUS.COMPLETED ? '✅' : steps.liveness.status === STEP_STATUS.IN_PROGRESS ? '⏳' : '⏸️'} Liveness
            </Text>
          </View>
        </View>

        {allStepsCompleted && (
          <View style={styles.summaryBadge}>
            <Text style={styles.summaryTitle}>✅ Doğrulama Tamamlandı</Text>
            <Text style={styles.summaryText}>OCR, NFC ve Liveness testleri başarıyla tamamlandı.</Text>
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
  stepIndicators: {
    flexDirection: 'row',
    justifyContent: 'space-around',
    width: '100%',
    marginTop: 24,
    marginBottom: 8,
  },
  stepBadge: {
    backgroundColor: 'rgba(71, 85, 105, 0.3)',
    paddingVertical: 8,
    paddingHorizontal: 16,
    borderRadius: 12,
    borderWidth: 1,
    borderColor: '#475569',
  },
  stepCompleted: {
    backgroundColor: 'rgba(34, 197, 94, 0.2)',
    borderColor: '#22C55E',
  },
  stepBadgeText: {
    color: '#E2E8F0',
    fontSize: 13,
    fontWeight: '600',
  },
});
