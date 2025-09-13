/**
 * Liveness Demo Screen - Day 11 Final Demo Implementation
 * Canlılık Testi final demo - ardışık komutlar, ilerleme barı, başarı/hata mesajları
 */

import React, { useState, useRef, useMemo, useEffect } from "react";
import {
  View,
  Text,
  TouchableOpacity,
  StyleSheet,
  ScrollView,
  Alert,
  ActivityIndicator,
  SafeAreaView,
  Dimensions,
  Switch,
  Animated,
  Modal,
} from "react-native";
import { Camera, useCameraDevices } from "react-native-vision-camera";

import LivenessDetector, {
  LIVENESS_STATUS,
  LIVENESS_INSTRUCTIONS,
} from "../modules/liveness/LivenessDetector";
import {
  getRandomCommand,
  getAvailableCommandTypes,
  generateCommandSequence,
} from "../modules/liveness/commands";
import { validateResponse } from "../modules/liveness/validator";
import { checkSpoof } from "../modules/liveness/antiSpoofing";
import Logger from "../utils/logger";

const { width, height } = Dimensions.get("window");

const LivenessDemoScreen = () => {
  const [livenessData, setLivenessData] = useState(null);
  const [logs, setLogs] = useState([]);
  const [isProcessing, setIsProcessing] = useState(false);
  const [livenessStatus, setLivenessStatus] = useState("idle");
  const [progress, setProgress] = useState("");
  const [currentInstruction, setCurrentInstruction] = useState(null);
  const [capturedImages, setCapturedImages] = useState(0);
  const [testResults, setTestResults] = useState(null);
  const [currentCommand, setCurrentCommand] = useState(null);
  const [validationResult, setValidationResult] = useState(null);
  const [commandSequence, setCommandSequence] = useState([]);
  const [difficulty, setDifficulty] = useState("easy");

  // Day 10: Real-time camera, face detection and anti-spoofing states
  const [cameraPermission, setCameraPermission] = useState(null);
  const [showCamera, setShowCamera] = useState(false);
  const [realTimeMode, setRealTimeMode] = useState(true);
  const [faceDetectionState, setFaceDetectionState] = useState(null);
  const [motionDetected, setMotionDetected] = useState(null);
  const [antiSpoofingEnabled, setAntiSpoofingEnabled] = useState(true);
  const [antiSpoofingResult, setAntiSpoofingResult] = useState(null);
  const [spoofingTestMode, setSpoofingTestMode] = useState(false);

  const livenessDetectorRef = useRef(null);
  const cameraRef = useRef(null);
  const devices = useCameraDevices();

  // Day 9: Camera permission check
  useEffect(() => {
    checkCameraPermission();
  }, []);

  const checkCameraPermission = async () => {
    try {
      const permission = await Camera.getCameraPermissionStatus();
      setCameraPermission(permission);

      if (permission !== "authorized") {
        const newPermission = await Camera.requestCameraPermission();
        setCameraPermission(newPermission);
      }
    } catch (error) {
      addLog(`❌ Kamera izni hatası: ${error.message}`, "error");
    }
  };

  // Initialize Liveness Detector with callbacks (Day 9 Enhanced)
  const livenessDetector = useMemo(() => {
    const detector = new LivenessDetector({ realTimeMode });

    detector.onSuccess = (data) => {
      addLog(
        `✅ Canlılık testi başarılı! (${
          data.realTimeMode ? "Gerçek Zamanlı" : "Mock"
        })`,
        "success"
      );
      setLivenessData(data);
      setIsProcessing(false);
      setTestResults(data);
      setShowCamera(false);
    };

    detector.onError = (error) => {
      addLog(`❌ Canlılık testi hatası: ${error.message}`, "error");
      setIsProcessing(false);
      setShowCamera(false);

      Alert.alert("Canlılık Testi Hatası", error.message, [
        { text: "Tekrar Dene", onPress: handleLivenessTest },
        { text: "İptal", style: "cancel" },
      ]);
    };

    detector.onStatusChange = (newStatus, oldStatus) => {
      setLivenessStatus(newStatus);
      addLog(`📊 Durum değişti: ${oldStatus} → ${newStatus}`, "info");
    };

    detector.onProgress = (message) => {
      setProgress(message);
      addLog(`⏳ ${message}`, "progress");
    };

    detector.onInstructionGiven = (data) => {
      addLog(
        `📋 Talimat: ${data.message} ${
          data.realTimeMode ? "(Gerçek Zamanlı)" : "(Mock)"
        }`,
        "instruction"
      );
      setCurrentInstruction(data.instruction);
      setCurrentCommand(data.command);
    };

    detector.onCaptureComplete = (data) => {
      setCapturedImages(data.imageCount || 0);
      addLog(`📸 Görüntü yakalandı: ${data.imageCount || 0}`, "capture");
    };

    // Day 9: Motion detection callback
    detector.onMotionDetected = (motionData) => {
      setMotionDetected(motionData);
      addLog(
        `🎯 Hareket algılandı: ${
          motionData.motionType
        } (Güven: ${motionData.confidence.overall.toFixed(2)})`,
        "motion"
      );

    livenessDetectorRef.current = detector;
    return detector;
  }, [realTimeMode]);

  // Add log entry
  const addLog = (message, type = "info") => {
    const timestamp = new Date().toLocaleTimeString("tr-TR");
    const logEntry = {
      id: Date.now(),
      message,
      type,
      timestamp,
    };

    setLogs((prevLogs) => [logEntry, ...prevLogs.slice(0, 49)]);
    Logger.info(`[${type.toUpperCase()}] ${message}`);
  };

  // Get status color
  const getStatusColor = (status) => {
    switch (status) {
      case "idle":
        return "#9E9E9E";
      case "initializing":
        return "#FF9800";
      case "camera_ready":
        return "#2196F3";
      case "instruction_given":
        return "#9C27B0";
      case "capturing":
        return "#FF5722";
      case "processing":
        return "#FF9800";
      case "success":
        return "#4CAF50";
      case "error":
        return "#F44336";
      default:
        return "#9E9E9E";
    }
  };

  // Start liveness test (Day 9 Enhanced)
  const handleLivenessTest = async () => {
    try {
      setIsProcessing(true);
      setLogs([]);
      setLivenessData(null);
      setTestResults(null);
      setValidationResult(null);
      setCurrentCommand(null);
      setCurrentInstruction(null);
      setProgress("");
      setMotionDetected(null);

      addLog(
        `🚀 Canlılık testi başlatılıyor... (${
          realTimeMode ? "Gerçek Zamanlı" : "Mock"
        } Mod)`,
        "info"

      // Show camera for real-time mode
      if (realTimeMode && cameraPermission === "authorized") {
        setShowCamera(true);
      }

      const options = {
        difficulty,
        commandCount: 3,
        maxRetries: 2,
        realTimeMode,
      };

      await livenessDetector.startLivenessTest(options);
    } catch (error) {
      addLog(`❌ Test başlatma hatası: ${error.message}`, "error");
      setIsProcessing(false);
      setShowCamera(false);

      Alert.alert(
        "Test Hatası",
        `Canlılık testi başlatılamadı: ${error.message}`,
        [{ text: "Tamam" }]
      );
    }
  };

  // Handle Stop Liveness Test (Day 9 Enhanced)
  const handleStopLivenessTest = async () => {
    try {
      await livenessDetector.stopLivenessTest();
      addLog("⏹️ Canlılık testi durduruldu", "info");
      setIsProcessing(false);
      setShowCamera(false);
    } catch (error) {
      addLog(`❌ Durdurma hatası: ${error.message}`, "error");
    }
  };

  // Handle Reset (Day 10 Enhanced)
  const handleReset = () => {
    livenessDetector.reset();
    setLivenessData(null);
    setIsProcessing(false);
    setShowCamera(false);
    setMotionDetected(null);
    setFaceDetectionState(null);
    setAntiSpoofingResult(null);
    setLivenessStatus("idle");
    setProgress("");
    setCurrentInstruction(null);
    setCapturedImages(0);
    setTestResults(null);
    setLogs([]);
    addLog("🔄 Canlılık testi sıfırlandı", "info");
  };

  // Day 10: Simulate spoofing test
  const simulateSpoofingTest = async () => {
    try {
      addLog("🧪 Sahte test simülasyonu başlatılıyor...", "info");

      // Create fake frame data that should be detected as spoofing
      const fakeFrameData = {
        faces: [
          {
            bounds: { x: 100, y: 100, width: 200, height: 200 },
            landmarks: {
              leftEye: { openProbability: 0.9 },
              rightEye: { openProbability: 0.9 },
              nose: { position: { x: 200, y: 150, z: 0 } },
              mouth: { position: { x: 200, y: 180, z: 0 } },
            },
            contours: {
              face: [
                { x: 100, y: 100, z: 0 },
                { x: 300, y: 100, z: 0 },
                { x: 300, y: 300, z: 0 },
                { x: 100, y: 300, z: 0 },
              ],
            },
            smileProbability: 0.1,
          },
        ],
        imageData: {
          width: 400,
          height: 400,
          format: "rgba",
        },
      };

      // Force spoofing detection by manipulating the result
      const spoofResult = await checkSpoof(fakeFrameData);

      // Override result to simulate spoofing detection
      const simulatedResult = {
        ...spoofResult,
        isReal: false,
        confidence: 0.25,
        reason: "Ekran/fotoğraf tespit edildi",
        details: {
          ...spoofResult.details,
          simulatedTest: true,
          textureVariance: 0.1,
          pixelationScore: 0.9,
          reflectionScore: 0.8,
        }
      };

      setAntiSpoofingResult(simulatedResult);
      addLog(`❌ Sahte tespit edildi: ${simulatedResult.reason}`, "error");
      addLog(
        `🔍 Güven skoru: ${(simulatedResult.confidence * 100).toFixed(1)}%`,
        "info"

      // Show alert
      Alert.alert(
        "❌ Sahte Tespit Edildi",
        `Sistem sahte bir giriş tespit etti.\n\nSebep: ${
          simulatedResult.reason
        }\nGüven Skoru: ${(simulatedResult.confidence * 100).toFixed(1)}%`,
        [{ text: "Tamam" }]
      );
    } catch (error) {
      addLog(`❌ Sahte test simülasyonu hatası: ${error.message}`, "error");
    }
  };

  // Clear logs
  const clearLogs = () => {
    setLogs([]);
    addLog("📝 Loglar temizlendi", "info");
  };

  // Day 9: Camera frame processing
  const onCameraFrame = async (frame) => {
    if (!realTimeMode || !livenessDetector) {return;}

    try {
      const result = await livenessDetector.processCameraFrame(frame);
      if (result) {
        setFaceDetectionState(livenessDetector.getFaceDetectionState());
      }
    } catch (error) {
      // Silent error handling for frame processing
    }
  };

  return (
    <SafeAreaView style={styles.container}>
      <ScrollView style={styles.scrollView}>
        <Text style={styles.title}>Canlılık Testi Demo - Day 10 🛡️</Text>

        {/* Real-time Mode Toggle */}
        <View style={styles.modeContainer}>
          <Text style={styles.modeLabel}>Mod:</Text>
          <TouchableOpacity
            style={[
              styles.modeButton,
              realTimeMode ? styles.realTimeModeActive : styles.mockModeActive,
            ]}
            onPress={() => setRealTimeMode(!realTimeMode)}
            disabled={isProcessing}
          >
            <Text style={styles.modeButtonText}>
              {realTimeMode ? "📹 Gerçek Zamanlı" : "🎭 Mock"}
            </Text>
          </TouchableOpacity>
        </View>

        {/* Anti-Spoofing Controls */}
        <View style={styles.antiSpoofingContainer}>
          <View style={styles.antiSpoofingRow}>
            <Text style={styles.antiSpoofingLabel}>🛡️ Anti-Spoofing:</Text>
            <Switch
              value={antiSpoofingEnabled}
              onValueChange={setAntiSpoofingEnabled}
              disabled={isProcessing}
              trackColor={{ false: "#767577", true: "#4CAF50" }}
              thumbColor={antiSpoofingEnabled ? "#fff" : "#f4f3f4"}
            />
          </View>

          <View style={styles.antiSpoofingRow}>
            <Text style={styles.antiSpoofingLabel}>🧪 Sahte Test Modu:</Text>
            <Switch
              value={spoofingTestMode}
              onValueChange={setSpoofingTestMode}
              disabled={isProcessing}
              trackColor={{ false: "#767577", true: "#FF9800" }}
              thumbColor={spoofingTestMode ? "#fff" : "#f4f3f4"}
            />
          </View>

          {spoofingTestMode && (
            <View style={styles.spoofingWarning}>
              <Text style={styles.spoofingWarningText}>
                ⚠️ Sahte test modu aktif - sistem sahte girişleri simüle edecek
              </Text>
            </View>
          )}
        </View>

        {/* Camera Permission Status */}
        {realTimeMode && (
          <View style={styles.permissionContainer}>
            <Text style={styles.permissionLabel}>Kamera İzni:</Text>
            <Text
              style={[
                styles.permissionStatus,
                {
                  color:
                    cameraPermission === "authorized" ? "#4CAF50" : "#F44336",
                },
              ]}
            >
              {cameraPermission === "authorized" ? "✅ Verildi" : "❌ Gerekli"}
            </Text>
          </View>
        )}

        {/* Status Display */}
        <View style={styles.statusContainer}>
          <Text style={styles.statusLabel}>Durum:</Text>
          <Text
            style={[
              styles.statusValue,
              { color: getStatusColor(livenessStatus) },
            ]}
          >
            {livenessStatus.toUpperCase()}
          </Text>
        </View>

        {progress ? (
          <View style={styles.progressContainer}>
            <Text style={styles.progressText}>{progress}</Text>
          </View>
        ) : null}

        {/* Camera Feed for Real-time Mode */}
        {showCamera &&
          realTimeMode &&
          cameraPermission === "authorized" &&
          devices.front && (
            <View style={styles.cameraContainer}>
              <Text style={styles.cameraTitle}>📹 Canlı Kamera Feed</Text>
              <Camera
                ref={cameraRef}
                style={styles.camera}
                device={devices.front}
                isActive={showCamera}
                frameProcessor={onCameraFrame}
              />
              {faceDetectionState && (
                <View style={styles.detectionOverlay}>
                  <Text style={styles.detectionText}>
                    {faceDetectionState.isReady
                      ? "✅ Yüz Algılama Hazır"
                      : "⏳ Hazırlanıyor..."}
                  </Text>
                  {motionDetected && (
                    <Text style={styles.motionText}>
                      🎯 {motionDetected.motionType}:{" "}
                      {motionDetected.confidence.overall.toFixed(2)}
                    </Text>
                  )}
                </View>
              )}
            </View>
          )}

        {/* Current Command Display */}
        {currentCommand && (
          <View style={styles.commandContainer}>
            <Text style={styles.commandTitle}>Mevcut Komut:</Text>
            <Text style={styles.commandText}>
              {currentCommand.icon} {currentCommand.message}
            </Text>
          </View>
        )}

        {/* Control Buttons */}
        <View style={styles.buttonContainer}>
          <TouchableOpacity
            style={[
              styles.button,
              styles.primaryButton,
              isProcessing && styles.disabledButton,
            ]}
            onPress={handleLivenessTest}
            disabled={
              isProcessing ||
              (realTimeMode && cameraPermission !== "authorized")
            }
          >
            {isProcessing ? (
              <ActivityIndicator color="#FFFFFF" />
            ) : (
              <Text style={styles.buttonText}>
                {realTimeMode ? "📹 Gerçek Zamanlı Test" : "🎭 Mock Test"}
              </Text>
            )}
          </TouchableOpacity>

          {isProcessing && (
            <TouchableOpacity
              style={[styles.button, styles.secondaryButton]}
              onPress={handleStopLivenessTest}
            >
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

          {/* Spoofing Test Button */}
          <TouchableOpacity
            style={[styles.button, styles.spoofingTestButton]}
            onPress={simulateSpoofingTest}
            disabled={isProcessing}
          >
            <Text style={styles.buttonText}>🧪 Sahte Test</Text>
          </TouchableOpacity>
        </View>

        {/* Anti-Spoofing Result Display */}
        {antiSpoofingResult && (
          <View
            style={[
              styles.resultContainer,
              antiSpoofingResult.isReal
                ? styles.realResultContainer
                : styles.fakeResultContainer,
            ]}
          >
            <Text style={styles.resultTitle}>
              {antiSpoofingResult.isReal
                ? "✅ Gerçek Yüz Tespit Edildi"
                : "❌ Sahte Tespit Edildi"}
            </Text>
            <Text style={styles.resultText}>
              Güven Skoru: {(antiSpoofingResult.confidence * 100).toFixed(1)}%
            </Text>
            <Text style={styles.resultText}>
              Sebep: {antiSpoofingResult.reason}
            </Text>
            {antiSpoofingResult.details && (
              <Text style={styles.resultText}>
                Detaylar: {JSON.stringify(antiSpoofingResult.details, null, 2)}
              </Text>
            )}
          </View>
        )}

        {/* Test Results */}
        {testResults && (
          <View style={styles.resultContainer}>
            <Text style={styles.resultTitle}>Test Sonuçları:</Text>
            <Text style={styles.resultText}>Durum: {testResults.status}</Text>
            <Text style={styles.resultText}>
              Süre: {testResults.duration}ms
            </Text>
            <Text style={styles.resultText}>
              Tamamlanan Komutlar: {testResults.instructions?.length || 0}
            </Text>
            <Text style={styles.resultText}>
              Mod: {testResults.realTimeMode ? "Gerçek Zamanlı" : "Mock"}
            </Text>
            {testResults.antiSpoofingEnabled && (
              <Text style={styles.resultText}>
                Anti-Spoofing:{" "}
                {testResults.antiSpoofingResult?.isReal
                  ? "✅ Geçti"
                  : "❌ Başarısız"}
              </Text>
            )}
          </View>
        )}

        {/* Logs */}
        <View style={styles.logsContainer}>
          <View style={styles.logsHeader}>
            <Text style={styles.logsTitle}>Loglar ({logs.length})</Text>
            <TouchableOpacity onPress={clearLogs} style={styles.clearButton}>
              <Text style={styles.clearButtonText}>Temizle</Text>
            </TouchableOpacity>
          </View>

          <ScrollView style={styles.logsScrollView} nestedScrollEnabled>
            {logs.map((log) => (
              <View key={log.id} style={styles.logEntry}>
                <Text style={styles.logTimestamp}>{log.timestamp}</Text>
                <Text style={[styles.logMessage, styles[`log_${log.type}`]]}>
                  {log.message}
                </Text>
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
    backgroundColor: "#f5f5f5",
  },
  scrollView: {
    flex: 1,
    padding: 16,
  },
  title: {
    fontSize: 24,
    fontWeight: "bold",
    textAlign: "center",
    marginBottom: 20,
    color: "#333",
  },
  modeContainer: {
    flexDirection: "row",
    alignItems: "center",
    marginBottom: 16,
    padding: 12,
    backgroundColor: "#fff",
    borderRadius: 8,
  },
  modeLabel: {
    fontSize: 16,
    fontWeight: "600",
    marginRight: 12,
    color: "#333",
  },
  modeButton: {
    paddingHorizontal: 16,
    paddingVertical: 8,
    borderRadius: 20,
    borderWidth: 2,
  },
  realTimeModeActive: {
    backgroundColor: "#2196F3",
    borderColor: "#2196F3",
  },
  mockModeActive: {
    backgroundColor: "#FF9800",
    borderColor: "#FF9800",
  },
  modeButtonText: {
    color: "#fff",
    fontWeight: "600",
  },
  permissionContainer: {
    flexDirection: "row",
    alignItems: "center",
    marginBottom: 16,
    padding: 12,
    backgroundColor: "#fff",
    borderRadius: 8,
  },
  permissionLabel: {
    fontSize: 16,
    fontWeight: "600",
    marginRight: 12,
    color: "#333",
  },
  permissionStatus: {
    fontSize: 14,
    fontWeight: "500",
  },
  statusContainer: {
    flexDirection: "row",
    alignItems: "center",
    marginBottom: 16,
    padding: 12,
    backgroundColor: "#fff",
    borderRadius: 8,
  },
  statusLabel: {
    fontSize: 16,
    fontWeight: "600",
    marginRight: 12,
    color: "#333",
  },
  statusValue: {
    fontSize: 14,
    fontWeight: "500",
  },
  progressContainer: {
    marginBottom: 16,
    padding: 12,
    backgroundColor: "#fff",
    borderRadius: 8,
  },
  progressText: {
    fontSize: 14,
    color: "#666",
    textAlign: "center",
  },
  cameraContainer: {
    marginBottom: 16,
    backgroundColor: "#fff",
    borderRadius: 8,
    overflow: "hidden",
  },
  cameraTitle: {
    fontSize: 16,
    fontWeight: "600",
    padding: 12,
    backgroundColor: "#f0f0f0",
    color: "#333",
  },
  camera: {
    width: "100%",
    height: 300,
  },
  detectionOverlay: {
    position: "absolute",
    top: 50,
    left: 12,
    right: 12,
    backgroundColor: "rgba(0,0,0,0.7)",
    padding: 8,
    borderRadius: 4,
  },
  detectionText: {
    color: "#fff",
    fontSize: 12,
    fontWeight: "600",
  },
  motionText: {
    color: "#4CAF50",
    fontSize: 12,
    fontWeight: "600",
    marginTop: 4,
  },
  commandContainer: {
    marginBottom: 16,
    padding: 12,
    backgroundColor: "#fff",
    borderRadius: 8,
  },
  commandTitle: {
    fontSize: 16,
    fontWeight: "600",
    marginBottom: 8,
    color: "#333",
  },
  commandText: {
    fontSize: 18,
    color: "#2196F3",
    textAlign: "center",
  },
  buttonContainer: {
    marginBottom: 20,
  },
  button: {
    paddingVertical: 12,
    paddingHorizontal: 24,
    borderRadius: 8,
    marginBottom: 12,
    alignItems: "center",
  },
  primaryButton: {
    backgroundColor: "#2196F3",
  },
  secondaryButton: {
    backgroundColor: "#757575",
  },
  disabledButton: {
    backgroundColor: "#BDBDBD",
  },
  buttonText: {
    color: "#FFFFFF",
    fontSize: 16,
    fontWeight: "600",
  },
  resultContainer: {
    marginBottom: 20,
    padding: 16,
    backgroundColor: "#fff",
    borderRadius: 8,
  },
  resultTitle: {
    fontSize: 18,
    fontWeight: "bold",
    marginBottom: 12,
    color: "#333",
  },
  resultText: {
    fontSize: 14,
    marginBottom: 4,
    color: "#666",
  },
  logsContainer: {
    backgroundColor: "#fff",
    borderRadius: 8,
    maxHeight: 300,
  },
  logsHeader: {
    flexDirection: "row",
    justifyContent: "space-between",
    alignItems: "center",
    padding: 12,
    borderBottomWidth: 1,
    borderBottomColor: "#eee",
  },
  logsTitle: {
    fontSize: 16,
    fontWeight: "600",
    color: "#333",
  },
  clearButton: {
    paddingHorizontal: 12,
    paddingVertical: 6,
    backgroundColor: "#f44336",
    borderRadius: 4,
  },
  clearButtonText: {
    color: "#fff",
    fontSize: 12,
    fontWeight: "600",
  },
  logsScrollView: {
    maxHeight: 200,
  },
  logEntry: {
    padding: 8,
    borderBottomWidth: 1,
    borderBottomColor: "#f0f0f0",
  },
  logTimestamp: {
    fontSize: 10,
    color: "#999",
    marginBottom: 2,
  },
  logMessage: {
    fontSize: 12,
    color: "#333",
  },
  log_info: {
    color: "#2196f3",
  },
  log_success: {
    color: "#4caf50",
  },
  log_error: {
    color: "#F44336",
  },
  log_warning: {
    color: "#ff9800",
  },
  log_instruction: {
    color: "#9c27b0",
  },
  log_progress: {
    color: "#ff5722",
  },
  log_motion: {
    color: "#4caf50",
  },
  log_capture: {
    color: "#607d8b",
  },

  // Day 10: Anti-Spoofing Styles
  antiSpoofingContainer: {
    marginBottom: 16,
    padding: 12,
    backgroundColor: "#fff",
    borderRadius: 8,
    borderWidth: 1,
    borderColor: "#E0E0E0",
  },
  antiSpoofingRow: {
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "space-between",
    marginBottom: 8,
  },
  antiSpoofingLabel: {
    fontSize: 16,
    fontWeight: "600",
    color: "#333",
  },
  spoofingWarning: {
    marginTop: 8,
    padding: 8,
    backgroundColor: "#FFF3E0",
    borderRadius: 4,
    borderLeftWidth: 4,
    borderLeftColor: "#FF9800",
  },
  spoofingWarningText: {
    fontSize: 14,
    color: "#E65100",
    fontWeight: "500",
  },
  spoofingTestButton: {
    backgroundColor: "#FF9800",
    borderColor: "#FF9800",
  },
  realResultContainer: {
    borderLeftWidth: 4,
    borderLeftColor: "#4CAF50",
    backgroundColor: "#E8F5E8",
  },
  fakeResultContainer: {
    borderLeftWidth: 4,
    borderLeftColor: "#F44336",
    backgroundColor: "#FFEBEE",
  },
});

export default LivenessDemoScreen;
