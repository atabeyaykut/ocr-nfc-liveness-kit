/**
 * Liveness Detection Module
 * Canlılık testi modülü - Gerçek yüz algılama ve doğrulama
 * Android 11 uyumlu
 */

import React, { useState, useEffect, useRef } from 'react';
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

        // Face comparison for NFC verification
        this.capturedPhotos = []; // Photos captured during liveness test
        this.referencePhotoUri = null; // NFC photo for comparison
        this.referenceFaceData = null; // Face data extracted from NFC photo
        this.enableFaceComparison = false;
        this.photoCaptureChance = 0.6; // 60% chance to capture photo during each challenge
        this.currentFaceData = null; // Current face data from processFaceData
        this.similarityThreshold = 0.75; // 75% minimum similarity for match
    }

    // API Methods
    startLiveness = async (challenges = ['lookStraight', 'turnHeadRight', 'turnHeadLeft', 'lookUp', 'lookDown']) => {
        try {
            console.log('[LivenessModule] 🚀 Starting liveness test...');
            console.log('[LivenessModule] 📋 Requested challenges:', challenges);

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
        console.log('[LivenessModule] ⏹️ Stopping liveness test...');

        // Clear any pending challenge timeout
        if (this.challengeTimeoutId) {
            clearTimeout(this.challengeTimeoutId);
            this.challengeTimeoutId = null;
        }

        // 🔧 FIX: Handle TTS stop promise rejection
        try {
            Tts.stop().catch(() => {
                // TTS not available, ignore
            });
        } catch (error) {
            // TTS not available, ignore
        }

        this.challenges = [];
        this.currentChallengeIndex = 0;
        this.results = [];
        this.capturedPhotos = []; // Clean up captured photos
        console.log('[LivenessModule] ✅ Liveness stopped and reset');

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
            console.log(`[LivenessModule] 📸 Loading reference photo: ${photoUri}`);

            // Fix Android file path
            const fixedPath = Platform.OS === 'android' && !photoUri.startsWith('file://')
                ? `file://${photoUri}`
                : photoUri;

            // Extract face data from NFC photo
            const faces = await FaceDetection.detect(fixedPath, {
                performanceMode: 'accurate',
                landmarkMode: 'all',
                classificationMode: 'all',
                contourMode: 'all',
            });

            if (!faces || faces.length === 0) {
                throw new Error('NFC fotoğrafında yüz algılanamadı');
            }

            // Store first face data as reference
            this.referenceFaceData = faces[0];
            console.log(`[LivenessModule] ✅ Reference face data extracted successfully`);
            console.log(`[LivenessModule] 📊 Reference face bounds: ${JSON.stringify(this.referenceFaceData.frame)}`);

        } catch (error) {
            console.error('[LivenessModule] ❌ Failed to load reference photo:', error);
            this.enableFaceComparison = false;
            this.referenceFaceData = null;
            throw error;
        }
    };

    capturePhotoForComparison = (photoUri, faceData) => {
        if (!this.enableFaceComparison || !this.referenceFaceData) return;

        // Calculate similarity immediately
        const similarity = this.compareFaces(this.referenceFaceData, faceData);

        const photoData = {
            uri: photoUri,
            timestamp: Date.now(),
            challenge: this.challenges[this.currentChallengeIndex]?.id,
            faceData: faceData,
            similarity: similarity, // Store similarity score
        };

        this.capturedPhotos.push(photoData);
        console.log(`[LivenessModule] 📷 Photo captured for comparison (${this.capturedPhotos.length} total) - similarity: ${(similarity * 100).toFixed(1)}%`);

        if (this.callbacks.onPhotoCapture) {
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
     */
    compareFaceGeometry = (frame1, frame2) => {
        const width1 = frame1.width;
        const height1 = frame1.height;
        const width2 = frame2.width;
        const height2 = frame2.height;

        // Aspect ratio similarity
        const aspectRatio1 = width1 / height1;
        const aspectRatio2 = width2 / height2;
        const aspectDiff = Math.abs(aspectRatio1 - aspectRatio2);
        const aspectScore = Math.max(0, 1 - aspectDiff * 2);

        // Size similarity (normalized)
        const size1 = width1 * height1;
        const size2 = width2 * height2;
        const sizeRatio = Math.min(size1, size2) / Math.max(size1, size2);

        return (aspectScore + sizeRatio) / 2;
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

        console.log(`[LivenessModule] 🎯 Starting challenge ${this.currentChallengeIndex + 1}/${this.challenges.length}: "${challenge.instruction}"`);
        console.log(`[LivenessModule] ⏱️ Challenge timeout: ${challenge.duration + 2000}ms`);

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

        // Set timeout for challenge (increased to 5 seconds)
        this.challengeTimeoutId = setTimeout(() => {
            this.challengeTimeout(challenge);
        }, challenge.duration + 2000);
    };

    processFaceData = (faces) => {
        if (!faces || faces.length === 0) {
            this.faceDetected = false;
            this.noFaceDetectionCount++;

            // If no face detected for too long (10 consecutive checks), fail the challenge
            if (this.noFaceDetectionCount > 10 && this.currentChallengeIndex < this.challenges.length) {
                const challenge = this.challenges[this.currentChallengeIndex];
                console.log(`[LivenessModule] ❌ Challenge failed: No face detected for ${this.noFaceDetectionCount} frames`);
                this.challengeCompleted(challenge, false);
            }
            return;
        }

        this.faceDetected = true;
        this.noFaceDetectionCount = 0; // Reset counter when face is detected
        const face = faces[0];

        // Store current face data for photo capture
        this.currentFaceData = face;

        // Debug log angles every 1 second
        const now = Date.now();
        if (now - this.lastDebugLogTime > 1000) {
            console.log(`📐 Face angles: x=${face.xAngle?.toFixed(1) || 'N/A'}°, y=${face.yAngle?.toFixed(1) || 'N/A'}°, z=${face.zAngle?.toFixed(1) || 'N/A'}°`);
            this.lastDebugLogTime = now;
        }

        // Check if we have an active challenge
        if (this.currentChallengeIndex >= this.challenges.length) {
            return;
        }

        const challenge = this.challenges[this.currentChallengeIndex];
        const detected = this.detectChallengeCompletion(face, challenge);

        if (detected) {
            this.challengeCompleted(challenge, true);
        }
    };

    detectChallengeCompletion = (face, challenge) => {
        const now = Date.now();

        // Make sure enough time has passed since challenge started
        if (now - this.challengeStartTime < 500) {
            return false;
        }

        switch (challenge.id) {
            case 'lookStraight':
                // Detect looking straight - head should be neutral
                const xAngleStraight = face.xAngle;
                const yAngleStraight = face.yAngle;

                if (xAngleStraight !== undefined && yAngleStraight !== undefined) {
                    // Both angles should be close to 0 (within ±15 degrees for easier detection)
                    if (Math.abs(xAngleStraight) < 15 && Math.abs(yAngleStraight) < 15) {
                        console.log(`✅ lookStraight detected: x=${xAngleStraight.toFixed(1)}°, y=${yAngleStraight.toFixed(1)}°`);
                        return true;
                    }
                }
                break;

            case 'blink':
                // Detect eye blink - both eyes should be closed
                const leftEyeOpen = face.leftEyeOpenProbability;
                const rightEyeOpen = face.rightEyeOpenProbability;

                if (leftEyeOpen !== undefined && rightEyeOpen !== undefined) {
                    // Both eyes closed (blink detected) - relaxed threshold for natural blinks
                    if (leftEyeOpen < 0.3 && rightEyeOpen < 0.3) {
                        console.log(`✅ blink detected: left=${leftEyeOpen.toFixed(2)}, right=${rightEyeOpen.toFixed(2)}`);
                        return true;
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
                // Detect head turned left - ML Kit: positive yAngle = left turn
                // Reduced threshold to 10° for easier detection with front camera
                const yAngleLeft = face.yAngle;
                if (yAngleLeft !== undefined && yAngleLeft > 10) {
                    console.log(`✅ turnHeadLeft detected: yAngle=${yAngleLeft.toFixed(1)}°`);
                    return true;
                }
                break;

            case 'turnHeadRight':
                // Detect head turned right - ML Kit: negative yAngle = right turn
                // Reduced threshold to -10° for easier detection with front camera
                const yAngleRight = face.yAngle;
                if (yAngleRight !== undefined && yAngleRight < -10) {
                    console.log(`✅ turnHeadRight detected: yAngle=${yAngleRight.toFixed(1)}°`);
                    return true;
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
                // Detect head tilted up - easier threshold (8° for better UX)
                const xAngleUp = face.xAngle;
                if (xAngleUp !== undefined && xAngleUp < -8) {
                    console.log(`✅ lookUp detected: xAngle=${xAngleUp.toFixed(1)}°`);
                    return true;
                }
                break;

            case 'lookDown':
                // Detect head tilted down - easier threshold (10° instead of 12°)
                const xAngleDown = face.xAngle;
                if (xAngleDown !== undefined && xAngleDown > 10) {
                    console.log(`✅ lookDown detected: xAngle=${xAngleDown.toFixed(1)}°`);
                    return true;
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

            // Calculate similarity scores
            const similarities = this.capturedPhotos
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
