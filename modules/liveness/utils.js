/**
 * Liveness Detection Utilities - Day 11 Refactored
 * Common functions for frame analysis, logging, and validation
 */

const Logger = require("../../utils/logger");

/**
 * Frame Analysis Utilities
 */
const FrameAnalysis = {
  /**
   * Calculate face contour complexity for 3D depth analysis
   * @param {object} face - Face detection data
   * @returns {number} - Complexity score (0-1)
   */
  calculateContourComplexity(face) {
    if (!face.contours || !face.contours.face) {
      return 0;
    }

    const contourPoints = face.contours.face;
    let complexity = 0;
    
    // Calculate variance in contour point distances
    for (let i = 1; i < contourPoints.length; i++) {
      const prev = contourPoints[i - 1];
      const curr = contourPoints[i];
      const distance = Math.sqrt(
        Math.pow(curr.x - prev.x, 2) + Math.pow(curr.y - prev.y, 2)
      );
      complexity += distance;
    }

    return Math.min(complexity / (contourPoints.length * 100), 1);
  },

  /**
   * Analyze depth variance from face landmarks
   * @param {object} face - Face detection data
   * @returns {number} - Depth variance score (0-1)
   */
  calculateDepthVariance(face) {
    if (!face.landmarks) {
      return 0;
    }

    const landmarks = Object.values(face.landmarks);
    const zValues = landmarks.map(landmark => landmark.z || 0);
    
    if (zValues.length < 2) return 0;

    const mean = zValues.reduce((sum, z) => sum + z, 0) / zValues.length;
    const variance = zValues.reduce((sum, z) => sum + Math.pow(z - mean, 2), 0) / zValues.length;
    
    return Math.min(Math.sqrt(variance) / 50, 1);
  },

  /**
   * Detect texture patterns for screen/print detection
   * @param {object} frameData - Frame analysis data
   * @returns {object} - Texture analysis results
   */
  analyzeTexture(frameData) {
    // Simulate texture analysis (in real implementation, would analyze pixel patterns)
    const mockVariance = Math.random() * 0.5 + 0.3;
    const mockPixelation = Math.random() * 0.4 + 0.2;
    const mockReflection = Math.random() * 0.3 + 0.1;

    return {
      variance: mockVariance,
      pixelationScore: mockPixelation,
      reflectionScore: mockReflection,
      isScreenLike: mockPixelation > 0.8 || mockReflection > 0.7,
      isPrintLike: mockVariance < 0.25
    };
  },

  /**
   * Calculate movement smoothness between frames
   * @param {Array} movementHistory - Array of movement data
   * @returns {number} - Smoothness score (0-1)
   */
  calculateMovementSmoothness(movementHistory) {
    if (movementHistory.length < 3) return 0.5;

    let smoothness = 0;
    for (let i = 2; i < movementHistory.length; i++) {
      const prev2 = movementHistory[i - 2];
      const prev1 = movementHistory[i - 1];
      const curr = movementHistory[i];

      // Calculate acceleration changes
      const accel1 = {
        x: prev1.x - prev2.x,
        y: prev1.y - prev2.y
      };
      const accel2 = {
        x: curr.x - prev1.x,
        y: curr.y - prev1.y
      };

      const accelChange = Math.sqrt(
        Math.pow(accel2.x - accel1.x, 2) + Math.pow(accel2.y - accel1.y, 2)
      );

      smoothness += Math.max(0, 1 - accelChange / 10);
    }

    return smoothness / (movementHistory.length - 2);
  }
};

/**
 * Eye Movement Analysis Utilities
 */
const EyeAnalysis = {
  /**
   * Detect blink patterns and validate naturalness
   * @param {object} leftEye - Left eye data
   * @param {object} rightEye - Right eye data
   * @param {number} timestamp - Current timestamp
   * @returns {object} - Blink analysis results
   */
  analyzeBlink(leftEye, rightEye, timestamp) {
    const leftOpen = leftEye.openProbability > 0.8;
    const rightOpen = rightEye.openProbability > 0.8;
    const bothClosed = leftEye.openProbability < 0.3 && rightEye.openProbability < 0.3;

    return {
      isBlinking: bothClosed,
      eyesSynchronized: Math.abs(leftEye.openProbability - rightEye.openProbability) < 0.2,
      blinkQuality: bothClosed ? 1 : (leftOpen && rightOpen ? 0 : 0.5),
      timestamp,
      leftEyeOpen: leftOpen,
      rightEyeOpen: rightOpen
    };
  },

  /**
   * Validate blink duration and patterns
   * @param {Array} blinkHistory - Array of blink events
   * @returns {object} - Blink validation results
   */
  validateBlinkPattern(blinkHistory) {
    if (blinkHistory.length < 2) {
      return { isValid: false, reason: "Insufficient blink data" };
    }

    const durations = [];
    let currentBlink = null;

    for (const blink of blinkHistory) {
      if (blink.isBlinking && !currentBlink) {
        currentBlink = blink.timestamp;
      } else if (!blink.isBlinking && currentBlink) {
        durations.push(blink.timestamp - currentBlink);
        currentBlink = null;
      }
    }

    if (durations.length === 0) {
      return { isValid: false, reason: "No complete blinks detected" };
    }

    const avgDuration = durations.reduce((sum, d) => sum + d, 0) / durations.length;
    const isNaturalDuration = avgDuration >= 100 && avgDuration <= 400;

    return {
      isValid: isNaturalDuration,
      avgDuration,
      blinkCount: durations.length,
      reason: isNaturalDuration ? "Natural blink pattern" : "Unnatural blink duration"
    };
  }
};

/**
 * Logging Utilities for Liveness Detection
 */
const LivenessLogger = {
  /**
   * Log liveness detection event with structured data
   * @param {string} event - Event type
   * @param {object} data - Event data
   * @param {string} level - Log level (info, warn, error)
   */
  logEvent(event, data = {}, level = 'info') {
    const logData = {
      event,
      timestamp: new Date().toISOString(),
      module: 'liveness',
      ...data
    };

    Logger[level](`[LIVENESS] ${event}`, logData);
  },

  /**
   * Log validation result with details
   * @param {string} commandType - Command being validated
   * @param {object} result - Validation result
   */
  logValidation(commandType, result) {
    this.logEvent('validation_result', {
      commandType,
      isValid: result.isValid,
      confidence: result.confidence,
      reason: result.reason,
      detectionType: result.detectionType
    });
  },

  /**
   * Log anti-spoofing detection
   * @param {object} spoofResult - Anti-spoofing result
   */
  logAntiSpoofing(spoofResult) {
    this.logEvent('anti_spoofing_check', {
      isReal: spoofResult.isReal,
      confidence: spoofResult.confidence,
      reasons: spoofResult.reasons,
      analysisDetails: spoofResult.analysis
    }, spoofResult.isReal ? 'info' : 'warn');
  },

  /**
   * Log performance metrics
   * @param {string} operation - Operation name
   * @param {number} duration - Duration in ms
   * @param {object} metrics - Additional metrics
   */
  logPerformance(operation, duration, metrics = {}) {
    this.logEvent('performance_metric', {
      operation,
      duration,
      ...metrics
    });
  }
};

/**
 * Validation Utilities
 */
const ValidationUtils = {
  /**
   * Calculate confidence score based on multiple factors
   * @param {object} factors - Confidence factors
   * @returns {number} - Overall confidence (0-1)
   */
  calculateConfidence(factors) {
    const {
      faceDetection = 0,
      motionDetection = 0,
      antiSpoofing = 0,
      temporalConsistency = 0
    } = factors;

    // Weighted average of confidence factors
    const weights = {
      faceDetection: 0.3,
      motionDetection: 0.3,
      antiSpoofing: 0.25,
      temporalConsistency: 0.15
    };

    return (
      faceDetection * weights.faceDetection +
      motionDetection * weights.motionDetection +
      antiSpoofing * weights.antiSpoofing +
      temporalConsistency * weights.temporalConsistency
    );
  },

  /**
   * Validate command execution timing
   * @param {number} startTime - Command start timestamp
   * @param {number} endTime - Command end timestamp
   * @param {object} limits - Time limits
   * @returns {object} - Timing validation result
   */
  validateTiming(startTime, endTime, limits = {}) {
    const duration = endTime - startTime;
    const minTime = limits.minTime || 500;
    const maxTime = limits.maxTime || 5000;

    return {
      isValid: duration >= minTime && duration <= maxTime,
      duration,
      isTooFast: duration < minTime,
      isTooSlow: duration > maxTime,
      reason: duration < minTime ? 'Too fast' : 
              duration > maxTime ? 'Too slow' : 'Valid timing'
    };
  },

  /**
   * Generate mock validation result for testing
   * @param {string} commandType - Command type
   * @param {number} baseSuccess - Base success probability
   * @returns {object} - Mock validation result
   */
  generateMockResult(commandType, baseSuccess = 0.8) {
    const confidence = Math.random() * 0.3 + baseSuccess;
    const isValid = confidence > 0.6;

    return {
      isValid,
      confidence,
      commandType,
      detectionType: `mock_${commandType}`,
      timestamp: Date.now(),
      mockData: true,
      factors: {
        faceDetection: Math.random() * 0.4 + 0.6,
        motionDetection: confidence,
        antiSpoofing: Math.random() * 0.3 + 0.7,
        temporalConsistency: Math.random() * 0.2 + 0.8
      }
    };
  }
};

module.exports = {
  FrameAnalysis,
  EyeAnalysis,
  LivenessLogger,
  ValidationUtils
};
