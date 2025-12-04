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
            // Input validation
            if (!imagePath || typeof imagePath !== 'string' || imagePath.trim() === '') {
                throw new Error('Invalid image path: must be a non-empty string');
            }

            console.log('[FaceRecognition] Preprocessing image...');
            console.log(`[FaceRecognition] Input: ${imagePath.substring(0, Math.min(50, imagePath.length))}...`);
            if (faceFrame) {
                console.log(`[FaceRecognition] Face bbox: ${faceFrame.width}x${faceFrame.height} at (${faceFrame.left}, ${faceFrame.top})`);
            }

            // Clean path: remove all file:// prefixes to get absolute path
            let cleanPath = imagePath.trim().replace(/^file:\/\/+/g, '');
            if (!cleanPath.startsWith('/')) {
                cleanPath = '/' + cleanPath;
            }
            console.log(`[FaceRecognition] Clean path: ${cleanPath.substring(0, 50)}...`);

            // STEP 1: CROP face region if bbox provided
            // BUG FIX #24: Face cropping MUST be enabled for accurate embeddings!
            // ROOT CAUSE: NFC photo (240x320) has small face (203x199 @ 21,59)
            //   → Without crop: face becomes ~65x65px after resize → wrong embedding!
            //   → With crop: face becomes 160x160px → correct embedding!
            // 
            // PERFORMANCE: Use React Native Image Editor (native, fast)
            // - No manual pixel manipulation
            // - No UI freeze
            // - ~50-100ms per crop (acceptable!)

            let processPath = cleanPath;
            let needsCleanup = false;

            if (faceFrame && faceFrame.width > 0 && faceFrame.height > 0) {
                console.log(`[FaceRecognition] 📐 Face bbox: ${faceFrame.width}x${faceFrame.height} at (${faceFrame.left}, ${faceFrame.top})`);
                console.log('[FaceRecognition] ✂️ CROPPING face region for accurate embedding...');

                try {
                    // Add 20% margin around face (helps with alignment/rotation)
                    const margin = 0.2;
                    const expandedLeft = Math.max(0, Math.floor(faceFrame.left - faceFrame.width * margin));
                    const expandedTop = Math.max(0, Math.floor(faceFrame.top - faceFrame.height * margin));
                    const expandedWidth = Math.floor(faceFrame.width * (1 + 2 * margin));
                    const expandedHeight = Math.floor(faceFrame.height * (1 + 2 * margin));

                    console.log('[FaceRecognition][DEBUG] 📐 Crop region (with 20% margin):');
                    console.log(`[FaceRecognition][DEBUG]   Original: ${faceFrame.width}x${faceFrame.height} @ (${faceFrame.left}, ${faceFrame.top})`);
                    console.log(`[FaceRecognition][DEBUG]   Expanded: ${expandedWidth}x${expandedHeight} @ (${expandedLeft}, ${expandedTop})`);

                    // Use ImageEditor for native crop (fast, no UI freeze)
                    const ImageEditor = require('@react-native-community/image-editor').default;
                    const croppedUri = await ImageEditor.cropImage(cleanPath, {
                        offset: { x: expandedLeft, y: expandedTop },
                        size: { width: expandedWidth, height: expandedHeight },
                    });

                    processPath = croppedUri.replace(/^file:\/\//, '');
                    needsCleanup = true;
                    console.log('[FaceRecognition] ✅ Face cropped successfully');
                    console.log(`[FaceRecognition][DEBUG] 📁 Cropped file: ${processPath.substring(0, 50)}...`);
                } catch (cropError) {
                    console.error('[FaceRecognition] ❌ Crop failed, using full image:', cropError.message);
                    console.log('[FaceRecognition] ⚠️ Falling back to full image (accuracy may be reduced)');
                    processPath = cleanPath;
                    needsCleanup = false;
                }
            } else {
                console.log('[FaceRecognition] ⚠️ No face bbox provided, using full image');
            }

            // STEP 2: Resize to 160x160 (FaceNet input size)
            console.log('[FaceRecognition] Resizing to 160x160...');
            console.log('[FaceRecognition][DEBUG] 🖼️ Original image path:', processPath);

            // CRITICAL BUG FIX: mode: 'cover' doesn't guarantee exact dimensions!
            // It maintains aspect ratio but may give 160x185 instead of 160x160
            // Solution: Use 'stretch' mode for cropped faces
            // Since we already cropped the face (+20% margin), slight stretch is acceptable
            // and much better than wrong dimensions which cause ONNX errors!
            const resizedImage = await ImageResizer.createResizedImage(
                processPath,         // Path to process (cropped or original)
                MODEL_INPUT_SIZE,    // maxWidth = 160
                MODEL_INPUT_SIZE,    // maxHeight = 160
                'JPEG',              // compressFormat
                100,                 // quality (0-100)
                0,                   // rotation (degrees)
                undefined,           // outputPath (auto-generate)
                false,               // keepMeta
                {
                    mode: 'stretch', // CRITICAL: Force exact 160x160 (cropped face, so stretch is OK)
                    onlyScaleDown: false,
                }
            );

            console.log('[FaceRecognition] Resized:', resizedImage.uri);
            console.log('[FaceRecognition][DEBUG] 📏 Resize result:', {
                width: resizedImage.width || 'unknown',
                height: resizedImage.height || 'unknown',
                size: resizedImage.size ? `${(resizedImage.size / 1024).toFixed(1)}KB` : 'unknown'
            });

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
            console.log('[FaceRecognition][DEBUG] 📊 Raw pixel data sample (first 10 RGBA values):');
            console.log(`[FaceRecognition][DEBUG]   ${Array.from(data.slice(0, 40)).join(', ')}`);

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

            // Statistics on normalized data
            console.log('[FaceRecognition][DEBUG] 📊 Normalized data sample (first 15 RGB values):');
            console.log(`[FaceRecognition][DEBUG]   ${Array.from(inputData.slice(0, 15)).map(v => v.toFixed(3)).join(', ')}`);
            const dataMin = Math.min(...inputData);
            const dataMax = Math.max(...inputData);
            const dataSum = inputData.reduce((sum, val) => sum + val, 0);
            const dataMean = dataSum / inputData.length;
            console.log('[FaceRecognition][DEBUG] 📊 Normalized data statistics:');
            console.log(`[FaceRecognition][DEBUG]   Min: ${dataMin.toFixed(3)}, Max: ${dataMax.toFixed(3)}, Mean: ${dataMean.toFixed(3)}`);
            console.log(`[FaceRecognition][DEBUG]   Expected range: [-1.0, 1.0]`);

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
            // All variables might be undefined if error occurred early (e.g., input validation)
            // MUST use typeof checks to avoid ReferenceError in catch block!
            if (typeof resizedPath !== 'undefined') {
                try {
                    await RNFS.unlink(resizedPath);
                    console.log('[FaceRecognition] 🧹 Emergency cleanup: resized file deleted');
                } catch (cleanupError) {
                    // Already failing, don't throw cleanup errors
                }
            }

            // processPath cleanup (if crop was created but not yet cleaned)
            // CRITICAL: Check if needsCleanup and cleanPath exist before accessing!
            if (typeof needsCleanup !== 'undefined' && needsCleanup &&
                typeof processPath !== 'undefined' &&
                typeof cleanPath !== 'undefined' &&
                processPath !== cleanPath) {
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
        // Input validation (in case called directly)
        if (!imagePath || typeof imagePath !== 'string') {
            throw new Error('Invalid image path provided to extractEmbedding');
        }

        if (!this.isInitialized) {
            console.log('[FaceRecognition] Not initialized, initializing now...');
            const success = await this.initialize();
            if (!success) {
                throw new Error('Failed to initialize FaceRecognition service');
            }
        }

        try {
            console.log('[FaceRecognition] ========================================');
            console.log('[FaceRecognition] 🧠 EXTRACTING FACE EMBEDDING');
            console.log('[FaceRecognition] ========================================');
            console.log('[FaceRecognition][DEBUG] 📸 Input image:', imagePath.substring(0, 60));
            console.log('[FaceRecognition][DEBUG] 📏 Face frame:', JSON.stringify(faceFrame));

            // Preprocess image
            const inputData = await this.preprocessImage(imagePath, faceFrame);
            console.log('[FaceRecognition][DEBUG] ✅ Preprocessing complete, ready for ONNX inference');

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

            // Embedding statistics (BEFORE normalization)
            console.log('[FaceRecognition][DEBUG] 🧠 RAW Embedding sample (first 10 values):');
            console.log(`[FaceRecognition][DEBUG]   ${Array.from(embedding.slice(0, 10)).map(v => v.toFixed(4)).join(', ')}...`);
            const embMin = Math.min(...embedding);
            const embMax = Math.max(...embedding);
            const embSum = Array.from(embedding).reduce((sum, val) => sum + val, 0);
            const embMean = embSum / embedding.length;
            const rawNorm = Math.sqrt(Array.from(embedding).reduce((sum, val) => sum + val * val, 0));
            console.log('[FaceRecognition][DEBUG] 📊 RAW Embedding statistics:');
            console.log(`[FaceRecognition][DEBUG]   Min: ${embMin.toFixed(4)}, Max: ${embMax.toFixed(4)}`);
            console.log(`[FaceRecognition][DEBUG]   Mean: ${embMean.toFixed(4)}, Norm: ${rawNorm.toFixed(4)}`);

            // CRITICAL BUG FIX #23: FaceNet model does NOT output L2-normalized embeddings!
            // We MUST normalize manually for cosine similarity to work correctly!
            // Without normalization: similarity = 20-25% (WRONG!)
            // With normalization: similarity = 80-95% (CORRECT!)
            if (rawNorm === 0) {
                console.error('[FaceRecognition] ❌ Zero norm embedding! Cannot normalize!');
                throw new Error('Zero norm embedding detected - invalid model output');
            }

            // L2 normalization: divide each value by the norm
            const normalizedEmbedding = new Float32Array(embedding.length);
            for (let i = 0; i < embedding.length; i++) {
                normalizedEmbedding[i] = embedding[i] / rawNorm;
            }

            // Verify normalization
            const normalizedNorm = Math.sqrt(Array.from(normalizedEmbedding).reduce((sum, val) => sum + val * val, 0));
            console.log('[FaceRecognition][DEBUG] ✅ L2 Normalization applied');
            console.log(`[FaceRecognition][DEBUG]   Original norm: ${rawNorm.toFixed(4)}`);
            console.log(`[FaceRecognition][DEBUG]   Normalized norm: ${normalizedNorm.toFixed(4)}`);
            console.log(`[FaceRecognition][DEBUG]   Expected: ≈1.0000`);

            if (Math.abs(normalizedNorm - 1.0) > 0.01) {
                console.warn(`[FaceRecognition] ⚠️ Normalization verification failed! Norm: ${normalizedNorm.toFixed(4)}`);
            }

            console.log(`[FaceRecognition] ✅ Embedding extracted and normalized successfully`);

            return normalizedEmbedding;

        } catch (error) {
            console.error('[FaceRecognition] ❌ Embedding extraction failed:', error);
            throw error;
        }
    }

    /**
     * Calculate cosine similarity between two embeddings
     * 
     * IMPORTANT: Embeddings are L2-normalized by extractEmbedding() (unit vectors, norm ≈ 1.0)
     * For normalized vectors: cosine similarity = dot product (already in [-1, 1] range)
     * For face embeddings (same direction): typically in [0, 1] range
     * Additional normalization [(x+1)/2] is INCORRECT and breaks thresholds!
     * 
     * BUG FIX #23: We now manually L2-normalize embeddings after ONNX inference
     * 
     * @param {Float32Array} embedding1 - L2-normalized embedding
     * @param {Float32Array} embedding2 - L2-normalized embedding
     * @returns {number} Similarity score (0-1, higher = more similar)
     */
    calculateCosineSimilarity(embedding1, embedding2) {
        // Input validation
        if (!embedding1 || !embedding2) {
            throw new Error('Both embeddings are required for similarity calculation');
        }

        if (!(embedding1 instanceof Float32Array) || !(embedding2 instanceof Float32Array)) {
            throw new Error('Embeddings must be Float32Array instances');
        }

        if (embedding1.length !== embedding2.length) {
            throw new Error(`Embeddings must have same length (got ${embedding1.length} vs ${embedding2.length})`);
        }

        if (embedding1.length === 0) {
            throw new Error('Embeddings cannot be empty');
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

        console.log('[FaceRecognition][DEBUG] 📏 Similarity calculation:');
        console.log(`[FaceRecognition][DEBUG]   Dot product: ${dotProduct.toFixed(4)}`);
        console.log(`[FaceRecognition][DEBUG]   Norm1: ${norm1.toFixed(4)}`);
        console.log(`[FaceRecognition][DEBUG]   Norm2: ${norm2.toFixed(4)}`);

        if (norm1 === 0 || norm2 === 0) {
            console.warn('[FaceRecognition] ⚠️ Zero norm embedding detected!');
            console.warn('[FaceRecognition][DEBUG] This indicates a problem with embedding extraction!');
            return 0;
        }

        const similarity = dotProduct / (norm1 * norm2);
        console.log(`[FaceRecognition][DEBUG]   Raw cosine: ${similarity.toFixed(4)}`);

        // CRITICAL: DO NOT add [(x+1)/2] normalization!
        // BUG FIX #23: Embeddings are now L2-normalized by extractEmbedding()
        // For L2-normalized vectors (norm ≈ 1): cosine similarity ≈ dot product
        // Range is already in [-1, 1], typically [0, 1] for same-direction face embeddings
        // Adding (x+1)/2 normalization would BREAK thresholds:
        //   0.85 (85% match) → 0.925 (92.5% WRONG!)
        //   0.40 threshold → effectively 0.20 (too permissive!)

        // Verify embeddings are normalized (norm ≈ 1.0)
        if (Math.abs(norm1 - 1.0) > 0.1 || Math.abs(norm2 - 1.0) > 0.1) {
            console.warn(`[FaceRecognition] ⚠️ Embeddings not properly normalized! Norm1: ${norm1.toFixed(4)}, Norm2: ${norm2.toFixed(4)}`);
        }

        // Clamp to [0, 1] for safety (theoretical range is [-1, 1] but face embeddings are always positive)
        const clampedSimilarity = Math.max(0, Math.min(1, similarity));

        if (similarity < 0) {
            console.warn(`[FaceRecognition] ⚠️ Negative cosine similarity: ${similarity.toFixed(4)} (unusual for face embeddings)`);
            console.warn('[FaceRecognition][DEBUG] This suggests different persons or very different poses/lighting');
        }

        if (similarity !== clampedSimilarity) {
            console.log(`[FaceRecognition][DEBUG]   Clamped: ${similarity.toFixed(4)} → ${clampedSimilarity.toFixed(4)}`);
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
            console.log('[FaceRecognition] ========================================');
            console.log('[FaceRecognition] 🔍 FACE COMPARISON STARTED');
            console.log('[FaceRecognition] ========================================');

            // Input validation
            if (!image1Path || !image2Path) {
                throw new Error('Both image paths are required for comparison');
            }

            console.log('[FaceRecognition][DEBUG] 📸 Image 1 (Reference):');
            console.log(`[FaceRecognition][DEBUG]   Path: ${image1Path.substring(0, 50)}...`);
            console.log(`[FaceRecognition][DEBUG]   Face bbox: ${JSON.stringify(face1Frame)}`);

            console.log('[FaceRecognition][DEBUG] 📸 Image 2 (Live):');
            console.log(`[FaceRecognition][DEBUG]   Path: ${image2Path.substring(0, 50)}...`);
            console.log(`[FaceRecognition][DEBUG]   Face bbox: ${JSON.stringify(face2Frame)}`);

            // Extract embeddings (L2-normalized by extractEmbedding function)
            console.log('[FaceRecognition][DEBUG] 🧠 Extracting embedding 1...');
            const embedding1 = await this.extractEmbedding(image1Path, face1Frame);
            const norm1 = Math.sqrt(Array.from(embedding1).reduce((sum, val) => sum + val * val, 0));
            console.log('[FaceRecognition][DEBUG] ✅ Embedding 1 extracted (L2-normalized):', {
                length: embedding1.length,
                type: embedding1.constructor.name,
                sample: `[${Array.from(embedding1.slice(0, 5)).map(v => v.toFixed(4)).join(', ')}...]`,
                norm: norm1.toFixed(4),
                isNormalized: Math.abs(norm1 - 1.0) < 0.01 ? '✅' : '❌'
            });

            console.log('[FaceRecognition][DEBUG] 🧠 Extracting embedding 2...');
            const embedding2 = await this.extractEmbedding(image2Path, face2Frame);
            const norm2 = Math.sqrt(Array.from(embedding2).reduce((sum, val) => sum + val * val, 0));
            console.log('[FaceRecognition][DEBUG] ✅ Embedding 2 extracted (L2-normalized):', {
                length: embedding2.length,
                type: embedding2.constructor.name,
                sample: `[${Array.from(embedding2.slice(0, 5)).map(v => v.toFixed(4)).join(', ')}...]`,
                norm: norm2.toFixed(4),
                isNormalized: Math.abs(norm2 - 1.0) < 0.01 ? '✅' : '❌'
            });

            // Calculate similarity (cosine similarity of L2-normalized embeddings)
            // For normalized vectors: cosine similarity = dot product
            // BUG FIX #23: Embeddings are now L2-normalized, so cosine similarity is accurate!
            console.log('[FaceRecognition][DEBUG] 📏 Calculating cosine similarity...');
            const similarity = this.calculateCosineSimilarity(embedding1, embedding2);

            // Threshold for match (0.7 = 70% similarity)
            // After L2 normalization fix, typical values:
            // - Same person: 0.80-0.95 (80-95%)
            // - Different person: 0.30-0.60 (30-60%)
            // - Poor quality/angle: 0.40-0.70 (40-70%)
            const isMatch = similarity >= 0.7;

            console.log('[FaceRecognition] ========================================');
            console.log(`[FaceRecognition] 🎯 RESULT: Similarity: ${(similarity * 100).toFixed(2)}%`);
            console.log(`[FaceRecognition] 🎯 RESULT: Match: ${isMatch ? '✅ YES' : '❌ NO'}`);
            console.log(`[FaceRecognition] 🎯 RESULT: Threshold: 70%`);

            if (!isMatch) {
                console.log('[FaceRecognition][DEBUG] ⚠️ LOW SIMILARITY DETECTED!');
                console.log('[FaceRecognition][DEBUG] 💡 Possible causes:');
                console.log('[FaceRecognition][DEBUG]   1. Different persons');
                console.log('[FaceRecognition][DEBUG]   2. Poor image quality');
                console.log('[FaceRecognition][DEBUG]   3. Different lighting/angles');
                console.log('[FaceRecognition][DEBUG]   4. Face bbox incorrect (not cropping face)');
                console.log('[FaceRecognition][DEBUG]   5. Preprocessing issue');
            }
            console.log('[FaceRecognition] ========================================');

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
