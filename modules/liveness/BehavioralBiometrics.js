/**
 * Behavioral Biometrics Module
 * Analyzes user behavior patterns during liveness test
 * Detects automation, replay attacks, and suspicious patterns
 */

const Logger = require('../../utils/logger');

class BehavioralBiometrics {
    constructor(config = {}) {
        this.config = {
            minReactionTime: config.minReactionTime || 300, // ms
            maxReactionTime: config.maxReactionTime || 3000, // ms
            naturalVariance: config.naturalVariance || 0.2,
            suspiciousThreshold: config.suspiciousThreshold || 0.7,
            ...config
        };

        this.sessionData = {
            commandTimes: [],
            deviceMotion: [],
            interactionPattern: [],
            sessionStart: Date.now()
        };

        this.initialized = true;
        // Removed log spam - only log once during first session
    }

    /**
     * Record command execution
     * @param {object} command - Command data
     * @param {number} startTime - Start timestamp
     * @param {number} endTime - End timestamp
     */
    recordCommand(command, startTime, endTime) {
        const reactionTime = endTime - startTime;

        this.sessionData.commandTimes.push({
            command: command.type,
            reactionTime,
            timestamp: endTime,
            relativeTime: endTime - this.sessionData.sessionStart
        });

        Logger.info(`[BehavioralBiometrics] Command "${command.type}" completed in ${reactionTime}ms`);
    }

    /**
     * Record device motion data
     * @param {object} motionData - Gyroscope/Accelerometer data
     */
    recordDeviceMotion(motionData) {
        this.sessionData.deviceMotion.push({
            ...motionData,
            timestamp: Date.now()
        });
    }

    /**
     * Analyze reaction times for human-like patterns
     * @returns {object} - Analysis result
     */
    analyzeReactionTimes() {
        const times = this.sessionData.commandTimes.map(c => c.reactionTime);

        if (times.length < 2) {
            return {
                isHuman: true,
                confidence: 0.5,
                reason: 'Not enough data'
            };
        }

        // Calculate statistics
        const mean = times.reduce((sum, t) => sum + t, 0) / times.length;
        const variance = times.reduce((sum, t) => sum + Math.pow(t - mean, 2), 0) / times.length;
        const stdDev = Math.sqrt(variance);
        const coefficientOfVariation = stdDev / mean;

        Logger.info('[BehavioralBiometrics] Reaction time stats:', {
            mean: mean.toFixed(0),
            stdDev: stdDev.toFixed(0),
            cv: coefficientOfVariation.toFixed(2)
        });

        // Human characteristics:
        // - Variable reaction times (CV > 0.15)
        // - Within reasonable range (300-3000ms)
        // - Not too consistent (automation has CV < 0.1)

        const isWithinRange = times.every(t =>
            t >= this.config.minReactionTime && t <= this.config.maxReactionTime
        );

        const hasNaturalVariance = coefficientOfVariation >= this.config.naturalVariance;
        const notTooConsistent = coefficientOfVariation > 0.1;

        const isHuman = isWithinRange && hasNaturalVariance && notTooConsistent;

        return {
            isHuman,
            confidence: isHuman ? 0.8 : 0.3,
            metrics: {
                mean,
                stdDev,
                coefficientOfVariation,
                isWithinRange,
                hasNaturalVariance,
                notTooConsistent
            },
            reason: !isHuman ? this.getFailureReason({
                isWithinRange,
                hasNaturalVariance,
                notTooConsistent
            }) : 'Human-like pattern'
        };
    }

    /**
     * Get failure reason for reaction time analysis
     * @param {object} checks
     * @returns {string}
     */
    getFailureReason(checks) {
        if (!checks.isWithinRange) return 'Reaction times out of human range';
        if (!checks.hasNaturalVariance) return 'Too little variance (possible automation)';
        if (!checks.notTooConsistent) return 'Too consistent (possible automation)';
        return 'Unknown';
    }

    /**
     * Analyze device motion patterns
     * @returns {object} - Analysis result
     */
    analyzeDeviceMotion() {
        if (this.sessionData.deviceMotion.length < 10) {
            return {
                isNatural: true,
                confidence: 0.5,
                reason: 'Not enough motion data'
            };
        }

        // Calculate motion variance
        const motionVectors = this.sessionData.deviceMotion.map(m => ({
            x: m.x || 0,
            y: m.y || 0,
            z: m.z || 0
        }));

        const magnitudes = motionVectors.map(v =>
            Math.sqrt(v.x * v.x + v.y * v.y + v.z * v.z)
        );

        const meanMagnitude = magnitudes.reduce((sum, m) => sum + m, 0) / magnitudes.length;
        const variance = magnitudes.reduce((sum, m) =>
            sum + Math.pow(m - meanMagnitude, 2), 0
        ) / magnitudes.length;

        // Natural hand holding has some motion (tremor)
        // Stabilizer/tripod has very low motion
        const hasNaturalTremor = variance > 0.01;
        const notStabilized = meanMagnitude > 0.05;

        const isNatural = hasNaturalTremor && notStabilized;

        return {
            isNatural,
            confidence: isNatural ? 0.7 : 0.4,
            metrics: {
                meanMagnitude,
                variance,
                hasNaturalTremor,
                notStabilized
            },
            reason: isNatural ? 'Natural hand motion' : 'Stabilized device (possible fraud)'
        };
    }

    /**
     * Detect sequential patterns (automation indicators)
     * @returns {object} - Pattern detection result
     */
    detectSequentialPatterns() {
        const times = this.sessionData.commandTimes.map(c => c.reactionTime);

        if (times.length < 3) {
            return {
                hasPattern: false,
                confidence: 0.5
            };
        }

        // Calculate differences between consecutive times
        const diffs = [];
        for (let i = 1; i < times.length; i++) {
            diffs.push(Math.abs(times[i] - times[i - 1]));
        }

        const avgDiff = diffs.reduce((sum, d) => sum + d, 0) / diffs.length;

        // If all differences are very similar, it's suspicious
        const diffVariance = diffs.reduce((sum, d) =>
            sum + Math.pow(d - avgDiff, 2), 0
        ) / diffs.length;

        const isSuspicious = diffVariance < 100; // Very consistent timing

        return {
            hasPattern: isSuspicious,
            confidence: isSuspicious ? 0.8 : 0.2,
            metrics: {
                avgDiff,
                diffVariance
            },
            reason: isSuspicious ? 'Suspicious sequential pattern' : 'No sequential pattern'
        };
    }

    /**
     * Analyze complete session
     * @returns {object} - Complete behavioral analysis
     */
    analyzeSession() {
        Logger.info('[BehavioralBiometrics] Analyzing complete session...');

        const reactionAnalysis = this.analyzeReactionTimes();
        const motionAnalysis = this.analyzeDeviceMotion();
        const patternAnalysis = this.detectSequentialPatterns();

        // Weighted scoring
        const scores = [
            { score: reactionAnalysis.confidence, weight: 0.50 },
            { score: motionAnalysis.confidence, weight: 0.30 },
            { score: 1 - patternAnalysis.confidence, weight: 0.20 } // Invert pattern score
        ];

        const totalScore = scores.reduce((sum, s) => sum + s.score * s.weight, 0);
        const isHuman = totalScore >= 0.6;

        Logger.info('[BehavioralBiometrics] Analysis complete:', {
            totalScore: totalScore.toFixed(2),
            isHuman
        });

        return {
            isHuman,
            confidence: totalScore,
            analyses: {
                reactionTimes: reactionAnalysis,
                deviceMotion: motionAnalysis,
                patterns: patternAnalysis
            },
            sessionDuration: Date.now() - this.sessionData.sessionStart,
            commandCount: this.sessionData.commandTimes.length
        };
    }

    /**
     * Get session statistics
     * @returns {object}
     */
    getSessionStatistics() {
        return {
            duration: Date.now() - this.sessionData.sessionStart,
            commandCount: this.sessionData.commandTimes.length,
            motionSamples: this.sessionData.deviceMotion.length,
            averageReactionTime: this.sessionData.commandTimes.length > 0
                ? this.sessionData.commandTimes.reduce((sum, c) => sum + c.reactionTime, 0) /
                this.sessionData.commandTimes.length
                : 0
        };
    }

    /**
     * Reset session data
     */
    reset() {
        this.sessionData = {
            commandTimes: [],
            deviceMotion: [],
            interactionPattern: [],
            sessionStart: Date.now()
        };
        Logger.info('[BehavioralBiometrics] Session reset');
    }

    /**
     * Export session data for logging/analysis
     * @returns {object}
     */
    exportSessionData() {
        return {
            ...this.sessionData,
            duration: Date.now() - this.sessionData.sessionStart,
            exported: new Date().toISOString()
        };
    }
}

module.exports = BehavioralBiometrics;
