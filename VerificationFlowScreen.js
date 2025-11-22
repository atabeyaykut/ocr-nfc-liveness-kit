/**
 * Verification Flow Screen - Basitleştirilmiş versiyon
 * OCR -> NFC akışını tek sayfada yönetir
 * Frame processor kullanmaz, basit timer ile çalışır
 */

import React, { useState, useRef, useCallback, useEffect } from 'react';
import {
    View,
    Text,
    StyleSheet,
    TouchableOpacity,
    StatusBar,
    ScrollView,
    ActivityIndicator,
    Alert,
    Dimensions,
    Platform,
} from 'react-native';
import { Camera, useCameraDevice } from 'react-native-vision-camera';
import { check, request, PERMISSIONS, RESULTS } from 'react-native-permissions';
import NfcManager from 'react-native-nfc-manager';

const OCRReaderModule = require('./modules/ocr/OCRReaderModule').default || require('./modules/ocr/OCRReaderModule');
const { NFCReaderModule } = require('./modules/nfc/NFCReaderModule');

const { width: screenWidth } = Dimensions.get('window');

const CAPTURE_SEQUENCE_COUNT = 3;
const CAPTURE_DELAY_MS = 400;
const MRZ_CHECK_INTERVAL_MS = 500; // Her 500ms'de bir MRZ kontrolü yap

const VerificationFlowScreen = ({ navigation }) => {
    const [currentPhase, setCurrentPhase] = useState('idle');
    const [ocrLogs, setOcrLogs] = useState([]);
    const [nfcLogs, setNfcLogs] = useState([]);
    const [ocrResult, setOcrResult] = useState(null);
    const [nfcResult, setNfcResult] = useState(null);
    const [isProcessing, setIsProcessing] = useState(false);
    const [isCameraActive, setIsCameraActive] = useState(false);
    const [pendingCaptures, setPendingCaptures] = useState(0);
    const [detectionHint, setDetectionHint] = useState('');
    const [torchEnabled, setTorchEnabled] = useState(false);

    const cameraRef = useRef(null);
    const ocrModuleRef = useRef(new OCRReaderModule());
    const nfcModuleRef = useRef(new NFCReaderModule());
    const mrzCheckIntervalRef = useRef(null);
    const isCheckingMrzRef = useRef(false);

    const device = useCameraDevice('back');

    const addLog = useCallback((type, message, data = null) => {
        const timestamp = new Date().toLocaleTimeString('tr-TR');
        const logEntry = { timestamp, message, data };

        if (type === 'ocr') {
            setOcrLogs((prev) => [logEntry, ...prev].slice(0, 20));
        } else if (type === 'nfc') {
            setNfcLogs((prev) => [logEntry, ...prev].slice(0, 20));
        }
    }, []);

    const checkCameraPermission = useCallback(async () => {
        try {
            const permissionType = Platform.OS === 'ios' ? PERMISSIONS.IOS.CAMERA : PERMISSIONS.ANDROID.CAMERA;
            const status = await check(permissionType);
            if (status === RESULTS.GRANTED) return true;

            const newStatus = await request(permissionType);
            if (newStatus === RESULTS.GRANTED) return true;

            Alert.alert('Kamera İzni Gerekli', 'OCR işlemi için kamera izni vermeniz gerekiyor.');
            return false;
        } catch (err) {
            console.error('[Verification] Kamera izni kontrolü başarısız:', err);
            return false;
        }
    }, []);

    const captureSingleMrz = useCallback(async (captureNumber) => {
        const photo = await cameraRef.current.takePhoto({
            qualityPrioritization: 'speed',
            flash: torchEnabled ? 'on' : 'off',
            skipMetadata: true,
        });

        const photoPath = photo?.path || photo?.uri;
        if (!photoPath) throw new Error('Fotoğraf alınamadı');

        // Dosya yolunu normalize et (file:// prefix'i ekle)
        const normalizedPath = photoPath.startsWith('file://')
            ? photoPath
            : `file://${photoPath}`;

        addLog('ocr', `Fotoğraf ${captureNumber} çekildi`);

        ocrModuleRef.current.options = { ...(ocrModuleRef.current.options || {}), cardSide: 'back' };
        const result = await ocrModuleRef.current.processImage(normalizedPath);

        if (!result?.success) throw new Error(result?.error || 'OCR işlemi başarısız');

        addLog('ocr', `İşlendi. Güven: %${result.confidence || 0}`, result.fields);
        return result;
    }, [addLog, torchEnabled]);

    const takePhotoAndProcess = useCallback(async () => {
        if (!cameraRef.current || isProcessing) return;

        try {
            setIsProcessing(true);
            setPendingCaptures(CAPTURE_SEQUENCE_COUNT);
            setDetectionHint('Fotoğraflar çekiliyor...');
            addLog('ocr', `${CAPTURE_SEQUENCE_COUNT} fotoğraf çekilecek...`);

            const successfulCaptures = [];
            for (let i = 0; i < CAPTURE_SEQUENCE_COUNT; i++) {
                try {
                    const result = await captureSingleMrz(i + 1);
                    successfulCaptures.push(result);
                } catch (error) {
                    addLog('ocr', `Fotoğraf ${i + 1} başarısız: ${error?.message}`);
                }
                setPendingCaptures(CAPTURE_SEQUENCE_COUNT - (i + 1));
                if (i < CAPTURE_SEQUENCE_COUNT - 1) {
                    await new Promise((resolve) => setTimeout(resolve, CAPTURE_DELAY_MS));
                }
            }

            setPendingCaptures(0);

            if (successfulCaptures.length === 0) {
                throw new Error('Hiçbir çekimden MRZ verisi elde edilemedi.');
            }

            const bestResult = successfulCaptures.reduce((best, current) => {
                return (current?.confidence ?? 0) > (best?.confidence ?? 0) ? current : best;
            }, successfulCaptures[0]);

            console.log('[OCR] === OCR TAMAMLANDI ===');
            console.log('[OCR] Başarılı çekim sayısı:', successfulCaptures.length);
            console.log('[OCR] En iyi sonuç:', JSON.stringify(bestResult.fields, null, 2));

            addLog('ocr', `${successfulCaptures.length} başarılı çekim. En iyi: %${bestResult.confidence}`, bestResult.fields);

            setOcrResult(bestResult);
            setIsCameraActive(false);
            setDetectionHint('OCR tamamlandı, NFC başlatılıyor...');
            addLog('ocr', 'OCR tamamlandı', bestResult.fields);

            console.log('[OCR] NFC flow 1 saniye sonra başlatılacak...');
            setTimeout(() => {
                console.log('[OCR] Timeout tamamlandı, startNfcFlow çağrılıyor...');
                startNfcFlow(bestResult.fields);
            }, 1000);
        } catch (error) {
            console.error('[Verification] Hata:', error);
            Alert.alert('Hata', error.message);
            setIsProcessing(false);
            addLog('ocr', `Hata: ${error.message}`);
        }
    }, [addLog, isProcessing, torchEnabled, captureSingleMrz]);

    // MRZ algılama - periyodik snapshot kontrolü
    const checkForMrz = useCallback(async () => {
        if (isCheckingMrzRef.current || !cameraRef.current || isProcessing) return;

        try {
            isCheckingMrzRef.current = true;

            // Küçük bir snapshot çek
            const snapshot = await cameraRef.current.takeSnapshot({
                quality: 50,
                skipMetadata: true,
            });

            const snapshotPath = snapshot?.path || snapshot?.uri;
            if (!snapshotPath) {
                isCheckingMrzRef.current = false;
                return;
            }

            // Dosya yolunu normalize et (file:// prefix'i ekle)
            const normalizedPath = snapshotPath.startsWith('file://')
                ? snapshotPath
                : `file://${snapshotPath}`;

            // Hızlı MRZ kontrolü
            const TextRecognition = require('@react-native-ml-kit/text-recognition').default;
            const result = await TextRecognition.recognize(normalizedPath);

            // MRZ pattern kontrolü (2 satır, her biri 30+ karakter)
            const lines = result?.text?.split('\n').filter(line => line.length > 20) || [];
            const hasMrzPattern = lines.some(line =>
                /^[A-Z0-9<]{25,}$/.test(line.replace(/\s/g, ''))
            );

            console.log('[MRZ Check] Kontrol edildi. MRZ bulundu mu?', hasMrzPattern);
            if (lines.length > 0) {
                console.log('[MRZ Check] Bulunan satırlar:', lines.slice(0, 3));
            }

            if (hasMrzPattern) {
                console.log('[MRZ Check] ✅ MRZ ALGILANDI! Fotoğraf çekimi başlatılıyor...');
                addLog('ocr', 'Kart algılandı! Fotoğraflar çekiliyor...');
                setDetectionHint('✓ Kart algılandı! Çekim başlıyor...');

                // Interval'i durdur
                if (mrzCheckIntervalRef.current) {
                    clearInterval(mrzCheckIntervalRef.current);
                    mrzCheckIntervalRef.current = null;
                }

                // 3 fotoğraf çekimi başlat
                console.log('[MRZ Check] takePhotoAndProcess 200ms sonra çağrılacak...');
                setTimeout(() => {
                    console.log('[MRZ Check] takePhotoAndProcess çağrılıyor...');
                    takePhotoAndProcess();
                }, 200);
            } else {
                setDetectionHint('Kartın arka yüzünü gösterin...');
            }

            isCheckingMrzRef.current = false;
        } catch (error) {
            console.error('[MRZ Check] Hata:', error);
            isCheckingMrzRef.current = false;
        }
    }, [isProcessing, addLog, takePhotoAndProcess]);

    // Periyodik MRZ kontrolü başlat
    useEffect(() => {
        if (currentPhase === 'ocr' && isCameraActive && !isProcessing && !ocrResult) {
            setDetectionHint('Kartın arka yüzünü gösterin...');

            // Her 500ms'de bir kontrol et
            mrzCheckIntervalRef.current = setInterval(() => {
                checkForMrz();
            }, MRZ_CHECK_INTERVAL_MS);

            return () => {
                if (mrzCheckIntervalRef.current) {
                    clearInterval(mrzCheckIntervalRef.current);
                    mrzCheckIntervalRef.current = null;
                }
            };
        }
    }, [currentPhase, isCameraActive, isProcessing, ocrResult, checkForMrz]);

    const startNfcFlow = useCallback(async (ocrFields = {}) => {
        try {
            console.log('[NFC Flow] === NFC FLOW BAŞLADI ===');
            console.log('[NFC Flow] OCR Fields:', JSON.stringify(ocrFields, null, 2));

            setCurrentPhase('nfc');
            addLog('nfc', 'NFC başlatılıyor...', ocrFields);

            console.log('[NFC Flow] Checking NFC support...');
            const isSupported = await NfcManager.isSupported();
            console.log('[NFC Flow] NFC Supported:', isSupported);

            if (!isSupported) {
                console.error('[NFC Flow] ❌ NFC desteklenmiyor!');
                addLog('nfc', 'NFC desteklenmiyor');
                Alert.alert('NFC Desteklenmiyor', 'Bu cihaz NFC desteklemiyor.');
                setCurrentPhase('completed');
                return;
            }

            console.log('[NFC Flow] Checking NFC enabled status...');
            const isEnabled = await NfcManager.isEnabled();
            console.log('[NFC Flow] NFC Enabled:', isEnabled);

            if (!isEnabled) {
                console.error('[NFC Flow] ❌ NFC kapalı!');
                addLog('nfc', 'NFC kapalı');
                Alert.alert('NFC Kapalı', 'NFC ayarlardan açılmalı.',
                    [
                        { text: 'İptal', onPress: () => setCurrentPhase('completed') },
                        { text: 'Ayarlar', onPress: () => NfcManager.goToNfcSetting() }
                    ]
                );
                return;
            }

            console.log('[NFC Flow] ✅ NFC hazır, callbacks kuruluyor...');

            nfcModuleRef.current.onNFCResult((result) => {
                addLog('nfc', 'NFC başarılı', result.parsedFields);
                setNfcResult(result);
                setCurrentPhase('completed');
                nfcModuleRef.current.stopNFC();
            });

            nfcModuleRef.current.onNFCError((error) => {
                addLog('nfc', `Hata: ${error.error}`, error);
                Alert.alert('NFC Hatası', error.error);
                setCurrentPhase('completed');
            });

            nfcModuleRef.current.onNFCStarted(() => {
                console.log('[NFC Flow] ✅ NFC Started callback çağrıldı!');
                addLog('nfc', 'NFC dinleniyor');
                setDetectionHint('Kartı telefonun arkasına yaklaştırın...');
            });

            const expiryDate = ocrFields?.validUntil || ocrFields?.expiryDate;
            const serialNo = ocrFields?.serialNo;

            console.log('[NFC Flow] startNFC çağrılıyor...');
            console.log('[NFC Flow] MRZ Seed:', {
                tcNo: ocrFields.tcNo ? '***' + ocrFields.tcNo.slice(-4) : 'YOK',
                birthDate: ocrFields.birthDate || 'YOK',
                documentNo: ocrFields.documentNo || serialNo || 'YOK',
                expiryDate: expiryDate || 'YOK'
            });

            await nfcModuleRef.current.startNFC({
                cardType: 'tc_kimlik',
                readTimeout: 60000, // 60 saniye (BAC işlemleri için daha uzun)
                mrzSeed: {
                    tcNo: ocrFields.tcNo,
                    name: ocrFields.name,
                    surname: ocrFields.surname,
                    birthDate: ocrFields.birthDate,
                    documentNo: ocrFields.documentNo || serialNo,
                    serialNo,
                    validUntil: expiryDate,
                    // CRITICAL: Pass MRZ check digits for BAC
                    mrzCheckDigits: ocrFields.mrzCheckDigits,
                },
            });

            console.log('[NFC Flow] ✅ startNFC çağrısı tamamlandı');
        } catch (error) {
            console.error('[NFC Flow] ❌ HATA:', error);
            console.error('[NFC Flow] Hata detayı:', error.message);
            console.error('[NFC Flow] Stack:', error.stack);
            addLog('nfc', `Hata: ${error.message}`);
            Alert.alert('NFC Hatası', error.message);
            setCurrentPhase('completed');
        }
    }, [addLog]);

    const startVerification = useCallback(async () => {
        const hasPermission = await checkCameraPermission();
        if (!hasPermission) return;

        setCurrentPhase('ocr');
        setIsCameraActive(true);
        setOcrResult(null);
        setNfcResult(null);
        setOcrLogs([]);
        setNfcLogs([]);
        addLog('ocr', 'OCR başlatıldı');
    }, [addLog, checkCameraPermission]);

    const resetVerification = useCallback(() => {
        setCurrentPhase('idle');
        setIsCameraActive(false);
        setOcrResult(null);
        setNfcResult(null);
        setIsProcessing(false);
        setPendingCaptures(0);
        setDetectionHint('');
        setOcrLogs([]);
        setNfcLogs([]);
        if (nfcModuleRef.current) nfcModuleRef.current.stopNFC().catch(() => { });
        if (mrzCheckIntervalRef.current) {
            clearInterval(mrzCheckIntervalRef.current);
            mrzCheckIntervalRef.current = null;
        }
    }, []);

    useEffect(() => {
        return () => {
            setIsCameraActive(false);
            if (nfcModuleRef.current) nfcModuleRef.current.stopNFC().catch(() => { });
            if (mrzCheckIntervalRef.current) clearInterval(mrzCheckIntervalRef.current);
        };
    }, []);

    const renderIdleScreen = () => (
        <View style={styles.centerContainer}>
            <Text style={styles.title}>📱 Kimlik Doğrulama</Text>
            <Text style={styles.subtitle}>OCR ve NFC ile doğrulama yapın</Text>
            <TouchableOpacity style={styles.primaryButton} onPress={startVerification}>
                <Text style={styles.primaryButtonText}>Doğrulamayı Başlat</Text>
            </TouchableOpacity>
            <Text style={styles.infoText}>
                • Kart otomatik algılanır{'\n'}
                • 3 fotoğraf otomatik çekilir{'\n'}
                • Optimize edilir ve NFC başlatılır
            </Text>
        </View>
    );

    const renderOcrCamera = () => {
        if (!device) {
            return <View style={styles.centerContainer}><Text style={styles.errorText}>Kamera yok</Text></View>;
        }

        return (
            <View style={styles.cameraContainer}>
                <Camera
                    ref={cameraRef}
                    style={StyleSheet.absoluteFill}
                    device={device}
                    isActive={isCameraActive}
                    photo={true}
                    torch={torchEnabled ? 'on' : 'off'}
                />

                <View style={styles.overlay}>
                    <View style={styles.mrzGuide}>
                        <View style={[styles.corner, styles.topLeft]} />
                        <View style={[styles.corner, styles.topRight]} />
                        <View style={[styles.corner, styles.bottomLeft]} />
                        <View style={[styles.corner, styles.bottomRight]} />
                    </View>
                </View>

                <View style={styles.hintBar}>
                    <Text style={styles.hintText}>{detectionHint}</Text>
                </View>

                {pendingCaptures > 0 && (
                    <View style={styles.captureCounter}>
                        <Text style={styles.captureCounterText}>{CAPTURE_SEQUENCE_COUNT - pendingCaptures}/{CAPTURE_SEQUENCE_COUNT}</Text>
                    </View>
                )}

                <TouchableOpacity style={styles.torchButton} onPress={() => setTorchEnabled(!torchEnabled)}>
                    <Text style={styles.torchButtonText}>{torchEnabled ? '🔦' : '💡'}</Text>
                </TouchableOpacity>
            </View>
        );
    };

    const renderNfcWaiting = () => (
        <View style={styles.centerContainer}>
            <ActivityIndicator size="large" color="#2196F3" />
            <Text style={styles.title}>NFC Okuma</Text>
            <Text style={styles.subtitle}>{detectionHint}</Text>
            <View style={styles.nfcInstructions}>
                <Text style={styles.instructionText}>📱 Kartı arkaya yaklaştırın</Text>
                <Text style={styles.instructionText}>↕️ Üst-orta kısma denk getirin</Text>
                <Text style={styles.instructionText}>⏱️ 2-3 saniye tutun</Text>
            </View>
        </View>
    );

    const renderCompletedScreen = () => (
        <View style={styles.centerContainer}>
            <Text style={styles.title}>✅ Tamamlandı</Text>

            {ocrResult && (
                <View style={styles.resultCard}>
                    <Text style={styles.resultCardTitle}>OCR Sonuçları</Text>
                    <Text style={styles.resultText}>TC: {ocrResult.fields?.tcNo || '-'}</Text>
                    <Text style={styles.resultText}>Ad: {ocrResult.fields?.name || '-'}</Text>
                    <Text style={styles.resultText}>Soyad: {ocrResult.fields?.surname || '-'}</Text>
                    <Text style={styles.resultText}>Güven: %{ocrResult.confidence || 0}</Text>
                </View>
            )}

            {nfcResult && (
                <View style={styles.resultCard}>
                    <Text style={styles.resultCardTitle}>NFC Sonuçları</Text>
                    <Text style={styles.resultText}>TC: {nfcResult.parsedFields?.tcNo || '-'}</Text>
                    <Text style={styles.resultText}>Ad Soyad: {nfcResult.parsedFields?.fullName || '-'}</Text>
                </View>
            )}

            <TouchableOpacity style={styles.secondaryButton} onPress={resetVerification}>
                <Text style={styles.secondaryButtonText}>Yeniden Başlat</Text>
            </TouchableOpacity>
        </View>
    );

    const renderLogs = () => (
        <ScrollView style={styles.logsContainer}>
            <View style={styles.logSection}>
                <Text style={styles.logSectionTitle}>📸 OCR Logları</Text>
                {ocrLogs.length === 0 ? (
                    <Text style={styles.logEmpty}>Henüz log yok</Text>
                ) : (
                    ocrLogs.map((log, i) => (
                        <View key={`ocr-${i}`} style={styles.logItem}>
                            <Text style={styles.logTime}>[{log.timestamp}]</Text>
                            <Text style={styles.logMessage}>{log.message}</Text>
                        </View>
                    ))
                )}
            </View>

            <View style={styles.logSection}>
                <Text style={styles.logSectionTitle}>📡 NFC Logları</Text>
                {nfcLogs.length === 0 ? (
                    <Text style={styles.logEmpty}>Henüz log yok</Text>
                ) : (
                    nfcLogs.map((log, i) => (
                        <View key={`nfc-${i}`} style={styles.logItem}>
                            <Text style={styles.logTime}>[{log.timestamp}]</Text>
                            <Text style={styles.logMessage}>{log.message}</Text>
                        </View>
                    ))
                )}
            </View>
        </ScrollView>
    );

    return (
        <View style={styles.container}>
            <StatusBar barStyle={currentPhase === 'ocr' ? 'light-content' : 'dark-content'} />

            {currentPhase === 'idle' && renderIdleScreen()}
            {currentPhase === 'ocr' && !ocrResult && renderOcrCamera()}
            {currentPhase === 'nfc' && !nfcResult && renderNfcWaiting()}
            {currentPhase === 'completed' && renderCompletedScreen()}

            {currentPhase !== 'idle' && renderLogs()}

            {currentPhase !== 'idle' && (
                <TouchableOpacity style={styles.backButton} onPress={resetVerification}>
                    <Text style={styles.backButtonText}>← İptal</Text>
                </TouchableOpacity>
            )}
        </View>
    );
};

const styles = StyleSheet.create({
    container: { flex: 1, backgroundColor: '#0F172A' },
    centerContainer: { flex: 1, justifyContent: 'center', alignItems: 'center', padding: 20 },
    cameraContainer: { flex: 1 },
    overlay: { ...StyleSheet.absoluteFillObject, justifyContent: 'center', alignItems: 'center' },
    mrzGuide: { width: screenWidth * 0.85, height: 120, borderWidth: 2, borderColor: 'rgba(255,255,255,0.5)', borderRadius: 8 },
    corner: { position: 'absolute', width: 20, height: 20, borderColor: '#00FF00' },
    topLeft: { top: -2, left: -2, borderTopWidth: 4, borderLeftWidth: 4 },
    topRight: { top: -2, right: -2, borderTopWidth: 4, borderRightWidth: 4 },
    bottomLeft: { bottom: -2, left: -2, borderBottomWidth: 4, borderLeftWidth: 4 },
    bottomRight: { bottom: -2, right: -2, borderBottomWidth: 4, borderRightWidth: 4 },
    hintBar: { position: 'absolute', bottom: 120, left: 20, right: 20, backgroundColor: 'rgba(0,0,0,0.7)', padding: 12, borderRadius: 8 },
    hintText: { color: '#FFF', textAlign: 'center', fontSize: 14 },
    captureCounter: { position: 'absolute', top: 120, right: 20, backgroundColor: '#2196F3', padding: 12, borderRadius: 20 },
    captureCounterText: { color: '#FFF', fontWeight: 'bold', fontSize: 16 },
    torchButton: { position: 'absolute', bottom: 40, right: 20, backgroundColor: 'rgba(0,0,0,0.7)', padding: 15, borderRadius: 30 },
    torchButtonText: { fontSize: 24 },
    title: { fontSize: 24, fontWeight: 'bold', color: '#E2E8F0', marginBottom: 10, textAlign: 'center' },
    subtitle: { fontSize: 14, color: '#CBD5E0', marginBottom: 20, textAlign: 'center' },
    primaryButton: { backgroundColor: '#2563EB', paddingVertical: 15, paddingHorizontal: 40, borderRadius: 25, marginBottom: 20 },
    primaryButtonText: { color: '#FFF', fontSize: 16, fontWeight: '600' },
    secondaryButton: { backgroundColor: '#475569', paddingVertical: 12, paddingHorizontal: 30, borderRadius: 20, marginTop: 20 },
    secondaryButtonText: { color: '#FFF', fontSize: 14, fontWeight: '600' },
    infoText: { fontSize: 12, color: '#94A3B8', textAlign: 'center', lineHeight: 20 },
    nfcInstructions: { marginTop: 20, padding: 20, backgroundColor: '#1E293B', borderRadius: 12, width: '100%' },
    instructionText: { color: '#CBD5E0', fontSize: 13, marginBottom: 8 },
    resultCard: { backgroundColor: '#1E293B', padding: 16, borderRadius: 12, marginBottom: 16, width: '100%' },
    resultCardTitle: { fontSize: 16, fontWeight: 'bold', color: '#60A5FA', marginBottom: 10 },
    resultText: { color: '#E2E8F0', fontSize: 13, marginBottom: 4 },
    logsContainer: { maxHeight: 250, backgroundColor: '#1E293B', margin: 20, borderRadius: 12, padding: 12 },
    logSection: { marginBottom: 16 },
    logSectionTitle: { fontSize: 14, fontWeight: 'bold', color: '#60A5FA', marginBottom: 8 },
    logEmpty: { color: '#64748B', fontSize: 12, fontStyle: 'italic' },
    logItem: { marginBottom: 8, borderLeftWidth: 2, borderLeftColor: '#3B82F6', paddingLeft: 8 },
    logTime: { color: '#94A3B8', fontSize: 11 },
    logMessage: { color: '#E2E8F0', fontSize: 12, marginTop: 2 },
    backButton: { position: 'absolute', top: 50, left: 20, backgroundColor: 'rgba(0,0,0,0.5)', padding: 10, borderRadius: 8 },
    backButtonText: { color: '#FFF', fontSize: 14, fontWeight: '600' },
    errorText: { color: '#EF4444', fontSize: 16 },
});

export default VerificationFlowScreen;
