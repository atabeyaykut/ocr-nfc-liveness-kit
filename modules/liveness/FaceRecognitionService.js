/**
 * FaceRecognitionService - ONNX FaceNet tabanlı yüz tanıma
 * 
 * FaceNet ONNX modeli kullanarak yüz embeddings hesaplar ve karşılaştırır.
 * Model: 160x160 RGB input → 128-dim face embedding output (standard FaceNet)
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
const EMBEDDING_SIZE = 128; // FaceNet output dimension (standard FaceNet)

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

            // Get model metadata for input/output names and shapes
            try {
                this.inputName = this.session.inputNames?.[0] || 'input';
                this.outputName = this.session.outputNames?.[0] || 'output';

                console.log('[FaceRecognition] 📋 Model metadata:');
                console.log(`[FaceRecognition]   Input name: ${this.inputName}`);
                console.log(`[FaceRecognition]   Output name: ${this.outputName}`);

                // Log input/output details if available
                if (this.session._inferenceSession) {
                    const inputs = this.session.inputNames || [];
                    const outputs = this.session.outputNames || [];
                    console.log(`[FaceRecognition]   Total inputs: ${inputs.length}`);
                    console.log(`[FaceRecognition]   Total outputs: ${outputs.length}`);
                }

                console.log('[FaceRecognition] ⚠️ Expected input shape: [1, 160, 160, 3] (NHWC)');
                console.log('[FaceRecognition] ⚠️ Expected output shape: [1, 128] (embedding)');
            } catch (e) {
                console.log('[FaceRecognition] ⚠️ Could not read model metadata, using defaults');
                console.log('[FaceRecognition] ⚠️ Error:', e.message);
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
     * - CROP face region using bbox
     * - Resize to 160x160
     * - Convert to RGB
     * - Normalize to [-1, 1] range
     * - Convert to NHWC format (1, 160, 160, 3)
     * 
     * @param {string} imagePath - Path to image file
     * @param {Object} faceFrame - Face bounding box from ML Kit {left, top, width, height}
     * @returns {Float32Array} Preprocessed image data in NHWC format [H, W, C]
     */
    async preprocessImage(imagePath, faceFrame) {
        try {
            console.log('[FaceRecognition] Preprocessing image...');
            console.log(`[FaceRecognition] Input: ${imagePath.substring(0, 50)}...`);
            if (faceFrame) {
                console.log(`[FaceRecognition] Face bbox: ${faceFrame.width}x${faceFrame.height} at (${faceFrame.left}, ${faceFrame.top})`);
            }

            // Clean path: remove all file:// prefixes to get absolute path
            let cleanPath = imagePath.replace(/^file:\/\/+/g, '');
            if (!cleanPath.startsWith('/')) {
                cleanPath = '/' + cleanPath;
            }
            console.log(`[FaceRecognition] Clean path: ${cleanPath.substring(0, 50)}...`);

            // STEP 1: CROP face region if bbox provided
            // This is CRITICAL for accuracy - only feed face to FaceNet, not background!
            let processPath = cleanPath;
            let needsCleanup = false;

            if (faceFrame && faceFrame.width > 0 && faceFrame.height > 0) {
                console.log('[FaceRecognition] ✂️ Cropping face region...');

                try {
                    // METHOD: Manual crop using jpeg-js
                    // 1. Read original image
                    const originalImageBase64 = await RNFS.readFile(cleanPath, 'base64');
                    const originalImageBuffer = Buffer.from(originalImageBase64, 'base64');

                    // 2. Decode to RGBA pixels to get ACTUAL image dimensions
                    const originalImageData = decodeJpeg(originalImageBuffer, {
                        useTArray: true,
                        formatAsRGBA: true,
                    });

                    const origWidth = originalImageData.width;
                    const origHeight = originalImageData.height;
                    console.log(`[FaceRecognition] Original image: ${origWidth}x${origHeight}`);
                    console.log(`[FaceRecognition] Face bbox (raw): ${faceFrame.width}x${faceFrame.height} at (${faceFrame.left}, ${faceFrame.top})`);

                    // 3. CRITICAL: Scale face bbox to actual image dimensions
                    // ML Kit returns bbox in camera preview coordinates (e.g., 1920x2560)
                    // but saved image might be resized (e.g., 240x320)
                    // We need to detect if scaling is needed
                    let scaledFaceFrame = { ...faceFrame };

                    // If bbox is larger than image, it needs scaling
                    if (faceFrame.left + faceFrame.width > origWidth ||
                        faceFrame.top + faceFrame.height > origHeight) {

                        // Assume camera preview vs saved image ratio
                        // Usually saved images are scaled down proportionally
                        const scaleX = origWidth / (faceFrame.left + faceFrame.width);
                        const scaleY = origHeight / (faceFrame.top + faceFrame.height);
                        const scale = Math.min(scaleX, scaleY, 1.0); // Don't upscale

                        scaledFaceFrame = {
                            left: Math.floor(faceFrame.left * scale),
                            top: Math.floor(faceFrame.top * scale),
                            width: Math.floor(faceFrame.width * scale),
                            height: Math.floor(faceFrame.height * scale),
                        };

                        console.log(`[FaceRecognition] ⚠️ Bbox out of bounds, scaling by ${scale.toFixed(3)}`);
                        console.log(`[FaceRecognition] Scaled bbox: ${scaledFaceFrame.width}x${scaledFaceFrame.height} at (${scaledFaceFrame.left}, ${scaledFaceFrame.top})`);
                    }

                    // 4. Add 20% margin around face for better recognition
                    const margin = 0.2;
                    const marginX = Math.floor(scaledFaceFrame.width * margin);
                    const marginY = Math.floor(scaledFaceFrame.height * margin);

                    // Calculate crop coordinates with margin (ensure non-negative)
                    const cropX = Math.max(0, Math.floor(scaledFaceFrame.left - marginX));
                    const cropY = Math.max(0, Math.floor(scaledFaceFrame.top - marginY));
                    const cropWidth = Math.floor(scaledFaceFrame.width + (marginX * 2));
                    const cropHeight = Math.floor(scaledFaceFrame.height + (marginY * 2));

                    console.log(`[FaceRecognition] Crop params: x=${cropX}, y=${cropY}, w=${cropWidth}, h=${cropHeight}`);

                    // 5. Ensure crop bounds are within image
                    const safeCropX = Math.min(cropX, origWidth - 1);
                    const safeCropY = Math.min(cropY, origHeight - 1);
                    const safeCropWidth = Math.min(cropWidth, origWidth - safeCropX);
                    const safeCropHeight = Math.min(cropHeight, origHeight - safeCropY);

                    console.log(`[FaceRecognition] Safe crop: x=${safeCropX}, y=${safeCropY}, w=${safeCropWidth}, h=${safeCropHeight}`);

                    // 6. Create cropped image buffer (RGBA)
                    const croppedData = new Uint8Array(safeCropWidth * safeCropHeight * 4);

                    for (let y = 0; y < safeCropHeight; y++) {
                        for (let x = 0; x < safeCropWidth; x++) {
                            const srcX = safeCropX + x;
                            const srcY = safeCropY + y;
                            const srcIndex = (srcY * origWidth + srcX) * 4;
                            const dstIndex = (y * safeCropWidth + x) * 4;

                            // Copy RGBA pixels
                            croppedData[dstIndex] = originalImageData.data[srcIndex];         // R
                            croppedData[dstIndex + 1] = originalImageData.data[srcIndex + 1]; // G
                            croppedData[dstIndex + 2] = originalImageData.data[srcIndex + 2]; // B
                            croppedData[dstIndex + 3] = originalImageData.data[srcIndex + 3]; // A
                        }
                    }

                    // 7. Encode back to JPEG
                    const { encode: encodeJpeg } = require('jpeg-js');
                    const croppedJpeg = encodeJpeg({
                        data: croppedData,
                        width: safeCropWidth,
                        height: safeCropHeight,
                    }, 100); // quality 100

                    // 8. Save to temp file
                    const tempCropPath = `${RNFS.CachesDirectoryPath}/facecrop_${Date.now()}.jpg`;
                    await RNFS.writeFile(tempCropPath, croppedJpeg.data.toString('base64'), 'base64');

                    processPath = tempCropPath;
                    needsCleanup = true;

                    console.log(`[FaceRecognition] ✅ Face cropped: ${safeCropWidth}x${safeCropHeight}`);
                    console.log(`[FaceRecognition] Temp crop saved: ${tempCropPath}`);

                } catch (cropError) {
                    console.log('[FaceRecognition] ⚠️ Crop failed, using full image');
                    console.log('[FaceRecognition] Error:', cropError.message);
                    // Fall back to full image
                    processPath = cleanPath;
                    needsCleanup = false;
                }
            } else {
                console.log('[FaceRecognition] ⚠️ No face bbox provided, using full image');
            }

            // STEP 2: Resize to 160x160 (FaceNet input size)
            console.log('[FaceRecognition] Resizing to 160x160...');

            // IMPORTANT: Use 'cover' mode to maintain aspect ratio and center-crop to exact size
            // This prevents face distortion which can reduce recognition accuracy
            // 'stretch' mode would distort faces if aspect ratio isn't 1:1
            const resizedImage = await ImageResizer.createResizedImage(
                processPath,         // Path to process (cropped or original)
                MODEL_INPUT_SIZE,    // maxWidth
                MODEL_INPUT_SIZE,    // maxHeight
                'JPEG',              // compressFormat
                100,                 // quality (0-100)
                0,                   // rotation (degrees)
                undefined,           // outputPath (auto-generate)
                false,               // keepMeta
                {
                    mode: 'cover',   // CRITICAL: Maintain aspect ratio, center-crop to exact size (prevents distortion)
                    onlyScaleDown: false,
                }
            );

            console.log('[FaceRecognition] Resized:', resizedImage.uri);

            // Track resized path for cleanup (even in error cases)
            const resizedPath = resizedImage.uri.replace(/^file:\/\//, '');

            // Cleanup cropped temp file ASAP (no longer needed)
            if (needsCleanup && processPath !== cleanPath) {
                try {
                    await RNFS.unlink(processPath);
                    console.log('[FaceRecognition] 🧹 Cleaned up crop temp file');
                } catch (e) {
                    // Non-critical, just log
                }
            }

            // STEP 3: Read image as base64
            const base64Image = await RNFS.readFile(resizedPath, 'base64');

            // STEP 4: Decode JPEG to raw RGB pixels
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

            // STEP 5: Validate decoded data
            if (!(data instanceof Uint8Array)) {
                throw new Error('Decoded image data is not Uint8Array');
            }

            const expectedBytes = width * height * 4; // RGBA
            if (data.length !== expectedBytes) {
                throw new Error(`Expected ${expectedBytes} bytes, got ${data.length}`);
            }

            // STEP 6: Convert RGBA to RGB and normalize to [-1, 1]
            // FaceNet expects: NHWC format (1, 160, 160, 3) with values in [-1, 1]
            console.log('[FaceRecognition] 🔢 Converting to RGB Float32Array (NHWC format)...');

            const imageSize = MODEL_INPUT_SIZE * MODEL_INPUT_SIZE;
            const inputData = new Float32Array(imageSize * 3);

            // NHWC format: [batch, height, width, channel]
            // For each pixel: store R, G, B consecutively
            for (let i = 0; i < imageSize; i++) {
                const pixelIndex = i * 4; // RGBA has 4 bytes per pixel
                const outputIndex = i * 3; // RGB has 3 floats per pixel

                // Extract RGB values (0-255)
                const r = data[pixelIndex];
                const g = data[pixelIndex + 1];
                const b = data[pixelIndex + 2];
                // Alpha channel (pixelIndex + 3) is ignored

                // Normalize to [-1, 1] range and store in NHWC order
                // Formula: (pixel / 127.5) - 1
                inputData[outputIndex] = (r / 127.5) - 1;       // R
                inputData[outputIndex + 1] = (g / 127.5) - 1;   // G
                inputData[outputIndex + 2] = (b / 127.5) - 1;   // B
            }

            console.log('[FaceRecognition] ✅ Preprocessing complete');
            console.log(`[FaceRecognition] Output shape: [1, ${MODEL_INPUT_SIZE}, ${MODEL_INPUT_SIZE}, 3] (NHWC)`);
            console.log(`[FaceRecognition] Output size: ${inputData.length} floats (${(inputData.length * 4 / 1024).toFixed(1)}KB)`);

            // CRITICAL: Cleanup resized temp file to prevent memory leak
            try {
                await RNFS.unlink(resizedPath);
                console.log('[FaceRecognition] 🧹 Cleaned up resized temp file');
            } catch (cleanupError) {
                // Non-critical, just log
                console.log('[FaceRecognition] ⚠️ Could not cleanup resized file:', cleanupError.message);
            }

            return inputData;

        } catch (error) {
            console.error('[FaceRecognition] Preprocessing failed:', error);
            console.error('[FaceRecognition] Error details:', error.message);

            // CRITICAL: Cleanup temp files even in error cases to prevent memory leak
            // resizedPath might not be defined if error occurred before resize
            if (typeof resizedPath !== 'undefined') {
                try {
                    await RNFS.unlink(resizedPath);
                    console.log('[FaceRecognition] 🧹 Emergency cleanup: resized file deleted');
                } catch (cleanupError) {
                    // Already failing, don't throw cleanup errors
                }
            }

            // processPath cleanup (if crop was created but not yet cleaned)
            if (needsCleanup && typeof processPath !== 'undefined' && processPath !== cleanPath) {
                try {
                    await RNFS.unlink(processPath);
                    console.log('[FaceRecognition] 🧹 Emergency cleanup: crop file deleted');
                } catch (cleanupError) {
                    // Already failing, don't throw cleanup errors
                }
            }

            throw error;
        }
    }

    /**
     * Extract face embedding using FaceNet
     * 
     * @param {string} imagePath - Path to image file
     * @param {Object} faceFrame - Face bounding box from ML Kit
     * @returns {Float32Array} 128-dim face embedding
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

            // Validate preprocessed data
            const expectedSize = MODEL_INPUT_SIZE * MODEL_INPUT_SIZE * 3;
            if (inputData.length !== expectedSize) {
                throw new Error(
                    `Preprocessed data size mismatch: got ${inputData.length}, expected ${expectedSize}`
                );
            }

            // Create input tensor in NHWC format: [1, 160, 160, 3]
            const inputShape = [1, MODEL_INPUT_SIZE, MODEL_INPUT_SIZE, 3];
            const inputTensor = new Tensor('float32', inputData, inputShape);

            console.log('[FaceRecognition] 📊 Input tensor created:');
            console.log(`[FaceRecognition]   Shape: [${inputShape.join(', ')}]`);
            console.log(`[FaceRecognition]   Type: ${inputTensor.type}`);
            console.log(`[FaceRecognition]   Data size: ${inputTensor.data.length} floats`);

            // Run inference with dynamic input/output names
            console.log('[FaceRecognition] 🧠 Running ONNX inference...');
            console.log(`[FaceRecognition]   Input name: '${this.inputName}'`);
            const feeds = { [this.inputName]: inputTensor };
            const results = await this.session.run(feeds);

            // Get output tensor (128-dim embedding) using dynamic name
            const outputTensor = results[this.outputName];
            if (!outputTensor) {
                const availableOutputs = Object.keys(results).join(', ');
                throw new Error(
                    `Output tensor '${this.outputName}' not found. ` +
                    `Available outputs: ${availableOutputs}`
                );
            }

            const embedding = outputTensor.data;

            console.log('[FaceRecognition] 📊 Output tensor:');
            console.log(`[FaceRecognition]   Shape: [${outputTensor.dims.join(', ')}]`);
            console.log(`[FaceRecognition]   Type: ${outputTensor.type}`);
            console.log(`[FaceRecognition]   Embedding size: ${embedding.length} dimensions`);

            // Validate embedding size
            if (embedding.length !== EMBEDDING_SIZE) {
                console.warn(
                    `[FaceRecognition] ⚠️ Unexpected embedding size: ${embedding.length}, expected ${EMBEDDING_SIZE}`
                );
            }

            console.log(`[FaceRecognition] ✅ Embedding extracted successfully`);

            return embedding;

        } catch (error) {
            console.error('[FaceRecognition] ❌ Embedding extraction failed:', error);
            throw error;
        }
    }

    /**
     * Calculate cosine similarity between two embeddings
     * 
     * IMPORTANT: FaceNet embeddings are L2-normalized (unit vectors)
     * Cosine similarity for normalized vectors is already in [0, 1] range
     * Additional normalization [(x+1)/2] is INCORRECT and breaks thresholds!
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
            console.warn('[FaceRecognition] ⚠️ Zero norm embedding detected!');
            return 0;
        }

        const similarity = dotProduct / (norm1 * norm2);

        // CRITICAL: DO NOT normalize cosine similarity for FaceNet!
        // FaceNet embeddings are L2-normalized (unit vectors: norm ≈ 1)
        // For normalized vectors: cosine similarity = dot product
        // Range is already [0, 1] for face embeddings (always positive correlation)
        // Adding (x+1)/2 normalization would map:
        //   0.85 (85% match) → 0.925 (92.5% WRONG!)
        //   0.40 threshold → effectively 0.20 (too permissive!)

        // Clamp to [0, 1] for safety (theoretical range is [-1, 1] but face embeddings are always positive)
        const clampedSimilarity = Math.max(0, Math.min(1, similarity));

        if (similarity < 0) {
            console.warn(`[FaceRecognition] ⚠️ Negative cosine similarity: ${similarity.toFixed(4)} (unusual for face embeddings)`);
        }

        return clampedSimilarity;
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

            // Calculate similarity (true cosine similarity, NOT normalized)
            const similarity = this.calculateCosineSimilarity(embedding1, embedding2);

            // Threshold for match (0.7 = 70% similarity)
            // This is the ACTUAL threshold now (normalization bug fixed)
            // Typical values: same person 0.8-0.95, different person 0.3-0.6
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
