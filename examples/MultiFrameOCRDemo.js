/**
 * Multi-Frame OCR Demo
 * Demonstrates 3-frame capture and merging for enhanced OCR quality
 */

import React, { useState, useRef } from 'react';
import {
    View,
    Text,
    StyleSheet,
    TouchableOpacity,
    ScrollView,
    ActivityIndicator,
    Alert,
} from 'react-native';
import OCRCamera from '../modules/ocr/OCRCamera';
import { OCRReaderModule } from '../modules/ocr/OCRReaderModule';

const MultiFrameOCRDemo = ({ navigation }) => {
    const [isCapturing, setIsCapturing] = useState(false);
    const [isProcessing, setIsProcessing] = useState(false);
    const [ocrResult, setOcrResult] = useState(null);
    const [showCamera, setShowCamera] = useState(false);
    const [capturedFrames, setCapturedFrames] = useState([]);

    const ocrModule = useRef(new OCRReaderModule({
        cardSide: 'front',
        cardType: 'tc_kimlik'
    })).current;

    const startCapture = () => {
        setShowCamera(true);
        setIsCapturing(true);
        setOcrResult(null);
        setCapturedFrames([]);
    };

    const handleImagesCaptured = async (captureData) => {
        try {
            console.log('[Demo] Images captured:', captureData);
            setShowCamera(false);
            setIsCapturing(false);

            if (captureData.type === 'multi-frame' && captureData.frames) {
                setCapturedFrames(captureData.frames);
                setIsProcessing(true);

                console.log('[Demo] Processing', captureData.frames.length, 'frames...');

                // Process multiple frames using the new method
                const result = await ocrModule.processMultiFrameImage(captureData.frames);

                console.log('[Demo] OCR completed:', result);
                setOcrResult(result);
                setIsProcessing(false);

                if (result.success && result.confidence > 70) {
                    Alert.alert(
                        'OCR Başarılı! 🎉',
                        `Güven Skoru: %${result.confidence}\n${captureData.frames.length} fotoğraf birleştirildi`,
                        [{ text: 'Tamam' }]
                    );
                }
            }
        } catch (error) {
            console.error('[Demo] Processing error:', error);
            setIsProcessing(false);
            Alert.alert('Hata', error.message || 'OCR işlemi başarısız oldu');
        }
    };

    const handleError = (error) => {
        console.error('[Demo] Capture error:', error);
        setIsCapturing(false);
        setIsProcessing(false);
        Alert.alert('Kamera Hatası', error.message);
    };

    const renderResults = () => {
        if (!ocrResult) return null;

        const { fields, confidence, text } = ocrResult;

        return (
            <ScrollView style={styles.resultsContainer}>
                <View style={styles.resultHeader}>
                    <Text style={styles.resultTitle}>OCR Sonuçları</Text>
                    <View style={styles.confidenceBadge}>
                        <Text style={styles.confidenceText}>%{confidence}</Text>
                    </View>
                </View>

                <View style={styles.frameInfo}>
                    <Text style={styles.frameInfoText}>
                        ✅ {capturedFrames.length} fotoğraf birleştirildi
                    </Text>
                </View>

                {fields.tcNo && (
                    <View style={styles.field}>
                        <Text style={styles.fieldLabel}>TC Kimlik No:</Text>
                        <Text style={styles.fieldValue}>{fields.tcNo}</Text>
                    </View>
                )}

                {fields.name && (
                    <View style={styles.field}>
                        <Text style={styles.fieldLabel}>Ad:</Text>
                        <Text style={styles.fieldValue}>{fields.name}</Text>
                    </View>
                )}

                {fields.surname && (
                    <View style={styles.field}>
                        <Text style={styles.fieldLabel}>Soyad:</Text>
                        <Text style={styles.fieldValue}>{fields.surname}</Text>
                    </View>
                )}

                {fields.birthDate && (
                    <View style={styles.field}>
                        <Text style={styles.fieldLabel}>Doğum Tarihi:</Text>
                        <Text style={styles.fieldValue}>{fields.birthDate}</Text>
                    </View>
                )}

                {fields.serialNo && (
                    <View style={styles.field}>
                        <Text style={styles.fieldLabel}>Seri No:</Text>
                        <Text style={styles.fieldValue}>{fields.serialNo}</Text>
                    </View>
                )}

                <TouchableOpacity style={styles.retryButton} onPress={startCapture}>
                    <Text style={styles.retryButtonText}>Tekrar Tara</Text>
                </TouchableOpacity>
            </ScrollView>
        );
    };

    if (showCamera) {
        return (
            <OCRCamera
                multiFrameMode={true}
                frameCount={3}
                onImageCaptured={handleImagesCaptured}
                onError={handleError}
                guidanceText="Kimlik kartınızı çerçeve içine hizalayın"
            />
        );
    }

    return (
        <View style={styles.container}>
            <View style={styles.header}>
                <TouchableOpacity onPress={() => navigation.goBack()}>
                    <Text style={styles.backButton}>←</Text>
                </TouchableOpacity>
                <Text style={styles.headerTitle}>Multi-Frame OCR</Text>
                <View style={{ width: 40 }} />
            </View>

            {isProcessing ? (
                <View style={styles.processingContainer}>
                    <ActivityIndicator size="large" color="#2196F3" />
                    <Text style={styles.processingText}>
                        {capturedFrames.length} fotoğraf birleştiriliyor...
                    </Text>
                    <Text style={styles.processingSubtext}>
                        Gelişmiş kalite için fotoğraflar işleniyor
                    </Text>
                </View>
            ) : ocrResult ? (
                renderResults()
            ) : (
                <View style={styles.welcomeContainer}>
                    <Text style={styles.welcomeTitle}>Gelişmiş OCR Tarama</Text>
                    <Text style={styles.welcomeText}>
                        📸 3 fotoğraf çekilecek{'\n'}
                        🔄 Fotoğraflar birleştirilecek{'\n'}
                        ✨ Daha net sonuç için optimize edilecek{'\n'}
                        📊 Tek okuma işlemi yapılacak
                    </Text>

                    <View style={styles.infoBox}>
                        <Text style={styles.infoTitle}>Nasıl Çalışır?</Text>
                        <Text style={styles.infoText}>
                            1. Ard arda 3 fotoğraf çekilir (200ms aralıkla){'\n'}
                            2. En kaliteli kare seçilir{'\n'}
                            3. Çoklu geçişle netleştirme uygulanır{'\n'}
                            4. Tek OCR işlemi ile tüm veriler okunur
                        </Text>
                    </View>

                    <TouchableOpacity style={styles.startButton} onPress={startCapture}>
                        <Text style={styles.startButtonText}>Taramaya Başla</Text>
                    </TouchableOpacity>
                </View>
            )}
        </View>
    );
};

const styles = StyleSheet.create({
    container: {
        flex: 1,
        backgroundColor: '#F5F5F5',
    },
    header: {
        flexDirection: 'row',
        justifyContent: 'space-between',
        alignItems: 'center',
        paddingHorizontal: 20,
        paddingTop: 40,
        paddingBottom: 20,
        backgroundColor: '#FFF',
        elevation: 2,
    },
    backButton: {
        fontSize: 28,
        color: '#333',
    },
    headerTitle: {
        fontSize: 18,
        fontWeight: '600',
        color: '#333',
    },
    welcomeContainer: {
        flex: 1,
        padding: 30,
        justifyContent: 'center',
    },
    welcomeTitle: {
        fontSize: 28,
        fontWeight: 'bold',
        color: '#333',
        marginBottom: 20,
        textAlign: 'center',
    },
    welcomeText: {
        fontSize: 16,
        color: '#666',
        lineHeight: 28,
        marginBottom: 30,
        textAlign: 'center',
    },
    infoBox: {
        backgroundColor: '#E3F2FD',
        padding: 20,
        borderRadius: 12,
        marginBottom: 30,
    },
    infoTitle: {
        fontSize: 18,
        fontWeight: 'bold',
        color: '#1976D2',
        marginBottom: 10,
    },
    infoText: {
        fontSize: 14,
        color: '#555',
        lineHeight: 22,
    },
    startButton: {
        backgroundColor: '#2196F3',
        paddingVertical: 18,
        borderRadius: 12,
        alignItems: 'center',
        elevation: 3,
    },
    startButtonText: {
        color: '#FFF',
        fontSize: 18,
        fontWeight: 'bold',
    },
    processingContainer: {
        flex: 1,
        justifyContent: 'center',
        alignItems: 'center',
        padding: 30,
    },
    processingText: {
        marginTop: 20,
        fontSize: 18,
        fontWeight: '600',
        color: '#333',
    },
    processingSubtext: {
        marginTop: 10,
        fontSize: 14,
        color: '#666',
    },
    resultsContainer: {
        flex: 1,
        padding: 20,
    },
    resultHeader: {
        flexDirection: 'row',
        justifyContent: 'space-between',
        alignItems: 'center',
        marginBottom: 20,
    },
    resultTitle: {
        fontSize: 24,
        fontWeight: 'bold',
        color: '#333',
    },
    confidenceBadge: {
        backgroundColor: '#4CAF50',
        paddingHorizontal: 15,
        paddingVertical: 8,
        borderRadius: 20,
    },
    confidenceText: {
        color: '#FFF',
        fontSize: 16,
        fontWeight: 'bold',
    },
    frameInfo: {
        backgroundColor: '#E8F5E9',
        padding: 12,
        borderRadius: 8,
        marginBottom: 20,
    },
    frameInfoText: {
        color: '#2E7D32',
        fontSize: 14,
        fontWeight: '600',
        textAlign: 'center',
    },
    field: {
        backgroundColor: '#FFF',
        padding: 15,
        borderRadius: 8,
        marginBottom: 12,
        elevation: 1,
    },
    fieldLabel: {
        fontSize: 12,
        color: '#999',
        marginBottom: 5,
    },
    fieldValue: {
        fontSize: 16,
        fontWeight: '600',
        color: '#333',
    },
    retryButton: {
        backgroundColor: '#2196F3',
        paddingVertical: 15,
        borderRadius: 8,
        alignItems: 'center',
        marginTop: 20,
        marginBottom: 40,
    },
    retryButtonText: {
        color: '#FFF',
        fontSize: 16,
        fontWeight: 'bold',
    },
});

export default MultiFrameOCRDemo;
