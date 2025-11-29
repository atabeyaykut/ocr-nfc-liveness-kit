/**
 * NFC Demo Screen - Day 4 Demo Application
 * NFC Reader testing with mock data and JSON result display
 */

import React, { useState, useRef } from "react";
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
} from "react-native";

import { NFCReader } from "../modules/nfc/NFCReader";
import { Logger } from "../utils/logger";

const { width, height } = Dimensions.get("window");

const NFCDemoScreen = () => {
  const [nfcData, setNfcData] = useState(null);
  const [logs, setLogs] = useState([]);
  const [isReading, setIsReading] = useState(false);
  const [nfcStatus, setNfcStatus] = useState("idle");
  const [progress, setProgress] = useState("");
  const [useRealNFC, setUseRealNFC] = useState(true); // Default to real NFC for Day 5
  const [errorCount, setErrorCount] = useState(0);
  const [lastError, setLastError] = useState(null);
  const [isNFCSupported, setIsNFCSupported] = useState(null);

  const nfcReaderRef = useRef(null);

  // Initialize NFC Reader with callbacks
  const nfcReader = useMemo(() => {
    const reader = new NFCReader();

    reader.onSuccess = (data) => {
      const readMethod = data.verification?.readMethod || "UNKNOWN";
      addLog(`✅ NFC okuma başarılı! (${readMethod})`, "success");
      setNfcData(data);
      setIsReading(false);
      setErrorCount(0); // Reset error count on success
      setLastError(null);
    };

    reader.onError = (error) => {
      const newErrorCount = errorCount + 1;
      setErrorCount(newErrorCount);
      setLastError(error.message);

      addLog(`❌ Hata (${newErrorCount}): ${error.message}`, "error");
      setIsReading(false);

      // Enhanced error handling with suggestions
      let errorTitle = "NFC Hatası";
      const errorMessage = error.message;
      let suggestions = [];

      if (error.message.includes("Timeout")) {
        errorTitle = "Zaman Aşımı";
        suggestions = [
          "• Kimliği telefona daha yakın tutun",
          "• Kimliği sabit pozisyonda bekletin",
          "• NFC alanının ortasına yerleştirin",
        ];
      } else if (error.message.includes("Connection lost")) {
        errorTitle = "Bağlantı Kesildi";
        suggestions = [
          "• Kimliği hareket ettirmeyin",
          "• Telefonu sabit tutun",
          "• Metal nesnelerden uzak durun",
        ];
      } else if (error.message.includes("okunamadı")) {
        errorTitle = "Okuma Hatası";
        suggestions = [
          "• Kimliği doğru yöne çevirin",
          "• Telefon kasasını çıkarın",
          "• Farklı açıda deneyin",
        ];
      }

      const fullMessage =
        suggestions.length > 0
          ? `${errorMessage}\n\nÖneriler:\n${suggestions.join("\n")}`
          : errorMessage;

      Alert.alert(errorTitle, fullMessage, [
        { text: "Tamam", style: "default" },
        {
          text: "Tekrar Dene",
          onPress: () => handleNFCRead(),
          style: "default",
        },
      ]);
    };

    reader.onStatusChange = (status) => {
      setNfcStatus(status);
      const statusMessages = {
        idle: "⚪ Beklemede",
        initializing: "🔄 Başlatılıyor",
        ready: "🟢 Hazır",
        scanning: "🔍 Taranıyor",
        reading: "📖 Okunuyor",
        processing: "⚙️ İşleniyor",
        success: "✅ Başarılı",
        error: "❌ Hatalı",
      };
      addLog(`📊 ${statusMessages[status] || status}`, "info");
    };

    reader.onProgress = (message) => {
      setProgress(message);
      addLog(`🔄 ${message}`, "info");
    };

    return reader;
  }, [errorCount]); // Include errorCount in dependency

  const addLog = (message, type = "info") => {
    const timestamp = new Date().toLocaleTimeString("tr-TR");
    const newLog = {
      id: Date.now(),
      timestamp,
      message,
      type,
    };
    setLogs((prev) => [newLog, ...prev].slice(0, 50)); // Keep last 50 logs
  };

  // Handle NFC Read with enhanced error handling
  const handleNFCRead = async () => {
    try {
      setIsReading(true);
      setNfcData(null);
      setProgress("");

      const readType = useRealNFC ? "Gerçek NFC" : "Mock NFC";
      addLog(`🚀 ${readType} okuma başlatıldı...`, "info");

      // Start NFC if not already started
      const isStarted = await nfcReader.startNFC();
      if (!isStarted) {
        throw new Error(
          "NFC başlatılamadı. Cihazınızda NFC özelliği bulunmuyor veya kapalı."
        );
      }

      // Read NFC data with real/mock option
      await nfcReader.readNFCData({
        useRealNFC,
        timeout: 10000, // 10 second timeout as per Day 5 requirement
        alertMessage:
          "Lütfen kimliğinizi telefonun arkasına yaklaştırın ve sabit tutun.",
      });
    } catch (error) {
      addLog(`❌ NFC okuma hatası: ${error.message}`, "error");
      setIsReading(false);

      // Don't show alert here as it's handled in onError callback
      console.error("NFC Read Error:", error);
    }
  };

  const handleNFCSupportCheck = async () => {
    try {
      setIsNFCSupported(null);
      addLog("NFC desteği kontrol ediliyor...", "info");

      const isSupported = await nfcReader.startNFC();

      setIsNFCSupported(isSupported);

      if (isSupported) {
        addLog("✅ NFC destekleniyor ve etkin", "success");
        Alert.alert("NFC Desteği", "NFC destekleniyor ve etkin! 📱", [
          { text: "Tamam" },
        ]);
      } else {
        addLog("❌ NFC desteklenmiyor veya etkin değil", "error");
      }
    } catch (error) {
      addLog(`NFC desteği kontrol hatası: ${error.message}`, "error");
    }
  };

  const toggleNFCMode = () => {
    setUseRealNFC(!useRealNFC);
  };

  const handleStopNFC = async () => {
    try {
      await nfcReader.stopNFC();
      addLog("NFC işlemleri durduruldu", "info");
    } catch (error) {
      addLog(`NFC durdurma hatası: ${error.message}`, "error");
    }
  };

  const handleReset = () => {
    setNfcData(null);
    setIsReading(false);
    setNfcStatus("idle");
    setProgress("");
    setErrorCount(0);
    setLastError(null);
    setIsNFCSupported(null);
    setLogs([]);
    addLog("NFC sıfırlandı", "info");
  };

  const handlePerformanceTest = async () => {
    try {
      addLog("🚀 NFC Performans Testi başlatılıyor...", "info");

      // Initialize NFC if not already done
      if (nfcStatus === "idle") {
        await nfcReader.startNFC();
      }

      // Run multiple performance tests
      const testResults = [];
      const testCount = 3;

      for (let i = 1; i <= testCount; i++) {
        addLog(`📊 Test ${i}/${testCount} çalıştırılıyor...`, "info");

        const startTime = Date.now();
        try {
          const result = await nfcReader.readNFCData({
            useRealNFC: false, // Use mock data for consistent testing
            timeout: 5000, 
          });

          const duration = Date.now() - startTime;
          const dataSize = JSON.stringify(result).length;

          testResults.push({
            test: i,
            duration,
            dataSize,
            success: true,
            fieldsCount: Object.keys(result).length,
          });

            `✅ Test ${i} tamamlandı: ${duration}ms, ${dataSize} bytes`,
            "success"

        } catch (error) {
          const duration = Date.now() - startTime;
          testResults.push({
            test: i,
            duration,
            success: false,
            error: error.message,
          });

          addLog(`❌ Test ${i} başarısız: ${error.message}`, "error");
        }

        // Small delay between tests
        await new Promise((resolve) => setTimeout(resolve, 500));
      }

      // Get performance logs from NFC Reader
      const performanceLogs = nfcReader.getPerformanceLogs();

      // Calculate statistics
      const successfulTests = testResults.filter((t) => t.success);
      const avgDuration =
        successfulTests.length > 0
          ? successfulTests.reduce((sum, t) => sum + t.duration, 0) /
            successfulTests.length
          : 0;

      const avgDataSize =
        successfulTests.length > 0
          ? successfulTests.reduce((sum, t) => sum + t.dataSize, 0) /
            successfulTests.length
          : 0;

      // Display performance results
      addLog("📈 Performans Testi Sonuçları:", "info");
      addLog(`✅ Başarılı: ${successfulTests.length}/${testCount}`, "success");
      addLog(`⏱️ Ortalama Süre: ${Math.round(avgDuration)}ms`, "info");
      addLog(
        `📦 Ortalama Veri Boyutu: ${Math.round(avgDataSize)} bytes`,
        "info"
      );
      addLog(`📊 Performans Log Sayısı: ${performanceLogs.length}`, "info");

      if (performanceLogs.length > 0) {
        const latestLog = performanceLogs[performanceLogs.length - 1];
        addLog(
          `🔍 Son İşlem: ${latestLog.operation} - ${latestLog.duration}ms`,
          "info"
        );

      // Show detailed alert
      Alert.alert(
        "🚀 Performans Testi Tamamlandı",
        `Başarılı Testler: ${successfulTests.length}/${testCount}\n` +
          `Ortalama Süre: ${Math.round(avgDuration)}ms\n` +
          `Ortalama Veri: ${Math.round(avgDataSize)} bytes\n` +
          `Performans Logları: ${performanceLogs.length} kayıt`,
        [
          {
            text: "Logları Temizle",
            onPress: () => {
              nfcReader.clearPerformanceLogs();
              addLog("🧹 Performans logları temizlendi", "info");
            },
          },
          { text: "Tamam", style: "default" },
        ]
      );

    } catch (error) {
      addLog(`❌ Performans testi hatası: ${error.message}`, "error");
      Alert.alert(
        "Hata",
        `Performans testi sırasında hata oluştu:\n${error.message}`
      );
    }
  };

  const renderNFCResult = () => {
    if (!nfcData) {return null;}

    return (
      <View style={styles.resultContainer}>
        <Text style={styles.resultTitle}>📱 NFC Okuma Sonucu</Text>

        {/* Status and Progress */}
        <View style={styles.statusContainer}>
          <Text style={styles.statusTitle}>📊 Durum ve İlerleme</Text>
          <Text style={styles.statusText}>Durum: {nfcStatus}</Text>
          <Text style={styles.statusText}>
            Mod: {useRealNFC ? "Gerçek NFC" : "Mock NFC"}
          </Text>
          {errorCount > 0 && (
            <Text style={styles.errorCountText}>Hata Sayısı: {errorCount}</Text>
          )}
          {progress ? (
            <Text style={styles.progressText}>{progress}</Text>
          ) : null}
          {lastError && (
            <Text style={styles.lastErrorText}>Son Hata: {lastError}</Text>
          )}
        </View>

        {/* Personal Information */}
        <View style={styles.personalInfoContainer}>
          <Text style={styles.sectionTitle}>👤 Kişisel Bilgiler:</Text>
          <View style={styles.fieldRow}>
            <Text style={styles.fieldKey}>Ad:</Text>
            <Text style={styles.fieldValue}>{nfcData.name}</Text>
          </View>
          <View style={styles.fieldRow}>
            <Text style={styles.fieldKey}>Soyad:</Text>
            <Text style={styles.fieldValue}>{nfcData.surname}</Text>
          </View>
          <View style={styles.fieldRow}>
            <Text style={styles.fieldKey}>T.C. No:</Text>
            <Text style={styles.fieldValue}>{nfcData.idNumber}</Text>
          </View>
          <View style={styles.fieldRow}>
            <Text style={styles.fieldKey}>Doğum Tarihi:</Text>
            <Text style={styles.fieldValue}>{nfcData.birthDate}</Text>
          </View>
          <View style={styles.fieldRow}>
            <Text style={styles.fieldKey}>Doğum Yeri:</Text>
            <Text style={styles.fieldValue}>{nfcData.birthPlace}</Text>
          </View>
        </View>

        {/* NFC Technical Data */}
        {nfcData.nfcData && (
          <View style={styles.technicalContainer}>
            <Text style={styles.sectionTitle}>🔧 NFC Teknik Bilgiler:</Text>
            <View style={styles.fieldRow}>
              <Text style={styles.fieldKey}>UID:</Text>
              <Text style={styles.fieldValue}>{nfcData.nfcData.uid}</Text>
            </View>
            <View style={styles.fieldRow}>
              <Text style={styles.fieldKey}>Teknoloji:</Text>
              <Text style={styles.fieldValue}>
                {nfcData.nfcData.technology}
              </Text>
            </View>
            <View style={styles.fieldRow}>
              <Text style={styles.fieldKey}>Sinyal Gücü:</Text>
              <Text style={styles.fieldValue}>
                {nfcData.nfcData.signalStrength}%
              </Text>
            </View>
            <View style={styles.fieldRow}>
              <Text style={styles.fieldKey}>Okuma Zamanı:</Text>
              <Text style={styles.fieldValue}>
                {new Date(nfcData.nfcData.readTime).toLocaleString("tr-TR")}
              </Text>
            </View>
          </View>
        )}

        {/* Verification Status */}
        {nfcData.verification && (
          <View style={styles.verificationContainer}>
            <Text style={styles.sectionTitle}>✅ Doğrulama Durumu:</Text>
            <View style={styles.fieldRow}>
              <Text style={styles.fieldKey}>Geçerli:</Text>
              <Text style={[styles.fieldValue, styles.validStatus]}>
                {nfcData.verification.isValid ? "✅ Geçerli" : "❌ Geçersiz"}
              </Text>
            </View>
            <View style={styles.fieldRow}>
              <Text style={styles.fieldKey}>Checksum:</Text>
              <Text style={styles.fieldValue}>
                {nfcData.verification.checksum}
              </Text>
            </View>
            <View style={styles.fieldRow}>
              <Text style={styles.fieldKey}>Dijital İmza:</Text>
              <Text style={styles.fieldValue}>
                {nfcData.verification.digitalSignature}
              </Text>
            </View>
          </View>
        )}

        {/* Raw JSON Result */}
        <View style={styles.jsonContainer}>
          <Text style={styles.jsonTitle}>🔧 Ham JSON Verisi:</Text>
          <ScrollView style={styles.jsonScroll} nestedScrollEnabled>
            <Text style={styles.jsonText}>
              {JSON.stringify(nfcData, null, 2)}
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
        {logs.map((log) => (
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
    if (isNFCSupported === null) {return null;}

    return (
      <View
        style={[
          styles.supportContainer,
          isNFCSupported
            ? styles.supportedContainer
            : styles.unsupportedContainer,
        ]}
      >
        <Text style={styles.supportText}>
          {isNFCSupported ? "✅ NFC Destekleniyor" : "❌ NFC Desteklenmiyor"}
        </Text>
      </View>
    );
  };

  return (
    <SafeAreaView style={styles.container}>
      <ScrollView
        style={styles.scrollContainer}
        contentContainerStyle={styles.scrollContent}
      >
        {/* Header */}
        <View style={styles.header}>
          <Text style={styles.title}>📱 NFC Test Ekranı</Text>
          <Text style={styles.subtitle}>Kimlik Kartı NFC Okuma Testi</Text>
        </View>

        {/* NFC Support Status */}
        {renderSupportStatus()}

        {/* Status Display */}
        {nfcStatus && (
          <View style={styles.statusContainer}>
            <Text style={styles.statusText}>Durum: {nfcStatus}</Text>
          </View>
        )}

        {/* Action Buttons */}
        <View style={styles.buttonContainer}>
          <TouchableOpacity
            style={[
              styles.button,
              styles.primaryButton,
              isReading && styles.disabledButton,
            ]}
            onPress={handleNFCRead}
            disabled={isReading}
          >
            <Text style={styles.buttonText}>
              {isReading
                ? "⏳ Okunuyor..."
                : `📱 NFC Oku (${useRealNFC ? "Gerçek" : "Mock"})`}
            </Text>
          </TouchableOpacity>

          <TouchableOpacity
            style={[styles.button, styles.secondaryButton]}
            onPress={handleNFCSupportCheck}
          >
            <Text style={styles.buttonText}>🔍 NFC Desteği Kontrol Et</Text>
          </TouchableOpacity>

          <TouchableOpacity
            style={[
              styles.button,
              useRealNFC ? styles.successButton : styles.infoButton,
            ]}
            onPress={toggleNFCMode}
          >
            <Text style={styles.buttonText}>
              {useRealNFC ? "🔄 Mock Moda Geç" : "🔄 Gerçek NFC Moda Geç"}
            </Text>
          </TouchableOpacity>

          <TouchableOpacity
            style={[styles.button, styles.warningButton]}
            onPress={handleStopNFC}
          >
            <Text style={styles.buttonText}>⏹️ NFC Durdur</Text>
          </TouchableOpacity>

          <TouchableOpacity
            style={[styles.button, styles.resetButton]}
            onPress={handleReset}
          >
            <Text style={styles.buttonText}>Sıfırla</Text>
          </TouchableOpacity>

          <TouchableOpacity
            style={[styles.button, styles.performanceButton]}
            onPress={handlePerformanceTest}
          >
            <Text style={styles.buttonText}>NFC Performans Testi</Text>
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
    backgroundColor: "#f5f5f5",
  },
  scrollContainer: {
    flex: 1,
  },
  scrollContent: {
    padding: 16,
  },
  header: {
    alignItems: "center",
    marginBottom: 24,
    paddingVertical: 16,
    backgroundColor: "#fff",
    borderRadius: 12,
    shadowColor: "#000",
    shadowOffset: { width: 0, height: 2 },
    shadowOpacity: 0.1,
    shadowRadius: 4,
    elevation: 3,
  },
  title: {
    fontSize: 24,
    fontWeight: "bold",
    color: "#333",
    marginBottom: 4,
  },
  subtitle: {
    fontSize: 16,
    color: "#666",
  },
  supportContainer: {
    padding: 12,
    borderRadius: 8,
    marginBottom: 16,
    alignItems: "center",
  },
  supportedContainer: {
    backgroundColor: "#e8f5e8",
    borderColor: "#4caf50",
    borderWidth: 1,
  },
  unsupportedContainer: {
    backgroundColor: "#ffebee",
    borderColor: "#f44336",
    borderWidth: 1,
  },
  supportText: {
    fontSize: 16,
    fontWeight: "600",
    color: "#333",
  },
  statusContainer: {
    backgroundColor: "#e3f2fd",
    padding: 12,
    borderRadius: 8,
    marginBottom: 16,
    borderLeftWidth: 4,
    borderLeftColor: "#2196f3",
  },
  statusTitle: {
    fontSize: 16,
    fontWeight: "600",
    color: "#333",
    marginBottom: 8,
  },
  statusText: {
    fontSize: 14,
    color: "#1976d2",
    fontWeight: "500",
  },
  progressText: {
    fontSize: 14,
    color: "#007bff",
    fontStyle: "italic",
    marginTop: 5,
  },
  errorCountText: {
    fontSize: 14,
    color: "#dc3545",
    fontWeight: "bold",
    marginTop: 5,
  },
  lastErrorText: {
    fontSize: 12,
    color: "#6c757d",
    fontStyle: "italic",
    marginTop: 5,
  },
  buttonContainer: {
    marginBottom: 24,
  },
  button: {
    paddingVertical: 16,
    paddingHorizontal: 24,
    borderRadius: 12,
    marginBottom: 12,
    alignItems: "center",
    shadowColor: "#000",
    shadowOffset: { width: 0, height: 2 },
    shadowOpacity: 0.1,
    shadowRadius: 4,
    elevation: 3,
  },
  primaryButton: {
    backgroundColor: "#2196f3",
  },
  secondaryButton: {
    backgroundColor: "#4caf50",
  },
  successButton: {
    backgroundColor: "#28a745",
  },
  infoButton: {
    backgroundColor: "#17a2b8",
  },
  warningButton: {
    backgroundColor: "#ff9800",
  },
  resetButton: {
    backgroundColor: "#9e9e9e",
  },
  performanceButton: {
    backgroundColor: "#673ab7",
  },
  disabledButton: {
    opacity: 0.6,
  },
  buttonText: {
    color: "#fff",
    fontSize: 16,
    fontWeight: "600",
  },
  resultContainer: {
    backgroundColor: "#fff",
    borderRadius: 12,
    padding: 16,
    marginBottom: 16,
    shadowColor: "#000",
    shadowOffset: { width: 0, height: 2 },
    shadowOpacity: 0.1,
    shadowRadius: 4,
    elevation: 3,
  },
  resultTitle: {
    fontSize: 18,
    fontWeight: "bold",
    color: "#333",
    marginBottom: 16,
  },
  personalInfoContainer: {
    marginBottom: 16,
    padding: 12,
    backgroundColor: "#f8f9fa",
    borderRadius: 8,
  },
  technicalContainer: {
    marginBottom: 16,
    padding: 12,
    backgroundColor: "#e3f2fd",
    borderRadius: 8,
  },
  verificationContainer: {
    marginBottom: 16,
    padding: 12,
    backgroundColor: "#e8f5e8",
    borderRadius: 8,
  },
  sectionTitle: {
    fontSize: 16,
    fontWeight: "600",
    color: "#333",
    marginBottom: 8,
  },
  fieldRow: {
    flexDirection: "row",
    paddingVertical: 4,
    borderBottomWidth: 1,
    borderBottomColor: "#eee",
  },
  fieldKey: {
    fontSize: 14,
    fontWeight: "500",
    color: "#666",
    width: 120,
  },
  fieldValue: {
    fontSize: 14,
    color: "#333",
    flex: 1,
  },
  validStatus: {
    fontWeight: "600",
    color: "#4caf50",
  },
  jsonContainer: {
    backgroundColor: "#f8f9fa",
    borderRadius: 8,
    padding: 12,
  },
  jsonTitle: {
    fontSize: 16,
    fontWeight: "600",
    color: "#333",
    marginBottom: 8,
  },
  jsonScroll: {
    maxHeight: 200,
  },
  jsonText: {
    fontSize: 12,
    fontFamily: "Courier",
    color: "#333",
    lineHeight: 16,
  },
  logsContainer: {
    backgroundColor: "#fff",
    borderRadius: 12,
    padding: 16,
    shadowColor: "#000",
    shadowOffset: { width: 0, height: 2 },
    shadowOpacity: 0.1,
    shadowRadius: 4,
    elevation: 3,
  },
  logsTitle: {
    fontSize: 18,
    fontWeight: "bold",
    color: "#333",
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
    backgroundColor: "#e3f2fd",
  },
  log_success: {
    backgroundColor: "#e8f5e8",
  },
  log_error: {
    backgroundColor: "#ffebee",
  },
  log_progress: {
    backgroundColor: "#fff3e0",
  },
  logTimestamp: {
    fontSize: 12,
    color: "#666",
    marginBottom: 2,
  },
  logMessage: {
    fontSize: 14,
    color: "#333",
  },
  noLogsText: {
    fontSize: 14,
    color: "#999",
    textAlign: "center",
    fontStyle: "italic",
  },
});

export default NFCDemoScreen;
