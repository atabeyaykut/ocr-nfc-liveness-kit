/**
 * Liveness Demo Screen - Vision Camera + ML Kit gerçek zamanlı akış
 * Kafa hareketi (sağ/sol/yukarı/aşağı) doğrulamasına odaklı sade demo
 */

import React, { useCallback, useEffect, useMemo, useState } from "react";
import {
  View,
  Text,
  TouchableOpacity,
  StyleSheet,
  ScrollView,
  Alert,
  ActivityIndicator,
  SafeAreaView,
} from "react-native";

import LivenessDetector, { LIVENESS_STATUS } from "../modules/liveness/LivenessDetector";
import { getHeadMovementSequence } from "../modules/liveness/commands";
import LivenessCamera from "../components/camera/LivenessCamera";
import Logger from "../utils/logger";

const HEAD_MOVEMENT_SEQUENCE = getHeadMovementSequence();

const LivenessDemoScreen = () => {
  const [logs, setLogs] = useState([]);
  const [isProcessing, setIsProcessing] = useState(false);
  const [livenessStatus, setLivenessStatus] = useState(LIVENESS_STATUS.IDLE);
  const [progress, setProgress] = useState("");
  const [currentCommand, setCurrentCommand] = useState(null);
  const [motionDetected, setMotionDetected] = useState(null);
  const [testResults, setTestResults] = useState(null);
  const [cameraPermission, setCameraPermission] = useState("not-determined");
  const [showCamera, setShowCamera] = useState(false);

  const addLog = useCallback((message, type = "info") => {
    const timestamp = new Date().toLocaleTimeString("tr-TR");
    const entry = {
      id: `${Date.now()}-${Math.random()}`,
      message,
      type,
      timestamp,
    };

    setLogs((prev) => [entry, ...prev.slice(0, 49)]);
    Logger.info(`[${type.toUpperCase()}] ${message}`);
  }, []);

  const livenessDetector = useMemo(() => {
    const detector = new LivenessDetector({ realTimeMode: true });

    detector.onSuccess = (data) => {
      addLog("✅ Canlılık testi tamamlandı", "success");
      setIsProcessing(false);
      setShowCamera(false);
      setTestResults(data);
    };

    detector.onError = (error) => {
      addLog(`❌ Canlılık testi hatası: ${error.message}`, "error");
      setIsProcessing(false);
      setShowCamera(false);

      Alert.alert("Canlılık Testi Hatası", error.message, [{ text: "Tamam" }]);
    };

    detector.onStatusChange = (newStatus, oldStatus) => {
      setLivenessStatus(newStatus);
      addLog(`📊 Durum: ${oldStatus} → ${newStatus}`, "info");
    };

    detector.onProgress = (message) => {
      setProgress(message);
      addLog(message, "progress");
    };

    detector.onInstructionGiven = ({ command, message }) => {
      setCurrentCommand(command);
      addLog(`📋 Talimat: ${message}`, "instruction");
    };

    detector.onMotionDetected = (data) => {
      setMotionDetected(data);
    };

    return detector;
  }, [addLog]);

  useEffect(() => {
    return () => {
      livenessDetector.stopLivenessTest().catch(() => {});
    };
  }, [livenessDetector]);

  const getStatusColor = useCallback((status) => {
    switch (status) {
      case LIVENESS_STATUS.INITIALIZING:
        return "#f59e0b";
      case LIVENESS_STATUS.CAMERA_READY:
        return "#2563eb";
      case LIVENESS_STATUS.INSTRUCTION_GIVEN:
        return "#7c3aed";
      case LIVENESS_STATUS.CAPTURING:
        return "#fb923c";
      case LIVENESS_STATUS.PROCESSING:
        return "#f59e0b";
      case LIVENESS_STATUS.SUCCESS:
        return "#22c55e";
      case LIVENESS_STATUS.ERROR:
        return "#ef4444";
      default:
        return "#6b7280";
    }
  }, []);

  const handleStart = async () => {
    if (cameraPermission !== "authorized") {
      setShowCamera(true);
      Alert.alert(
        "Kamera izni gerekli",
        "Lütfen Vision Camera bileşenine izin vererek testi tekrar başlatın."
      );
      return;
    }

    try {
      setIsProcessing(true);
      setLogs([]);
      setProgress("");
      setCurrentCommand(null);
      setMotionDetected(null);
      setTestResults(null);
      setShowCamera(true);

      addLog("🚀 Liveness testi başlatılıyor", "info");

      await livenessDetector.startLivenessTest({
        commandCount: HEAD_MOVEMENT_SEQUENCE.length,
        requireHeadMovements: true,
        realTimeMode: true,
      });
    } catch (error) {
      addLog(`❌ Test başlatılamadı: ${error.message}`);
      setIsProcessing(false);
      setShowCamera(false);
    }
  };

  const handleStop = async () => {
    await livenessDetector.stopLivenessTest();
    setIsProcessing(false);
    setShowCamera(false);
  };

  const handleReset = () => {
    livenessDetector.reset();
    setIsProcessing(false);
    setShowCamera(false);
    setProgress("");
    setCurrentCommand(null);
    setMotionDetected(null);
    setTestResults(null);
    addLog("🔄 Test sıfırlandı", "info");
  };

  const handleFrameAnalyzed = useCallback(() => {
    // Ekstra işlem gerekmiyor; LivenessDetector kendi durumunu yönetiyor
  }, []);

  const permissionMessage = useMemo(() => {
    if (cameraPermission === "authorized") {
      return "✅ Kamera izni verildi";
    }
    if (cameraPermission === "denied") {
      return "❌ Kamera izni reddedildi";
    }
    return "ℹ️ Kamera izni bekleniyor";
  }, [cameraPermission]);

  return (
    <SafeAreaView style={styles.container}>
      <ScrollView style={styles.scrollView}>
        <Text style={styles.title}>Canlılık Testi (Kafa Hareketleri)</Text>

        <View style={styles.section}>
          <Text style={styles.sectionTitle}>Komut Dizisi</Text>
          <View style={styles.sequenceContainer}>
            {HEAD_MOVEMENT_SEQUENCE.map((command) => (
              <View key={command.id} style={styles.sequenceItem}>
                <Text style={styles.sequenceIcon}>{command.icon}</Text>
                <View style={styles.sequenceTextContainer}>
                  <Text style={styles.sequenceTitle}>{command.message}</Text>
                  <Text style={styles.sequenceSubtitle}>{command.instruction}</Text>
                </View>
              </View>
            ))}
          </View>
        </View>

        <View style={styles.section}>
          <Text style={styles.sectionTitle}>Kamera Akışı</Text>
          <LivenessCamera
            detector={livenessDetector}
            isActive={showCamera}
            instruction={
              currentCommand
                ? {
                    icon: currentCommand.icon,
                    title: "Talimat",
                    message: currentCommand.message,
                  }
                : null
            }
            onFrameAnalyzed={handleFrameAnalyzed}
            onMotionDetected={setMotionDetected}
            onPermissionChange={setCameraPermission}
            motionState={motionDetected}
          />
          <Text style={styles.permissionText}>{permissionMessage}</Text>
          {motionDetected?.faceDetected ? (
            <View
              style={[
                styles.faceStatusChip,
                motionDetected.motions?.lookStraight
                  ? styles.faceStatusChipSuccess
                  : styles.faceStatusChipAlert,
              ]}
            >
              <Text
                style={[
                  styles.faceStatusText,
                  motionDetected.motions?.lookStraight
                    ? styles.faceStatusTextSuccess
                    : styles.faceStatusTextAlert,
                ]}
              >
                {motionDetected.motions?.lookStraight
                  ? "Yüz hizalandı"
                  : "Lütfen yüzünüzü ortalayın"}
              </Text>
            </View>
          ) : null}
        </View>

        <View style={styles.section}>
          <Text style={styles.sectionTitle}>Durum</Text>
          <View style={styles.statusRow}>
            <Text style={styles.statusLabel}>Test Durumu</Text>
            <Text style={[styles.statusValue, { color: getStatusColor(livenessStatus) }]}>
              {livenessStatus.toUpperCase()}
            </Text>
          </View>
          {progress ? <Text style={styles.progressText}>{progress}</Text> : null}
          {motionDetected ? (
            <View style={styles.motionContainer}>
              <Text style={styles.motionTitle}>Son Hareket</Text>
              <Text style={styles.motionText}>
                {motionDetected.motionType} · {(motionDetected.confidence.overall || 0).toFixed(2)}
              </Text>
            </View>
          ) : null}
        </View>

        <View style={styles.section}>
          <View style={styles.buttonGroup}>
            <TouchableOpacity
              style={[styles.button, styles.primaryButton, isProcessing && styles.disabledButton]}
              onPress={handleStart}
              disabled={isProcessing}
            >
              {isProcessing ? (
                <ActivityIndicator color="#fff" />
              ) : (
                <Text style={styles.buttonText}>🚀 Testi Başlat</Text>
              )}
            </TouchableOpacity>

            {isProcessing && (
              <TouchableOpacity style={[styles.button, styles.secondaryButton]} onPress={handleStop}>
                <Text style={styles.buttonText}>⏹️ Durdur</Text>
              </TouchableOpacity>
            )}

            <TouchableOpacity
              style={[styles.button, styles.secondaryButton]}
              onPress={handleReset}
              disabled={isProcessing}
            >
              <Text style={styles.buttonText}>🔄 Sıfırla</Text>
            </TouchableOpacity>
          </View>
        </View>

        {testResults && (
          <View style={styles.section}>
            <Text style={styles.sectionTitle}>Test Sonucu</Text>
            <Text style={styles.resultText}>Durum: {testResults.status}</Text>
            <Text style={styles.resultText}>Süre: {testResults.duration} ms</Text>
            <Text style={styles.resultText}>
              Komutlar: {testResults.instructions?.length || 0} / {HEAD_MOVEMENT_SEQUENCE.length}
            </Text>
          </View>
        )}

        <View style={styles.section}>
          <View style={styles.logsHeader}>
            <Text style={styles.sectionTitle}>Loglar</Text>
            <TouchableOpacity style={styles.clearButton} onPress={() => setLogs([])}>
              <Text style={styles.clearButtonText}>Temizle</Text>
            </TouchableOpacity>
          </View>
          <ScrollView style={styles.logList} nestedScrollEnabled>
            {logs.map((log) => (
              <View key={log.id} style={styles.logRow}>
                <Text style={styles.logTimestamp}>{log.timestamp}</Text>
                <Text style={[styles.logMessage, styles[`log_${log.type}`]]}>{log.message}</Text>
              </View>
            ))}
          </ScrollView>
        </View>
      </ScrollView>
    </SafeAreaView>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: "#f3f4f6",
  },
  scrollView: {
    flex: 1,
    padding: 16,
  },
  title: {
    fontSize: 22,
    fontWeight: "700",
    color: "#111827",
    textAlign: "center",
    marginBottom: 16,
  },
  section: {
    backgroundColor: "#fff",
    borderRadius: 12,
    padding: 16,
    marginBottom: 16,
    shadowColor: "#000",
    shadowOpacity: 0.05,
    shadowRadius: 6,
    shadowOffset: { width: 0, height: 2 },
    elevation: 2,
  },
  sectionTitle: {
    fontSize: 16,
    fontWeight: "600",
    color: "#1f2937",
    marginBottom: 12,
  },
  sequenceContainer: {
    gap: 12,
  },
  sequenceItem: {
    flexDirection: "row",
    alignItems: "center",
    padding: 12,
    borderRadius: 10,
    backgroundColor: "#f9fafb",
  },
  sequenceIcon: {
    fontSize: 22,
    marginRight: 12,
  },
  sequenceTextContainer: {
    flex: 1,
  },
  sequenceTitle: {
    fontSize: 14,
    fontWeight: "600",
    color: "#111827",
  },
  sequenceSubtitle: {
    fontSize: 12,
    color: "#6b7280",
    marginTop: 2,
  },
  permissionText: {
    marginTop: 12,
    fontSize: 12,
    color: "#6b7280",
    textAlign: "center",
  },
  statusRow: {
    flexDirection: "row",
    justifyContent: "space-between",
    marginBottom: 8,
  },
  statusLabel: {
    fontSize: 14,
    color: "#374151",
  },
  statusValue: {
    fontSize: 14,
    fontWeight: "600",
  },
  progressText: {
    fontSize: 13,
    color: "#4b5563",
  },
  motionContainer: {
    marginTop: 12,
    padding: 12,
    borderRadius: 10,
    backgroundColor: "#ecfdf5",
  },
  motionTitle: {
    fontSize: 13,
    fontWeight: "600",
    color: "#047857",
    marginBottom: 4,
  },
  motionText: {
    fontSize: 13,
    color: "#047857",
  },
  buttonGroup: {
    gap: 12,
  },
  button: {
    paddingVertical: 14,
    borderRadius: 12,
    alignItems: "center",
  },
  primaryButton: {
    backgroundColor: "#2563eb",
  },
  secondaryButton: {
    backgroundColor: "#4b5563",
  },
  disabledButton: {
    backgroundColor: "#93c5fd",
  },
  buttonText: {
    fontSize: 15,
    fontWeight: "600",
    color: "#fff",
  },
  resultText: {
    fontSize: 14,
    color: "#374151",
    marginBottom: 4,
  },
  logsHeader: {
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "space-between",
  },
  clearButton: {
    paddingHorizontal: 12,
    paddingVertical: 6,
    backgroundColor: "#f3f4f6",
    borderRadius: 6,
  },
  clearButtonText: {
    fontSize: 12,
    color: "#4b5563",
    fontWeight: "600",
  },
  logList: {
    maxHeight: 200,
    marginTop: 12,
  },
  logRow: {
    borderBottomWidth: StyleSheet.hairlineWidth,
    borderBottomColor: "#e5e7eb",
    paddingVertical: 6,
  },
  logTimestamp: {
    fontSize: 10,
    color: "#9ca3af",
  },
  logMessage: {
    fontSize: 12,
    color: "#4b5563",
  },
  log_info: {
    color: "#2563eb",
  },
  log_success: {
    color: "#16a34a",
  },
  log_error: {
    color: "#dc2626",
  },
  log_progress: {
    color: "#7c3aed",
  },
  log_instruction: {
    color: "#f97316",
  },
});

export default LivenessDemoScreen;
