/**
 * iOS Integration Example - OCR Mobile SDK
 * 
 * Demonstrates how to use all iOS native modules:
 * - OCR Module
 * - Liveness Detection
 * - Camera Module
 * - NFC Reader
 */

import React, { useState, useEffect } from 'react';
import {
  View,
  Text,
  Button,
  StyleSheet,
  Alert,
  Platform,
  NativeModules,
  NativeEventEmitter,
  ScrollView,
  ActivityIndicator,
} from 'react-native';

const {
  OCRModule,
  LivenessDetectionModule,
  CameraModule,
  NFCReaderModule,
} = NativeModules;

const IOSIntegrationExample = () => {
  const [ocrResult, setOcrResult] = useState(null);
  const [livenessStatus, setLivenessStatus] = useState('Not Started');
  const [cameraStatus, setCameraStatus] = useState('Not Initialized');
  const [nfcSupported, setNfcSupported] = useState(false);
  const [loading, setLoading] = useState(false);
  const [logs, setLogs] = useState([]);

  // Event emitters
  const ocrEmitter = new NativeEventEmitter(OCRModule);
  const livenessEmitter = new NativeEventEmitter(LivenessDetectionModule);
  const cameraEmitter = new NativeEventEmitter(CameraModule);
  const nfcEmitter = new NativeEventEmitter(NFCReaderModule);

  useEffect(() => {
    // Check platform
    if (Platform.OS !== 'ios') {
      Alert.alert('Platform Error', 'This example is for iOS only');
      return;
    }

    // Check NFC support
    checkNFCSupport();

    // Setup event listeners
    setupEventListeners();

    return () => {
      // Cleanup listeners
      ocrEmitter.removeAllListeners('OCR_SUCCESS');
      ocrEmitter.removeAllListeners('OCR_ERROR');
      livenessEmitter.removeAllListeners('LIVENESS_SUCCESS');
      livenessEmitter.removeAllListeners('LIVENESS_COMMAND_CHANGED');
      cameraEmitter.removeAllListeners('CAMERA_READY');
      nfcEmitter.removeAllListeners('NFC_SCAN_COMPLETED');
    };
  }, []);

  const addLog = (message) => {
    const timestamp = new Date().toLocaleTimeString();
    setLogs(prev => [`[${timestamp}] ${message}`, ...prev.slice(0, 9)]);
  };

  const setupEventListeners = () => {
    // OCR Events
    ocrEmitter.addListener('OCR_SUCCESS', (data) => {
      addLog('✓ OCR Success: ' + data.sessionToken);
    });

    ocrEmitter.addListener('OCR_ERROR', (error) => {
      addLog('✗ OCR Error: ' + error.message);
    });

    // Liveness Events
    livenessEmitter.addListener('LIVENESS_SUCCESS', (data) => {
      setLivenessStatus('Completed');
      addLog('✓ Liveness Detection: Success');
      Alert.alert(
        'Liveness Success',
        `Anti-spoofing score: ${data.antiSpoofing.score.toFixed(2)}`
      );
    });

    livenessEmitter.addListener('LIVENESS_COMMAND_CHANGED', (data) => {
      setLivenessStatus(`Command: ${data.command}`);
      addLog(`→ Command: ${data.command} (${data.commandIndex + 1}/${data.totalCommands})`);
    });

    livenessEmitter.addListener('FACE_DETECTED', (data) => {
      addLog('👤 Face detected');
    });

    // Camera Events
    cameraEmitter.addListener('CAMERA_READY', (data) => {
      setCameraStatus('Ready');
      addLog('📷 Camera ready');
    });

    cameraEmitter.addListener('PHOTO_CAPTURED', (data) => {
      addLog('📸 Photo captured');
    });

    // NFC Events
    nfcEmitter.addListener('NFC_SCAN_STARTED', () => {
      addLog('📡 NFC scan started');
    });

    nfcEmitter.addListener('NFC_TAG_DETECTED', () => {
      addLog('🏷️  NFC tag detected');
    });

    nfcEmitter.addListener('NFC_SCAN_COMPLETED', (data) => {
      addLog('✓ NFC scan completed');
      Alert.alert(
        'NFC Success',
        `TC: ${data.data.tcNo}\nName: ${data.data.name} ${data.data.surname}`
      );
    });

    nfcEmitter.addListener('NFC_ERROR', (error) => {
      addLog('✗ NFC Error: ' + error.error);
    });
  };

  const checkNFCSupport = async () => {
    try {
      const result = await NFCReaderModule.isSupported();
      setNfcSupported(result.supported);
      addLog(`NFC Support: ${result.supported ? 'Yes' : 'No'}`);
    } catch (error) {
      console.error('NFC check failed:', error);
    }
  };

  // ================== OCR TEST ==================
  const testOCR = async () => {
    try {
      setLoading(true);
      addLog('Starting OCR scan...');

      // For demo, you'd use an actual image path
      // const imagePath = 'file:///path/to/id-card.jpg';
      
      // Using mock for demonstration
      const imagePath = '/tmp/test-id-card.jpg';

      // Step 1: Scan and get session token
      const scanResult = await OCRModule.scan(imagePath);
      
      addLog(`Session Token: ${scanResult.sessionToken.substring(0, 8)}...`);
      addLog(`Confidence: ${(scanResult.confidence * 100).toFixed(1)}%`);

      // Step 2: Retrieve actual data using token
      const data = await OCRModule.getResult(scanResult.sessionToken);

      setOcrResult(data);

      Alert.alert(
        'OCR Success',
        `TC No: ${data.fields.tcNo.value}\n` +
        `Name: ${data.fields.name.value}\n` +
        `Surname: ${data.fields.surname.value}\n` +
        `Confidence: ${(data.confidence * 100).toFixed(1)}%`
      );

    } catch (error) {
      console.error('OCR Error:', error);
      Alert.alert('OCR Error', error.message);
      addLog('✗ OCR failed: ' + error.message);
    } finally {
      setLoading(false);
    }
  };

  // ================== LIVENESS TEST ==================
  const testLiveness = async () => {
    try {
      setLoading(true);
      setLivenessStatus('Starting...');
      addLog('Starting liveness detection...');

      const commands = ['blink', 'smile', 'turn_left'];

      await LivenessDetectionModule.startDetection(commands, {
        timeout: 30000,
        sensitivity: 0.7,
      });

      addLog('Liveness detection started');

    } catch (error) {
      console.error('Liveness Error:', error);
      Alert.alert('Liveness Error', error.message);
      addLog('✗ Liveness failed: ' + error.message);
      setLivenessStatus('Failed');
    } finally {
      setLoading(false);
    }
  };

  const stopLiveness = async () => {
    try {
      await LivenessDetectionModule.stopDetection();
      setLivenessStatus('Stopped');
      addLog('Liveness detection stopped');
    } catch (error) {
      console.error('Stop Liveness Error:', error);
    }
  };

  // ================== CAMERA TEST ==================
  const testCamera = async () => {
    try {
      setLoading(true);
      addLog('Initializing camera...');

      // Initialize camera
      await CameraModule.initializeCamera({
        cameraPosition: 'back',
        quality: 'high',
      });

      setCameraStatus('Initialized');

      // Start preview
      await CameraModule.startPreview();
      addLog('Camera preview started');

      // Wait a bit
      await new Promise(resolve => setTimeout(resolve, 2000));

      // Capture photo
      const photo = await CameraModule.capturePhoto({
        flash: 'off',
        quality: 0.9,
      });

      addLog(`Photo captured: ${photo.uri}`);
      Alert.alert(
        'Camera Success',
        `Photo captured!\nSize: ${photo.width}x${photo.height}\nPath: ${photo.uri}`
      );

      // Stop preview
      await CameraModule.stopPreview();
      setCameraStatus('Stopped');

    } catch (error) {
      console.error('Camera Error:', error);
      Alert.alert('Camera Error', error.message);
      addLog('✗ Camera failed: ' + error.message);
    } finally {
      setLoading(false);
    }
  };

  // ================== NFC TEST ==================
  const testNFC = async () => {
    if (!nfcSupported) {
      Alert.alert('NFC Not Supported', 'This device does not support NFC');
      return;
    }

    try {
      setLoading(true);
      addLog('Starting NFC scan...');

      await NFCReaderModule.startReading({
        alertMessage: 'Kimlik kartınızı cihazınızın arkasına yaklaştırın',
        timeout: 60000,
      });

      addLog('NFC session started - hold card near device');

    } catch (error) {
      console.error('NFC Error:', error);
      Alert.alert('NFC Error', error.message);
      addLog('✗ NFC failed: ' + error.message);
    } finally {
      setLoading(false);
    }
  };

  // ================== FULL WORKFLOW TEST ==================
  const testFullWorkflow = async () => {
    Alert.alert(
      'Full Biometric Workflow',
      'This will test:\n1. Camera capture\n2. OCR scanning\n3. Liveness detection\n4. NFC reading',
      [
        { text: 'Cancel', style: 'cancel' },
        {
          text: 'Start',
          onPress: async () => {
            try {
              // Step 1: Camera + OCR
              await testCamera();
              await new Promise(resolve => setTimeout(resolve, 1000));

              // Step 2: OCR
              await testOCR();
              await new Promise(resolve => setTimeout(resolve, 1000));

              // Step 3: Liveness
              await testLiveness();
              await new Promise(resolve => setTimeout(resolve, 5000));

              // Step 4: NFC
              if (nfcSupported) {
                await testNFC();
              }

              Alert.alert('Success', 'Full workflow completed!');
            } catch (error) {
              console.error('Workflow error:', error);
              Alert.alert('Workflow Error', error.message);
            }
          },
        },
      ]
    );
  };

  return (
    <ScrollView style={styles.container}>
      <Text style={styles.title}>iOS Native Modules Test</Text>

      {/* Status Display */}
      <View style={styles.statusContainer}>
        <Text style={styles.statusTitle}>Module Status</Text>
        <Text style={styles.statusText}>Platform: {Platform.OS}</Text>
        <Text style={styles.statusText}>Camera: {cameraStatus}</Text>
        <Text style={styles.statusText}>Liveness: {livenessStatus}</Text>
        <Text style={styles.statusText}>NFC: {nfcSupported ? 'Supported' : 'Not Supported'}</Text>
      </View>

      {/* Test Buttons */}
      <View style={styles.buttonContainer}>
        <Button
          title="Test OCR"
          onPress={testOCR}
          disabled={loading}
        />
        <View style={styles.buttonSpacer} />

        <Button
          title="Test Liveness"
          onPress={testLiveness}
          disabled={loading}
        />
        <View style={styles.buttonSpacer} />

        <Button
          title="Stop Liveness"
          onPress={stopLiveness}
          disabled={!loading}
          color="#FF6347"
        />
        <View style={styles.buttonSpacer} />

        <Button
          title="Test Camera"
          onPress={testCamera}
          disabled={loading}
        />
        <View style={styles.buttonSpacer} />

        <Button
          title="Test NFC"
          onPress={testNFC}
          disabled={loading || !nfcSupported}
        />
        <View style={styles.buttonSpacer} />

        <Button
          title="Full Workflow"
          onPress={testFullWorkflow}
          disabled={loading}
          color="#4CAF50"
        />
      </View>

      {/* Loading Indicator */}
      {loading && (
        <View style={styles.loadingContainer}>
          <ActivityIndicator size="large" color="#0000ff" />
          <Text style={styles.loadingText}>Processing...</Text>
        </View>
      )}

      {/* OCR Result Display */}
      {ocrResult && (
        <View style={styles.resultContainer}>
          <Text style={styles.resultTitle}>OCR Result:</Text>
          <Text style={styles.resultText}>TC: {ocrResult.fields.tcNo.value}</Text>
          <Text style={styles.resultText}>Name: {ocrResult.fields.name.value}</Text>
          <Text style={styles.resultText}>Surname: {ocrResult.fields.surname.value}</Text>
          <Text style={styles.resultText}>
            Confidence: {(ocrResult.confidence * 100).toFixed(1)}%
          </Text>
        </View>
      )}

      {/* Log Display */}
      <View style={styles.logContainer}>
        <Text style={styles.logTitle}>Event Log:</Text>
        {logs.map((log, index) => (
          <Text key={index} style={styles.logText}>
            {log}
          </Text>
        ))}
      </View>
    </ScrollView>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    padding: 20,
    backgroundColor: '#f5f5f5',
  },
  title: {
    fontSize: 24,
    fontWeight: 'bold',
    marginBottom: 20,
    textAlign: 'center',
  },
  statusContainer: {
    backgroundColor: 'white',
    padding: 15,
    borderRadius: 8,
    marginBottom: 20,
  },
  statusTitle: {
    fontSize: 18,
    fontWeight: 'bold',
    marginBottom: 10,
  },
  statusText: {
    fontSize: 14,
    marginBottom: 5,
  },
  buttonContainer: {
    marginBottom: 20,
  },
  buttonSpacer: {
    height: 10,
  },
  loadingContainer: {
    alignItems: 'center',
    marginVertical: 20,
  },
  loadingText: {
    marginTop: 10,
    fontSize: 16,
  },
  resultContainer: {
    backgroundColor: '#e8f5e9',
    padding: 15,
    borderRadius: 8,
    marginBottom: 20,
  },
  resultTitle: {
    fontSize: 18,
    fontWeight: 'bold',
    marginBottom: 10,
  },
  resultText: {
    fontSize: 14,
    marginBottom: 5,
  },
  logContainer: {
    backgroundColor: '#263238',
    padding: 15,
    borderRadius: 8,
    marginBottom: 20,
  },
  logTitle: {
    fontSize: 16,
    fontWeight: 'bold',
    color: '#fff',
    marginBottom: 10,
  },
  logText: {
    fontSize: 12,
    color: '#b0bec5',
    fontFamily: 'Courier',
    marginBottom: 3,
  },
});

export default IOSIntegrationExample;
