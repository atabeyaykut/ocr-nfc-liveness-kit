/**
 * FaceRecognitionService - ONNX FaceNet tabanlı yüz tanıma
 * 
 * FaceNet ONNX modeli kullanarak yüz embeddings hesaplar ve karşılaştırır.
 * Model: 160x160 RGB input → 512-dim face embedding output
 * Similarity: Cosine similarity (0-1 range, >0.7 = match)
 * 
 * @module FaceRecognitionService
 */

import { InferenceSession, Tensor } from 'onnxruntime-react-native';
import RNFS from 'react-native-fs';
import ImageResizer from '@bam.tech/react-native-image-resizer';
import { decode as decodeJpeg } from 'jpeg-js';
import { Platform } from 'react-native';

const MODEL_INPUT_SIZE = 160; // FaceNet input size
const EMBEDDING_SIZE = 512; // FaceNet output dimension

class FaceRecognitionService {
    constructor() {
        this.session = null;
        this.isInitialized = false;
        this.inputName = 'input';   // Default, will be updated from model metadata
        this.outputName = 'output'; // Default, will be updated from model metadata
    }

    /**
     * Initialize ONNX session with FaceNet model
     */
    async initialize() {
        if (this.isInitialized) {
            console.log('[FaceRecognition] Already initialized');
            return true;
        }

        try {
            console.log('[FaceRecognition] Initializing ONNX session...');

            // Model path from Android assets
            const modelPath = `${RNFS.DocumentDirectoryPath}/facenet.onnx`;

            // Check if model exists in documents directory, if not copy from assets
            const exists = await RNFS.exists(modelPath);
            if (!exists) {
                console.log('[FaceRecognition] Copying model from assets...');
                // Copy model from platform-specific location
                if (Platform.OS === 'android') {
                    // Android: Copy from assets folder
                    await RNFS.copyFileAssets('facenet.onnx', modelPath);
                } else if (Platform.OS === 'ios') {
                    // iOS: Copy from bundle (model must be added to Xcode project)
                    const bundlePath = `${RNFS.MainBundlePath}/facenet.onnx`;
                    const bundleExists = await RNFS.exists(bundlePath);

                    if (!bundleExists) {
                        throw new Error(
                            'FaceNet model not found in iOS bundle. ' +
                            'Please add facenet.onnx to Xcode project as a resource.'
                        );
                    }

                    await RNFS.copyFile(bundlePath, modelPath);
                } else {
                    throw new Error(`Unsupported platform: ${Platform.OS}`);
                }
                console.log('[FaceRecognition] Model copied successfully');
            }

            // Verify file size
            const stat = await RNFS.stat(modelPath);
            console.log(`[FaceRecognition] Model file size: ${(stat.size / 1024 / 1024).toFixed(2)}MB`);

            // Create ONNX session
            this.session = await InferenceSession.create(modelPath);

            // Get model metadata for input/output names
            try {
                this.inputName = this.session.inputNames?.[0] || 'input';
                this.outputName = this.session.outputNames?.[0] || 'output';
                console.log('[FaceRecognition] 📋 Model input name:', this.inputName);
                console.log('[FaceRecognition] 📋 Model output name:', this.outputName);
            } catch (e) {
                console.log('[FaceRecognition] ⚠️ Could not read model metadata, using defaults');
            }

            this.isInitialized = true;

            console.log('[FaceRecognition] ✅ ONNX session initialized successfully');
            return true;

        } catch (error) {
            console.error('[FaceRecognition] ❌ Initialization failed:', error);
            console.error('[FaceRecognition] Error stack:', error.stack);
            this.isInitialized = false;
            return false;
        }
    }

    /**
     * Preprocess image for FaceNet model
     * - Resize to 160x160
     * - Convert to RGB
     * - Normalize to [-1, 1] range
     * - Convert to NCHW format (1, 3, 160, 160)
     * 
     * @param {string} imagePath - Path to image file
     * @param {Object} faceFrame - Face bounding box from ML Kit
     * @returns {Float32Array} Preprocessed image data in NCHW format
     */
    async preprocessImage(imagePath, faceFrame) {
        try {
            console.log('[FaceRecognition] Preprocessing image...');
            console.log(`[FaceRecognition] Input: ${imagePath.substring(0, 50)}...`);
            if (faceFrame) {
                console.log(`[FaceRecognition] Face bbox: ${faceFrame.width}x${faceFrame.height}`);
            }

            // 1. Resize to 160x160 (FaceNet input size)
            console.log('[FaceRecognition] Resizing to 160x160...');

            // Clean path: remove all file:// prefixes to get absolute path
            let cleanPath = imagePath.replace(/^file:\/\/+/g, '');
            if (!cleanPath.startsWith('/')) {
                cleanPath = '/' + cleanPath;
            }
            console.log(`[FaceRecognition] Clean path: ${cleanPath.substring(0, 50)}...`);

            const resizedImage = await ImageResizer.createResizedImage(
                cleanPath,           // Absolute path without file:// prefix
                MODEL_INPUT_SIZE,    // maxWidth
                MODEL_INPUT_SIZE,    // maxHeight
                'JPEG',              // compressFormat
                100,                 // quality (0-100)
                0,                   // rotation (degrees)
                undefined,           // outputPath (auto-generate)
                false,               // keepMeta
                {
                    mode: 'cover',   // Fill entire 160x160
                    onlyScaleDown: false,
                }
            );

            console.log('[FaceRecognition] Resized:', resizedImage.uri);

            // 2. Read image as base64
            const base64Image = await RNFS.readFile(
                resizedImage.uri.replace(/^file:\/\//, ''),
                'base64'
            );

            // 3. Decode JPEG to raw RGB pixels
            console.log('[FaceRecognition] Decoding JPEG...');
            const imageBuffer = Buffer.from(base64Image, 'base64');
            const rawImageData = decodeJpeg(imageBuffer, {
                useTArray: true,      // Return Uint8Array instead of Buffer
                formatAsRGBA: true,   // Ensure RGBA format (4 bytes per pixel)
            });

            // rawImageData.data is Uint8Array in RGBA format
            // Shape: [160, 160, 4] (RGBA)
            const { width, height, data } = rawImageData;

            if (width !== MODEL_INPUT_SIZE || height !== MODEL_INPUT_SIZE) {
                throw new Error(`Image size mismatch: ${width}x${height}, expected ${MODEL_INPUT_SIZE}x${MODEL_INPUT_SIZE}`);
            }

            console.log(`[FaceRecognition] ✅ Decoded: ${width}x${height}, ${data.length} bytes`);

            // 4. Validate decoded data
            if (!(data instanceof Uint8Array)) {
                throw new Error('Decoded image data is not Uint8Array');
            }

            const expectedBytes = width * height * 4; // RGBA
            if (data.length !== expectedBytes) {
                throw new Error(`Expected ${expectedBytes} bytes, got ${data.length}`);
            }

            // 5. Convert RGBA to RGB and normalize to [-1, 1]
            // FaceNet expects: NCHW format (1, 3, 160, 160) with values in [-1, 1]
            console.log('[FaceRecognition] 🔢 Converting to RGB Float32Array...');

            const imageSize = MODEL_INPUT_SIZE * MODEL_INPUT_SIZE;
            const inputData = new Float32Array(1 * 3 * imageSize);

            // Separate RGB channels and normalize
            // NCHW: [batch, channel, height, width]
            // Channel order: R, G, B
            for (let i = 0; i < imageSize; i++) {
                const pixelIndex = i * 4; // RGBA has 4 bytes per pixel

                // Extract RGB values (0-255)
                const r = data[pixelIndex];
                const g = data[pixelIndex + 1];
                const b = data[pixelIndex + 2];
                // Alpha channel (pixelIndex + 3) is ignored

                // Normalize to [-1, 1] range
                // Formula: (pixel / 127.5) - 1
                inputData[i] = (r / 127.5) - 1;                    // R channel
                inputData[imageSize + i] = (g / 127.5) - 1;        // G channel
                inputData[imageSize * 2 + i] = (b / 127.5) - 1;    // B channel
            }

            console.log('[FaceRecognition] ✅ Preprocessing complete');
            console.log(`[FaceRecognition] Output shape: [1, 3, ${MODEL_INPUT_SIZE}, ${MODEL_INPUT_SIZE}]`);
            console.log(`[FaceRecognition] Output size: ${inputData.length} floats (${(inputData.length * 4 / 1024).toFixed(1)}KB)`);

            return inputData;

        } catch (error) {
            console.error('[FaceRecognition] Preprocessing failed:', error);
            console.error('[FaceRecognition] Error details:', error.message);
            throw error;
        }
    }

    /**
     * Extract face embedding using FaceNet
     * 
     * @param {string} imagePath - Path to image file
     * @param {Object} faceFrame - Face bounding box from ML Kit
     * @returns {Float32Array} 512-dim face embedding
     */
    async extractEmbedding(imagePath, faceFrame) {
        if (!this.isInitialized) {
            console.log('[FaceRecognition] Not initialized, initializing now...');
            const success = await this.initialize();
            if (!success) {
                throw new Error('Failed to initialize FaceRecognition service');
            }
        }

        try {
            console.log('[FaceRecognition] Extracting face embedding...');

            // Preprocess image
            const inputData = await this.preprocessImage(imagePath, faceFrame);

            // Create input tensor [1, 3, 160, 160]
            const inputTensor = new Tensor('float32', inputData, [1, 3, MODEL_INPUT_SIZE, MODEL_INPUT_SIZE]);

            // Run inference with dynamic input/output names
            console.log('[FaceRecognition] 🧠 Running ONNX inference...');
            const feeds = { [this.inputName]: inputTensor };
            const results = await this.session.run(feeds);

            // Get output tensor (512-dim embedding) using dynamic name
            const outputTensor = results[this.outputName];
            if (!outputTensor) {
                throw new Error(`Output tensor '${this.outputName}' not found in results`);
            }

            const embedding = outputTensor.data;

            console.log(`[FaceRecognition] ✅ Embedding extracted: ${embedding.length} dimensions`);

            return embedding;

        } catch (error) {
            console.error('[FaceRecognition] ❌ Embedding extraction failed:', error);
            throw error;
        }
    }

    /**
     * Calculate cosine similarity between two embeddings
     * 
     * @param {Float32Array} embedding1 
     * @param {Float32Array} embedding2 
     * @returns {number} Similarity score (0-1, higher = more similar)
     */
    calculateCosineSimilarity(embedding1, embedding2) {
        if (embedding1.length !== embedding2.length) {
            throw new Error('Embeddings must have same length');
        }

        let dotProduct = 0;
        let norm1 = 0;
        let norm2 = 0;

        for (let i = 0; i < embedding1.length; i++) {
            dotProduct += embedding1[i] * embedding2[i];
            norm1 += embedding1[i] * embedding1[i];
            norm2 += embedding2[i] * embedding2[i];
        }

        norm1 = Math.sqrt(norm1);
        norm2 = Math.sqrt(norm2);

        if (norm1 === 0 || norm2 === 0) {
            return 0;
        }

        const similarity = dotProduct / (norm1 * norm2);

        // Cosine similarity is in range [-1, 1], normalize to [0, 1]
        const normalizedSimilarity = (similarity + 1) / 2;

        return normalizedSimilarity;
    }

    /**
     * Compare two faces and return similarity score
     * 
     * @param {string} image1Path - Path to first image
     * @param {Object} face1Frame - Face bounding box for first image
     * @param {string} image2Path - Path to second image
     * @param {Object} face2Frame - Face bounding box for second image
     * @returns {Object} { similarity: number, isMatch: boolean }
     */
    async compareFaces(image1Path, face1Frame, image2Path, face2Frame) {
        try {
            console.log('[FaceRecognition] Comparing faces...');

            // Extract embeddings
            const embedding1 = await this.extractEmbedding(image1Path, face1Frame);
            const embedding2 = await this.extractEmbedding(image2Path, face2Frame);

            // Calculate similarity
            const similarity = this.calculateCosineSimilarity(embedding1, embedding2);

            // Threshold for match (0.7 = 70% similarity)
            const isMatch = similarity >= 0.7;

            console.log(`[FaceRecognition] Similarity: ${(similarity * 100).toFixed(2)}%`);
            console.log(`[FaceRecognition] Match: ${isMatch ? '✅ YES' : '❌ NO'}`);

            return {
                similarity,
                isMatch,
                threshold: 0.7,
            };

        } catch (error) {
            console.error('[FaceRecognition] ❌ Face comparison failed:', error);
            throw error;
        }
    }

    /**
     * Cleanup resources
     */
    async dispose() {
        if (this.session) {
            console.log('[FaceRecognition] Disposing ONNX session...');
            // ONNX Runtime session disposal (if available)
            this.session = null;
            this.isInitialized = false;
        }
    }
}

// Singleton instance
const faceRecognitionService = new FaceRecognitionService();

export default faceRecognitionService;
