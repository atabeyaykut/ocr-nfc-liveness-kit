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
import { compareFacesImproved } from './ImprovedFaceComparison';

const { width: screenWidth, height: screenHeight } = Dimensions.get('window');

// Liveness challenge types
const CHALLENGES = {
    LOOK_STRAIGHT: {
        id: 'lookStraight',
        instruction: 'Düz bakın',
        voice: 'Lütfen düz bakın',
        duration: 6000,  // Increased from 4s to 6s for slow frame processing
        detectionKey: 'headPose',
    },
    BLINK: {
        id: 'blink',
        instruction: 'Gözlerinizi kırpın',
        voice: 'Lütfen gözlerinizi kırpın',
        duration: 4000,  // Increased from 3s to 4s (uses 100ms interval)
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
        duration: 7000,  // Increased from 5s to 7s for slow frame processing
        detectionKey: 'headPose',
    },
    TURN_HEAD_RIGHT: {
        id: 'turnHeadRight',
        instruction: 'Başınızı sağa çevirin',
        voice: 'Lütfen başınızı sağa çevirin',
        duration: 7000,  // Increased from 5s to 7s for slow frame processing
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
        duration: 7000,  // Increased from 5s to 7s for slow frame processing
    },
    LOOKDOWN: {
        id: 'lookDown',
        instruction: 'Başınızı aşağı eğin',
        voice: 'Lütfen başınızı aşağı eğin',
        duration: 4500,
    },
    TILTHEAD: {
        id: 'tiltHead',
        instruction: 'Başınızı yana eğin',
        voice: 'Lütfen başınızı yana eğin',
        duration: 4500,
    },
};

// Enhanced logging utilities - CLASS METHODS
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

        // Baseline angles for relative challenge detection
        // When a challenge starts, first face position becomes baseline (0,0,0)
        // All movements measured relative to this baseline
        this.baselineAngles = null; // { x, y, z }
        this.baselineChallengeIndex = -1; // Track which challenge this baseline belongs to

        // Logging configuration
        this.logLevel = 'DEBUG'; // ERROR, WARN, INFO, DEBUG, TRACE
        this.frameLogCounter = 0; // For sampling frame logs
        this.lastFrameLogTime = 0; // For throttling frame logs
        this.frameLogInterval = 5; // Log every 5th frame

        // Face comparison for NFC verification
        this.capturedPhotos = []; // Photos captured during liveness test
        this.referencePhotoUri = null; // NFC photo for comparison
        this.referenceFaceData = null; // Face data extracted from NFC photo
        this.enableFaceComparison = true; // Enable face photo comparison
        this.photoCaptureChance = 0.6; // 60% chance to capture photo
        this.similarityThreshold = 0.55;  // 55% minimum similarity (improved landmark-based algorithm with weighted scoring)
        this.currentFaceData = null; // Current face data from processFaceData
    }

    // Enhanced logging utilities - CLASS METHODS
    shouldLog = (level) => {
        const levels = ['ERROR', 'WARN', 'INFO', 'DEBUG', 'TRACE'];
        const currentLevelIndex = levels.indexOf(this.logLevel);
        const requestedLevelIndex = levels.indexOf(level);
        return requestedLevelIndex <= currentLevelIndex;
    };

    logWithLevel = (level, message, data = null) => {
        if (!this.shouldLog(level)) return;
        const timestamp = new Date().toISOString();
        const prefix = `[LivenessModule][${level}]`;
        const fullMessage = data ? `${prefix} ${message} | Data: ${JSON.stringify(data)}` : `${prefix} ${message}`;

        switch (level) {
            case 'ERROR':
                console.error(fullMessage);
                break;
            case 'WARN':
                console.warn(fullMessage);
                break;
            default:
                console.log(fullMessage);
        }
    };

    shouldLogFrame = () => {
        const now = Date.now();
        // Log every 5th frame or every 2 seconds minimum
        return (this.frameLogCounter % this.frameLogInterval === 0) ||
            (now - this.lastFrameLogTime > 2000);
    };

    formatAngle = (value) => (value === undefined || value === null ? 'N/A' : `${value.toFixed(1)}°`);
    formatDelta = (value) => (value === null || value === undefined ? 'N/A' : `${value >= 0 ? '+' : ''}${value.toFixed(1)}°`);
    formatProb = (value) => (value === undefined || value === null ? 'N/A' : value.toFixed(2));
    nowMs = () => Date.now();

    // Enhanced logging helpers for pose detection
    logPoseDebug = ({ challengeId, axisLabel, baseline, current, relative, thresholdText, elapsedMs }) => {
        if (!this.shouldLogFrame()) return;
        console.log(
            `[LivenessModule][${challengeId}] ⏱️ ${elapsedMs}ms | ${axisLabel}-axis baseline=${this.formatAngle(baseline)} current=${this.formatAngle(current)} relative=${this.formatDelta(relative)} | threshold ${thresholdText}`,
        );
    };

    logPoseShortfall = ({ challengeId, needed, relative, directionText }) => {
        const delta = needed - relative;
        console.log(
            `[LivenessModule][${challengeId}] ❌ Movement insufficient (${directionText}). Need ${needed.toFixed(1)}°, current ${relative.toFixed(1)}°, short by ${delta.toFixed(1)}°`,
        );
    };

    logBlinkDebug = ({ elapsedMs, state, leftProb, rightProb, eyesOpen, eyesClosed }) => {
        if (!this.shouldLogFrame()) return;
        console.log(`[LivenessModule][blink] ⏱️ ${elapsedMs}ms | state=${state || 'null'} | L=${this.formatProb(leftProb)} R=${this.formatProb(rightProb)} | eyesOpen=${eyesOpen} eyesClosed=${eyesClosed}`);
    };

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
     * Compare two faces for similarity
     * IMPROVED: Uses enhanced landmark-based algorithm with weighted scoring
     * 
     * @param {Object} face1 - Reference face (from NFC photo)
     * @param {Object} face2 - Live face (captured during test)
     * @returns {number} Similarity score (0-1)
     */
    compareFaces = (face1, face2) => {
        // Use improved comparison algorithm
        return compareFacesImproved(face1, face2);
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

    getCurrentChallenge = () => {
        if (this.currentChallengeIndex >= 0 && this.currentChallengeIndex < this.challenges.length) {
            return this.challenges[this.currentChallengeIndex];
        }
        return null;
    };

    startNextChallenge = async () => {
        const startTime = Date.now();
        this.logWithLevel('INFO', `🎯 Starting challenge transition`);
        this.logWithLevel('DEBUG', `📊 Challenge index: ${this.currentChallengeIndex}/${this.challenges.length}`);
        this.logWithLevel('TRACE', `🔧 Internal state check`, {
            currentChallengeIndex: this.currentChallengeIndex,
            totalChallenges: this.challenges.length,
            hasResults: this.results.length > 0,
            faceDetected: this.faceDetected,
            challengeStartTime: this.challengeStartTime
        });

        if (this.currentChallengeIndex >= this.challenges.length) {
            // All challenges completed
            this.logWithLevel('INFO', `🎊 All challenges completed successfully!`);
            this.logWithLevel('DEBUG', `📊 Final results summary`, {
                totalChallenges: this.challenges.length,
                completedChallenges: this.results.length,
                successRate: this.results.length > 0 ? (this.results.filter(r => r.success).length / this.results.length * 100).toFixed(1) + '%' : 'N/A',
                photosCaptured: this.capturedPhotos.length,
                totalDuration: Date.now() - startTime
            });
            this.completeDetection();
            return;
        }

        const challenge = this.challenges[this.currentChallengeIndex];
        const previousChallenge = this.currentChallengeIndex > 0 ? this.challenges[this.currentChallengeIndex - 1] : null;

        this.logWithLevel('INFO', `🔄 Starting new challenge`);
        this.logWithLevel('DEBUG', `📋 Challenge details`, {
            currentIndex: this.currentChallengeIndex,
            challengeId: challenge.id,
            instruction: challenge.instruction,
            voiceInstruction: challenge.voice,
            baseDuration: challenge.duration,
            previousChallenge: previousChallenge ? previousChallenge.id : 'none'
        });

        this.challengeStartTime = Date.now();
        this.noFaceDetectionCount = 0; // Reset no-face counter
        this.blinkState = null; // Reset blink state machine for new challenge
        this.blinkStateTime = null;
        this.baselineAngles = null; // Reset baseline - will be set with first face detection
        this.baselineChallengeIndex = -1; // Mark that baseline needs to be set for new challenge
        this.frameLogCounter = 0; // Reset frame logging counter
        this.lastFrameLogTime = Date.now();

        this.logWithLevel('DEBUG', `🔄 State reset for new challenge`, {
            challengeIndex: this.currentChallengeIndex,
            blinkState: 'null',
            baselineAngles: 'null',
            noFaceDetectionCount: 0,
            frameLogCounter: 0
        });

        // Adaptive timeout based on challenge type
        // Increased buffer from 1000ms to 2000ms due to slow frame processing (3+ seconds per frame)
        // This allows at least 2-3 frames to be processed before timeout
        const timeoutBuffer = 2000;  // Unified 2s buffer for all challenges
        const timeoutDuration = challenge.duration + timeoutBuffer;

        this.logWithLevel('INFO', `⏱️ Challenge timeout configured`);
        this.logWithLevel('DEBUG', `⏰ Timeout details`, {
            baseDuration: challenge.duration,
            bufferTime: timeoutBuffer,
            totalTimeout: timeoutDuration,
            reason: 'Unified 2s buffer for slow frame processing (3+ seconds per frame)'
        });

        // Speak instruction
        if (this.ttsEnabled) {
            this.logWithLevel('INFO', `🔊 Speaking voice instruction`);
            this.logWithLevel('DEBUG', `� TTS details`, {
                text: challenge.voice,
                length: challenge.voice.length,
                language: 'tr',
                enabled: true
            });
            try {
                // 🔧 FIX: Handle promise rejection
                const ttsStartTime = Date.now();
                Tts.speak(challenge.voice).catch((error) => {
                    const ttsDuration = Date.now() - ttsStartTime;
                    this.logWithLevel('WARN', `⚠️ TTS speak failed`, {
                        duration: ttsDuration,
                        error: error.message,
                        fallback: 'User will see text instruction only'
                    });
                });
                this.logWithLevel('DEBUG', `🔊 TTS speak initiated successfully`);
            } catch (error) {
                this.logWithLevel('WARN', `⚠️ TTS not available`, {
                    error: error.message,
                    fallback: 'Text instruction only mode'
                });
            }
        } else {
            this.logWithLevel('INFO', `🔇 TTS disabled - text instruction only`);
        }

        if (this.callbacks.onChallengeChanged) {
            this.logWithLevel('DEBUG', `📢 Triggering onChallengeChanged callback`);
            try {
                this.callbacks.onChallengeChanged(challenge);
                this.logWithLevel('DEBUG', `✅ onChallengeChanged callback executed successfully`);
            } catch (error) {
                this.logWithLevel('ERROR', `❌ onChallengeChanged callback failed`, {
                    error: error.message,
                    challengeId: challenge.id
                });
            }
        } else {
            this.logWithLevel('TRACE', `⚠️ No onChallengeChanged callback registered`);
        }

        // Clear any existing timeout
        if (this.challengeTimeoutId) {
            this.logWithLevel('DEBUG', `🧹 Clearing existing challenge timeout`);
            clearTimeout(this.challengeTimeoutId);
            this.challengeTimeoutId = null;
        }

        // Set timeout for challenge (optimized for fast mode: 4-4.5s instead of 5s)
        this.logWithLevel('INFO', `⏰ Setting challenge timeout`);
        this.logWithLevel('DEBUG', `⏱️ Timeout schedule`, {
            duration: timeoutDuration,
            challengeId: challenge.id,
            scheduledTime: new Date(Date.now() + timeoutDuration).toISOString(),
            currentTime: new Date().toISOString()
        });

        this.challengeTimeoutId = setTimeout(() => {
            this.logWithLevel('WARN', `⏰ Challenge timeout triggered`);
            this.challengeTimeout(challenge);
        }, timeoutDuration);

        this.logWithLevel('INFO', `✅ Challenge ${this.currentChallengeIndex + 1}/${this.challenges.length} started: "${challenge.instruction}"`);
        this.logWithLevel('DEBUG', `📊 Challenge startup completed in ${Date.now() - startTime}ms`);
    };

    processFaceData = (faces) => {
        const processingStartTime = Date.now();
        this.frameLogCounter++;

        this.logWithLevel('TRACE', `🔄 processFaceData entry point`);
        this.logWithLevel('DEBUG', `📊 Frame processing started`, {
            frameNumber: this.frameLogCounter,
            faceArrayLength: faces?.length || 0,
            currentChallengeIndex: this.currentChallengeIndex,
            totalChallenges: this.challenges.length,
            timestamp: new Date().toISOString()
        });

        // Detailed state logging for debugging
        if (this.shouldLogFrame()) {
            this.logWithLevel('TRACE', `🔧 Internal state snapshot`, {
                faceDetected: this.faceDetected,
                noFaceDetectionCount: this.noFaceDetectionCount,
                challengeStartTime: this.challengeStartTime,
                challengeElapsed: this.challengeStartTime ? Date.now() - this.challengeStartTime : 'N/A',
                blinkState: this.blinkState,
                baselineAngles: this.baselineAngles,
                baselineChallengeIndex: this.baselineChallengeIndex,
                hasTimeout: !!this.challengeTimeoutId
            });
        }

        if (!faces || faces.length === 0) {
            this.logWithLevel('WARN', `⚠️ No faces detected in frame`);
            this.faceDetected = false;
            this.noFaceDetectionCount++;

            // Detailed no-face logging
            if (this.shouldLogFrame()) {
                this.logWithLevel('DEBUG', `📊 No-face detection analysis`, {
                    consecutiveNoFaceCount: this.noFaceDetectionCount,
                    threshold: 20,
                    timeSinceLastFace: this.challengeStartTime ? ((Date.now() - this.challengeStartTime) / 1000).toFixed(1) + 's' : 'N/A',
                    currentChallenge: this.currentChallengeIndex < this.challenges.length ? this.challenges[this.currentChallengeIndex].id : 'none',
                    willFailAt: this.noFaceDetectionCount > 20 ? 'IMMEDIATE' : `frame ${20 - this.noFaceDetectionCount}`
                });
            }

            // Log every 2 seconds when no face
            if (Date.now() - this.lastDebugLogTime > 2000) {
                this.logWithLevel('WARN', `⚠️ EXTENDED NO FACE DETECTION`, {
                    duration: `${(this.noFaceDetectionCount * 0.5).toFixed(1)}s`,
                    frameCount: this.noFaceDetectionCount,
                    threshold: '20 frames (~10s)',
                    action: 'Will fail challenge if continues'
                });
                this.lastDebugLogTime = Date.now();
            }

            // If no face detected for too long (20 consecutive checks ~10s), fail the challenge
            if (this.noFaceDetectionCount > 20 && this.currentChallengeIndex < this.challenges.length) {
                const challenge = this.challenges[this.currentChallengeIndex];
                this.logWithLevel('ERROR', `❌ CHALLENGE FAILED: No face detected`, {
                    consecutiveFrames: this.noFaceDetectionCount,
                    estimatedDuration: `${(this.noFaceDetectionCount * 0.5).toFixed(1)}s`,
                    failedChallenge: challenge.id,
                    challengeInstruction: challenge.instruction,
                    challengeElapsed: this.challengeStartTime ? Date.now() - this.challengeStartTime : 'N/A',
                    reason: 'No face detected for extended period'
                });
                this.challengeCompleted(challenge, false);
            }
            return;
        }

        // Face detected - detailed logging
        this.faceDetected = true;
        const face = faces[0];

        // Log when face is restored after being lost
        if (this.noFaceDetectionCount > 0) {
            this.logWithLevel('INFO', `✅ FACE RESTORED after loss`, {
                lostDuration: `${(this.noFaceDetectionCount * 0.5).toFixed(1)}s`,
                lostFrames: this.noFaceDetectionCount,
                currentChallenge: this.currentChallengeIndex < this.challenges.length ? this.challenges[this.currentChallengeIndex].id : 'none'
            });
        }

        this.noFaceDetectionCount = 0; // Reset counter when face is detected

        // Detailed face data logging
        if (this.shouldLogFrame()) {
            this.logWithLevel('TRACE', `👤 Face data analysis`, {
                faceId: face.id || 'unknown',
                hasBounds: !!face.bounds,
                hasContours: !!face.contours,
                hasLandmarks: !!face.landmarks,
                hasEulerX: face.eulerX !== undefined,
                hasEulerY: face.eulerY !== undefined,
                hasEulerZ: face.eulerZ !== undefined,
                leftEyeOpenProb: face.leftEyeOpenProbability !== undefined,
                rightEyeOpenProb: face.rightEyeOpenProbability !== undefined,
                smilingProb: face.smilingProbability !== undefined,
                eulerX: face.eulerX,
                eulerY: face.eulerY,
                eulerZ: face.eulerZ
            });
        }

        // Store current face data for photo capture
        this.currentFaceData = face;

        // Set baseline angles on first face detection for this challenge
        // This makes all movements relative to the starting position
        // CRITICAL: Must set baseline for EACH challenge (check both null AND index mismatch)
        const needsBaseline = (this.baselineAngles === null) ||
            (this.baselineChallengeIndex !== this.currentChallengeIndex);

        if (needsBaseline && this.currentChallengeIndex < this.challenges.length) {
            const baselineStartTime = Date.now();
            const challengeName = this.challenges[this.currentChallengeIndex]?.id || 'unknown';

            this.baselineAngles = {
                x: face.xAngle || 0,
                y: face.yAngle || 0,
                z: face.zAngle || 0,
            };
            this.baselineChallengeIndex = this.currentChallengeIndex;

            this.logWithLevel('INFO', `📍 BASELINE SET for challenge`, {
                challengeIndex: this.currentChallengeIndex,
                challengeId: challengeName,
                baselineAngles: {
                    x: `${this.baselineAngles.x.toFixed(1)}°`,
                    y: `${this.baselineAngles.y.toFixed(1)}°`,
                    z: `${this.baselineAngles.z.toFixed(1)}°`
                },
                rawAngles: {
                    x: face.xAngle,
                    y: face.yAngle,
                    z: face.zAngle
                },
                frameNumber: this.frameLogCounter,
                timeSinceChallengeStart: this.challengeStartTime ? Date.now() - this.challengeStartTime : 'N/A',
                setupTime: Date.now() - baselineStartTime
            });

            this.logWithLevel('DEBUG', `📐 Baseline quality metrics`, {
                faceConfidence: face.confidence || 'N/A',
                faceSize: face.frame ? `${face.frame.width}x${face.frame.height}` : 'N/A',
                hasAllAngles: face.xAngle !== undefined && face.yAngle !== undefined && face.zAngle !== undefined,
                angleRange: {
                    xRange: this.baselineAngles.x !== 0 ? 'offset' : 'centered',
                    yRange: this.baselineAngles.y !== 0 ? 'offset' : 'centered',
                    zRange: this.baselineAngles.z !== 0 ? 'offset' : 'centered'
                }
            });
        } else if (this.baselineAngles) {
            // Log baseline reference info for debugging
            if (this.shouldLogFrame()) {
                this.logWithLevel('TRACE', `📐 Using existing baseline`, {
                    baselineChallenge: this.baselineChallengeIndex,
                    currentChallenge: this.currentChallengeIndex,
                    baselineSetFor: this.challenges[this.baselineChallengeIndex]?.id || 'unknown',
                    baselineAngles: {
                        x: `${this.baselineAngles.x.toFixed(1)}°`,
                        y: `${this.baselineAngles.y.toFixed(1)}°`,
                        z: `${this.baselineAngles.z.toFixed(1)}°`
                    }
                });
            }
        }

        // Enhanced angle and probability logging with performance metrics
        const now = Date.now();
        if (now - this.lastDebugLogTime > 1000) {
            const currentAngles = {
                x: face.xAngle,
                y: face.yAngle,
                z: face.zAngle
            };

            const relativeAngles = this.baselineAngles ? {
                x: currentAngles.x - this.baselineAngles.x,
                y: currentAngles.y - this.baselineAngles.y,
                z: currentAngles.z - this.baselineAngles.z
            } : null;

            this.logWithLevel('DEBUG', `📐 Real-time face tracking data`, {
                absoluteAngles: {
                    x: this.formatAngle(currentAngles.x),
                    y: this.formatAngle(currentAngles.y),
                    z: this.formatAngle(currentAngles.z)
                },
                relativeAngles: relativeAngles ? {
                    x: this.formatDelta(relativeAngles.x),
                    y: this.formatDelta(relativeAngles.y),
                    z: this.formatDelta(relativeAngles.z)
                } : 'N/A',
                eyeProbabilities: {
                    left: this.formatProb(face.leftEyeOpenProbability),
                    right: this.formatProb(face.rightEyeOpenProbability)
                },
                smileProbability: this.formatProb(face.smilingProbability),
                faceFrame: face.frame ? `${face.frame.width}x${face.frame.height}` : 'N/A',
                challengeElapsed: this.challengeStartTime ? now - this.challengeStartTime : 'N/A',
                frameProcessingTime: now - processingStartTime
            });
            this.lastDebugLogTime = now;
        }

        // Check if we have an active challenge
        if (this.currentChallengeIndex >= this.challenges.length) {
            this.logWithLevel('INFO', `⚠️ No active challenge - all challenges completed`);
            this.logWithLevel('DEBUG', `📊 Final processing stats`, {
                frameNumber: this.frameLogCounter,
                processingTime: Date.now() - processingStartTime,
                totalResults: this.results.length,
                photosCaptured: this.capturedPhotos.length
            });
            return;
        }

        const challenge = this.challenges[this.currentChallengeIndex];
        const detectionStartTime = Date.now();

        this.logWithLevel('DEBUG', `🎯 Starting challenge detection`, {
            challengeId: challenge.id,
            instruction: challenge.instruction,
            frameNumber: this.frameLogCounter,
            challengeElapsed: this.challengeStartTime ? Date.now() - this.challengeStartTime : 'N/A',
            hasBaseline: !!this.baselineAngles,
            baselineChallenge: this.baselineChallengeIndex
        });

        const detected = this.detectChallengeCompletion(face, challenge);
        const detectionTime = Date.now() - detectionStartTime;

        this.logWithLevel('DEBUG', `🔍 Challenge detection completed`, {
            challengeId: challenge.id,
            result: detected ? '✅ SUCCESS' : '⏳ waiting...',
            detectionTime: detectionTime,
            totalProcessingTime: Date.now() - processingStartTime,
            frameNumber: this.frameLogCounter
        });

        if (detected) {
            this.logWithLevel('INFO', `🎉 Challenge COMPLETED successfully!`, {
                challengeId: challenge.id,
                instruction: challenge.instruction,
                completionTime: this.challengeStartTime ? Date.now() - this.challengeStartTime : 'N/A',
                frameNumber: this.frameLogCounter,
                totalFramesProcessed: this.frameLogCounter
            });

            // Capture photo immediately when challenge is completed (if face comparison enabled)
            if (this.enableFaceComparison && this.referenceFaceData && this.currentFaceData) {
                this.logWithLevel('INFO', `📸 Triggering completion photo capture`);
                this.logWithLevel('DEBUG', `📸 Photo capture details`, {
                    hasReferencePhoto: !!this.referenceFaceData,
                    hasCurrentFaceData: !!this.currentFaceData,
                    photoChance: this.photoCaptureChance,
                    captureTrigger: 'challenge_completion'
                });
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
        // Reduced from 500ms to 300ms because frame processing is already slow (3+ seconds per frame)
        if (timeSinceStart < 300) {
            console.log('[LivenessModule] ⏸️ Too early, waiting... (need 300ms)');
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
                    // Eyes are "open" when BOTH are clearly open (>0.65)
                    // Eyes are "closed" when BOTH are clearly closed (<0.4)
                    // Adjusted for better real-world performance
                    const eyesOpen = leftEyeOpen > 0.65 && rightEyeOpen > 0.65;
                    const eyesClosed = leftEyeOpen < 0.4 && rightEyeOpen < 0.4;

                    this.logBlinkDebug({
                        elapsedMs: timeSinceStart,
                        state: this.blinkState,
                        leftProb: leftEyeOpen,
                        rightProb: rightEyeOpen,
                        eyesOpen,
                        eyesClosed,
                    });

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
                // RELATIVE ANGLE SYSTEM: Measure turn from baseline
                // FIX: ML Kit Y-axis goes NEGATIVE when turning LEFT (not positive!)
                const yAngleLeft = face.yAngle;
                const baselineY = this.baselineAngles?.y || 0;
                const relativeYLeft = yAngleLeft - baselineY; // Negative = LEFT turn (ML Kit convention)
                this.logPoseDebug({
                    challengeId: 'turnHeadLeft',
                    axisLabel: 'Y',
                    baseline: baselineY,
                    current: yAngleLeft,
                    relative: relativeYLeft,
                    thresholdText: '< -10° (LEFT)',
                    elapsedMs: now - this.challengeStartTime,
                });

                if (yAngleLeft !== undefined) {
                    // LEFT turn = NEGATIVE Y angle in ML Kit
                    if (relativeYLeft < -10) {
                        console.log(`[LivenessModule][turnHeadLeft] ✅ Movement detected: ${Math.abs(relativeYLeft).toFixed(1)}° LEFT`);
                        return true;
                    } else {
                        this.logPoseShortfall({
                            challengeId: 'turnHeadLeft',
                            needed: -10,
                            relative: relativeYLeft,
                            directionText: 'turn head further LEFT (negative Y)',
                        });
                    }
                }
                break;

            case 'turnHeadRight':
                const yAngleRight = face.yAngle;
                const baselineYRight = this.baselineAngles?.y || 0;
                const relativeYRight = yAngleRight - baselineYRight; // Positive = RIGHT turn (ML Kit convention)
                this.logPoseDebug({
                    challengeId: 'turnHeadRight',
                    axisLabel: 'Y',
                    baseline: baselineYRight,
                    current: yAngleRight,
                    relative: relativeYRight,
                    thresholdText: '> +10° (RIGHT)',
                    elapsedMs: now - this.challengeStartTime,
                });

                if (yAngleRight !== undefined) {
                    // RIGHT turn = POSITIVE Y angle in ML Kit (relaxed from -5 to +10)
                    if (relativeYRight > 10) {
                        console.log(`[LivenessModule][turnHeadRight] ✅ Movement detected: ${relativeYRight.toFixed(1)}° RIGHT`);
                        return true;
                    } else {
                        this.logPoseShortfall({
                            challengeId: 'turnHeadRight',
                            needed: 10,
                            relative: relativeYRight,
                            directionText: 'turn head further RIGHT (positive Y)',
                        });
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
                const xAngleUp = face.xAngle;
                const baselineX = this.baselineAngles?.x || 0;
                const relativeXUp = xAngleUp - baselineX; // POSITIVE = UP tilt (ML Kit standard)
                this.logPoseDebug({
                    challengeId: 'lookUp',
                    axisLabel: 'X',
                    baseline: baselineX,
                    current: xAngleUp,
                    relative: relativeXUp,
                    thresholdText: '> +10° (UP tilt)',
                    elapsedMs: now - this.challengeStartTime,
                });

                if (xAngleUp !== undefined) {
                    // ML Kit rotationX: POSITIVE = head tilted UP, NEGATIVE = head tilted DOWN
                    if (relativeXUp > 10) {
                        console.log(`[LivenessModule][lookUp] ✅ Movement detected: ${relativeXUp.toFixed(1)}° UP`);
                        return true;
                    } else {
                        this.logPoseShortfall({
                            challengeId: 'lookUp',
                            needed: 10,
                            relative: relativeXUp,
                            directionText: 'tilt head UP (positive X)',
                        });
                    }
                }
                break;

            case 'lookDown':
                // RELATIVE ANGLE SYSTEM: Measure tilt from baseline
                // User starts with any head position → baseline set to 0°
                // Then we measure how much they tilted DOWN from that position
                const xAngleDown = face.xAngle;
                const baselineXDown = this.baselineAngles?.x || 0;
                const relativeXDown = xAngleDown - baselineXDown; // NEGATIVE = DOWN tilt (ML Kit standard)

                console.log(`[LivenessModule] 📊 lookDown check:`);
                console.log(`[LivenessModule]    Current: ${xAngleDown?.toFixed(1)}°`);
                console.log(`[LivenessModule]    Baseline: ${baselineXDown.toFixed(1)}°`);
                console.log(`[LivenessModule]    Relative: ${relativeXDown.toFixed(1)}° (movement from start)`);
                console.log(`[LivenessModule] 🎯 Threshold: relative < -5° (DOWN tilt)`);

                if (xAngleDown !== undefined) {
                    // ML Kit rotationX: POSITIVE = head tilted UP, NEGATIVE = head tilted DOWN
                    // User must tilt at least 5° DOWN (negative) from starting position
                    if (relativeXDown < -5) {
                        console.log(`✅ lookDown detected: tilted ${Math.abs(relativeXDown).toFixed(1)}° DOWN from baseline`);
                        return true;
                    } else {
                        console.log(`[LivenessModule] ❌ Failed: ${relativeXDown.toFixed(1)}° >= -5° (need more DOWN tilt)`);
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
        const completionStartTime = Date.now();

        this.logWithLevel('INFO', `🏁 Challenge completion process started`, {
            challengeId: challenge.id,
            instruction: challenge.instruction,
            result: success ? 'SUCCESS' : 'FAILED',
            timestamp: new Date().toISOString()
        });

        // Clear challenge timeout to prevent duplicate execution
        if (this.challengeTimeoutId) {
            this.logWithLevel('DEBUG', `🧹 Clearing challenge timeout`);
            clearTimeout(this.challengeTimeoutId);
            this.challengeTimeoutId = null;
        } else {
            this.logWithLevel('TRACE', `⚠️ No active timeout to clear`);
        }

        const duration = Date.now() - this.challengeStartTime;
        const successCount = this.results.filter(r => r.success).length;
        const totalCount = this.results.length;

        this.logWithLevel('INFO', `${success ? '✅' : '❌'} Challenge completed`, {
            challengeId: challenge.id,
            instruction: challenge.instruction,
            result: success ? 'COMPLETED' : 'FAILED',
            duration: duration,
            durationFormatted: `${(duration / 1000).toFixed(1)}s`,
            expectedDuration: challenge.duration,
            durationVsExpected: duration > challenge.duration ? 'exceeded' : 'within',
            frameNumber: this.frameLogCounter
        });

        // Record result with detailed logging
        const result = {
            challenge: challenge.id,
            success: success,
            timestamp: Date.now(),
            duration: duration,
            framesProcessed: this.frameLogCounter,
            baselineAngles: this.baselineAngles ? {
                x: this.baselineAngles.x.toFixed(1),
                y: this.baselineAngles.y.toFixed(1),
                z: this.baselineAngles.z.toFixed(1)
            } : null
        };

        this.results.push(result);

        this.logWithLevel('DEBUG', `📊 Progress updated`, {
            completedChallenges: totalCount + 1,
            successfulChallenges: successCount + (success ? 1 : 0),
            successRate: totalCount > 0 ? `${((successCount + (success ? 1 : 0)) / (totalCount + 1) * 100).toFixed(1)}%` : 'N/A',
            totalChallenges: this.challenges.length,
            remainingChallenges: this.challenges.length - (this.currentChallengeIndex + 1)
        });

        // Detailed state cleanup logging
        this.logWithLevel('DEBUG', `🔄 State cleanup before next challenge`, {
            currentChallengeIndex: this.currentChallengeIndex,
            nextChallengeIndex: this.currentChallengeIndex + 1,
            willResetBaseline: true,
            willResetBlinkState: true,
            willResetFrameCounter: false
        });

        // Reset state for next challenge
        this.baselineAngles = null;
        this.blinkState = null;

        // Move to next challenge
        this.currentChallengeIndex++;

        // Small delay before next challenge with enhanced logging
        const delayTime = 1000;
        this.logWithLevel('INFO', `⏰ Scheduling next challenge`, {
            delay: delayTime,
            delayFormatted: `${delayTime / 1000}s`,
            nextChallengeIndex: this.currentChallengeIndex,
            nextChallengeId: this.currentChallengeIndex < this.challenges.length ? this.challenges[this.currentChallengeIndex].id : 'none',
            isFinalChallenge: this.currentChallengeIndex >= this.challenges.length
        });

        setTimeout(() => {
            this.logWithLevel('DEBUG', `⏰ Delay completed, starting next challenge`);
            this.startNextChallenge();
        }, delayTime);

        this.logWithLevel('DEBUG', `📊 Challenge completion process finished in ${Date.now() - completionStartTime}ms`);
    };

    challengeTimeout = (challenge) => {
        const timeoutStartTime = Date.now();

        this.logWithLevel('WARN', `⏰ Challenge timeout triggered`, {
            challengeId: challenge.id,
            instruction: challenge.instruction,
            timestamp: new Date().toISOString(),
            expectedDuration: challenge.duration,
            actualDuration: this.challengeStartTime ? Date.now() - this.challengeStartTime : 'N/A'
        });

        // Check if this challenge is still active
        if (this.currentChallengeIndex < this.challenges.length &&
            this.challenges[this.currentChallengeIndex].id === challenge.id) {

            this.logWithLevel('ERROR', `❌ Challenge FAILED due to timeout`, {
                challengeId: challenge.id,
                instruction: challenge.instruction,
                timeoutReason: 'Challenge not completed within allowed time',
                expectedDuration: challenge.duration,
                actualDuration: this.challengeStartTime ? Date.now() - this.challengeStartTime : 'N/A',
                frameNumber: this.frameLogCounter,
                faceDetected: this.faceDetected,
                baselineSet: !!this.baselineAngles,
                lastKnownAngles: this.currentFaceData ? {
                    x: this.formatAngle(this.currentFaceData.xAngle),
                    y: this.formatAngle(this.currentFaceData.yAngle),
                    z: this.formatAngle(this.currentFaceData.zAngle)
                } : 'N/A'
            });

            // Detailed timeout analysis
            if (this.challengeStartTime) {
                const elapsed = Date.now() - this.challengeStartTime;
                const efficiency = (elapsed / challenge.duration) * 100;

                this.logWithLevel('DEBUG', `📊 Timeout analysis`, {
                    timeEfficiency: `${efficiency.toFixed(1)}%`,
                    timeUsed: `${elapsed}ms`,
                    timeAllowed: `${challenge.duration}ms`,
                    timeWasted: `${Math.max(0, elapsed - challenge.duration)}ms`,
                    framesProcessed: this.frameLogCounter,
                    avgFrameTime: this.frameLogCounter > 0 ? `${(elapsed / this.frameLogCounter).toFixed(1)}ms` : 'N/A',
                    possibleCauses: [
                        'User movement too slow',
                        'Face detection issues',
                        'Baseline not properly set',
                        'Thresholds too strict',
                        'Camera/ML Kit performance'
                    ]
                });
            }

            this.challengeCompleted(challenge, false);
        } else {
            this.logWithLevel('WARN', `⚠️ Timeout ignored - challenge no longer active`, {
                timeoutChallengeId: challenge.id,
                currentChallengeId: this.currentChallengeIndex < this.challenges.length ? this.challenges[this.currentChallengeIndex].id : 'none',
                reason: 'Challenge already completed or replaced'
            });
        }

        this.logWithLevel('DEBUG', `📊 Timeout handling completed in ${Date.now() - timeoutStartTime}ms`);
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
            success: passed, // For UI compatibility (VerificationFlowScreen checks .success)
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
