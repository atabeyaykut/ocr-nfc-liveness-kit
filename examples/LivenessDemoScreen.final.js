/**
 * Liveness Demo Screen - Final Implementation
 * Canlılık Testi final demo - ardışık komutlar, ilerleme barı, başarı/hata mesajları
 */

import React, { useState, useRef, useEffect } from "react";
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
  Animated,
  Modal,
  ProgressBarAndroid,
  ProgressViewIOS,
  Platform,
} from "react-native";

import LivenessDetector, {
  LIVENESS_STATUS,
  LIVENESS_INSTRUCTIONS,
} from "../modules/liveness/LivenessDetector";
import {
  getRandomCommand,
  getAvailableCommandTypes,
  generateCommandSequence,
} from "../modules/liveness/commands";
import Logger from "../utils/logger";

const { width, height } = Dimensions.get("window");

const LivenessDemoScreen = () => {
  // Ana state değişkenleri
  const [isProcessing, setIsProcessing] = useState(false);
  const [livenessStatus, setLivenessStatus] = useState("idle");
  const [logs, setLogs] = useState([]);
  
  // Ardışık komut akışı state'leri
  const [commandSequence, setCommandSequence] = useState([]);
  const [currentCommandIndex, setCurrentCommandIndex] = useState(0);
  const [completedCommands, setCompletedCommands] = useState([]);
  const [currentInstruction, setCurrentInstruction] = useState(null);
  
  // İlerleme barı state'leri
  const [progress, setProgress] = useState(0);
  const [progressText, setProgressText] = useState("");
  const progressAnim = useRef(new Animated.Value(0)).current;
  
  // Sonuç state'leri
  const [finalResult, setFinalResult] = useState(null);
  const [showResultModal, setShowResultModal] = useState(false);
  const [testResults, setTestResults] = useState([]);
  
  // Konfigürasyon
  const [difficulty, setDifficulty] = useState("easy");
  const [commandCount, setCommandCount] = useState(3);
  const [enableAntiSpoofing, setEnableAntiSpoofing] = useState(true);

  const livenessDetector = useRef(new LivenessDetector({
    onStatusChange: handleStatusChange,
    onError: handleError,
    onSuccess: handleSuccess,
    onProgress: handleProgress,
  })).current;

  // Log ekleme fonksiyonu
  const addLog = (message, type = "info") => {
    const timestamp = new Date().toLocaleTimeString("tr-TR");
    const logEntry = {
      id: Date.now(),
      timestamp,
      message,
      type,
    };
    setLogs(prev => [logEntry, ...prev.slice(0, 49)]);
    
    if (type === "error") {
      Logger.error("LivenessDemo", message);
    } else {
      Logger.info("LivenessDemo", message);
    }
  };

  // Status değişikliği callback'i
  const handleStatusChange = (newStatus, oldStatus) => {
    setLivenessStatus(newStatus);
    addLog(`Durum değişti: ${oldStatus} → ${newStatus}`);
  };

  // Hata callback'i
  const handleError = (error) => {
    addLog(`Hata: ${error.message}`, "error");
    setIsProcessing(false);
    
    // Hata durumunda kullanıcıya seçenek sun
    Alert.alert(
      "Canlılık Testi Hatası",
      error.message,
      [
        { text: "Tekrar Dene", onPress: retryCurrentCommand },
        { text: "İptal", onPress: resetTest, style: "cancel" }
      ]
    );
  };

  // Başarı callback'i
  const handleSuccess = (result) => {
    addLog(`Başarılı: ${JSON.stringify(result)}`);
    handleCommandCompletion(result);
  };

  // İlerleme callback'i
  const handleProgress = (progressData) => {
    setProgressText(progressData.message || "İşleniyor...");
    if (progressData.percentage) {
      updateProgress(progressData.percentage);
    }
  };

  // İlerleme barını güncelle
  const updateProgress = (percentage) => {
    setProgress(percentage);
    Animated.timing(progressAnim, {
      toValue: percentage / 100,
      duration: 300,
      useNativeDriver: false,
    }).start();
  };

  // Komut tamamlama işlemi
  const handleCommandCompletion = (result) => {
    const currentCommand = commandSequence[currentCommandIndex];
    const completedCommand = {
      ...currentCommand,
      result,
      completedAt: new Date().toISOString(),
      success: result.success,
    };

    setCompletedCommands(prev => [...prev, completedCommand]);
    setTestResults(prev => [...prev, result]);

    // Sonraki komuta geç
    if (currentCommandIndex < commandSequence.length - 1) {
      setCurrentCommandIndex(prev => prev + 1);
      const nextProgress = ((currentCommandIndex + 1) / commandSequence.length) * 100;
      updateProgress(nextProgress);
      
      // Kısa bir bekleme sonrası sonraki komutu başlat
      setTimeout(() => {
        executeNextCommand();
      }, 1500);
    } else {
      // Tüm komutlar tamamlandı
      completeTest();
    }
  };

  // Sonraki komutu çalıştır
  const executeNextCommand = () => {
    if (currentCommandIndex < commandSequence.length) {
      const command = commandSequence[currentCommandIndex];
      setCurrentInstruction(command.instruction);
      addLog(`Komut başlatılıyor: ${command.instruction}`);
      
      // LivenessDetector ile komutu çalıştır
      livenessDetector.executeCommand(command.type, {
        enableAntiSpoofing,
        timeout: 10000,
      });
    }
  };

  // Mevcut komutu tekrar dene
  const retryCurrentCommand = () => {
    if (currentCommandIndex < commandSequence.length) {
      addLog("Komut tekrar deneniyor...");
      setIsProcessing(true);
      executeNextCommand();
    }
  };

  // Testi tamamla
  const completeTest = () => {
    setIsProcessing(false);
    updateProgress(100);
    
    const successCount = completedCommands.filter(cmd => cmd.success).length;
    const totalCommands = commandSequence.length;
    const successRate = (successCount / totalCommands) * 100;
    
    const result = {
      success: successRate >= 70, // %70 başarı oranı gerekli
      successRate,
      completedCommands: completedCommands.length,
      totalCommands,
      duration: Date.now() - testStartTime,
      commands: completedCommands,
      testResults,
    };
    
    setFinalResult(result);
    setShowResultModal(true);
    
    addLog(
      `Test tamamlandı: ${successCount}/${totalCommands} başarılı (${successRate.toFixed(1)}%)`,
      result.success ? "success" : "warning"
    );
  };

  // Test başlatma
  const [testStartTime, setTestStartTime] = useState(null);
  
  const startLivenessTest = async () => {
    try {
      setIsProcessing(true);
      setTestStartTime(Date.now());
      setCurrentCommandIndex(0);
      setCompletedCommands([]);
      setTestResults([]);
      setProgress(0);
      setFinalResult(null);
      
      // Komut dizisini oluştur
      const sequence = generateCommandSequence(commandCount, difficulty);
      setCommandSequence(sequence);
      
      addLog(`Canlılık testi başlatılıyor: ${commandCount} komut (${difficulty} zorluk)`);
      addLog(`Komutlar: ${sequence.map(cmd => cmd.instruction).join(", ")}`);
      
      // İlk komutu başlat
      setTimeout(() => {
        executeNextCommand();
      }, 1000);
      
    } catch (error) {
      handleError(error);
    }
  };

  // Testi sıfırla
  const resetTest = () => {
    setIsProcessing(false);
    setLivenessStatus("idle");
    setCommandSequence([]);
    setCurrentCommandIndex(0);
    setCompletedCommands([]);
    setCurrentInstruction(null);
    setProgress(0);
    setProgressText("");
    setFinalResult(null);
    setShowResultModal(false);
    setTestResults([]);
    progressAnim.setValue(0);
    
    addLog("Test sıfırlandı");
  };

  // Sonuç modalını kapat
  const closeResultModal = () => {
    setShowResultModal(false);
    resetTest();
  };

  // İlerleme barı komponenti
  const ProgressBar = ({ progress }) => {
    if (Platform.OS === 'ios') {
      return (
        <ProgressViewIOS
          style={styles.progressBar}
          progress={progress / 100}
          progressTintColor="#4CAF50"
          trackTintColor="#E0E0E0"
        />
      );
    } else {
      return (
        <ProgressBarAndroid
          style={styles.progressBar}
          styleAttr="Horizontal"
          progress={progress / 100}
          color="#4CAF50"
        />
      );
    }
  };

  return (
    <SafeAreaView style={styles.container}>
      <ScrollView style={styles.scrollView}>
        {/* Başlık */}
        <View style={styles.header}>
          <Text style={styles.title}>Canlılık Testi Demo</Text>
          <Text style={styles.subtitle}>Final Akış - Ardışık Komutlar</Text>
        </View>

        {/* Konfigürasyon */}
        <View style={styles.configSection}>
          <Text style={styles.sectionTitle}>Test Konfigürasyonu</Text>
          
          <View style={styles.configRow}>
            <Text style={styles.configLabel}>Zorluk Seviyesi:</Text>
            <View style={styles.difficultyButtons}>
              {["easy", "medium", "hard"].map(level => (
                <TouchableOpacity
                  key={level}
                  style={[
                    styles.difficultyButton,
                    difficulty === level && styles.difficultyButtonActive
                  ]}
                  onPress={() => setDifficulty(level)}
                  disabled={isProcessing}
                >
                  <Text style={[
                    styles.difficultyButtonText,
                    difficulty === level && styles.difficultyButtonTextActive
                  ]}>
                    {level === "easy" ? "Kolay" : level === "medium" ? "Orta" : "Zor"}
                  </Text>
                </TouchableOpacity>
              ))}
            </View>
          </View>

          <View style={styles.configRow}>
            <Text style={styles.configLabel}>Komut Sayısı:</Text>
            <View style={styles.countButtons}>
              {[3, 5, 7].map(count => (
                <TouchableOpacity
                  key={count}
                  style={[
                    styles.countButton,
                    commandCount === count && styles.countButtonActive
                  ]}
                  onPress={() => setCommandCount(count)}
                  disabled={isProcessing}
                >
                  <Text style={[
                    styles.countButtonText,
                    commandCount === count && styles.countButtonTextActive
                  ]}>
                    {count}
                  </Text>
                </TouchableOpacity>
              ))}
            </View>
          </View>
        </View>

        {/* İlerleme Bölümü */}
        {isProcessing && (
          <View style={styles.progressSection}>
            <Text style={styles.sectionTitle}>Test İlerlemesi</Text>
            
            <View style={styles.progressContainer}>
              <Text style={styles.progressText}>
                {currentCommandIndex + 1} / {commandSequence.length} Komut
              </Text>
              <ProgressBar progress={progress} />
              <Text style={styles.progressPercentage}>{Math.round(progress)}%</Text>
            </View>

            {currentInstruction && (
              <View style={styles.instructionContainer}>
                <Text style={styles.instructionTitle}>Şu anda:</Text>
                <Text style={styles.instructionText}>{currentInstruction}</Text>
              </View>
            )}

            {progressText && (
              <Text style={styles.statusText}>{progressText}</Text>
            )}
          </View>
        )}

        {/* Tamamlanan Komutlar */}
        {completedCommands.length > 0 && (
          <View style={styles.completedSection}>
            <Text style={styles.sectionTitle}>Tamamlanan Komutlar</Text>
            {completedCommands.map((command, index) => (
              <View key={index} style={styles.completedCommand}>
                <View style={styles.commandHeader}>
                  <Text style={styles.commandInstruction}>{command.instruction}</Text>
                  <View style={[
                    styles.commandStatus,
                    command.success ? styles.commandSuccess : styles.commandFailure
                  ]}>
                    <Text style={styles.commandStatusText}>
                      {command.success ? "✓" : "✗"}
                    </Text>
                  </View>
                </View>
                {command.result && (
                  <Text style={styles.commandResult}>
                    Güven: {(command.result.confidence * 100).toFixed(1)}%
                  </Text>
                )}
              </View>
            ))}
          </View>
        )}

        {/* Kontrol Butonları */}
        <View style={styles.controlSection}>
          <TouchableOpacity
            style={[styles.startButton, isProcessing && styles.startButtonDisabled]}
            onPress={startLivenessTest}
            disabled={isProcessing}
          >
            {isProcessing ? (
              <ActivityIndicator color="#FFFFFF" />
            ) : (
              <Text style={styles.startButtonText}>Canlılık Testini Başlat</Text>
            )}
          </TouchableOpacity>

          {isProcessing && (
            <TouchableOpacity
              style={styles.cancelButton}
              onPress={resetTest}
            >
              <Text style={styles.cancelButtonText}>İptal Et</Text>
            </TouchableOpacity>
          )}
        </View>

        {/* Log Bölümü */}
        <View style={styles.logSection}>
          <Text style={styles.sectionTitle}>İşlem Günlüğü</Text>
          <ScrollView style={styles.logContainer} nestedScrollEnabled>
            {logs.map((log) => (
              <View key={log.id} style={styles.logEntry}>
                <Text style={styles.logTimestamp}>{log.timestamp}</Text>
                <Text style={[
                  styles.logMessage,
                  log.type === "error" && styles.logError,
                  log.type === "success" && styles.logSuccess,
                  log.type === "warning" && styles.logWarning,
                ]}>
                  {log.message}
                </Text>
              </View>
            ))}
          </ScrollView>
        </View>
      </ScrollView>

      {/* Sonuç Modalı */}
      <Modal
        visible={showResultModal}
        animationType="slide"
        transparent={true}
        onRequestClose={closeResultModal}
      >
        <View style={styles.modalOverlay}>
          <View style={styles.modalContainer}>
            <View style={styles.modalHeader}>
              <Text style={styles.modalTitle}>Test Sonucu</Text>
              <View style={[
                styles.resultBadge,
                finalResult?.success ? styles.resultSuccess : styles.resultFailure
              ]}>
                <Text style={styles.resultBadgeText}>
                  {finalResult?.success ? "BAŞARILI" : "BAŞARISIZ"}
                </Text>
              </View>
            </View>

            {finalResult && (
              <View style={styles.modalContent}>
                <View style={styles.resultStats}>
                  <View style={styles.resultStat}>
                    <Text style={styles.resultStatValue}>
                      {finalResult.completedCommands}/{finalResult.totalCommands}
                    </Text>
                    <Text style={styles.resultStatLabel}>Tamamlanan</Text>
                  </View>
                  <View style={styles.resultStat}>
                    <Text style={styles.resultStatValue}>
                      {finalResult.successRate.toFixed(1)}%
                    </Text>
                    <Text style={styles.resultStatLabel}>Başarı Oranı</Text>
                  </View>
                  <View style={styles.resultStat}>
                    <Text style={styles.resultStatValue}>
                      {(finalResult.duration / 1000).toFixed(1)}s
                    </Text>
                    <Text style={styles.resultStatLabel}>Süre</Text>
                  </View>
                </View>

                <Text style={styles.resultMessage}>
                  {finalResult.success
                    ? "Canlılık testi başarıyla tamamlandı! Tüm hareketler doğru şekilde algılandı."
                    : "Canlılık testi başarısız. Lütfen tekrar deneyin ve komutları daha net şekilde uygulayın."
                  }
                </Text>
              </View>
            )}

            <View style={styles.modalActions}>
              <TouchableOpacity
                style={styles.modalButton}
                onPress={closeResultModal}
              >
                <Text style={styles.modalButtonText}>Tamam</Text>
              </TouchableOpacity>
            </View>
          </View>
        </View>
      </Modal>
    </SafeAreaView>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: "#F5F5F5",
  },
  scrollView: {
    flex: 1,
  },
  header: {
    backgroundColor: "#2196F3",
    padding: 20,
    alignItems: "center",
  },
  title: {
    fontSize: 24,
    fontWeight: "bold",
    color: "#FFFFFF",
    marginBottom: 5,
  },
  subtitle: {
    fontSize: 16,
    color: "#E3F2FD",
  },
  configSection: {
    backgroundColor: "#FFFFFF",
    margin: 15,
    padding: 15,
    borderRadius: 10,
    elevation: 2,
    shadowColor: "#000",
    shadowOffset: { width: 0, height: 2 },
    shadowOpacity: 0.1,
    shadowRadius: 4,
  },
  sectionTitle: {
    fontSize: 18,
    fontWeight: "bold",
    color: "#333",
    marginBottom: 15,
  },
  configRow: {
    marginBottom: 15,
  },
  configLabel: {
    fontSize: 16,
    color: "#666",
    marginBottom: 8,
  },
  difficultyButtons: {
    flexDirection: "row",
    justifyContent: "space-between",
  },
  difficultyButton: {
    flex: 1,
    padding: 10,
    marginHorizontal: 5,
    backgroundColor: "#E0E0E0",
    borderRadius: 8,
    alignItems: "center",
  },
  difficultyButtonActive: {
    backgroundColor: "#2196F3",
  },
  difficultyButtonText: {
    fontSize: 14,
    color: "#666",
  },
  difficultyButtonTextActive: {
    color: "#FFFFFF",
    fontWeight: "bold",
  },
  countButtons: {
    flexDirection: "row",
    justifyContent: "flex-start",
  },
  countButton: {
    padding: 10,
    marginRight: 10,
    backgroundColor: "#E0E0E0",
    borderRadius: 8,
    minWidth: 50,
    alignItems: "center",
  },
  countButtonActive: {
    backgroundColor: "#4CAF50",
  },
  countButtonText: {
    fontSize: 16,
    color: "#666",
  },
  countButtonTextActive: {
    color: "#FFFFFF",
    fontWeight: "bold",
  },
  progressSection: {
    backgroundColor: "#FFFFFF",
    margin: 15,
    padding: 15,
    borderRadius: 10,
    elevation: 2,
    shadowColor: "#000",
    shadowOffset: { width: 0, height: 2 },
    shadowOpacity: 0.1,
    shadowRadius: 4,
  },
  progressContainer: {
    alignItems: "center",
    marginBottom: 15,
  },
  progressText: {
    fontSize: 16,
    color: "#333",
    marginBottom: 10,
  },
  progressBar: {
    width: "100%",
    height: 10,
    marginBottom: 10,
  },
  progressPercentage: {
    fontSize: 18,
    fontWeight: "bold",
    color: "#4CAF50",
  },
  instructionContainer: {
    backgroundColor: "#E3F2FD",
    padding: 15,
    borderRadius: 8,
    marginBottom: 10,
  },
  instructionTitle: {
    fontSize: 14,
    color: "#1976D2",
    marginBottom: 5,
  },
  instructionText: {
    fontSize: 18,
    fontWeight: "bold",
    color: "#1976D2",
    textAlign: "center",
  },
  statusText: {
    fontSize: 14,
    color: "#666",
    textAlign: "center",
    fontStyle: "italic",
  },
  completedSection: {
    backgroundColor: "#FFFFFF",
    margin: 15,
    padding: 15,
    borderRadius: 10,
    elevation: 2,
    shadowColor: "#000",
    shadowOffset: { width: 0, height: 2 },
    shadowOpacity: 0.1,
    shadowRadius: 4,
  },
  completedCommand: {
    backgroundColor: "#F8F9FA",
    padding: 12,
    borderRadius: 8,
    marginBottom: 10,
  },
  commandHeader: {
    flexDirection: "row",
    justifyContent: "space-between",
    alignItems: "center",
    marginBottom: 5,
  },
  commandInstruction: {
    fontSize: 16,
    color: "#333",
    flex: 1,
  },
  commandStatus: {
    width: 30,
    height: 30,
    borderRadius: 15,
    justifyContent: "center",
    alignItems: "center",
  },
  commandSuccess: {
    backgroundColor: "#4CAF50",
  },
  commandFailure: {
    backgroundColor: "#F44336",
  },
  commandStatusText: {
    color: "#FFFFFF",
    fontWeight: "bold",
    fontSize: 16,
  },
  commandResult: {
    fontSize: 14,
    color: "#666",
  },
  controlSection: {
    margin: 15,
  },
  startButton: {
    backgroundColor: "#4CAF50",
    padding: 15,
    borderRadius: 10,
    alignItems: "center",
    marginBottom: 10,
  },
  startButtonDisabled: {
    backgroundColor: "#CCCCCC",
  },
  startButtonText: {
    color: "#FFFFFF",
    fontSize: 18,
    fontWeight: "bold",
  },
  cancelButton: {
    backgroundColor: "#F44336",
    padding: 15,
    borderRadius: 10,
    alignItems: "center",
  },
  cancelButtonText: {
    color: "#FFFFFF",
    fontSize: 16,
    fontWeight: "bold",
  },
  logSection: {
    backgroundColor: "#FFFFFF",
    margin: 15,
    padding: 15,
    borderRadius: 10,
    elevation: 2,
    shadowColor: "#000",
    shadowOffset: { width: 0, height: 2 },
    shadowOpacity: 0.1,
    shadowRadius: 4,
  },
  logContainer: {
    maxHeight: 200,
    backgroundColor: "#F8F9FA",
    borderRadius: 8,
    padding: 10,
  },
  logEntry: {
    flexDirection: "row",
    marginBottom: 5,
    paddingBottom: 5,
    borderBottomWidth: 1,
    borderBottomColor: "#E0E0E0",
  },
  logTimestamp: {
    fontSize: 12,
    color: "#999",
    width: 80,
    marginRight: 10,
  },
  logMessage: {
    fontSize: 14,
    color: "#333",
    flex: 1,
  },
  logError: {
    color: "#F44336",
  },
  logSuccess: {
    color: "#4CAF50",
  },
  logWarning: {
    color: "#FF9800",
  },
  modalOverlay: {
    flex: 1,
    backgroundColor: "rgba(0, 0, 0, 0.5)",
    justifyContent: "center",
    alignItems: "center",
  },
  modalContainer: {
    backgroundColor: "#FFFFFF",
    borderRadius: 15,
    padding: 20,
    width: width * 0.9,
    maxWidth: 400,
  },
  modalHeader: {
    alignItems: "center",
    marginBottom: 20,
  },
  modalTitle: {
    fontSize: 24,
    fontWeight: "bold",
    color: "#333",
    marginBottom: 10,
  },
  resultBadge: {
    paddingHorizontal: 20,
    paddingVertical: 8,
    borderRadius: 20,
  },
  resultSuccess: {
    backgroundColor: "#4CAF50",
  },
  resultFailure: {
    backgroundColor: "#F44336",
  },
  resultBadgeText: {
    color: "#FFFFFF",
    fontWeight: "bold",
    fontSize: 16,
  },
  modalContent: {
    marginBottom: 20,
  },
  resultStats: {
    flexDirection: "row",
    justifyContent: "space-around",
    marginBottom: 20,
  },
  resultStat: {
    alignItems: "center",
  },
  resultStatValue: {
    fontSize: 24,
    fontWeight: "bold",
    color: "#2196F3",
  },
  resultStatLabel: {
    fontSize: 14,
    color: "#666",
    marginTop: 5,
  },
  resultMessage: {
    fontSize: 16,
    color: "#333",
    textAlign: "center",
    lineHeight: 24,
  },
  modalActions: {
    alignItems: "center",
  },
  modalButton: {
    backgroundColor: "#2196F3",
    paddingHorizontal: 30,
    paddingVertical: 12,
    borderRadius: 25,
  },
  modalButtonText: {
    color: "#FFFFFF",
    fontSize: 16,
    fontWeight: "bold",
  },
});

export default LivenessDemoScreen;
