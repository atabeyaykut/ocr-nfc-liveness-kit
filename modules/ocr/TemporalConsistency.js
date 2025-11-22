/**
 * Temporal Consistency Module
 * Validates OCR results across multiple frames for consistency
 * Reduces false readings through majority voting
 */

const Logger = require('../../utils/logger');

class TemporalConsistency {
    constructor(config = {}) {
        this.config = {
            minFrames: config.minFrames || 3,
            confidenceThreshold: config.confidenceThreshold || 0.6,
            similarityThreshold: config.similarityThreshold || 0.8,
            ...config
        };

        Logger.info('[TemporalConsistency] Initialized with config:', this.config);
    }

    /**
     * Validate OCR results across multiple frames
     * @param {Array<object>} frameResults - Array of OCR results from different frames
     * @returns {object} - Validated and consistent results
     */
    validateResults(frameResults) {
        if (!frameResults || frameResults.length < this.config.minFrames) {
            Logger.warn('[TemporalConsistency] Not enough frames for validation');
            return null;
        }

        Logger.info(`[TemporalConsistency] Validating ${frameResults.length} frame results`);

        const fields = this.extractFields(frameResults);
        const validatedFields = {};
        const confidenceScores = {};

        for (const fieldName of Object.keys(fields)) {
            const values = fields[fieldName];
            const validation = this.validateField(fieldName, values);

            if (validation.isConsistent) {
                validatedFields[fieldName] = validation.value;
                confidenceScores[fieldName] = validation.confidence;
            } else {
                Logger.warn(`[TemporalConsistency] Inconsistent field: ${fieldName}`, validation);
            }
        }

        return {
            fields: validatedFields,
            confidence: confidenceScores,
            consistency: this.calculateOverallConsistency(validatedFields, fields),
            frameCount: frameResults.length
        };
    }

    /**
     * Extract field values from frame results
     * @param {Array<object>} frameResults
     * @returns {object} - Field name -> array of values
     */
    extractFields(frameResults) {
        const fields = {};

        for (const result of frameResults) {
            if (!result.fields) continue;

            for (const [fieldName, fieldValue] of Object.entries(result.fields)) {
                if (!fields[fieldName]) {
                    fields[fieldName] = [];
                }
                fields[fieldName].push(fieldValue);
            }
        }

        return fields;
    }

    /**
     * Validate a single field across frames using majority voting
     * @param {string} fieldName
     * @param {Array<string>} values
     * @returns {object} - Validation result
     */
    validateField(fieldName, values) {
        if (!values || values.length === 0) {
            return { isConsistent: false, reason: 'No values' };
        }

        // Count occurrences
        const counts = {};
        for (const value of values) {
            const normalized = this.normalizeValue(value);
            counts[normalized] = (counts[normalized] || 0) + 1;
        }

        // Find most common value
        let mostCommon = null;
        let maxCount = 0;

        for (const [value, count] of Object.entries(counts)) {
            if (count > maxCount) {
                maxCount = count;
                mostCommon = value;
            }
        }

        const confidence = maxCount / values.length;
        const isConsistent = confidence >= this.config.confidenceThreshold;

        Logger.info(`[TemporalConsistency] Field "${fieldName}": ${mostCommon} (${maxCount}/${values.length}) - confidence: ${confidence.toFixed(2)}`);

        return {
            isConsistent,
            value: mostCommon,
            confidence,
            occurrences: maxCount,
            totalFrames: values.length,
            allValues: values
        };
    }

    /**
     * Normalize field value for comparison
     * @param {string} value
     * @returns {string}
     */
    normalizeValue(value) {
        if (!value) return '';

        return String(value)
            .trim()
            .toUpperCase()
            .replace(/\s+/g, ' ') // Normalize spaces
            .replace(/[^\w\s]/g, ''); // Remove special chars
    }

    /**
     * Calculate overall consistency score
     * @param {object} validatedFields
     * @param {object} allFields
     * @returns {number} - 0-1 consistency score
     */
    calculateOverallConsistency(validatedFields, allFields) {
        const totalFields = Object.keys(allFields).length;
        const validatedCount = Object.keys(validatedFields).length;

        return totalFields > 0 ? validatedCount / totalFields : 0;
    }

    /**
     * Compare two OCR results for similarity
     * @param {object} result1
     * @param {object} result2
     * @returns {number} - Similarity score 0-1
     */
    calculateSimilarity(result1, result2) {
        if (!result1.fields || !result2.fields) return 0;

        const fields1 = Object.keys(result1.fields);
        const fields2 = Object.keys(result2.fields);

        // Field overlap
        const commonFields = fields1.filter(f => fields2.includes(f));
        const fieldOverlap = commonFields.length / Math.max(fields1.length, fields2.length);

        // Value similarity
        let matchingValues = 0;
        for (const field of commonFields) {
            const val1 = this.normalizeValue(result1.fields[field]);
            const val2 = this.normalizeValue(result2.fields[field]);

            if (val1 === val2) {
                matchingValues++;
            }
        }

        const valueSimilarity = commonFields.length > 0
            ? matchingValues / commonFields.length
            : 0;

        // Weighted average
        return (fieldOverlap * 0.3) + (valueSimilarity * 0.7);
    }

    /**
     * Filter outlier results
     * @param {Array<object>} frameResults
     * @returns {Array<object>} - Filtered results
     */
    filterOutliers(frameResults) {
        if (frameResults.length < 3) return frameResults;

        const similarities = [];

        // Calculate pairwise similarities
        for (let i = 0; i < frameResults.length; i++) {
            let totalSim = 0;
            let count = 0;

            for (let j = 0; j < frameResults.length; j++) {
                if (i !== j) {
                    totalSim += this.calculateSimilarity(frameResults[i], frameResults[j]);
                    count++;
                }
            }

            similarities.push({
                index: i,
                avgSimilarity: totalSim / count,
                result: frameResults[i]
            });
        }

        // Filter out results with low similarity
        const filtered = similarities
            .filter(s => s.avgSimilarity >= this.config.similarityThreshold)
            .map(s => s.result);

        Logger.info(`[TemporalConsistency] Filtered ${frameResults.length - filtered.length} outliers`);

        return filtered.length > 0 ? filtered : frameResults;
    }

    /**
     * Validate multi-frame OCR results with outlier filtering
     * @param {Array<object>} frameResults
     * @returns {object} - Validated results
     */
    validateWithOutlierFilter(frameResults) {
        const filtered = this.filterOutliers(frameResults);
        return this.validateResults(filtered);
    }
}

module.exports = TemporalConsistency;
