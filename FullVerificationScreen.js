import React, { useEffect, useMemo, useState, useCallback } from 'react';
import {
  View,
  Text,
  StyleSheet,
  TouchableOpacity,
  ScrollView,
  StatusBar,
} from 'react-native';
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
        navigation.setParams({ returnParams: null });
      }
    }, [route.params?.returnParams, updateStepResult, addLog, navigation])
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

  const handleStartOCR = () => {
    markStepInProgress('ocr');
    addLog('OCR modülü başlatılıyor...');
    navigation.navigate('OCR', {
      returnTo: 'FullVerification',
      returnParams: { sourceStep: 'ocr' },
    });
  };

  const handleStartNFC = () => {
    if (steps.ocr.status !== STEP_STATUS.COMPLETED) {
      addLog('Önce OCR adımını tamamlayın.');
      return;
    }
    markStepInProgress('nfc');
    addLog('NFC modülü başlatılıyor...');
    navigation.navigate('NFC', {
      returnTo: 'FullVerification',
      returnParams: { sourceStep: 'nfc' },
    });
  };

  const handleStartLiveness = () => {
    if (steps.nfc.status !== STEP_STATUS.COMPLETED) {
      addLog('Önce NFC adımını tamamlayın.');
      return;
    }
    markStepInProgress('liveness');
    addLog('Canlılık testi başlatılıyor...');
    navigation.navigate('Liveness', {
      returnTo: 'FullVerification',
      returnParams: { sourceStep: 'liveness' },
    });
  };

  const renderStep = (title, description, stepKey, onPress, disabled) => {
    const step = steps[stepKey];
    const statusLabel =
      step.status === STEP_STATUS.COMPLETED
        ? 'Tamamlandı'
        : step.status === STEP_STATUS.IN_PROGRESS
        ? 'Devam ediyor'
        : 'Hazır';

    return (
      <View style={styles.stepCard} key={stepKey}>
        <View style={styles.stepHeader}>
          <Text style={styles.stepTitle}>{title}</Text>
          <Text
            style={[
              styles.stepStatus,
              step.status === STEP_STATUS.COMPLETED && styles.statusCompleted,
              step.status === STEP_STATUS.IN_PROGRESS && styles.statusInProgress,
            ]}
          >
            {statusLabel}
          </Text>
        </View>
        <Text style={styles.stepDescription}>{description}</Text>

        <TouchableOpacity
          style={[styles.stepButton, disabled && styles.stepButtonDisabled]}
          onPress={onPress}
          disabled={disabled}
        >
          <Text style={styles.stepButtonText}>
            {step.status === STEP_STATUS.IN_PROGRESS ? 'Devam ediyor...' : 'Başlat'}
          </Text>
        </TouchableOpacity>
      </View>
    );
  };

  const renderConsistencySummary = () => {
    if (!consistencyReport) {
      return null;
    }

    return (
      <View style={styles.reportContainer}>
        <Text style={styles.reportTitle}>OCR & NFC Tutarlılık Özeti</Text>
        <Text style={styles.reportSummary}>{consistencyReport.summary}</Text>
        <View style={styles.reportBadges}>
          <View style={styles.badge}>
            <Text style={styles.badgeLabel}>Genel Durum</Text>
            <Text style={styles.badgeValue}>
              {consistencyReport.overallStatus.toUpperCase()}
            </Text>
          </View>
          <View style={styles.badge}>
            <Text style={styles.badgeLabel}>Kaynaklar</Text>
            <Text style={styles.badgeValue}>
              {consistencyReport.source.mrz} · {consistencyReport.source.nfc}
            </Text>
          </View>
        </View>
      </View>
    );
  };

  return (
    <View style={styles.container}>
      <StatusBar barStyle="dark-content" backgroundColor="#F5F5F5" />
      <ScrollView contentContainerStyle={styles.contentContainer}>
        <Text style={styles.title}>Doğrulama Akışı</Text>
        <Text style={styles.subtitle}>
          Kimlik doğrulama için OCR → NFC → Canlılık adımlarını tamamlayın.
        </Text>

        {renderStep(
          '1. OCR Tarama',
          'Kimlik kartını kamerayla okutarak temel verileri alın.',
          'ocr',
          handleStartOCR,
          steps.ocr.status === STEP_STATUS.COMPLETED
        )}

        {renderStep(
          '2. NFC Okuma',
          'Kartın çipinden detaylı verileri okuyun ve doğrulayın.',
          'nfc',
          handleStartNFC,
          steps.nfc.status === STEP_STATUS.COMPLETED
        )}

        {renderStep(
          '3. Canlılık Testi',
          'Kişinin canlı olduğunu doğrulamak için yüz hareketlerini kontrol edin.',
          'liveness',
          handleStartLiveness,
          steps.liveness.status === STEP_STATUS.COMPLETED
        )}

        {renderConsistencySummary()}

        {allStepsCompleted && (
          <View style={styles.completionBanner}>
            <Text style={styles.completionTitle}>✅ Doğrulama Tamamlandı</Text>
            <Text style={styles.completionText}>
              Tüm kritik adımlar başarıyla tamamlandı. Sonuçları dışa \
aktarabilir
              veya rapor oluşturabilirsiniz.
            </Text>
          </View>
        )}

        <View style={styles.logsContainer}>
          <View style={styles.logsHeader}>
            <Text style={styles.logsTitle}>İşlem Logları</Text>
            <Text style={styles.logsCount}>{logs.length}</Text>
          </View>
          <View style={styles.logsContent}>
            {logs.length === 0 ? (
              <Text style={styles.emptyLogText}>Henüz log bulunmuyor.</Text>
            ) : (
              logs.map((log, index) => (
                <Text key={`${log}-${index}`} style={styles.logItem}>
                  {log}
                </Text>
              ))
            )}
          </View>
        </View>
      </ScrollView>
    </View>
  );
};

export default FullVerificationScreen;

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#F5F5F5',
  },
  contentContainer: {
    padding: 20,
    paddingBottom: 40,
  },
  title: {
    fontSize: 24,
    fontWeight: '700',
    color: '#1E3A8A',
    marginBottom: 8,
  },
  subtitle: {
    fontSize: 14,
    color: '#475569',
    marginBottom: 20,
    lineHeight: 20,
  },
  stepCard: {
    backgroundColor: '#FFFFFF',
    borderRadius: 16,
    padding: 20,
    marginBottom: 16,
    shadowColor: '#000',
    shadowOpacity: 0.05,
    shadowRadius: 6,
    shadowOffset: { width: 0, height: 2 },
    elevation: 2,
  },
  stepHeader: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    marginBottom: 12,
  },
  stepTitle: {
    fontSize: 18,
    fontWeight: '600',
    color: '#1F2937',
  },
  stepStatus: {
    fontSize: 12,
    fontWeight: '700',
    color: '#64748B',
    paddingHorizontal: 10,
    paddingVertical: 4,
    borderRadius: 999,
    backgroundColor: '#E2E8F0',
  },
  statusCompleted: {
    backgroundColor: '#DCFCE7',
    color: '#15803D',
  },
  statusInProgress: {
    backgroundColor: '#FEF3C7',
    color: '#D97706',
  },
  stepDescription: {
    fontSize: 14,
    color: '#475569',
    lineHeight: 20,
    marginBottom: 16,
  },
  stepButton: {
    alignSelf: 'flex-start',
    backgroundColor: '#2563EB',
    paddingHorizontal: 20,
    paddingVertical: 12,
    borderRadius: 12,
  },
  stepButtonDisabled: {
    backgroundColor: '#CBD5F5',
  },
  stepButtonText: {
    color: '#FFFFFF',
    fontWeight: '600',
    fontSize: 14,
  },
  reportContainer: {
    backgroundColor: '#1E3A8A',
    padding: 20,
    borderRadius: 18,
    marginTop: 8,
    marginBottom: 16,
  },
  reportTitle: {
    color: '#BFDBFE',
    fontSize: 16,
    fontWeight: '600',
    marginBottom: 8,
  },
  reportSummary: {
    color: '#E0F2FE',
    fontSize: 14,
    lineHeight: 20,
  },
  reportBadges: {
    flexDirection: 'row',
    marginTop: 16,
    gap: 12,
  },
  badge: {
    flex: 1,
    backgroundColor: 'rgba(255, 255, 255, 0.12)',
    padding: 12,
    borderRadius: 12,
  },
  badgeLabel: {
    color: '#E0F2FE',
    fontSize: 12,
    marginBottom: 4,
  },
  badgeValue: {
    color: '#FFFFFF',
    fontWeight: '700',
    fontSize: 14,
  },
  completionBanner: {
    backgroundColor: '#ECFDF5',
    borderRadius: 16,
    padding: 18,
    marginBottom: 20,
  },
  completionTitle: {
    fontSize: 18,
    fontWeight: '700',
    color: '#047857',
    marginBottom: 8,
  },
  completionText: {
    fontSize: 14,
    color: '#047857',
    lineHeight: 20,
  },
  logsContainer: {
    backgroundColor: '#FFFFFF',
    borderRadius: 16,
    padding: 18,
    marginTop: 12,
    marginBottom: 40,
    shadowColor: '#000',
    shadowOpacity: 0.05,
    shadowRadius: 6,
    shadowOffset: { width: 0, height: 2 },
    elevation: 1,
  },
  logsHeader: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
    marginBottom: 12,
  },
  logsTitle: {
    fontSize: 16,
    fontWeight: '600',
    color: '#1F2937',
  },
  logsCount: {
    fontSize: 12,
    fontWeight: '600',
    color: '#64748B',
    backgroundColor: '#E2E8F0',
    paddingHorizontal: 10,
    paddingVertical: 4,
    borderRadius: 999,
  },
  logsContent: {
    borderTopWidth: 1,
    borderTopColor: '#E2E8F0',
    paddingTop: 12,
    gap: 6,
  },
  logItem: {
    fontSize: 12,
    color: '#334155',
    lineHeight: 18,
  },
  emptyLogText: {
    fontSize: 12,
    color: '#94A3B8',
  },
});
