import React, { useState } from 'react';
import { View, Button, Image, StyleSheet, Text, Alert } from 'react-native';
import { MultiFrameFusion } from 'react-native-multiframe-fusion';
import { launchImageLibrary } from 'react-native-image-picker';

/**
 * Basit örnek: Galeriden görüntü seçip birleştirme
 */
export default function SimpleExample() {
    const [selectedImages, setSelectedImages] = useState<string[]>([]);
    const [fusedImage, setFusedImage] = useState<string | null>(null);
    const [processing, setProcessing] = useState(false);

    // Galeriden görüntü seç
    const pickImages = async () => {
        try {
            const result = await launchImageLibrary({
                mediaType: 'photo',
                selectionLimit: 5, // Maksimum 5 görüntü
            });

            if (result.assets) {
                const uris = result.assets
                    .filter(asset => asset.uri)
                    .map(asset => asset.uri!);

                setSelectedImages(uris);
            }
        } catch (error) {
            Alert.alert('Hata', 'Görüntü seçimi başarısız');
        }
    };

    // Görüntüleri birleştir
    const fuseImages = async () => {
        if (selectedImages.length < 2) {
            Alert.alert('Uyarı', 'En az 2 görüntü seçmelisiniz');
            return;
        }

        setProcessing(true);

        try {
            const result = await MultiFrameFusion.merge(selectedImages, {
                method: 'fusion',
                format: 'jpeg',
                quality: 0.9,
            });

            setFusedImage(result.uri);

            Alert.alert(
                'Başarılı',
                `Görüntüler birleştirildi!\nBoyut: ${result.width}x${result.height}\nSüre: ${result.processingTime}ms`
            );
        } catch (error) {
            Alert.alert('Hata', `Birleştirme başarısız: ${error}`);
        } finally {
            setProcessing(false);
        }
    };

    return (
        <View style={styles.container}>
            <Text style={styles.title}>Multi-Frame Fusion Örneği</Text>

            {/* Seçilen görüntüler */}
            {selectedImages.length > 0 && (
                <View style={styles.selectedContainer}>
                    <Text style={styles.subtitle}>
                        {selectedImages.length} görüntü seçildi
                    </Text>
                    <View style={styles.thumbsContainer}>
                        {selectedImages.map((uri, index) => (
                            <Image
                                key={index}
                                source={{ uri }}
                                style={styles.thumb}
                            />
                        ))}
                    </View>
                </View>
            )}

            {/* Birleştirilmiş görüntü */}
            {fusedImage && (
                <View style={styles.resultContainer}>
                    <Text style={styles.subtitle}>Birleştirilmiş Görüntü:</Text>
                    <Image
                        source={{ uri: fusedImage }}
                        style={styles.resultImage}
                        resizeMode="contain"
                    />
                </View>
            )}

            {/* Kontroller */}
            <View style={styles.controls}>
                <Button
                    title="📁 Görüntü Seç"
                    onPress={pickImages}
                    disabled={processing}
                />
                <View style={styles.spacer} />
                <Button
                    title="✨ Birleştir"
                    onPress={fuseImages}
                    disabled={selectedImages.length < 2 || processing}
                />
            </View>

            {processing && (
                <View style={styles.processingOverlay}>
                    <Text style={styles.processingText}>İşleniyor...</Text>
                </View>
            )}
        </View>
    );
}

const styles = StyleSheet.create({
    container: {
        flex: 1,
        padding: 20,
        backgroundColor: '#fff',
    },
    title: {
        fontSize: 24,
        fontWeight: 'bold',
        marginBottom: 20,
        textAlign: 'center',
    },
    subtitle: {
        fontSize: 16,
        fontWeight: '600',
        marginBottom: 10,
    },
    selectedContainer: {
        marginBottom: 20,
    },
    thumbsContainer: {
        flexDirection: 'row',
        flexWrap: 'wrap',
    },
    thumb: {
        width: 80,
        height: 80,
        margin: 5,
        borderRadius: 8,
        backgroundColor: '#f0f0f0',
    },
    resultContainer: {
        marginBottom: 20,
    },
    resultImage: {
        width: '100%',
        height: 300,
        backgroundColor: '#f0f0f0',
        borderRadius: 12,
    },
    controls: {
        flexDirection: 'row',
        justifyContent: 'space-around',
    },
    spacer: {
        width: 10,
    },
    processingOverlay: {
        ...StyleSheet.absoluteFillObject,
        backgroundColor: 'rgba(0,0,0,0.5)',
        justifyContent: 'center',
        alignItems: 'center',
    },
    processingText: {
        color: '#fff',
        fontSize: 18,
        fontWeight: 'bold',
    },
});
