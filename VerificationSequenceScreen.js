import React, { useCallback, useMemo, useState } from 'react';
import {
  View,
  Text,
  StyleSheet,
  TouchableOpacity,
  ScrollView,
  StatusBar,
} from 'react-native';
import { useFocusEffect } from '@react-navigation/native';

const STEP_ORDER = ['ocr', 'nfc', 'liveness'];

const STEP_LABELS = {
  ocr: 'OCR Tarama',
  nfc: 'NFC Okuma',
  liveness: 'Canlılık Testi',
};

const STEP_DESCRIPTIONS = {
  ocr: 'Kimlik kartını kamerayla okutarak verileri çıkarın.',
  nfc: 'Kartın çipinden detaylı verileri okuyun.',
  liveness: 'Kişinin canlı olduğunu doğrulamak için yüz hareketlerini kontrol edin.',
};

const STEP_SCREENS = {
  ocr: 'OCR',
  nfc: 'NFC',
  liveness: 'Liveness',
};

const INITIAL_STEP_STATE = STEP_ORDER.reduce((acc, step) => {
  acc[step] = {
    status: 'pending',
    result: null,
    startedAt: null,
    completedAt: null,
  };
  return acc;
}, {});

const VerificationSequenceScreen = ({ navigation, route }) => {
  const [steps, setSteps] = useState(INITIAL_STEP_STATE);
  const [activeStepIndex, setActiveStepIndex] = useState(0);
  const [logs, setLogs] = useState([]);

  const activeStepKey = STEP_ORDER[activeStepIndex];
  const isCompleted = useMemo(
    () => STEP_ORDER.every((step) => steps[step].status === 'completed'),
    [steps]
  );

  const addLog = useCallback((message) => {
    setLogs((prev) => {
      const timestamp = new Date().toLocaleTimeString('tr-TR');
      return [...prev.slice(-29), `[${timestamp}] ${message}`];
    });
  }, []);

  const startStep = useCallback(
    (stepKey) => {
      setSteps((prev) => ({
        ...prev,
        [stepKey]: {
          ...prev[stepKey],
          status: 'in_progress',
          startedAt: new Date().toISOString(),
        },
      }));
      addLog(`${STEP_LABELS[stepKey]} başlatılıyor...`);
      navigation.navigate(STEP_SCREENS[stepKey], {
        returnTo: 'VerificationSequence',
        returnParams: { sourceStep: stepKey },
      });
    },
    [addLog, navigation]
  );

  const completeStep = useCallback((stepKey, result) => {
    setSteps((prev) => ({
      ...prev,
      [stepKey]: {
        ...prev[stepKey],
        status: 'completed',
        completedAt: new Date().toISOString(),
        result,
      },
    }));
    addLog(`${STEP_LABELS[stepKey]} tamamlandı.`);
  }, [addLog]);

  const proceedToNextStep = useCallback((currentIndex) => {
    if (currentIndex + 1 < STEP_ORDER.length) {
      setActiveStepIndex(currentIndex + 1);
    }
  }, []);

  useFocusEffect(
    useCallback(() => {
      const params = route.params || {};
      const { stepResult, sourceStep } = params.returnParams || {};

      if (sourceStep && stepResult) {
        completeStep(sourceStep, stepResult);
        const currentIndex = STEP_ORDER.indexOf(sourceStep);
        proceedToNextStep(currentIndex);
        navigation.setParams({ returnParams: null });
      }
    }, [route.params, navigation, completeStep, proceedToNextStep])
  );

  const handleStartSequence = () => {
    setSteps(INITIAL_STEP_STATE);
    setLogs([]);
    setActiveStepIndex(0);
    startStep(STEP_ORDER[0]);
  };

  const handleRetryStep = (stepKey) => {
    const index = STEP_ORDER.indexOf(stepKey);
    if (index !== -1) {
      setActiveStepIndex(index);
      startStep(stepKey);
    }
  };

  const renderStepCard = (stepKey, index) => {
    const step = steps[stepKey];
    const isActive = index === activeStepIndex;

    return (
      <View key={stepKey} style={styles.stepCard}>
        <View style={styles.stepHeader}>
          <View>
            <Text style={styles.stepTitle}>
              {index + 1}. {STEP_LABELS[stepKey]}
            </Text>
            <Text style={styles.stepDescription}>{STEP_DESCRIPTIONS[stepKey]}</Text>
          </View>
          <Text
            style={[
              styles.stepStatus,
              step.status === 'completed' && styles.statusCompleted,
              step.status === 'in_progress' && styles.statusInProgress,
            ]}
          >
            {step.status === 'completed'
              ? 'Tamamlandı'
              : step.status === 'in_progress'
              ? 'Devam ediyor'
              : 'Hazır'}
          </Text>
        </View>

        {step.result && (
          <View style={styles.resultPreview}>
            <Text style={styles.resultPreviewLabel}>Özet</Text>
            <Text style={styles.resultPreviewText}>
              {JSON.stringify(step.result, null, 2)}
            </Text>
          </View>
        )}

        <TouchableOpacity
          style={[
            styles.stepButton,
            isActive ? styles.stepButtonPrimary : styles.stepButtonSecondary,
          ]}
          onPress={() => handleRetryStep(stepKey)}
        >
          <Text
            style={[
              styles.stepButtonText,
              isActive ? styles.stepButtonTextPrimary : styles.stepButtonTextSecondary,
            ]}
          >
            {step.status === 'completed' ? 'Tekrar Çalıştır' : 'Başlat'}
          </Text>
        </TouchableOpacity>
      </View>
    );
  };

  return (
    <View style={styles.container}>
      <StatusBar barStyle="dark-content" backgroundColor="#F5F5F5" />
      <ScrollView contentContainerStyle={styles.contentContainer}>
        <Text style={styles.title}>Sıralı Doğrulama</Text>
        <Text style={styles.subtitle}>
          Bu akış sırasıyla OCR, NFC ve Canlılık adımlarını başlatır ve sonuçları kaydeder.
        </Text>

        <TouchableOpacity style={styles.primaryButton} onPress={handleStartSequence}>
          <Text style={styles.primaryButtonText}>Doğrulamayı Başlat</Text>
        </TouchableOpacity>

        {STEP_ORDER.map((stepKey, index) => renderStepCard(stepKey, index))}

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

        {isCompleted && (
          <View style={styles.completionBanner}>
            <Text style={styles.completionTitle}>✅ Tüm Adımlar Tamamlandı</Text>
            <Text style={styles.completionText}>
              Tüm doğrulama adımları başarıyla tamamlandı. Sağ üstten sonuçları paylaşabilir veya rapor oluşturabilirsiniz.
            </Text>
          </View>
        )}
      </ScrollView>
    </View>
  );
};

export default VerificationSequenceScreen;

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
  primaryButton: {
    backgroundColor: '#2563EB',
    paddingVertical: 14,
    borderRadius: 14,
    alignItems: 'center',
    marginBottom: 24,
  },
  primaryButtonText: {
    color: '#FFFFFF',
    fontSize: 16,
    fontWeight: '600',
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
  stepDescription: {
    fontSize: 14,
    color: '#475569',
    marginTop: 4,
    lineHeight: 20,
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
  stepButton: {
    marginTop: 12,
    borderRadius: 12,
    paddingVertical: 12,
    alignItems: 'center',
  },
  stepButtonPrimary: {
    backgroundColor: '#2563EB',
  },
  stepButtonSecondary: {
    backgroundColor: '#E0E7FF',
  },
  stepButtonText: {
    fontSize: 14,
    fontWeight: '600',
  },
  stepButtonTextPrimary: {
    color: '#FFFFFF',
  },
  stepButtonTextSecondary: {
    color: '#1E3A8A',
  },
  resultPreview: {
    backgroundColor: '#F8FAFC',
    borderRadius: 12,
    padding: 12,
    marginTop: 12,
  },
  resultPreviewLabel: {
    fontSize: 12,
    fontWeight: '600',
    color: '#475569',
    marginBottom: 4,
  },
  resultPreviewText: {
    fontSize: 12,
    color: '#334155',
  },
  logsContainer: {
    backgroundColor: '#FFFFFF',
    borderRadius: 16,
    padding: 18,
    marginTop: 24,
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
  completionBanner: {
    backgroundColor: '#ECFDF5',
    borderRadius: 16,
    padding: 18,
    marginTop: 24,
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
});
