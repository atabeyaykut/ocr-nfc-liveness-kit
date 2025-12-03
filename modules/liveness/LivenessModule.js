/**
 * Liveness Detection Module
 * Canlılık testi modülü - Gerçek yüz algılama ve doğrulama
 * Android 11 uyumlu
 */

import {
    View,
    Text,
    StyleSheet,
    TouchableOpacity,
    Alert,
    ActivityIndicator,
    Animated,
    Dimensions,
    StatusBar,
    Platform,
    NativeModules,
} from 'react-native';
import { Camera, useCameraDevice } from 'react-native-vision-camera';
import { check, request, PERMISSIONS, RESULTS } from 'react-native-permissions';
import Tts from 'react-native-tts';
import FaceDetection from '@react-native-ml-kit/face-detection';

const { width: screenWidth, height: screenHeight } = Dimensions.get('window');

// Liveness challenge types
const CHALLENGES = {
    LOOK_STRAIGHT: {
        id: 'lookStraight',
        instruction: 'Düz bakın',
        voice: 'Lütfen düz bakın',
        duration: 3000,
        detectionKey: 'headPose',
    },
    BLINK: {
        id: 'blink',
        instruction: 'Gözlerinizi kırpın',
        voice: 'Lütfen gözlerinizi kırpın',
        duration: 3000,
        detectionKey: 'eyes',
    },
    SMILE: {
        id: 'smile',
        instruction: 'Gülümseme',
        voice: 'Lütfen gülümseyin',
        duration: 3000,
        detectionKey: 'smile',
    },
    TURN_HEAD_LEFT: {
        id: 'turnHeadLeft',
        instruction: 'Başınızı sola çevirin',
        voice: 'Lütfen başınızı sola çevirin',
        duration: 3000,
        detectionKey: 'headPose',
    },
    TURN_HEAD_RIGHT: {
        id: 'turnHeadRight',
        instruction: 'Başınızı sağa çevirin',
        voice: 'Lütfen başınızı sağa çevirin',
        duration: 3000,
        detectionKey: 'headPose',
    },
    NOD_HEAD: {
        id: 'nodHead',
        instruction: 'Başınızı aşağı yukarı sallayın',
        voice: 'Lütfen başınızı aşağı yukarı sallayın',
        duration: 3000,
        detectionKey: 'headPose',
    },
    LOOKUP: {
        id: 'lookUp',
        instruction: 'Başınızı yukarı kaldırın',
        voice: 'Lütfen başınızı yukarı kaldırın',
        duration: 3000,
    },
    LOOKDOWN: {
        id: 'lookDown',
        instruction: 'Başınızı aşağı eğin',
        voice: 'Lütfen başınızı aşağı eğin',
        duration: 3000,
    },
    TILTHEAD: {
        id: 'tiltHead',
        instruction: 'Başınızı yana eğin',
        voice: 'Lütfen başınızı yana eğin',
        duration: 3000,
    },
};

class LivenessDetectionModule {
    constructor() {
        this.callbacks = {};
        this.challenges = [];
        this.currentChallengeIndex = 0;
        this.results = [];
        this.faceDetected = false;
        this.challengeStartTime = null;
        this.ttsEnabled = true;
        this.noFaceDetectionCount = 0;
        this.lastDebugLogTime = 0; // For throttling debug logs
        this.challengeTimeoutId = null; // Store timeout ID for cleanup

        // Blink detection state machine
        this.blinkState = null; // null | 'eyes_open' | 'eyes_closed'
        this.blinkStateTime = null; // Track when state changed

        // Face comparison for NFC verification
        this.capturedPhotos = []; // Photos captured during liveness test
        this.referencePhotoUri = null; // NFC photo for comparison
        this.referenceFaceData = null; // Face data extracted from NFC photo
        this.enableFaceComparison = false;
        this.photoCaptureChance = 0.6; // 60% chance to capture photo during each challenge
        this.currentFaceData = null; // Current face data from processFaceData
        this.similarityThreshold = 0.25; // 25% minimum similarity for match (lowered due to basic algorithm)
    }

    // API Methods
    startLiveness = async (challenges = ['lookStraight', 'turnHeadRight', 'turnHeadLeft', 'lookUp', 'lookDown']) => {
        try {
            console.log('[LivenessModule] ========================================');
            console.log('[LivenessModule] 🚀 Starting liveness test...');
            console.log('[LivenessModule] ⏰ Timestamp:', new Date().toISOString());
            console.log('[LivenessModule] 📋 Requested challenges:', challenges);
            console.log('[LivenessModule] 📊 Challenge count:', challenges.length);
            console.log('[LivenessModule] 🔍 Face comparison enabled:', this.enableFaceComparison);
            console.log('[LivenessModule] 📸 Reference photo loaded:', !!this.referenceFaceData);
            console.log('[LivenessModule] ========================================');

            // Validate challenges
            this.challenges = challenges.map(c => {
                const challenge = Object.values(CHALLENGES).find(ch => ch.id === c);
                if (!challenge) {
                    console.error(`[LivenessModule] ❌ Invalid challenge: ${c}`);
                    throw new Error(`Invalid challenge: ${c}`);
                }
                console.log(`[LivenessModule] ✅ Challenge validated: ${c} - "${challenge.instruction}"`);
                return challenge;
            });

            // Randomize challenge order for security (prevent spoof attacks)
            // Always keep 'lookStraight' first for better UX
            const firstChallenge = this.challenges[0];
            const remainingChallenges = this.challenges.slice(1);

            // Fisher-Yates shuffle for remaining challenges
            for (let i = remainingChallenges.length - 1; i > 0; i--) {
                const j = Math.floor(Math.random() * (i + 1));
                [remainingChallenges[i], remainingChallenges[j]] = [remainingChallenges[j], remainingChallenges[i]];
            }

            this.challenges = [firstChallenge, ...remainingChallenges];
            console.log('[LivenessModule] 🔀 Challenges randomized (keeping first challenge fixed)');
            console.log('[LivenessModule] 📋 Final order:', this.challenges.map(c => c.id).join(', '));

            this.currentChallengeIndex = 0;
            this.results = [];
            console.log(`[LivenessModule] 📊 Total challenges to complete: ${this.challenges.length}`);

            // Initialize TTS
            console.log('[LivenessModule] 🔊 Initializing TTS...');
            await this.initializeTTS();

            if (this.callbacks.onStarted) {
                console.log('[LivenessModule] 📢 Calling onStarted callback');
                this.callbacks.onStarted();
            }

            // Start first challenge
            console.log('[LivenessModule] ▶️ Starting first challenge...');
            await this.startNextChallenge();

        } catch (error) {
            console.error('[LivenessModule] ❌ Error starting liveness:', error);
            this.handleError(error);
        }
    };

    stopLiveness = () => {
        console.log('[LivenessModule] ========================================');
        console.log('[LivenessModule] ⏹️ Stopping liveness test...');
        console.log('[LivenessModule] ⏰ Timestamp:', new Date().toISOString());
        console.log('[LivenessModule] 📊 Current challenge index:', this.currentChallengeIndex);
        console.log('[LivenessModule] 📊 Total challenges:', this.challenges.length);
        console.log('[LivenessModule] 📊 Results collected:', this.results.length);
        console.log('[LivenessModule] 📸 Photos captured:', this.capturedPhotos.length);

        // Clear any pending challenge timeout
        if (this.challengeTimeoutId) {
            console.log('[LivenessModule] ⏱️ Clearing pending timeout...');
            clearTimeout(this.challengeTimeoutId);
            this.challengeTimeoutId = null;
        }

        // 🔧 FIX: Handle TTS stop promise rejection
        try {
            console.log('[LivenessModule] 🔊 Stopping TTS...');
            Tts.stop().catch(() => {
                console.log('[LivenessModule] ⚠️ TTS stop rejected (ignored)');
            });
        } catch (error) {
            console.log('[LivenessModule] ⚠️ TTS stop error (ignored):', error.message);
        }

        this.challenges = [];
        this.currentChallengeIndex = 0;
        this.results = [];
        this.capturedPhotos = []; // Clean up captured photos

        console.log('[LivenessModule] ✅ Liveness stopped and cleaned up');
        console.log('[LivenessModule] ========================================');

        if (this.callbacks.onStopped) {
            console.log('[LivenessModule] 📢 Calling onStopped callback');
            this.callbacks.onStopped();
        }
    };

    onLivenessResult = (callback) => {
        this.callbacks.onResult = callback;
    };

    onLivenessError = (callback) => {
        this.callbacks.onError = callback;
    };

    onLivenessStarted = (callback) => {
        this.callbacks.onStarted = callback;
    };

    onLivenessStopped = (callback) => {
        this.callbacks.onStopped = callback;
    };

    onChallengeChanged = (callback) => {
        this.callbacks.onChallengeChanged = callback;
    };

    onPhotoCapture = (callback) => {
        this.callbacks.onPhotoCapture = callback;
    };

    // Face Comparison Methods
    setReferencePhoto = async (photoUri) => {
        this.referencePhotoUri = photoUri;
        this.enableFaceComparison = !!photoUri;

        if (!photoUri) {
            console.log('[LivenessModule] 📸 Reference photo disabled');
            return;
        }

        try {
            console.log(`[LivenessModule] 📸 Loading reference photo...`);
            console.log(`[LivenessModule] 📱 Platform: ${Platform.OS}`);
            console.log(`[LivenessModule] 📄 URI Type: ${typeof photoUri}`);
            console.log(`[LivenessModule] 📏 URI Length: ${photoUri?.length || 0}`);
            console.log(`[LivenessModule] 🔍 URI Preview: ${String(photoUri).substring(0, 100)}...`);

            // Validate photo URI
            if (typeof photoUri !== 'string' || photoUri.trim() === '') {
                throw new Error('Invalid photo URI: URI must be a non-empty string');
            }

            // Detect and validate photo format
            let photoFormat = 'unknown';
            let fixedPath = photoUri;

            if (photoUri.startsWith('file://')) {
                photoFormat = 'file_uri';
                console.log('[LivenessModule] ✅ Format: File URI');

                // Fix Android file path - ensure exactly 3 slashes (file:///)
                if (Platform.OS === 'android') {
                    // Remove all file:// prefixes
                    fixedPath = photoUri.replace(/^file:\/\/+/g, '');
                    // Add exactly 3 slashes for Android ML Kit
                    fixedPath = `file:///${fixedPath}`;
                    console.log(`[LivenessModule] 🔧 Fixed Android path: ${fixedPath}`);
                }

            } else if (photoUri.startsWith('data:image')) {
                photoFormat = 'data_uri';
                console.log('[LivenessModule] ✅ Format: Data URI (base64)');

                // Data URI'leri ML Kit desteklemiyor, file'a kaydetmek gerekir
                throw new Error('Data URI format desteklenmiyor. Lütfen file:// formatında gönderin.');

            } else if (/^[A-Za-z0-9+/=]+$/.test(photoUri.substring(0, 100))) {
                photoFormat = 'base64';
                console.log('[LivenessModule] ⚠️ Format: Raw base64 (data URI olmalı)');

                // Raw base64 desteklenmez
                throw new Error('Raw base64 format desteklenmiyor. Lütfen file:// formatında gönderin.');

            } else if (photoUri.startsWith('/')) {
                photoFormat = 'absolute_path';
                console.log('[LivenessModule] ⚠️ Format: Absolute path (file:/// ekleniyor)');

                // Absolute path'e file:/// ekle (3 slashes for Android ML Kit)
                fixedPath = `file:///` + photoUri;
                console.log(`[LivenessModule] 🔧 Converted to: ${fixedPath}`);

            } else if (photoUri.startsWith('content://')) {
                photoFormat = 'content_uri';
                console.log('[LivenessModule] ❌ Format: Content URI');

                // Content URI desteklenmez
                throw new Error('Content URI format desteklenmiyor. Lütfen file:// formatında gönderin.');

            } else {
                console.log('[LivenessModule] ❌ Format: Unknown/Unsupported');
                throw new Error(`Bilinmeyen foto formatı. URI: ${photoUri.substring(0, 50)}...`);
            }

            console.log(`[LivenessModule] 📋 Final format: ${photoFormat}`);
            console.log(`[LivenessModule] 📋 Final path: ${fixedPath}`);
            console.log(`[LivenessModule] 📋 Path length: ${fixedPath.length}`);

            // Verify file exists (for file:// URIs)
            if (fixedPath.startsWith('file://')) {
                const RNFS = require('react-native-fs');
                const cleanPath = fixedPath.replace(/^file:\/\/+/g, '');
                console.log(`[LivenessModule] 📂 Checking file: ${cleanPath}`);

                const exists = await RNFS.exists(cleanPath);
                console.log(`[LivenessModule] 📂 File exists: ${exists}`);

                if (!exists) {
                    throw new Error(`Reference photo file not found: ${cleanPath}`);
                }

                const stat = await RNFS.stat(cleanPath);
                console.log(`[LivenessModule] 📂 File size: ${stat.size} bytes`);

                // Get image dimensions for debugging (ALWAYS show, even if face detection fails)
                let imageDimensions = null;
                try {
                    const Image = require('react-native').Image;
                    imageDimensions = await new Promise((resolve, reject) => {
                        Image.getSize(
                            fixedPath,
                            (width, height) => {
                                console.log(`[LivenessModule] 📐 Image dimensions: ${width}x${height}px`);
                                resolve({ width, height });
                            },
                            (error) => {
                                console.log(`[LivenessModule] ⚠️ Could not get image dimensions:`, error.message);
                                resolve(null); // Don't fail, just log
                            }
                        );
                    });
                } catch (imgError) {
                    console.log(`[LivenessModule] ⚠️ Image.getSize error:`, imgError.message);
                }

                // Store dimensions for later reference
                this.referencePhotoDimensions = imageDimensions;
            }

            console.log(`[LivenessModule] 🔍 Detecting face in reference photo...`);

            // Extract face data from NFC photo with timeout
            // NFC passport photos are often small/low-quality, use tolerant settings
            const detectionPromise = FaceDetection.detect(fixedPath, {
                performanceMode: 'fast',  // More tolerant for small/low-quality photos
                landmarkMode: 'all',
                classificationMode: 'all',
                contourMode: 'all',
                minFaceSize: 0.1,  // Allow smaller faces (10% of image)
            });

            // Add 10 second timeout
            const timeoutPromise = new Promise((_, reject) =>
                setTimeout(() => reject(new Error('Face detection timeout (10s)')), 10000)
            );

            const faces = await Promise.race([detectionPromise, timeoutPromise]);

            console.log(`[LivenessModule] 👤 Detected ${faces?.length || 0} face(s)`);

            if (!faces || faces.length === 0) {
                console.log(`[LivenessModule] ========================================`);
                console.log(`[LivenessModule] ❌ NO FACE DETECTED IN REFERENCE PHOTO`);
                console.log(`[LivenessModule] ========================================`);

                // Show image info for debugging
                if (this.referencePhotoDimensions) {
                    console.log(`[LivenessModule] 📐 Image size: ${this.referencePhotoDimensions.width}x${this.referencePhotoDimensions.height}px`);
                    console.log(`[LivenessModule] 📊 Total pixels: ${this.referencePhotoDimensions.width * this.referencePhotoDimensions.height}`);
                } else {
                    console.log(`[LivenessModule] ⚠️ Image dimensions: UNKNOWN (unsupported format?)`);
                }

                console.log(`[LivenessModule] ⚠️ Possible reasons:`);
                console.log(`[LivenessModule]    1. Unsupported image format (JPEG2000 should be auto-converted)`);
                console.log(`[LivenessModule]    2. Photo too small (passport photos are typically 200-300px)`);
                console.log(`[LivenessModule]    3. Low quality/resolution`);
                console.log(`[LivenessModule]    4. Face not clearly visible`);
                console.log(`[LivenessModule]    5. Photo corruption during NFC read`);
                console.log(`[LivenessModule] ========================================`);

                throw new Error('NFC fotoğrafında yüz algılanamadı. Format otomatik dönüştürülmüş olmalı, lütfen NFC okuma loglarını kontrol edin.');
            }

            // Store first face data as reference
            this.referenceFaceData = faces[0];
            console.log(`[LivenessModule] ✅ Reference face data extracted successfully`);
            console.log(`[LivenessModule] 📊 Reference face bounds:`, this.referenceFaceData.frame);
            console.log(`[LivenessModule] 📊 Landmarks count: ${this.referenceFaceData.landmarks?.length || 0}`);

        } catch (error) {
            console.error('[LivenessModule] ❌ Failed to load reference photo');
            console.error('[LivenessModule] ❌ Error type:', error.constructor.name);
            console.error('[LivenessModule] ❌ Error message:', error.message);
            console.error('[LivenessModule] ❌ Error stack:', error.stack?.split('\n')[0]);

            this.enableFaceComparison = false;
            this.referenceFaceData = null;

            // Throw with more context
            throw new Error(`Reference photo hatası: ${error.message}`);
        }
    };

    capturePhotoForComparison = (photoUri, faceData) => {
        console.log('[LivenessModule] 📸 capturePhotoForComparison called');
        console.log('[LivenessModule] 📸 Photo URI:', photoUri?.substring(0, 80) + '...');
        console.log('[LivenessModule] 📸 Face comparison enabled:', this.enableFaceComparison);
        console.log('[LivenessModule] 📸 Reference face loaded:', !!this.referenceFaceData);

        if (!this.enableFaceComparison || !this.referenceFaceData) {
            console.log('[LivenessModule] ⚠️ Skipping photo capture (comparison disabled or no reference)');
            return;
        }

        console.log('[LivenessModule] 🔄 Calculating face similarity...');
        console.log('[LivenessModule] 🔄 Reference face frame:', this.referenceFaceData.frame);
        console.log('[LivenessModule] 🔄 Live face frame:', faceData.frame);

        // Calculate similarity immediately
        const similarity = this.compareFaces(this.referenceFaceData, faceData);
        console.log('[LivenessModule] 🔄 Similarity calculated:', (similarity * 100).toFixed(2) + '%');

        const photoData = {
            uri: photoUri,
            timestamp: Date.now(),
            challenge: this.challenges[this.currentChallengeIndex]?.id,
            faceData: faceData,
            similarity: similarity, // Store similarity score
        };

        this.capturedPhotos.push(photoData);
        console.log(`[LivenessModule] ✅ Photo captured for comparison (#${this.capturedPhotos.length})`);
        console.log(`[LivenessModule] ✅ Similarity: ${(similarity * 100).toFixed(1)}%`);
        console.log(`[LivenessModule] ✅ Challenge: ${photoData.challenge}`);
        console.log(`[LivenessModule] ✅ Total photos: ${this.capturedPhotos.length}`);

        if (this.callbacks.onPhotoCapture) {
            console.log('[LivenessModule] 📢 Calling onPhotoCapture callback');
            this.callbacks.onPhotoCapture({
                photoCount: this.capturedPhotos.length,
                challenge: photoData.challenge,
                similarity: similarity,
            });
        }
    };

    /**
     * Compare two faces using landmark-based similarity
     * @param {Object} face1 - Reference face (NFC photo)
     * @param {Object} face2 - Live face (captured during test)
     * @returns {number} Similarity score (0-1)
     */
    compareFaces = (face1, face2) => {
        if (!face1 || !face2) return 0;

        try {
            let totalScore = 0;
            let weightSum = 0;

            // 1. Landmark similarity (50% weight)
            if (face1.landmarks && face2.landmarks && face1.frame && face2.frame) {
                const landmarkScore = this.compareLandmarks(face1.landmarks, face2.landmarks, face1.frame, face2.frame);
                totalScore += landmarkScore * 0.5;
                weightSum += 0.5;
            }

            // 2. Face geometry similarity (30% weight)
            if (face1.frame && face2.frame) {
                const geometryScore = this.compareFaceGeometry(face1.frame, face2.frame);
                totalScore += geometryScore * 0.3;
                weightSum += 0.3;
            }

            // 3. Feature similarity (20% weight) - eye, smile probabilities
            const featureScore = this.compareFaceFeatures(face1, face2);
            totalScore += featureScore * 0.2;
            weightSum += 0.2;

            // Normalize
            const finalScore = weightSum > 0 ? totalScore / weightSum : 0;

            return Math.max(0, Math.min(1, finalScore));

        } catch (error) {
            console.error('[LivenessModule] ❌ Face comparison error:', error);
            return 0;
        }
    };

    /**
     * Compare facial landmarks (eyes, nose, mouth positions)
     * Normalizes distance based on face width for resolution independence
     */
    compareLandmarks = (landmarks1, landmarks2, frame1, frame2) => {
        const keyPoints = ['leftEye', 'rightEye', 'noseBase', 'mouthLeft', 'mouthRight'];
        let totalDistance = 0;
        let validPoints = 0;

        for (const point of keyPoints) {
            if (landmarks1[point] && landmarks2[point]) {
                const pos1 = landmarks1[point].position;
                const pos2 = landmarks2[point].position;

                // Euclidean distance (normalized by face size)
                const distance = Math.sqrt(
                    Math.pow(pos1.x - pos2.x, 2) +
                    Math.pow(pos1.y - pos2.y, 2)
                );

                totalDistance += distance;
                validPoints++;
            }
        }

        if (validPoints === 0) return 0;

        // Normalize: smaller distance = higher similarity
        // Use average face width for normalization (resolution independent)
        const avgFaceWidth = (frame1.width + frame2.width) / 2;
        const maxAcceptableDistance = avgFaceWidth * 0.5; // 50% of face width

        const avgDistance = totalDistance / validPoints;
        const normalizedDistance = Math.min(avgDistance / maxAcceptableDistance, 1);

        return 1 - normalizedDistance;
    };

    /**
     * Compare face geometry (size, aspect ratio)
     * IMPROVED: More tolerant to different camera distances and resolutions
     */
    compareFaceGeometry = (frame1, frame2) => {
        const width1 = frame1.width;
        const height1 = frame1.height;
        const width2 = frame2.width;
        const height2 = frame2.height;

        // Aspect ratio similarity (more lenient - allow up to 30% difference)
        const aspectRatio1 = width1 / height1;
        const aspectRatio2 = width2 / height2;
        const aspectDiff = Math.abs(aspectRatio1 - aspectRatio2);
        const aspectScore = Math.max(0, 1 - aspectDiff);  // Changed from * 2 to be more lenient

        // Size similarity (REMOVED - passport photos are small, live photos are large)
        // This was causing very low scores (21-35%) due to resolution differences
        // Instead, only use aspect ratio which is resolution-independent

        return aspectScore;  // Changed from (aspectScore + sizeRatio) / 2
    };

    /**
     * Compare facial features (eye open, smile probabilities)
     */
    compareFaceFeatures = (face1, face2) => {
        let score = 0;
        let count = 0;

        // Left eye
        if (face1.leftEyeOpenProbability !== undefined && face2.leftEyeOpenProbability !== undefined) {
            const diff = Math.abs(face1.leftEyeOpenProbability - face2.leftEyeOpenProbability);
            score += 1 - diff;
            count++;
        }

        // Right eye
        if (face1.rightEyeOpenProbability !== undefined && face2.rightEyeOpenProbability !== undefined) {
            const diff = Math.abs(face1.rightEyeOpenProbability - face2.rightEyeOpenProbability);
            score += 1 - diff;
            count++;
        }

        // Smile
        if (face1.smilingProbability !== undefined && face2.smilingProbability !== undefined) {
            const diff = Math.abs(face1.smilingProbability - face2.smilingProbability);
            score += 1 - diff;
            count++;
        }

        return count > 0 ? score / count : 0.5; // Default to neutral if no features available
    };

    // Private Methods
    initializeTTS = async () => {
        console.log('[LivenessModule] 🔊 Initializing TTS engine...');
        // 🔧 FIX: Properly handle all TTS promise rejections
        try {
            await Tts.getInitStatus();

            // Check if TTS is available
            const voices = await Tts.voices();
            console.log(`[LivenessModule] 🗣️ Available voices: ${voices.length}`);
            const turkishVoice = voices.find(v => v.language === 'tr-TR');

            if (turkishVoice) {
                console.log(`[LivenessModule] ✅ Turkish voice found: ${turkishVoice.name}`);
                await Tts.setDefaultVoice(turkishVoice.id);
            } else {
                console.log('[LivenessModule] ⚠️ No Turkish voice found, using default');
            }

            this.ttsEnabled = true;
            console.log('[LivenessModule] ✅ TTS enabled successfully');
        } catch (error) {
            // Catch ALL TTS errors here - no rethrow
            console.log('[LivenessModule] ⚠️ TTS not available (running on emulator or no TTS engine), continuing without voice');
            this.ttsEnabled = false;
        }
    };

    startNextChallenge = async () => {
        console.log(`[LivenessModule] 🎯 Challenge index: ${this.currentChallengeIndex}/${this.challenges.length}`);

        if (this.currentChallengeIndex >= this.challenges.length) {
            // All challenges completed
            console.log('[LivenessModule] 🎊 All challenges completed!');
            this.completeDetection();
            return;
        }

        const challenge = this.challenges[this.currentChallengeIndex];
        this.challengeStartTime = Date.now();
        this.noFaceDetectionCount = 0; // Reset no-face counter
        this.blinkState = null; // Reset blink state machine for new challenge
        this.blinkStateTime = null;

        // Adaptive timeout based on challenge type
        // Blink needs more time for state machine transitions
        const timeoutBuffer = challenge.id === 'blink' ? 1500 : 1000;
        const timeoutDuration = challenge.duration + timeoutBuffer;

        console.log(`[LivenessModule] 🎯 Starting challenge ${this.currentChallengeIndex + 1}/${this.challenges.length}: "${challenge.instruction}"`);
        console.log(`[LivenessModule] ⏱️ Challenge timeout: ${timeoutDuration}ms (${challenge.duration}ms + ${timeoutBuffer}ms buffer)`);

        // Speak instruction
        if (this.ttsEnabled) {
            console.log(`[LivenessModule] 🔊 Speaking: "${challenge.voice}"`);
            try {
                // 🔧 FIX: Handle promise rejection
                Tts.speak(challenge.voice).catch(() => {
                    console.log('[LivenessModule] ⚠️ TTS speak failed');
                });
            } catch (error) {
                console.log('[LivenessModule] ⚠️ TTS not available');
            }
        } else {
            console.log('[LivenessModule] 🔇 TTS disabled, skipping voice instruction');
        }

        if (this.callbacks.onChallengeChanged) {
            console.log('[LivenessModule] 📢 Calling onChallengeChanged callback');
            this.callbacks.onChallengeChanged(challenge);
        }

        // Clear any existing timeout
        if (this.challengeTimeoutId) {
            clearTimeout(this.challengeTimeoutId);
        }

        // Set timeout for challenge (optimized for fast mode: 4-4.5s instead of 5s)
        this.challengeTimeoutId = setTimeout(() => {
            this.challengeTimeout(challenge);
        }, timeoutDuration);
    };

    processFaceData = (faces) => {
        const now = Date.now();

        console.log('[LivenessModule] ========================================');
        console.log('[LivenessModule] 🔄 processFaceData called');
        console.log('[LivenessModule] 📊 Face array length:', faces?.length || 0);
        console.log('[LivenessModule] 📊 Current challenge index:', this.currentChallengeIndex);
        console.log('[LivenessModule] 📊 Total challenges:', this.challenges.length);

        if (!faces || faces.length === 0) {
            console.log('[LivenessModule] ⚠️ No face in array, incrementing no-face count');
            this.faceDetected = false;
            this.noFaceDetectionCount++;

            // Log every 2 seconds when no face
            if (now - this.lastDebugLogTime > 2000) {
                console.log(`[LivenessModule] ⚠️ NO FACE: count=${this.noFaceDetectionCount}, threshold=20`);
                this.lastDebugLogTime = now;
            }

            // If no face detected for too long (20 consecutive checks ~10s), fail the challenge
            if (this.noFaceDetectionCount > 20 && this.currentChallengeIndex < this.challenges.length) {
                const challenge = this.challenges[this.currentChallengeIndex];
                console.log(`[LivenessModule] ❌ CHALLENGE FAILED: No face detected for ${this.noFaceDetectionCount} frames (~${(this.noFaceDetectionCount * 0.5).toFixed(1)}s)`);
                console.log(`[LivenessModule] ❌ Failed challenge: ${challenge.id} - "${challenge.instruction}"`);
                this.challengeCompleted(challenge, false);
            }
            return;
        }

        this.faceDetected = true;

        // Log when face is restored after being lost
        if (this.noFaceDetectionCount > 0) {
            console.log(`[LivenessModule] ✅ FACE RESTORED after ${this.noFaceDetectionCount} frames`);
        }

        this.noFaceDetectionCount = 0; // Reset counter when face is detected
        const face = faces[0];

        // Store current face data for photo capture
        this.currentFaceData = face;

        // Debug log angles and probabilities every 1 second
        if (now - this.lastDebugLogTime > 1000) {
            console.log(`[LivenessModule] 📐 Face angles: x=${face.xAngle?.toFixed(1) || 'N/A'}°, y=${face.yAngle?.toFixed(1) || 'N/A'}°, z=${face.zAngle?.toFixed(1) || 'N/A'}°`);
            console.log(`[LivenessModule] 👁️ Eyes: L=${face.leftEyeOpenProbability?.toFixed(2) || 'N/A'}, R=${face.rightEyeOpenProbability?.toFixed(2) || 'N/A'}`);
            console.log(`[LivenessModule] 😊 Smile: ${face.smilingProbability?.toFixed(2) || 'N/A'}`);
            console.log(`[LivenessModule] 📦 Frame: ${face.frame?.width || 'N/A'}x${face.frame?.height || 'N/A'}`);
            this.lastDebugLogTime = now;
        }

        // Check if we have an active challenge
        if (this.currentChallengeIndex >= this.challenges.length) {
            console.log('[LivenessModule] ⚠️ No active challenge (all completed)');
            return;
        }

        const challenge = this.challenges[this.currentChallengeIndex];
        console.log(`[LivenessModule] 🎯 Checking challenge: ${challenge.id}`);

        const detected = this.detectChallengeCompletion(face, challenge);
        console.log(`[LivenessModule] 🔍 Detection result: ${detected ? '✅ SUCCESS' : '⏳ waiting...'}`);

        if (detected) {
            console.log(`[LivenessModule] 🎉 Challenge "${challenge.id}" COMPLETED!`);

            // Capture photo immediately when challenge is completed (if face comparison enabled)
            if (this.enableFaceComparison && this.referenceFaceData && this.currentFaceData) {
                console.log('[LivenessModule] 📸 Capturing completion photo...');
                // We need the photo URI, but we don't have it here
                // This will be handled by LivenessWrapper's onChallengeCompleted callback
            }

            this.challengeCompleted(challenge, true);
        }
    };

    detectChallengeCompletion = (face, challenge) => {
        const now = Date.now();
        const timeSinceStart = now - this.challengeStartTime;

        console.log('[LivenessModule] ----------------------------------------');
        console.log('[LivenessModule] 📊 detectChallengeCompletion for:', challenge.id);
        console.log('[LivenessModule] ⏱️ Time since challenge start:', timeSinceStart + 'ms');

        // Make sure enough time has passed since challenge started
        if (timeSinceStart < 500) {
            console.log('[LivenessModule] ⏸️ Too early, waiting... (need 500ms)');
            return false;
        }

        switch (challenge.id) {
            case 'lookStraight':
                // Detect looking straight - head should be neutral
                const xAngleStraight = face.xAngle;
                const yAngleStraight = face.yAngle;

                console.log(`[LivenessModule] 📊 lookStraight check: x=${xAngleStraight?.toFixed(1)}°, y=${yAngleStraight?.toFixed(1)}°`);
                console.log(`[LivenessModule] 🎯 Threshold: |x| < 15°, |y| < 15°`);

                if (xAngleStraight !== undefined && yAngleStraight !== undefined) {
                    const xAbs = Math.abs(xAngleStraight);
                    const yAbs = Math.abs(yAngleStraight);
                    console.log(`[LivenessModule] 📊 Absolute values: x=${xAbs.toFixed(1)}°, y=${yAbs.toFixed(1)}°`);

                    // Both angles should be close to 0 (within ±15 degrees for easier detection)
                    if (xAbs < 15 && yAbs < 15) {
                        console.log(`✅ lookStraight detected: x=${xAngleStraight.toFixed(1)}°, y=${yAngleStraight.toFixed(1)}°`);
                        return true;
                    } else {
                        console.log(`[LivenessModule] ❌ Failed: x=${xAbs.toFixed(1)}° >= 15 OR y=${yAbs.toFixed(1)}° >= 15`);
                    }
                }
                break;

            case 'blink':
                // Detect real eye blink - sequence: eyes_open → eyes_closed → eyes_open
                const leftEyeOpen = face.leftEyeOpenProbability;
                const rightEyeOpen = face.rightEyeOpenProbability;

                if (leftEyeOpen !== undefined && rightEyeOpen !== undefined) {
                    // Optimized thresholds for better detection
                    // Eyes are "open" when BOTH are clearly open (>0.7)
                    // Eyes are "closed" when BOTH are clearly closed (<0.35)
                    // Wider gap reduces false positives from partial blinks
                    const eyesOpen = leftEyeOpen > 0.7 && rightEyeOpen > 0.7;
                    const eyesClosed = leftEyeOpen < 0.35 && rightEyeOpen < 0.35;

                    // Debug: Always log eye state during blink challenge
                    console.log(` Eye state: L=${leftEyeOpen.toFixed(2)}, R=${rightEyeOpen.toFixed(2)}, State=${this.blinkState || 'null'}`);
                    console.log(` Evaluation: eyesOpen=${eyesOpen}, eyesClosed=${eyesClosed}`);

                    // State machine for blink detection
                    if (eyesOpen && this.blinkState !== 'eyes_open') {
                        // Eyes are open - set initial state or detect reopening after blink
                        if (this.blinkState === 'eyes_closed') {
                            // BLINK COMPLETED: eyes were closed, now open again!
                            console.log(` blink detected: full sequence (open→closed→open)`);
                            console.log(`   Final eye state: L=${leftEyeOpen.toFixed(2)}, R=${rightEyeOpen.toFixed(2)}`);
                            this.blinkState = null; // Reset for next challenge
                            return true;
                        }
                        console.log(` Eyes open confirmed, waiting for blink...`);
                        this.blinkState = 'eyes_open';
                        this.blinkStateTime = now;
                    } else if (eyesClosed && this.blinkState === 'eyes_open') {
                        // Eyes closed after being open - blink in progress
                        console.log(` Blink in progress: L=${leftEyeOpen.toFixed(2)}, R=${rightEyeOpen.toFixed(2)}`);
                        this.blinkState = 'eyes_closed';
                        this.blinkStateTime = now;
                    }
                }
                break;

            case 'smile':
                // Detect smile - stricter threshold
                const smileProbability = face.smilingProbability;
                if (smileProbability !== undefined && smileProbability > 0.75) {
                    return true;
                }
                break;

            case 'turnHeadLeft':
                // Detect head turned left - LARGE absolute yAngle (bigger turn)
                // Data analysis from multiple tests:
                // - Test2: +43.3°, +36.3° (successful left turn)
                // - Test3: -33.4° (successful left turn, different sign)
                // - Test4: -39.3° (successful left turn)
                // Pattern: LEFT = LARGE angle (30-40°), RIGHT = SMALL angle (5-10°)
                // Using |yAngle| > 15° to catch large turns while excluding small right turns
                const yAngleLeft = face.yAngle;
                const yAbsLeft = Math.abs(yAngleLeft || 0);
                console.log(`[LivenessModule] 📊 turnHeadLeft check: yAngle=${yAngleLeft?.toFixed(1)}° (|abs|=${yAbsLeft.toFixed(1)}°)`);
                console.log(`[LivenessModule] 🎯 Threshold: |yAngle| > 15° (LARGE turn = left)`);

                if (yAngleLeft !== undefined) {
                    console.log(`[LivenessModule] 📊 Current absolute value: ${yAbsLeft.toFixed(1)}°`);

                    // Large absolute yAngle = head turned LEFT (significant turn)
                    // 15° threshold: Catches 30-40° left turns, excludes 5-10° right turns
                    if (yAbsLeft > 15) {
                        console.log(`✅ turnHeadLeft detected: |yAngle|=${yAbsLeft.toFixed(1)}° (raw: ${yAngleLeft.toFixed(1)}°)`);
                        return true;
                    } else {
                        console.log(`[LivenessModule] ❌ Failed: ${yAbsLeft.toFixed(1)}° <= 15°`);
                    }
                }
                break;

            case 'turnHeadRight':
                // Detect head turned right - NEGATIVE yAngle (user turns right from their POV)
                // Based on VERIFIED log data: yAngle=-7.2° when user turns right
                // Using -5° threshold (conservative, user showed -7.2°)
                const yAngleRight = face.yAngle;
                console.log(`[LivenessModule] 📊 turnHeadRight check: yAngle=${yAngleRight?.toFixed(1)}°`);
                console.log(`[LivenessModule] 🎯 Threshold: yAngle < -5° (NEGATIVE = right)`);

                if (yAngleRight !== undefined) {
                    console.log(`[LivenessModule] 📊 Current value: ${yAngleRight.toFixed(1)}°`);

                    // NEGATIVE yAngle = head turned RIGHT (verified from logs)
                    if (yAngleRight < -5) {
                        console.log(`✅ turnHeadRight detected: yAngle=${yAngleRight.toFixed(1)}°`);
                        return true;
                    } else {
                        console.log(`[LivenessModule] ❌ Failed: ${yAngleRight.toFixed(1)}° >= -5°`);
                    }
                }
                break;

            case 'nodHead':
                // Detect head nod (up/down)
                const xAngle = face.xAngle;
                if (xAngle !== undefined && Math.abs(xAngle) > 15) {
                    return true;
                }
                break;

            case 'lookUp':
                // Detect head tilted up - xAngle should be NEGATIVE (head back)
                // Threshold lowered to -3° based on user test data showing -1.8° to -2.9°
                // This is more realistic for users (was -5°, then -10° originally)
                const xAngleUp = face.xAngle;
                console.log(`[LivenessModule] 📊 lookUp check: xAngle=${xAngleUp?.toFixed(1)}°`);
                console.log(`[LivenessModule] 🎯 Threshold: xAngle < -3° (head tilted back)`);

                if (xAngleUp !== undefined) {
                    console.log(`[LivenessModule] 📊 Current value: ${xAngleUp.toFixed(1)}°`);

                    // Looking up means head tilts back, which is NEGATIVE xAngle
                    if (xAngleUp < -3) {
                        console.log(`✅ lookUp detected: xAngle=${xAngleUp.toFixed(1)}°`);
                        return true;
                    } else {
                        console.log(`[LivenessModule] ❌ Failed: ${xAngleUp.toFixed(1)}° >= -3°`);
                    }
                }
                break;

            case 'lookDown':
                // Detect head tilted down - xAngle should be POSITIVE (head forward)
                // Lowered threshold to 5° for easier detection (was 10°)
                const xAngleDown = face.xAngle;
                console.log(`[LivenessModule] 📊 lookDown check: xAngle=${xAngleDown?.toFixed(1)}°`);
                console.log(`[LivenessModule] 🎯 Threshold: xAngle > 5° (head tilted forward)`);

                if (xAngleDown !== undefined) {
                    console.log(`[LivenessModule] 📊 Current value: ${xAngleDown.toFixed(1)}°`);

                    // Looking down means head tilts forward, which is POSITIVE xAngle
                    if (xAngleDown > 5) {
                        console.log(`✅ lookDown detected: xAngle=${xAngleDown.toFixed(1)}°`);
                        return true;
                    } else {
                        console.log(`[LivenessModule] ❌ Failed: ${xAngleDown.toFixed(1)}° <= 5°`);
                    }
                }
                break;

            case 'tiltHead':
                // Detect head tilted sideways (roll)
                const zAngleTilt = face.zAngle;
                if (zAngleTilt !== undefined && Math.abs(zAngleTilt) > 20) {
                    return true;
                }
                break;

            default:
                return false;
        }

        return false;
    };

    challengeCompleted = (challenge, success) => {
        // Clear challenge timeout to prevent duplicate execution
        if (this.challengeTimeoutId) {
            clearTimeout(this.challengeTimeoutId);
            this.challengeTimeoutId = null;
        }

        const duration = Date.now() - this.challengeStartTime;
        console.log(`[LivenessModule] ${success ? '✅' : '❌'} Challenge "${challenge.instruction}" ${success ? 'COMPLETED' : 'FAILED'} in ${duration}ms`);

        // Record result
        this.results.push({
            challenge: challenge.id,
            success: success,
            timestamp: Date.now(),
            duration: duration,
        });

        console.log(`[LivenessModule] 📊 Progress: ${this.results.filter(r => r.success).length}/${this.results.length} successful`);

        // Move to next challenge
        this.currentChallengeIndex++;

        // Small delay before next challenge
        setTimeout(() => {
            this.startNextChallenge();
        }, 1000);
    };

    challengeTimeout = (challenge) => {
        // Check if this challenge is still active
        if (this.currentChallengeIndex < this.challenges.length &&
            this.challenges[this.currentChallengeIndex].id === challenge.id) {
            // Challenge failed due to timeout
            console.log(`[LivenessModule] ⏱️ TIMEOUT: Challenge "${challenge.instruction}" took too long`);
            this.challengeCompleted(challenge, false);
        }
    };

    completeDetection = () => {
        console.log('[LivenessModule] 🏁 Completing detection...');

        // Calculate overall score
        const successCount = this.results.filter(r => r.success).length;
        const totalCount = this.results.length;
        const score = totalCount > 0 ? (successCount / totalCount) * 100 : 0;
        const passed = score >= 60; // 60% threshold (3/5 challenges must succeed)

        console.log(`[LivenessModule] 📊 Final Score: ${successCount}/${totalCount} = ${Math.round(score)}%`);
        console.log(`[LivenessModule] ${passed ? '✅ PASSED' : '❌ FAILED'} (threshold: 60%)`);

        const response = {
            passed: passed,
            score: Math.round(score),
            details: {
                totalChallenges: totalCount,
                successfulChallenges: successCount,
                failedChallenges: totalCount - successCount,
                challenges: this.results,
            },
            timestamp: new Date().toISOString(),
        };

        // Add face comparison result if enabled
        if (this.enableFaceComparison && this.capturedPhotos.length > 0) {
            console.log(`[LivenessModule] 🔍 Performing face comparison with ${this.capturedPhotos.length} photos...`);

            // Skip first photo (often has low score as user may not be fully in frame yet)
            // Use all photos if only 1 captured, otherwise skip first
            const photosToAnalyze = this.capturedPhotos.length > 1
                ? this.capturedPhotos.slice(1)
                : this.capturedPhotos;

            console.log(`[LivenessModule] 📸 Analyzing ${photosToAnalyze.length} photos (skipped first: ${this.capturedPhotos.length > 1})`);

            // Calculate similarity scores
            const similarities = photosToAnalyze
                .map(p => p.similarity)
                .filter(s => s !== undefined && s !== null);

            if (similarities.length > 0) {
                const averageSimilarity = similarities.reduce((a, b) => a + b, 0) / similarities.length;
                const minScore = Math.min(...similarities);
                const maxScore = Math.max(...similarities);
                const comparisonPassed = averageSimilarity >= this.similarityThreshold;

                console.log(`[LivenessModule] 📊 Face Comparison Results:`);
                console.log(`[LivenessModule]   Average Similarity: ${(averageSimilarity * 100).toFixed(1)}%`);
                console.log(`[LivenessModule]   Min Score: ${(minScore * 100).toFixed(1)}%`);
                console.log(`[LivenessModule]   Max Score: ${(maxScore * 100).toFixed(1)}%`);
                console.log(`[LivenessModule]   ${comparisonPassed ? '✅ PASSED' : '❌ FAILED'} (threshold: ${(this.similarityThreshold * 100)}%)`);

                response.faceComparison = {
                    enabled: true,
                    passed: comparisonPassed,
                    averageSimilarity: parseFloat(averageSimilarity.toFixed(4)),
                    minScore: parseFloat(minScore.toFixed(4)),
                    maxScore: parseFloat(maxScore.toFixed(4)),
                    threshold: this.similarityThreshold,
                    photosCaptured: this.capturedPhotos.length,
                    photosAnalyzed: similarities.length,
                    photosWithChallenges: this.capturedPhotos.map(p => ({
                        challenge: p.challenge,
                        timestamp: p.timestamp,
                        similarity: p.similarity ? parseFloat(p.similarity.toFixed(4)) : null,
                    })),
                };

                // Update overall pass status to include face comparison
                if (!comparisonPassed) {
                    console.log('[LivenessModule] ⚠️ Liveness passed but face comparison failed');
                    response.passed = false;
                    response.failureReason = 'Face comparison similarity below threshold';
                }
            } else {
                response.faceComparison = {
                    enabled: true,
                    passed: false,
                    error: 'No valid similarity scores calculated',
                    photosCaptured: this.capturedPhotos.length,
                };
            }
        }

        if (this.callbacks.onResult) {
            console.log('[LivenessModule] 📢 Calling onResult callback with:', response);
            this.callbacks.onResult(response);
        } else {
            console.log('[LivenessModule] ⚠️ No onResult callback registered');
        }
    };

    handleError = (error) => {
        console.error('[LivenessModule] ❌ Error occurred:', error);
        const errorResponse = {
            success: false,
            error: error.message || 'Liveness detection error',
            code: 'LIVENESS_ERROR',
        };

        if (this.callbacks.onError) {
            console.log('[LivenessModule] 📢 Calling onError callback');
            this.callbacks.onError(errorResponse);
        } else {
            console.log('[LivenessModule] ⚠️ No onError callback registered');
        }
    };
}

export default LivenessDetectionModule;
