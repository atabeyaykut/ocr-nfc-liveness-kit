/**
 * FaceRecognitionEnsemble.js
 * 
 * Multi-model ensemble for robust face recognition
 * Combines FaceNet (160x160, 128-dim) + ArcFace (112x112, 512-dim)
 * 
 * Strategy: Weighted average ensemble
 * - FaceNet: 40% weight (baseline model)
 * - ArcFace: 60% weight (SOTA model, higher accuracy)
 * 
 * Benefits:
 * - Reduced false negatives (lower risk of rejecting same person)
 * - Better handling of low-quality NFC photos
 * - More robust to lighting/angle variations
 */

import { InferenceSession, Tensor } from 'onnxruntime-react-native';
import ImageResizer from '@bam.tech/react-native-image-resizer';
import RNFS from 'react-native-fs';
import { decode } from 'base64-arraybuffer';
import { Image, Platform } from 'react-native';

export default class FaceRecognitionEnsemble {
    constructor() {
        this.models = {
            facenet: {
                session: null,
                modelPath: null,
                inputSize: 160,
                embeddingDim: 128,
                weight: 0.4, // 40% weight
                preprocessing: 'standard', // (x - 127.5) / 127.5
            },
            arcface: {
                session: null,
                modelPath: null,
                inputSize: 112,
                embeddingDim: 512,
                weight: 0.6, // 60% weight
                preprocessing: 'arcface', // (x - 127.5) / 128.0
            }
        };

        this.initialized = false;
        console.log('[FaceEnsemble] Ensemble service created');
    }

    /**
     * Initialize all models
     */
    async initialize() {
        if (this.initialized) {
            console.log('[FaceEnsemble] Already initialized');
            return;
        }

        console.log('[FaceEnsemble] ========================================');
        console.log('[FaceEnsemble] Initializing Multi-Model Ensemble...');
        console.log('[FaceEnsemble] ========================================');

        try {
            // Initialize FaceNet
            await this.initializeModel('facenet', 'facenet.onnx');

            // Initialize ArcFace
            await this.initializeModel('arcface', 'arcface_512.onnx');

            this.initialized = true;
            console.log('[FaceEnsemble] ✅ All models initialized successfully');
            console.log('[FaceEnsemble] ========================================');
        } catch (error) {
            console.error('[FaceEnsemble] ❌ Initialization failed:', error);
            throw error;
        }
    }

    /**
     * Initialize a single model
     */
    async initializeModel(modelName, modelFileName) {
        console.log(`[FaceEnsemble] Initializing ${modelName}...`);

        const model = this.models[modelName];

        // Get model path (assets root, not in models/ subfolder)
        const sourceAssetPath = modelFileName; // e.g., 'facenet.onnx' or 'arcface_512.onnx'
        const destPath = `${RNFS.DocumentDirectoryPath}/${modelFileName}`;
        model.modelPath = destPath;

        // Check if model exists in documents
        const modelExists = await RNFS.exists(destPath);

        if (!modelExists) {
            console.log(`[FaceEnsemble] Copying ${modelName} from assets...`);
            try {
                // Platform-specific model copying
                if (Platform.OS === 'android') {
                    // Android: Copy from assets folder
                    await RNFS.copyFileAssets(sourceAssetPath, destPath);
                } else if (Platform.OS === 'ios') {
                    // iOS: Copy from bundle (model must be added to Xcode project)
                    const bundlePath = `${RNFS.MainBundlePath}/${modelFileName}`;
                    const bundleExists = await RNFS.exists(bundlePath);

                    if (!bundleExists) {
                        throw new Error(
                            `${modelName} model not found in iOS bundle. ` +
                            `Please add ${modelFileName} to Xcode project as a resource.`
                        );
                    }

                    await RNFS.copyFile(bundlePath, destPath);
                } else {
                    throw new Error(`Unsupported platform: ${Platform.OS}`);
                }
                console.log(`[FaceEnsemble] ✅ ${modelName} copied successfully`);
            } catch (copyError) {
                console.error(`[FaceEnsemble] ❌ Failed to copy ${modelName}:`, copyError);
                throw copyError;
            }
        } else {
            console.log(`[FaceEnsemble] ${modelName} already exists`);
        }

        // Check file size
        const stats = await RNFS.stat(destPath);
        const fileSizeMB = (stats.size / (1024 * 1024)).toFixed(2);
        console.log(`[FaceEnsemble] ${modelName} file size: ${fileSizeMB}MB`);

        // Create ONNX session
        console.log(`[FaceEnsemble] Creating ONNX session for ${modelName}...`);
        model.session = await InferenceSession.create(destPath);

        // Log model metadata
        const inputs = model.session.inputNames;
        const outputs = model.session.outputNames;
        console.log(`[FaceEnsemble] ${modelName} metadata:`);
        console.log(`[FaceEnsemble]   Input: ${inputs[0]}`);
        console.log(`[FaceEnsemble]   Output: ${outputs[0]}`);
        console.log(`[FaceEnsemble]   Input size: ${model.inputSize}x${model.inputSize}`);
        console.log(`[FaceEnsemble]   Embedding dim: ${model.embeddingDim}`);
        console.log(`[FaceEnsemble]   Weight: ${(model.weight * 100).toFixed(0)}%`);
        console.log(`[FaceEnsemble] ✅ ${modelName} initialized`);
    }

    /**
     * Preprocess image for a specific model
     */
    async preprocessImage(imagePath, faceFrame, modelName) {
        const model = this.models[modelName];
        const inputSize = model.inputSize;

        console.log(`[FaceEnsemble][${modelName}] Preprocessing for ${inputSize}x${inputSize}...`);

        const cleanPath = imagePath.replace('file://', '');
        let processPath = cleanPath;
        let needsCleanup = false;

        // Step 1: Crop face with margin using ImageEditor (native, fast)
        if (faceFrame && faceFrame.width > 0 && faceFrame.height > 0) {
            console.log(`[FaceEnsemble][${modelName}] ✂️ CROPPING face region...`);

            try {
                const margin = 0.2; // 20% margin
                const expandedLeft = Math.max(0, Math.floor(faceFrame.left - faceFrame.width * margin));
                const expandedTop = Math.max(0, Math.floor(faceFrame.top - faceFrame.height * margin));
                const expandedWidth = Math.floor(faceFrame.width * (1 + 2 * margin));
                const expandedHeight = Math.floor(faceFrame.height * (1 + 2 * margin));

                console.log(`[FaceEnsemble][${modelName}] Crop: ${expandedWidth}x${expandedHeight} @ (${expandedLeft}, ${expandedTop})`);

                // Use ImageEditor for native crop
                const ImageEditor = require('@react-native-community/image-editor').default;
                const imageUriForCrop = cleanPath.startsWith('file://') ? cleanPath : `file://${cleanPath}`;

                // Get image dimensions to clamp crop region
                let imageWidth, imageHeight;
                try {
                    ({ width: imageWidth, height: imageHeight } = await new Promise((resolve, reject) => {
                        Image.getSize(
                            imageUriForCrop,
                            (width, height) => resolve({ width, height }),
                            error => reject(error)
                        );
                    }));
                    console.log(`[FaceEnsemble][${modelName}] Source: ${imageWidth}x${imageHeight}`);
                } catch (dimError) {
                    console.log(`[FaceEnsemble][${modelName}] ⚠️ Could not read dimensions:`, dimError?.message);
                }

                // Clamp crop region within image bounds
                const cropWidth = imageWidth
                    ? Math.min(expandedWidth, Math.max(1, imageWidth - expandedLeft))
                    : expandedWidth;
                const cropHeight = imageHeight
                    ? Math.min(expandedHeight, Math.max(1, imageHeight - expandedTop))
                    : expandedHeight;

                if (cropWidth <= 0 || cropHeight <= 0) {
                    throw new Error('Invalid crop region (non-positive size)');
                }

                console.log(`[FaceEnsemble][${modelName}] Final crop: ${cropWidth}x${cropHeight}`);

                const cropResult = await ImageEditor.cropImage(imageUriForCrop, {
                    offset: { x: expandedLeft, y: expandedTop },
                    size: { width: cropWidth, height: cropHeight },
                });

                // Handle different return types (string or object)
                const normalizedCroppedUri =
                    typeof cropResult === 'string'
                        ? cropResult
                        : (cropResult?.uri || cropResult?.path || cropResult);

                processPath = normalizedCroppedUri.replace('file://', '');
                needsCleanup = true;
                console.log(`[FaceEnsemble][${modelName}] ✅ Face cropped`);
            } catch (cropError) {
                console.error(`[FaceEnsemble][${modelName}] ⚠️ Crop failed:`, cropError.message);
                console.log(`[FaceEnsemble][${modelName}] Continuing without crop...`);
                processPath = cleanPath;
            }
        }

        // Step 2: Resize to model input size
        const resizedResult = await ImageResizer.createResizedImage(
            processPath,
            inputSize,
            inputSize,
            'JPEG',
            100,
            0,
            null,
            false,
            { mode: 'stretch' }
        );

        console.log(`[FaceEnsemble][${modelName}] Resized to ${inputSize}x${inputSize}`);

        // Step 3: Read as base64 and decode
        const base64Data = await RNFS.readFile(resizedResult.uri.replace('file://', ''), 'base64');
        const buffer = decode(base64Data);
        const jpeg = require('jpeg-js');
        const rawImageData = jpeg.decode(buffer, { useTArray: true });

        console.log(`[FaceEnsemble][${modelName}] Decoded: ${rawImageData.width}x${rawImageData.height}`);

        // Step 4: Apply gamma correction
        const gammaCorrectedData = this.applyAdaptiveGammaCorrection(
            rawImageData.data,
            rawImageData.width,
            rawImageData.height
        );

        // Step 5: Normalize based on model type
        const inputData = new Float32Array(1 * inputSize * inputSize * 3);

        for (let h = 0; h < inputSize; h++) {
            for (let w = 0; w < inputSize; w++) {
                const pixelIndex = (h * inputSize + w) * 4; // RGBA
                const outputIndex = (h * inputSize + w) * 3; // RGB

                const r = gammaCorrectedData[pixelIndex];
                const g = gammaCorrectedData[pixelIndex + 1];
                const b = gammaCorrectedData[pixelIndex + 2];

                // Apply model-specific normalization
                if (model.preprocessing === 'standard') {
                    // FaceNet: (x - 127.5) / 127.5 → [-1, 1]
                    inputData[outputIndex] = (r / 127.5) - 1;
                    inputData[outputIndex + 1] = (g / 127.5) - 1;
                    inputData[outputIndex + 2] = (b / 127.5) - 1;
                } else if (model.preprocessing === 'arcface') {
                    // ArcFace: (x - 127.5) / 128.0 → approximately [-1, 1]
                    inputData[outputIndex] = (r - 127.5) / 128.0;
                    inputData[outputIndex + 1] = (g - 127.5) / 128.0;
                    inputData[outputIndex + 2] = (b - 127.5) / 128.0;
                }
            }
        }

        console.log(`[FaceEnsemble][${modelName}] ✅ Preprocessing complete`);

        // Cleanup temp files
        if (needsCleanup && processPath !== cleanPath) {
            await RNFS.unlink(processPath).catch(() => { });
        }
        await RNFS.unlink(resizedResult.uri.replace('file://', '')).catch(() => { });

        return inputData;
    }

    /**
     * Apply adaptive gamma correction (reused from FaceRecognitionService)
     */
    applyAdaptiveGammaCorrection(data, width, height) {
        const pixelCount = width * height;
        let sum = 0;

        // Calculate overall brightness
        for (let i = 0; i < pixelCount; i++) {
            const pixelIndex = i * 4;
            const r = data[pixelIndex];
            const g = data[pixelIndex + 1];
            const b = data[pixelIndex + 2];
            sum += (r + g + b) / 3;
        }

        const overallMean = sum / pixelCount;
        let gamma = 1.0;

        if (overallMean > 140) {
            // Overexposed - darken
            gamma = 1.2 + ((overallMean - 140) / 115) * 1.3;
            console.log(`[FaceEnsemble] ⚠️ OVEREXPOSED: gamma=${gamma.toFixed(2)}`);
        } else if (overallMean < 110) {
            // Underexposed - brighten
            gamma = 0.4 + (overallMean / 110) * 0.6;
            console.log(`[FaceEnsemble] ⚠️ UNDEREXPOSED: gamma=${gamma.toFixed(2)}`);
        } else {
            console.log(`[FaceEnsemble] ✅ Normal brightness (${overallMean.toFixed(1)})`);
            return data; // No correction needed
        }

        // Apply gamma correction
        const correctedData = new Uint8Array(data.length);
        const invGamma = 1.0 / gamma;

        for (let i = 0; i < data.length; i += 4) {
            correctedData[i] = Math.pow(data[i] / 255.0, invGamma) * 255;
            correctedData[i + 1] = Math.pow(data[i + 1] / 255.0, invGamma) * 255;
            correctedData[i + 2] = Math.pow(data[i + 2] / 255.0, invGamma) * 255;
            correctedData[i + 3] = data[i + 3]; // Alpha unchanged
        }

        return correctedData;
    }

    /**
     * Extract embedding from a single model
     */
    async extractEmbedding(imagePath, faceFrame, modelName) {
        const startTime = Date.now();
        const model = this.models[modelName];

        console.log(`[FaceEnsemble] ========================================`);
        console.log(`[FaceEnsemble] Extracting ${modelName} embedding...`);

        // Preprocess
        const inputData = await this.preprocessImage(imagePath, faceFrame, modelName);

        // Create tensor
        const inputSize = model.inputSize;
        const inputTensor = new Tensor('float32', inputData, [1, inputSize, inputSize, 3]);

        // Run inference
        console.log(`[FaceEnsemble][${modelName}] Running ONNX inference...`);
        const feeds = {};
        feeds[model.session.inputNames[0]] = inputTensor;
        const results = await model.session.run(feeds);
        const outputTensor = results[model.session.outputNames[0]];

        // Extract and normalize embedding
        let embedding = Array.from(outputTensor.data);

        // L2 normalization
        const norm = Math.sqrt(embedding.reduce((sum, val) => sum + val * val, 0));
        embedding = embedding.map(val => val / norm);

        const elapsedTime = Date.now() - startTime;
        console.log(`[FaceEnsemble][${modelName}] ✅ Embedding extracted (${elapsedTime}ms)`);
        console.log(`[FaceEnsemble][${modelName}]   Dimension: ${embedding.length}`);
        console.log(`[FaceEnsemble][${modelName}]   Norm: ${norm.toFixed(4)} → 1.0000`);

        return {
            embedding: new Float32Array(embedding),
            modelName,
            dimension: embedding.length,
            extractionTime: elapsedTime
        };
    }

    /**
     * Compare two faces using ensemble of models
     */
    async compareFaces(refImagePath, refFaceFrame, liveImagePath, liveFaceFrame) {
        if (!this.initialized) {
            await this.initialize();
        }

        console.log('[FaceEnsemble] ========================================');
        console.log('[FaceEnsemble] 🔍 ENSEMBLE FACE COMPARISON STARTED');
        console.log('[FaceEnsemble] ========================================');

        const startTime = Date.now();
        const similarities = {};
        const embeddings = {
            ref: {},
            live: {}
        };

        // Extract embeddings from all models
        for (const modelName of Object.keys(this.models)) {
            try {
                console.log(`[FaceEnsemble] Processing with ${modelName}...`);

                // Extract reference embedding
                const refResult = await this.extractEmbedding(refImagePath, refFaceFrame, modelName);
                embeddings.ref[modelName] = refResult;

                // Extract live embedding
                const liveResult = await this.extractEmbedding(liveImagePath, liveFaceFrame, modelName);
                embeddings.live[modelName] = liveResult;

                // Calculate cosine similarity
                const similarity = this.cosineSimilarity(
                    refResult.embedding,
                    liveResult.embedding
                );

                similarities[modelName] = similarity;

                console.log(`[FaceEnsemble][${modelName}] Similarity: ${(similarity * 100).toFixed(2)}%`);
            } catch (error) {
                console.error(`[FaceEnsemble][${modelName}] ❌ Error:`, error.message);
                similarities[modelName] = 0; // Fallback to 0 if model fails
            }
        }

        // Calculate weighted average
        let weightedSum = 0;
        let totalWeight = 0;

        for (const [modelName, similarity] of Object.entries(similarities)) {
            const weight = this.models[modelName].weight;
            weightedSum += similarity * weight;
            totalWeight += weight;
            console.log(`[FaceEnsemble]   ${modelName}: ${(similarity * 100).toFixed(2)}% × ${(weight * 100).toFixed(0)}% = ${(similarity * weight * 100).toFixed(2)}%`);
        }

        const finalSimilarity = weightedSum / totalWeight;
        const elapsedTime = Date.now() - startTime;

        console.log('[FaceEnsemble] ========================================');
        console.log('[FaceEnsemble] 🎯 ENSEMBLE RESULT');
        console.log('[FaceEnsemble] ========================================');
        console.log(`[FaceEnsemble] Individual Similarities:`);
        for (const [modelName, similarity] of Object.entries(similarities)) {
            console.log(`[FaceEnsemble]   - ${modelName}: ${(similarity * 100).toFixed(2)}%`);
        }
        console.log(`[FaceEnsemble] Weighted Average: ${(finalSimilarity * 100).toFixed(2)}%`);
        console.log(`[FaceEnsemble] Total Time: ${elapsedTime}ms`);
        console.log('[FaceEnsemble] ========================================');

        return {
            similarity: finalSimilarity,
            individualScores: similarities,
            embeddings,
            processingTime: elapsedTime
        };
    }

    /**
     * Calculate cosine similarity between two embeddings
     */
    cosineSimilarity(embedding1, embedding2) {
        if (embedding1.length !== embedding2.length) {
            throw new Error('Embeddings must have same dimension');
        }

        let dotProduct = 0;
        for (let i = 0; i < embedding1.length; i++) {
            dotProduct += embedding1[i] * embedding2[i];
        }

        // Embeddings are already L2-normalized, so norm = 1.0
        return Math.max(0, dotProduct); // Clamp to [0, 1]
    }

    /**
     * Cleanup resources
     */
    async dispose() {
        console.log('[FaceEnsemble] Disposing ensemble...');

        for (const [modelName, model] of Object.entries(this.models)) {
            if (model.session) {
                try {
                    await model.session.release();
                    console.log(`[FaceEnsemble] ${modelName} session released`);
                } catch (error) {
                    console.error(`[FaceEnsemble] Error releasing ${modelName}:`, error);
                }
            }
        }

        this.initialized = false;
        console.log('[FaceEnsemble] ✅ Ensemble disposed');
    }
}
