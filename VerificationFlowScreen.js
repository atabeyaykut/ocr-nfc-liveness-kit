/**
 * Verification Flow Screen - Tam Doğrulama Akışı
 * OCR (Ön+Arka Yüz Multi-Frame) → NFC → Liveness
 * Ön ve arka yüz ayrı çekiliyor, MRZ karşılaştırması yapılıyor
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
import { LivenessModule } from './modules/liveness/LivenessWrapper';

const OCRReaderModule = require('./modules/ocr/OCRReaderModule').default || require('./modules/ocr/OCRReaderModule');
const { NFCReaderModule } = require('./modules/nfc/NFCReaderModule');

const { width: screenWidth } = Dimensions.get('window');

const SHARED_FIELDS = [
    { key: 'tcNo', label: 'TC No' },
    { key: 'documentNo', label: 'Belge No' },
    { key: 'serialNo', label: 'Seri No' },
    { key: 'name', label: 'Ad' },
    { key: 'surname', label: 'Soyad' },
    { key: 'fullName', label: 'Ad Soyad' },
    { key: 'birthDate', label: 'Doğum Tarihi' },
    { key: 'validUntil', label: 'Geçerlilik' },
    { key: 'expiryDate', label: 'Bitiş Tarihi' },
    { key: 'nationality', label: 'Uyruk' },
    { key: 'gender', label: 'Cinsiyet' },
];

const DISPLAY_TRUNCATE_LENGTH = 180;
const LOG_TRUNCATE_LENGTH = 90;

const truncateValue = (value, maxLength) => {
    if (typeof value !== 'string') {
        return value;
    }
    if (value.length <= maxLength) {
        return value;
    }
    return `${value.slice(0, Math.max(0, maxLength - 3))}... (${value.length} chars)`;
};

const formatDisplayValue = (value) => {
    if (value === null || value === undefined) {
        return '-';
    }

    if (typeof value === 'string') {
        const trimmed = value.trim();
        if (!trimmed) {
            return '-';
        }
        return truncateValue(trimmed, DISPLAY_TRUNCATE_LENGTH);
    }

    if (Array.isArray(value)) {
        if (value.length === 0) {
            return '-';
        }
        return truncateValue(value.map((item) => formatDisplayValue(item)).join(', '), DISPLAY_TRUNCATE_LENGTH);
    }

    if (typeof value === 'object') {
        if (Object.keys(value).length === 0) {
            return '-';
        }
        return JSON.stringify(value, null, 2);
    }

    return String(value);
};

const formatLogValue = (value) => {
    const formatted = formatDisplayValue(value);
    if (typeof formatted !== 'string') {
        return formatted;
    }
    return truncateValue(formatted, LOG_TRUNCATE_LENGTH);
};

const CAPTURE_SEQUENCE_COUNT = 3;
const CAPTURE_DELAY_MS = 200;
const SIDE = {
    FRONT: 'front',
    BACK: 'back'
};

const VerificationFlowScreen = ({ navigation, route }) => {
    const [currentPhase, setCurrentPhase] = useState('idle'); // idle, ocr_front, ocr_back, processing, nfc, liveness, completed
    const [currentSide, setCurrentSide] = useState(SIDE.FRONT);
    const [logs, setLogs] = useState([]);
    const [frontFrames, setFrontFrames] = useState([]);
    const [backFrames, setBackFrames] = useState([]);
    const [biometricPhotoUri, setBiometricPhotoUri] = useState(null);
    const [ocrResult, setOcrResult] = useState(null);
    const [nfcResult, setNfcResult] = useState(null);
    const [livenessResult, setLivenessResult] = useState(null);
    const [nfcComparison, setNfcComparison] = useState([]);
    const [isProcessing, setIsProcessing] = useState(false);
    const [isCameraActive, setIsCameraActive] = useState(false);
    const [captureCount, setCaptureCount] = useState(0);
    const [detectionHint, setDetectionHint] = useState('');

    const cameraRef = useRef(null);
    const ocrModuleRef = useRef(new OCRReaderModule());
    const nfcModuleRef = useRef(new NFCReaderModule());

    const device = useCameraDevice('back');

    const addLog = useCallback((message, data = null) => {
        const timestamp = new Date().toLocaleTimeString('tr-TR');
        setLogs((prev) => [{ timestamp, message, data }, ...prev].slice(0, 30));
    }, []);

    useEffect(() => {
        if (route.params?.nfcPhoto) {
            const nfcPhoto = route.params.nfcPhoto;
            const photoUri = nfcPhoto.uri || nfcPhoto.photoUri || nfcPhoto;

            if (photoUri) {
                addLog('📸 NFC fotoğrafı route params\'tan alındı');
                addLog(`URI: ${photoUri.substring(0, 60)}...`);
                setBiometricPhotoUri(photoUri);
                // Direkt liveness'a geç (route params durumu)
                setCurrentPhase('liveness');
            } else {
                addLog('⚠️ NFC fotoğraf URI\'si bulunamadı');
            }
        }
    }, [route.params?.nfcPhoto, addLog]);

    useEffect(() => {
        if (biometricPhotoUri &&
            currentPhase === 'nfc' &&
            nfcResult) {

            addLog('👁️ biometricPhotoUri hazır, liveness başlatılıyor...');
            addLog(`📸 Photo URI: ${biometricPhotoUri.substring(0, 60)}...`);

            // Kısa bir delay ile liveness'a geç
            const timer = setTimeout(() => {
                setCurrentPhase('liveness');
            }, 300);

            return () => clearTimeout(timer);
        }
    }, [biometricPhotoUri, currentPhase, nfcResult, addLog]);

    const normalizeForCompare = useCallback((value) => {
        if (value === null || value === undefined) {
            return '';
        }
        return String(value).replace(/\s+/g, '').toLowerCase();
    }, []);

    const buildComparison = useCallback((ocrData = {}, nfcData = {}) => {
        return SHARED_FIELDS.map(({ key, label }) => {
            const ocrValue = ocrData[key] ?? (key === 'fullName' ? `${ocrData.name || ''} ${ocrData.surname || ''}`.trim() : undefined);
            const nfcValue = nfcData[key];
            const isMatch = normalizeForCompare(ocrValue) !== '' && normalizeForCompare(ocrValue) === normalizeForCompare(nfcValue);
            return {
                key,
                label,
                ocrValue: ocrValue ?? '-',
                nfcValue: nfcValue ?? '-',
                isMatch,
            };
        });
    }, [normalizeForCompare]);

    const checkCameraPermission = useCallback(async () => {
        try {
            const permissionType = Platform.OS === 'ios' ? PERMISSIONS.IOS.CAMERA : PERMISSIONS.ANDROID.CAMERA;
            const status = await check(permissionType);
            if (status === RESULTS.GRANTED) return true;

            const newStatus = await request(permissionType);
            if (newStatus === RESULTS.GRANTED) return true;

            Alert.alert('Kamera İzni Gerekli', 'Doğrulama için kamera izni vermeniz gerekiyor.');
            return false;
        } catch (err) {
            console.error('[Verification] Kamera izni hatası:', err);
            return false;
        }
    }, []);

    // Multi-frame capture
    const captureMultipleFrames = useCallback(async (side) => {
        try {
            addLog(`${side === SIDE.FRONT ? 'Ön' : 'Arka'} yüz: ${CAPTURE_SEQUENCE_COUNT} fotoğraf çekiliyor...`);
            setIsProcessing(true);

            const frames = [];
            for (let i = 0; i < CAPTURE_SEQUENCE_COUNT; i++) {
                setCaptureCount(i + 1);

                const photo = await cameraRef.current.takePhoto({
                    quality: 0.9,
                    skipMetadata: true,
                });

                const photoPath = photo?.path || photo?.uri;
                if (!photoPath) throw new Error('Fotoğraf alınamadı');

                const normalizedPath = photoPath.startsWith('file://')
                    ? photoPath
                    : `file://${photoPath}`;

                frames.push(normalizedPath);
                addLog(`Fotoğraf ${i + 1}/${CAPTURE_SEQUENCE_COUNT} çekildi`);

                if (i < CAPTURE_SEQUENCE_COUNT - 1) {
                    await new Promise(resolve => setTimeout(resolve, CAPTURE_DELAY_MS));
                }
            }

            addLog(`✅ ${frames.length} fotoğraf başarıyla çekildi`);
            return frames;
        } catch (error) {
            addLog(`❌ Hata: ${error.message}`);
            throw error;
        } finally {
            setCaptureCount(0);
            setIsProcessing(false);
        }
    }, [addLog]);

    // Start front side capture
    const startFrontCapture = useCallback(async () => {
        const hasPermission = await checkCameraPermission();
        if (!hasPermission) return;

        setCurrentPhase('ocr_front');
        setCurrentSide(SIDE.FRONT);
        setIsCameraActive(true);
        setDetectionHint('Ön yüzü gösterin - Butona basın');
        addLog('📸 Ön yüz çekimi başlıyor...');
    }, [addLog, checkCameraPermission]);

    // Start back side capture (NFC varsa direkt arka yüzden başlar)
    const startBackCapture = useCallback(async () => {
        const hasPermission = await checkCameraPermission();
        if (!hasPermission) return;

        setCurrentPhase('ocr_back');
        setCurrentSide(SIDE.BACK);
        setIsCameraActive(true);
        setDetectionHint('Arka yüzü gösterin - Kart otomatik algılanacak');
        addLog('📸 Arka yüz çekimi başlıyor (otomatik algılama)...');

        // Otomatik algılama için 3 saniye bekle (kullanıcı kartı yerleştirsin)
        setTimeout(async () => {
            if (cameraRef.current) {
                try {
                    setDetectionHint('Arka yüz çekiliyor...');
                    const frames = await captureMultipleFrames(SIDE.BACK);
                    setBackFrames(frames);
                    setIsCameraActive(false);

                    addLog('✅ Arka yüz çekildi (ön yüz skip - NFC var), işleniyor...');
                    setCurrentPhase('processing');

                    // Process back only
                    await processOCR([], frames);
                } catch (error) {
                    Alert.alert('Hata', error.message);
                    setIsCameraActive(false);
                }
            }
        }, 3000);
    }, [addLog, checkCameraPermission, captureMultipleFrames, processOCR]);

    // Capture front side frames
    const captureFront = useCallback(async () => {
        try {
            setDetectionHint('Ön yüz çekiliyor...');
            const frames = await captureMultipleFrames(SIDE.FRONT);
            setFrontFrames(frames);
            setIsCameraActive(false);

            addLog('✅ Ön yüz tamamlandı, arka yüz başlatılıyor...');

            // Auto-start back side after 1 second
            setTimeout(() => {
                setCurrentPhase('ocr_back');
                setCurrentSide(SIDE.BACK);
                setIsCameraActive(true);
                setDetectionHint('Arka yüzü gösterin - Butona basın');
                addLog('📸 Arka yüz çekimi başlıyor...');
            }, 1000);
        } catch (error) {
            Alert.alert('Hata', error.message);
            setIsCameraActive(false);
        }
    }, [addLog, captureMultipleFrames]);

    // Capture back side frames
    const captureBack = useCallback(async () => {
        try {
            setDetectionHint('Arka yüz çekiliyor...');
            const frames = await captureMultipleFrames(SIDE.BACK);
            setBackFrames(frames);
            setIsCameraActive(false);

            // NFC varsa sadece arka yüz, yoksa her ikisi
            const hasNFC = frontFrames.length === 0;
            if (hasNFC) {
                addLog('✅ Arka yüz çekildi (ön yüz skip - NFC var), işleniyor...');
            } else {
                addLog('✅ Her iki taraf çekildi, işleniyor...');
            }
            setCurrentPhase('processing');

            // Process (both sides or back only)
            await processOCR(frontFrames, frames);
        } catch (error) {
            Alert.alert('Hata', error.message);
            setIsCameraActive(false);
        }
    }, [addLog, captureMultipleFrames, frontFrames]);

    // Process OCR with both sides or back only
    const processOCR = useCallback(async (frontPaths, backPaths) => {
        try {
            setDetectionHint('Fotoğraflar işleniyor...');

            // Sadece arka yüz varsa frontPaths boş array
            const isSingleSide = frontPaths.length === 0;
            if (isSingleSide) {
                addLog('🔄 OCR işlemi başlıyor (sadece arka yüz MRZ)...');
            } else {
                addLog('🔄 OCR işlemi başlıyor (ön + arka)...');
            }

            // processBothSides boş frontPaths ile çalışabilir
            const result = await ocrModuleRef.current.processBothSides(frontPaths, backPaths);

            addLog('✅ OCR tamamlandı');
            console.log('[OCR] Result:', result);

            // Check conflicts
            if (result.data?.conflicts && result.data.conflicts.length > 0) {
                addLog(`⚠️ ${result.data.conflicts.length} çelişki tespit edildi`);
                result.data.conflicts.forEach(conflict => {
                    addLog(`  - ${conflict.field}: Ön="${conflict.frontValue}" vs Arka="${conflict.backValue}"`);
                });
            }

            // Show comparison
            if (result.frontSide && result.backSide) {
                addLog('📊 Karşılaştırma:');
                ['tcNo', 'name', 'surname', 'birthDate'].forEach(field => {
                    const frontVal = result.frontSide[field] || '-';
                    const backVal = result.backSide[field] || '-';
                    const match = frontVal === backVal ? '✓' : '✗';
                    addLog(`  ${match} ${field}: Ön="${frontVal}" Arka="${backVal}"`);
                });
            }

            setOcrResult(result);

            // Log OCR data for NFC debugging
            addLog('📋 OCR Verileri (NFC için):');
            const ocrData = result.data || {};
            addLog(`  • TC No: ${ocrData.tcNo || 'YOK'}`);
            addLog(`  • Belge No: ${ocrData.documentNo || ocrData.serialNo || 'YOK'}`);
            addLog(`  • Doğum: ${ocrData.birthDate || 'YOK'}`);
            addLog(`  • Geçerlilik: ${ocrData.validUntil || 'YOK'}`);
            addLog(`  • Ad: ${ocrData.name || 'YOK'}`);
            addLog(`  • Soyad: ${ocrData.surname || 'YOK'}`);
            if (ocrData.mrzCheckDigits) {
                addLog(`  • Check Digits: ${JSON.stringify(ocrData.mrzCheckDigits)}`);
            }

            addLog('➡️ NFC başlatılıyor...');

            // Start NFC flow
            setTimeout(() => {
                startNfcFlow(result.data);
            }, 1500);
        } catch (error) {
            console.error('[OCR] Error:', error);
            addLog(`❌ OCR hatası: ${error.message}`);
            Alert.alert('OCR Hatası', error.message);
            setCurrentPhase('completed');
        }
    }, [addLog]);

    // Start NFC flow
    const startNfcFlow = useCallback(async (ocrData = {}) => {
        try {
            setCurrentPhase('nfc');
            addLog('📡 NFC başlatılıyor...');

            const isSupported = await NfcManager.isSupported();
            if (!isSupported) {
                addLog('❌ NFC desteklenmiyor');
                Alert.alert(
                    'NFC Desteklenmiyor',
                    'Bu cihaz NFC desteklemiyor. Liveness atlanıyor.',
                    [{ text: 'Tamam', onPress: () => setCurrentPhase('completed') }]
                );
                return;
            }

            const isEnabled = await NfcManager.isEnabled();
            if (!isEnabled) {
                addLog('⚠️ NFC kapalı');
                Alert.alert('NFC Kapalı', 'NFC ayarlardan açılmalı.',
                    [
                        { text: 'İptal', onPress: () => setCurrentPhase('completed') },
                        { text: 'Ayarlar', onPress: () => NfcManager.goToNfcSetting() }
                    ]
                );
                return;
            }

            nfcModuleRef.current.onNFCResult((result) => {
                const parsedFields = result?.parsedFields || result?.data || result || {};
                addLog('✅ NFC başarılı');

                // DEBUG: Tüm result objesini logla
                addLog('🔍 DEBUG - NFC Result Keys: ' + Object.keys(result).join(', '));
                addLog('🔍 DEBUG - Has photo: ' + (!!result.photo));
                addLog('🔍 DEBUG - Has photoUri: ' + (!!result.photoUri));
                addLog('🔍 DEBUG - Has photoBase64: ' + (!!result.photoBase64));
                addLog('🔍 DEBUG - ParsedFields has photo: ' + (!!parsedFields.photo));
                addLog('🔍 DEBUG - ParsedFields has photoBase64: ' + (!!parsedFields.photoBase64));

                addLog('📡 NFC alanları JS tarafında:');
                Object.entries(parsedFields).forEach(([key, value]) => {
                    addLog(`   • ${key}: ${formatLogValue(value)}`);
                });

                if (ocrResult?.data) {
                    const comparison = buildComparison(ocrResult.data, parsedFields);
                    setNfcComparison(comparison);

                    const mismatches = comparison.filter(item => !item.isMatch);
                    if (mismatches.length === 0) {
                        addLog('✅ OCR ve NFC ortak alanları eşleşti');
                    } else {
                        addLog(`⚠️ ${mismatches.length} alan eşleşmedi:`);
                        mismatches.forEach(item => {
                            addLog(`   • ${item.label}: OCR="${item.ocrValue}" vs NFC="${item.nfcValue}"`);
                        });
                    }
                } else {
                    setNfcComparison([]);
                }

                // NFC'den gelen fotoğrafı biometricPhotoUri'ye ata (önce fotoğraf)
                let photoWasSet = false;
                let extractedPhotoUri = null;

                // Çoklu kaynak kontrolü: result veya parsedFields içinde olabilir
                const photoFromResult = result.photo || result.photoUri || result.photoBase64;
                const photoFromParsed = parsedFields.photo || parsedFields.photoUri || parsedFields.photoBase64;

                const photoSource = photoFromResult || photoFromParsed;

                if (photoSource) {
                    // URI formatında mı kontrol et
                    const photoUri = photoSource?.uri || photoSource;

                    if (typeof photoUri === 'string' && photoUri.startsWith('file://')) {
                        // File URI
                        extractedPhotoUri = photoUri;
                        addLog(`📸 NFC fotoğrafı alındı (file): ${photoUri.substring(0, 50)}...`);
                        photoWasSet = true;
                    } else if (typeof photoUri === 'string' && photoUri.startsWith('data:image')) {
                        // Data URI (zaten base64)
                        extractedPhotoUri = photoUri;
                        addLog('📸 NFC fotoğrafı alındı (data URI)');
                        photoWasSet = true;
                    } else if (typeof photoUri === 'string' && photoUri.length > 100) {
                        // Raw base64 string (base64 görünüyor)
                        const dataUri = `data:image/jpeg;base64,${photoUri}`;
                        extractedPhotoUri = dataUri;
                        addLog('📸 NFC fotoğrafı alındı (base64): ' + photoUri.substring(0, 30) + '...');
                        photoWasSet = true;
                    } else {
                        addLog('⚠️ NFC fotoğraf formatı tanınamadı: ' + typeof photoUri);
                        addLog('⚠️ Photo value: ' + String(photoUri).substring(0, 100));
                    }
                } else {
                    addLog('⚠️ NFC sonuçunda fotoğraf bulunamadı');
                    addLog('⚠️ result.photo: ' + result.photo);
                    addLog('⚠️ parsedFields.photo: ' + parsedFields.photo);
                    addLog('⚠️ parsedFields.photoBase64: ' + parsedFields.photoBase64);
                }

                nfcModuleRef.current.stopNFC();

                // Fotoğraf set edilmediyse direkt completed'a geç
                if (!photoWasSet) {
                    addLog('⚠️ Fotoğraf olmadan liveness atlanıyor');
                    setCurrentPhase('completed');
                    return;
                }

                // BATCH STATE UPDATE: İkisini birlikte güncelle (React 18+ otomatik batch yapar)
                setBiometricPhotoUri(extractedPhotoUri);
                setNfcResult({
                    ...result,
                    parsedFields,
                });
                // useEffect her iki state de hazır olunca tetiklenecek
            });

            nfcModuleRef.current.onNFCError((error) => {
                addLog(`❌ NFC hatası: ${error.error}`);
                Alert.alert('NFC Hatası', error.error);
                // Hata durumunda completed'a geç
                setCurrentPhase('completed');
            });

            nfcModuleRef.current.onNFCStarted(() => {
                addLog('📱 NFC dinleniyor - kartı yaklaştırın');
                setDetectionHint('Kartı telefonun arkasına yaklaştırın...');
            });

            const mrzSeed = {
                tcNo: ocrData.tcNo,
                name: ocrData.name,
                surname: ocrData.surname,
                birthDate: ocrData.birthDate,
                documentNo: ocrData.documentNo || ocrData.serialNo,
                serialNo: ocrData.serialNo,
                validUntil: ocrData.validUntil,
                expiryDate: ocrData.expiryDate || ocrData.validUntil,
                mrzCheckDigits: ocrData.mrzCheckDigits,
            };

            console.log('[NFC] 🔐 mrzSeed being sent to native:', JSON.stringify(mrzSeed, null, 2));
            addLog('🔐 BAC için gönderilen veriler:');
            addLog(`  • tcNo: ${mrzSeed.tcNo || '❌ EKSİK'}`);
            addLog(`  • documentNo: ${mrzSeed.documentNo || '❌ EKSİK'}`);
            addLog(`  • serialNo: ${mrzSeed.serialNo || '❌ EKSİK'}`);
            addLog(`  • birthDate: ${mrzSeed.birthDate || '❌ EKSİK'}`);
            addLog(`  • validUntil: ${mrzSeed.validUntil || '❌ EKSİK'}`);
            addLog(`  • expiryDate: ${mrzSeed.expiryDate || '❌ EKSİK'}`);
            addLog(`  • mrzCheckDigits: ${mrzSeed.mrzCheckDigits ? 'VAR' : 'YOK'}`);
            addLog('Note: birthDate ve expiryDate MRZ formatında (YYMMDD) olmalı');

            await nfcModuleRef.current.startNFC({
                cardType: 'tc_kimlik',
                readTimeout: 60000,
                mrzSeed: mrzSeed,
            });
        } catch (error) {
            console.error('[NFC] Error:', error);
            addLog(`❌ NFC hatası: ${error.message}`);
            Alert.alert('NFC Hatası', error.message);
            // Hata durumunda completed'a geç
            setCurrentPhase('completed');
        }
    }, [addLog]);

    // Start liveness flow - artık sadece manuel başlatma için (useEffect otomatik yapıyor)
    const startLivenessFlow = useCallback(() => {
        addLog('👁️ Liveness testi manuel başlatılıyor...');

        // Liveness phase'e geç (biometricPhotoUri kontrolü useEffect'te)
        setCurrentPhase('liveness');
    }, [addLog]);

    // Liveness success handler
    const handleLivenessSuccess = useCallback((result) => {
        addLog('=== 🎭 LIVENESS TEST SONUÇLARI ===');
        addLog(`Durum: ${result.passed ? '✅ BAŞARILI' : '❌ BAŞARISIZ'}`);
        addLog(`Skor: ${result.score}%`);

        if (result.details) {
            addLog(`\nChallenge Detayları:`);
            addLog(`- Toplam: ${result.details.totalChallenges}`);
            addLog(`- Başarılı: ${result.details.successfulChallenges}`);
            addLog(`- Başarısız: ${result.details.failedChallenges}`);

            if (result.details.challenges && result.details.challenges.length > 0) {
                addLog(`\nChallenge Sonuçları:`);
                result.details.challenges.forEach((challenge, index) => {
                    const status = challenge.success ? '✅' : '❌';
                    const duration = challenge.duration ? `(${(challenge.duration / 1000).toFixed(1)}s)` : '';
                    addLog(`  ${index + 1}. ${challenge.challenge}: ${status} ${duration}`);
                });
            }
        }

        if (result.similarity !== undefined) {
            addLog(`\nYüz Benzerliği: %${result.similarity}`);
        }

        addLog('================================\n');

        setLivenessResult(result);
        setCurrentPhase('completed');
    }, [addLog]);

    // Liveness error handler
    const handleLivenessError = useCallback((error) => {
        addLog('=== ❌ LIVENESS TEST HATASI ===');
        addLog(`Hata: ${error.message || error.error || 'Bilinmeyen hata'}`);

        if (error.code) {
            addLog(`Hata Kodu: ${error.code}`);
        }

        if (error.details) {
            addLog(`Detaylar: ${JSON.stringify(error.details, null, 2)}`);
        }

        addLog('================================\n');

        Alert.alert('Liveness Hatası', error.message || error.error, [
            { text: 'Tekrar Dene', onPress: () => setCurrentPhase('liveness') },
            { text: 'Atla', onPress: () => setCurrentPhase('completed') }
        ]);
    }, [addLog]);

    // Liveness cancel handler
    const handleLivenessCancel = useCallback(() => {
        addLog('=== ⚠️ LIVENESS TEST İPTAL EDİLDİ ===');
        addLog('Kullanıcı testi iptal etti');
        addLog('================================\n');
        setCurrentPhase('completed');
    }, [addLog]);

    // Start verification
    const startVerification = useCallback(async () => {
        setLogs([]);
        setFrontFrames([]);
        setBackFrames([]);
        setOcrResult(null);
        setNfcResult(null);
        setLivenessResult(null);
        setBiometricPhotoUri(null);
        addLog('🚀 Doğrulama başlatıldı');
        addLog('📸 Arka yüz MRZ okuması başlıyor...');

        // Her zaman sadece arka yüz MRZ
        startBackCapture();
    }, [addLog, startBackCapture]);

    // Reset verification
    const resetVerification = useCallback(() => {
        setCurrentPhase('idle');
        setIsCameraActive(false);
        setFrontFrames([]);
        setBackFrames([]);
        setBiometricPhotoUri(null); // added this line
        setOcrResult(null);
        setNfcResult(null);
        setLivenessResult(null);
        setIsProcessing(false);
        setCaptureCount(0);
        setDetectionHint('');
        setLogs([]);
        if (nfcModuleRef.current) nfcModuleRef.current.stopNFC().catch(() => { });
    }, []);

    useEffect(() => {
        return () => {
            setIsCameraActive(false);
            if (nfcModuleRef.current) nfcModuleRef.current.stopNFC().catch(() => { });
        };
    }, []);

    // Render idle screen
    const renderIdleScreen = () => (
        <View style={styles.centerContainer}>
            <Text style={styles.title}>📱 Kimlik Doğrulama</Text>
            <Text style={styles.subtitle}>
                MRZ Okuma → NFC Karşılaştırma → Liveness
            </Text>
            <TouchableOpacity style={styles.primaryButton} onPress={startVerification}>
                <Text style={styles.primaryButtonText}>Doğrulamayı Başlat</Text>
            </TouchableOpacity>

            {/* NFC Test Button Removed - flow requires OCR data */}

            <View style={styles.infoBox}>
                <Text style={styles.infoText}>
                    1️⃣ MRZ Okuma: Arka yüz OCR (otomatik){'\n'}
                    2️⃣ NFC Okuma: Çip okuma + BAC{'\n'}
                    3️⃣ Karşılaştırma: MRZ vs NFC verileri{'\n'}
                    4️⃣ Liveness: Canlılık tespiti
                </Text>
            </View>
        </View>
    );

    // Render camera
    const renderCamera = () => {
        if (!device) {
            return <View style={styles.centerContainer}><Text style={styles.errorText}>Kamera yok</Text></View>;
        }

        const sideText = currentSide === SIDE.FRONT ? 'ÖN YÜZ' : 'ARKA YÜZ';
        const buttonText = currentPhase === 'ocr_front' ? 'Ön Yüzü Çek' : 'Arka Yüzü Çek';

        return (
            <View style={styles.cameraContainer}>
                <Camera
                    ref={cameraRef}
                    style={StyleSheet.absoluteFill}
                    device={device}
                    isActive={isCameraActive}
                    photo={true}
                />

                <View style={styles.overlay}>
                    <View style={styles.cardGuide}>
                        <View style={[styles.corner, styles.topLeft]} />
                        <View style={[styles.corner, styles.topRight]} />
                        <View style={[styles.corner, styles.bottomLeft]} />
                        <View style={[styles.corner, styles.bottomRight]} />
                        <Text style={styles.sideLabel}>{sideText}</Text>
                    </View>
                </View>

                <View style={styles.hintBar}>
                    <Text style={styles.hintText}>{detectionHint}</Text>
                </View>

                {captureCount > 0 && (
                    <View style={styles.captureCounter}>
                        <Text style={styles.captureCounterText}>
                            📸 {captureCount}/{CAPTURE_SEQUENCE_COUNT}
                        </Text>
                    </View>
                )}

                {nfcComparison.length > 0 && (
                    <View style={styles.resultCard}>
                        <Text style={styles.resultCardTitle}>🔍 OCR vs NFC Karşılaştırma</Text>
                        {nfcComparison.map(({ key, label, ocrValue, nfcValue, isMatch }) => (
                            <View key={key} style={styles.comparisonRow}>
                                <View style={styles.comparisonLabelWrap}>
                                    <Text style={[styles.comparisonBadge, isMatch ? styles.matchBadge : styles.mismatchBadge]}>
                                        {isMatch ? '✓' : '✗'}
                                    </Text>
                                    <Text style={styles.resultLabel}>{label}</Text>
                                </View>
                                <Text style={styles.comparisonValue}>OCR: {formatDisplayValue(ocrValue)}</Text>
                                <Text style={styles.comparisonValue}>NFC: {formatDisplayValue(nfcValue)}</Text>
                            </View>
                        ))}
                    </View>
                )}

                {!isProcessing && (
                    <TouchableOpacity
                        style={styles.captureButton}
                        onPress={currentPhase === 'ocr_front' ? captureFront : captureBack}
                    >
                        <Text style={styles.captureButtonText}>{buttonText}</Text>
                    </TouchableOpacity>
                )}
            </View>
        );
    };

    // Render processing
    const renderProcessing = () => (
        <View style={styles.centerContainer}>
            <ActivityIndicator size="large" color="#2196F3" />
            <Text style={styles.title}>İşleniyor...</Text>
            <Text style={styles.subtitle}>{detectionHint}</Text>
            <Text style={styles.infoText}>
                Ön yüz: {frontFrames.length} fotoğraf{'\n'}
                Arka yüz: {backFrames.length} fotoğraf{'\n'}
                Birleştiriliyor ve karşılaştırılıyor...
            </Text>
        </View>
    );

    // Render NFC waiting
    const renderNfcWaiting = () => (
        <View style={styles.centerContainer}>
            <ActivityIndicator size="large" color="#2196F3" />
            <Text style={styles.title}>NFC Okuma</Text>
            <Text style={styles.subtitle}>{detectionHint}</Text>
            <View style={styles.nfcInstructions}>
                <Text style={styles.instructionText}>📱 Kartı arkaya yaklaştırın</Text>
                <Text style={styles.instructionText}>⏱️ 2-3 saniye tutun</Text>
            </View>
            <TouchableOpacity
                style={styles.skipButton}
                onPress={startLivenessFlow}
            >
                <Text style={styles.skipButtonText}>NFC'yi Atla →</Text>
            </TouchableOpacity>
        </View>
    );

    // Render liveness
    const renderLiveness = () => {
        if (!biometricPhotoUri) {
            return (
                <View style={styles.centerContainer}>
                    <Text style={styles.errorText}>
                        Biyometrik fotoğraf bulunamadı
                    </Text>
                    <TouchableOpacity
                        style={styles.secondaryButton}
                        onPress={() => setCurrentPhase('completed')}
                    >
                        <Text style={styles.secondaryButtonText}>Atla</Text>
                    </TouchableOpacity>
                </View>
            );
        }

        return (
            <LivenessModule
                referencePhotoUri={biometricPhotoUri}
                onSuccess={handleLivenessSuccess}
                onError={handleLivenessError}
                onCancel={handleLivenessCancel}
            />
        );
    };

    // Render completed
    const renderCompletedScreen = () => {
        const nfcFields = nfcResult?.parsedFields || {};
        const nfcFieldEntries = Object.entries(nfcFields);

        return (
            <ScrollView style={styles.completedContainer}>
                <Text style={styles.title}>✅ Doğrulama Tamamlandı</Text>

                {ocrResult && (
                    <View style={styles.resultCard}>
                        <Text style={styles.resultCardTitle}>📸 OCR Sonuçları</Text>
                        <Text style={styles.resultText}>TC: {ocrResult.data?.tcNo || '-'}</Text>
                        <Text style={styles.resultText}>Ad: {ocrResult.data?.name || '-'}</Text>
                        <Text style={styles.resultText}>Soyad: {ocrResult.data?.surname || '-'}</Text>
                        <Text style={styles.resultText}>Doğum: {ocrResult.data?.birthDate || '-'}</Text>
                        <Text style={styles.resultText}>
                            Güven: %{ocrResult.data?.confidence || 0} |
                            Tamamlanma: %{ocrResult.data?.completeness || 0}
                        </Text>
                        {ocrResult.data?.conflicts && ocrResult.data.conflicts.length > 0 && (
                            <Text style={styles.warningText}>
                                ⚠️ {ocrResult.data.conflicts.length} çelişki bulundu
                            </Text>
                        )}
                    </View>
                )}

                {nfcResult && (
                    <View style={styles.resultCard}>
                        <Text style={styles.resultCardTitle}>📡 NFC Sonuçları</Text>
                        {nfcFieldEntries.length === 0 && (
                            <Text style={styles.resultText}>NFC verisi alınamadı</Text>
                        )}
                        {nfcFieldEntries.map(([key, value]) => {
                            const formattedValue = formatDisplayValue(value);
                            const isMultiline = typeof formattedValue === 'string' && formattedValue.includes('\n');
                            return (
                                <View key={key} style={styles.resultRow}>
                                    <Text style={styles.resultLabel}>{key}</Text>
                                    <Text style={isMultiline ? styles.resultMonoValue : styles.resultValue}>
                                        {formattedValue}
                                    </Text>
                                </View>
                            );
                        })}
                    </View>
                )}

                {livenessResult && (
                    <View style={styles.resultCard}>
                        <Text style={styles.resultCardTitle}>👤 Liveness Sonucu</Text>
                        {livenessResult.skipped ? (
                            <Text style={styles.warningText}>Atlandı</Text>
                        ) : livenessResult.success ? (
                            <>
                                <Text style={styles.resultText}>
                                    ✅ Canlılık doğrulandı
                                </Text>
                                <Text style={styles.resultText}>
                                    Benzerlik: %{livenessResult.similarity}
                                </Text>
                                <Text style={styles.resultText}>
                                    Komut sayısı: {livenessResult.commands}
                                </Text>
                            </>
                        ) : (
                            <Text style={styles.warningText}>Başarısız</Text>
                        )}
                    </View>
                )}

                <TouchableOpacity style={styles.secondaryButton} onPress={resetVerification}>
                    <Text style={styles.secondaryButtonText}>Yeniden Başlat</Text>
                </TouchableOpacity>
            </ScrollView>
        );
    };

    // Render logs
    const renderLogs = () => (
        <ScrollView style={styles.logsContainer}>
            <Text style={styles.logTitle}>📋 İşlem Logları</Text>
            {logs.length === 0 ? (
                <Text style={styles.logEmpty}>Henüz log yok</Text>
            ) : (
                logs.map((log, i) => (
                    <View key={i} style={styles.logItem}>
                        <Text style={styles.logTime}>[{log.timestamp}]</Text>
                        <Text style={styles.logMessage}>{log.message}</Text>
                    </View>
                ))
            )}
        </ScrollView>
    );

    return (
        <View style={styles.container}>
            <StatusBar barStyle={currentPhase.startsWith('ocr') ? 'light-content' : 'dark-content'} />

            {currentPhase === 'idle' && renderIdleScreen()}
            {(currentPhase === 'ocr_front' || currentPhase === 'ocr_back') && renderCamera()}
            {currentPhase === 'processing' && renderProcessing()}
            {currentPhase === 'nfc' && renderNfcWaiting()}
            {currentPhase === 'liveness' && renderLiveness()}
            {currentPhase === 'completed' && renderCompletedScreen()}

            {currentPhase !== 'idle' && currentPhase !== 'completed' && renderLogs()}

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
    completedContainer: { flex: 1, padding: 20 },
    cameraContainer: { flex: 1 },
    overlay: { ...StyleSheet.absoluteFillObject, justifyContent: 'center', alignItems: 'center' },
    cardGuide: {
        width: screenWidth * 0.90,
        height: 260,
        borderWidth: 3,
        borderColor: 'rgba(34,197,94,0.7)',
        borderRadius: 12,
        justifyContent: 'center',
        alignItems: 'center',
        backgroundColor: 'rgba(0,0,0,0.2)'
    },
    corner: { position: 'absolute', width: 30, height: 30, borderColor: '#22C55E' },
    topLeft: { top: -3, left: -3, borderTopWidth: 5, borderLeftWidth: 5 },
    topRight: { top: -3, right: -3, borderTopWidth: 5, borderRightWidth: 5 },
    bottomLeft: { bottom: -3, left: -3, borderBottomWidth: 5, borderLeftWidth: 5 },
    bottomRight: { bottom: -3, right: -3, borderBottomWidth: 5, borderRightWidth: 5 },
    sideLabel: { color: '#00FF00', fontSize: 24, fontWeight: 'bold' },
    hintBar: {
        position: 'absolute',
        top: 60,
        left: 20,
        right: 20,
        backgroundColor: 'rgba(0,0,0,0.7)',
        padding: 12,
        borderRadius: 8
    },
    hintText: { color: '#FFF', textAlign: 'center', fontSize: 14 },
    captureCounter: {
        position: 'absolute',
        top: 140,
        right: 20,
        backgroundColor: '#2196F3',
        padding: 12,
        borderRadius: 20
    },
    captureCounterText: { color: '#FFF', fontWeight: 'bold', fontSize: 16 },
    captureButton: {
        position: 'absolute',
        bottom: 40,
        left: 40,
        right: 40,
        backgroundColor: '#2196F3',
        paddingVertical: 18,
        borderRadius: 30,
        alignItems: 'center'
    },
    captureButtonText: { color: '#FFF', fontSize: 18, fontWeight: 'bold' },
    title: { fontSize: 24, fontWeight: 'bold', color: '#E2E8F0', marginBottom: 10, textAlign: 'center' },
    subtitle: { fontSize: 14, color: '#CBD5E0', marginBottom: 20, textAlign: 'center' },
    primaryButton: {
        backgroundColor: '#2563EB',
        paddingVertical: 15,
        paddingHorizontal: 40,
        borderRadius: 25,
        marginBottom: 20
    },
    primaryButtonText: { color: '#FFF', fontSize: 16, fontWeight: '600' },
    secondaryButton: {
        backgroundColor: '#475569',
        paddingVertical: 12,
        paddingHorizontal: 30,
        borderRadius: 20,
        marginTop: 20,
        alignSelf: 'center'
    },
    secondaryButtonText: { color: '#FFF', fontSize: 14, fontWeight: '600' },
    skipButton: {
        backgroundColor: '#64748B',
        paddingVertical: 10,
        paddingHorizontal: 20,
        borderRadius: 15,
        marginTop: 20
    },
    skipButtonText: { color: '#FFF', fontSize: 14 },
    infoBox: {
        backgroundColor: '#1E293B',
        padding: 20,
        borderRadius: 12,
        width: '100%',
        marginTop: 10
    },
    infoText: { fontSize: 13, color: '#94A3B8', lineHeight: 22 },
    nfcInstructions: {
        marginTop: 20,
        padding: 20,
        backgroundColor: '#1E293B',
        borderRadius: 12,
        width: '100%'
    },
    instructionText: { color: '#CBD5E0', fontSize: 13, marginBottom: 8 },
    resultCard: {
        backgroundColor: '#1E293B',
        padding: 16,
        borderRadius: 12,
        marginBottom: 16
    },
    resultCardTitle: { fontSize: 16, fontWeight: 'bold', color: '#60A5FA', marginBottom: 10 },
    resultText: { color: '#E2E8F0', fontSize: 13, marginBottom: 4 },
    resultRow: { marginBottom: 12 },
    resultLabel: { color: '#94A3B8', fontSize: 11, textTransform: 'uppercase', letterSpacing: 0.5 },
    resultValue: { color: '#E2E8F0', fontSize: 14, fontWeight: '600' },
    resultMonoValue: {
        color: '#E2E8F0',
        fontSize: 12,
        marginTop: 4,
        fontFamily: Platform.select({ ios: 'Menlo', android: 'monospace', default: 'monospace' })
    },
    comparisonRow: {
        marginBottom: 12,
        paddingBottom: 12,
        borderBottomWidth: 1,
        borderBottomColor: 'rgba(148,163,184,0.2)'
    },
    comparisonLabelWrap: { flexDirection: 'row', alignItems: 'center', marginBottom: 4 },
    comparisonBadge: {
        width: 20,
        height: 20,
        borderRadius: 10,
        textAlign: 'center',
        textAlignVertical: 'center',
        color: '#0F172A',
        fontWeight: 'bold',
        marginRight: 8
    },
    matchBadge: { backgroundColor: '#4ADE80' },
    mismatchBadge: { backgroundColor: '#F87171' },
    comparisonValue: { color: '#E2E8F0', fontSize: 12, marginBottom: 2 },
    warningText: { color: '#F59E0B', fontSize: 13, marginTop: 8, fontWeight: '600' },
    logsContainer: {
        maxHeight: 200,
        backgroundColor: '#1E293B',
        margin: 20,
        borderRadius: 12,
        padding: 12
    },
    logTitle: { fontSize: 14, fontWeight: 'bold', color: '#60A5FA', marginBottom: 8 },
    logEmpty: { color: '#64748B', fontSize: 12, fontStyle: 'italic' },
    logItem: {
        marginBottom: 8,
        borderLeftWidth: 2,
        borderLeftColor: '#3B82F6',
        paddingLeft: 8
    },
    logTime: { color: '#94A3B8', fontSize: 11 },
    logMessage: { color: '#E2E8F0', fontSize: 12, marginTop: 2 },
    backButton: {
        position: 'absolute',
        top: 50,
        left: 20,
        backgroundColor: 'rgba(0,0,0,0.5)',
        padding: 10,
        borderRadius: 8
    },
    backButtonText: { color: '#FFF', fontSize: 14, fontWeight: '600' },
    errorText: { color: '#EF4444', fontSize: 16 },
});

export default VerificationFlowScreen;
