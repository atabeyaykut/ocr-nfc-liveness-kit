import React, { useState, useRef, useCallback } from 'react';
import {
    View,
    Text,
    StyleSheet,
    TouchableOpacity,
    Image,
    ActivityIndicator,
    Alert,
    ScrollView,
    Dimensions,
} from 'react-native';
import { Camera, useCameraDevice } from 'react-native-vision-camera';
import { MultiFrameFusion, FusionResult } from 'react-native-multiframe-fusion';
import RNFS from 'react-native-fs';

const { width: SCREEN_WIDTH } = Dimensions.get('window');

export default function BurstCameraExample() {
    const camera = useRef<Camera>(null);
    const device = useCameraDevice('back');

    const [hasPermission, setHasPermission] = useState(false);
    const [isProcessing, setIsProcessing] = useState(false);
    const [capturedFrames, setCapturedFrames] = useState<string[]>([]);
    const [fusedImage, setFusedImage] = useState<FusionResult | null>(null);
    const [processingInfo, setProcessingInfo] = useState<string>('');

    // Kamera izni kontrolü
    React.useEffect(() => {
        (async () => {
            const cameraPermission = await Camera.requestCameraPermission();
            setHasPermission(cameraPermission === 'authorized');
        })();
    }, []);

    // 3 kare burst fotoğraf çekimi
    const captureBurstFrames = useCallback(async () => {
        if (!camera.current) return;

        setIsProcessing(true);
        setProcessingInfo('📸 Burst çekim başlıyor...');

        try {
            const frames: string[] = [];

            // 3 fotoğraf çek
            for (let i = 0; i < 3; i++) {
                setProcessingInfo(`📸 Kare ${i + 1}/3 çekiliyor...`);

                const photo = await camera.current.takePhoto({
                    qualityPrioritization: 'speed',
                    enableAutoStabilization: true,
                    flash: 'off',
                });

                frames.push(`file://${photo.path}`);

                // Küçük bekleme (kamera sensörü için)
                if (i < 2) {
                    await new Promise(resolve => setTimeout(resolve, 150));
                }
            }

            setCapturedFrames(frames);
            setProcessingInfo('✅ 3 kare başarıyla çekildi');

            // Otomatik olarak birleştir
            await processFusion(frames);

        } catch (error) {
            console.error('Burst çekim hatası:', error);
            Alert.alert('Hata', 'Fotoğraf çekimi başarısız oldu');
            setIsProcessing(false);
        }
    }, []);

    // Görüntüleri birleştir
    const processFusion = async (frames: string[], method: any = 'fusion') => {
        setIsProcessing(true);
        setProcessingInfo(`🔄 ${method} metodu ile birleştiriliyor...`);

        try {
            const startTime = Date.now();

            const result = await MultiFrameFusion.merge(frames, {
                method: method,
                format: 'jpeg',
                quality: 0.92,
                deghost: true,
                alignmentMethod: 'ecc',
                maxIterations: 50,
                epsilon: 0.001,
            });

            const endTime = Date.now();

            setFusedImage(result);
            setProcessingInfo(
                `✨ Tamamlandı!\n` +
                `📐 Boyut: ${result.width}x${result.height}\n` +
                `⏱️ Süre: ${result.processingTime || (endTime - startTime)}ms\n` +
                `💾 Dosya: ${(result.fileSize! / 1024).toFixed(1)}KB`
            );

            // Orijinal kareleri temizle (isteğe bağlı)
            // await cleanupFrames(frames);

        } catch (error) {
            console.error('Fusion hatası:', error);
            Alert.alert('Hata', `Birleştirme başarısız: ${error}`);
            setProcessingInfo('❌ Birleştirme başarısız');
        } finally {
            setIsProcessing(false);
        }
    };

    // Kareleri temizle
    const cleanupFrames = async (frames: string[]) => {
        for (const frame of frames) {
            try {
                const path = frame.replace('file://', '');
                if (await RNFS.exists(path)) {
                    await RNFS.unlink(path);
                }
            } catch (error) {
                console.warn('Kare temizleme hatası:', error);
            }
        }
        setCapturedFrames([]);
    };

    // Farklı metodlarla yeniden işle
    const reprocessWithMethod = (method: any) => {
        if (capturedFrames.length > 0) {
            processFusion(capturedFrames, method);
        }
    };

    // Yeni çekim
    const resetCapture = () => {
        setCapturedFrames([]);
        setFusedImage(null);
        setProcessingInfo('');
    };

    if (!hasPermission) {
        return (
            <View style={styles.container}>
                <Text>Kamera izni gerekli</Text>
            </View>
        );
    }

    if (!device) {
        return (
            <View style={styles.container}>
                <Text>Kamera bulunamadı</Text>
            </View>
        );
    }

    return (
        <View style={styles.container}>
            {/* Kamera Önizleme */}
            {!fusedImage && (
                <Camera
                    ref={camera}
                    style={styles.camera}
                    device={device}
                    isActive={!isProcessing}
                    photo={true}
                />
            )}

            {/* Sonuç Görüntüsü */}
            {fusedImage && (
                <ScrollView style={styles.resultContainer}>
                    <Image
                        source={{ uri: fusedImage.uri }}
                        style={styles.resultImage}
                        resizeMode="contain"
                    />

                    {/* Çekilen Kareler (Küçük Önizleme) */}
                    {capturedFrames.length > 0 && (
                        <View style={styles.framesContainer}>
                            <Text style={styles.framesTitle}>Çekilen Kareler:</Text>
                            <ScrollView horizontal showsHorizontalScrollIndicator={false}>
                                {capturedFrames.map((frame, index) => (
                                    <Image
                                        key={index}
                                        source={{ uri: frame }}
                                        style={styles.frameThumb}
                                    />
                                ))}
                            </ScrollView>
                        </View>
                    )}
                </ScrollView>
            )}

            {/* İşlem Bilgisi */}
            {processingInfo && (
                <View style={styles.infoBox}>
                    <Text style={styles.infoText}>{processingInfo}</Text>
                </View>
            )}

            {/* Loading */}
            {isProcessing && (
                <View style={styles.loadingOverlay}>
                    <ActivityIndicator size="large" color="#fff" />
                    <Text style={styles.loadingText}>İşleniyor...</Text>
                </View>
            )}

            {/* Kontroller */}
            <View style={styles.controls}>
                {!fusedImage ? (
                    <TouchableOpacity
                        style={[styles.captureButton, isProcessing && styles.buttonDisabled]}
                        onPress={captureBurstFrames}
                        disabled={isProcessing}
                    >
                        <Text style={styles.captureButtonText}>
                            📸 Burst Çek (3 Kare)
                        </Text>
                    </TouchableOpacity>
                ) : (
                    <View style={styles.resultControls}>
                        {/* Farklı Metodlar */}
                        <ScrollView
                            horizontal
                            showsHorizontalScrollIndicator={false}
                            style={styles.methodsScroll}
                        >
                            <TouchableOpacity
                                style={styles.methodButton}
                                onPress={() => reprocessWithMethod('average')}
                                disabled={isProcessing}
                            >
                                <Text style={styles.methodButtonText}>⚡ Average</Text>
                            </TouchableOpacity>

                            <TouchableOpacity
                                style={styles.methodButton}
                                onPress={() => reprocessWithMethod('median')}
                                disabled={isProcessing}
                            >
                                <Text style={styles.methodButtonText}>🎯 Median</Text>
                            </TouchableOpacity>

                            <TouchableOpacity
                                style={styles.methodButton}
                                onPress={() => reprocessWithMethod('exposure')}
                                disabled={isProcessing}
                            >
                                <Text style={styles.methodButtonText}>🌅 Exposure</Text>
                            </TouchableOpacity>

                            <TouchableOpacity
                                style={[styles.methodButton, styles.methodButtonPrimary]}
                                onPress={() => reprocessWithMethod('fusion')}
                                disabled={isProcessing}
                            >
                                <Text style={styles.methodButtonTextPrimary}>✨ Fusion</Text>
                            </TouchableOpacity>
                        </ScrollView>

                        {/* Yeni Çekim */}
                        <TouchableOpacity
                            style={styles.resetButton}
                            onPress={resetCapture}
                        >
                            <Text style={styles.resetButtonText}>🔄 Yeni Çekim</Text>
                        </TouchableOpacity>
                    </View>
                )}
            </View>
        </View>
    );
}

const styles = StyleSheet.create({
    container: {
        flex: 1,
        backgroundColor: '#000',
    },
    camera: {
        flex: 1,
    },
    resultContainer: {
        flex: 1,
        backgroundColor: '#000',
    },
    resultImage: {
        width: SCREEN_WIDTH,
        height: SCREEN_WIDTH * 1.33, // 4:3 aspect ratio
        backgroundColor: '#1a1a1a',
    },
    framesContainer: {
        padding: 16,
        backgroundColor: '#1a1a1a',
    },
    framesTitle: {
        color: '#fff',
        fontSize: 14,
        marginBottom: 8,
        fontWeight: '600',
    },
    frameThumb: {
        width: 80,
        height: 80,
        borderRadius: 8,
        marginRight: 8,
        backgroundColor: '#333',
    },
    infoBox: {
        position: 'absolute',
        top: 60,
        left: 16,
        right: 16,
        backgroundColor: 'rgba(0,0,0,0.8)',
        padding: 12,
        borderRadius: 12,
    },
    infoText: {
        color: '#fff',
        fontSize: 13,
        lineHeight: 20,
    },
    loadingOverlay: {
        ...StyleSheet.absoluteFillObject,
        backgroundColor: 'rgba(0,0,0,0.7)',
        justifyContent: 'center',
        alignItems: 'center',
    },
    loadingText: {
        color: '#fff',
        fontSize: 16,
        marginTop: 12,
    },
    controls: {
        position: 'absolute',
        bottom: 0,
        left: 0,
        right: 0,
        backgroundColor: 'rgba(0,0,0,0.9)',
        paddingBottom: 34,
    },
    captureButton: {
        backgroundColor: '#007AFF',
        margin: 16,
        padding: 20,
        borderRadius: 16,
        alignItems: 'center',
    },
    captureButtonText: {
        color: '#fff',
        fontSize: 18,
        fontWeight: '700',
    },
    buttonDisabled: {
        opacity: 0.5,
    },
    resultControls: {
        padding: 16,
    },
    methodsScroll: {
        marginBottom: 12,
    },
    methodButton: {
        backgroundColor: '#2a2a2a',
        paddingHorizontal: 20,
        paddingVertical: 12,
        borderRadius: 12,
        marginRight: 8,
    },
    methodButtonPrimary: {
        backgroundColor: '#007AFF',
    },
    methodButtonText: {
        color: '#fff',
        fontSize: 14,
        fontWeight: '600',
    },
    methodButtonTextPrimary: {
        color: '#fff',
        fontSize: 14,
        fontWeight: '700',
    },
    resetButton: {
        backgroundColor: '#FF3B30',
        padding: 16,
        borderRadius: 12,
        alignItems: 'center',
    },
    resetButtonText: {
        color: '#fff',
        fontSize: 16,
        fontWeight: '700',
    },
});
