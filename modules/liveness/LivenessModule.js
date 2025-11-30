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

        // Set timeout for challenge (increased to 5 seconds)
        setTimeout(() => {
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
