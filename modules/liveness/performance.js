/**
 * Liveness Detection Performance Optimizer - Day 11
 * Kamera frame analizi optimizasyonu ve performans iyileştirmeleri
 */

const Logger = require("../../utils/logger");
const { FrameAnalysisUtils } = require("./utils");

/**
 * Frame Processing Performance Configuration
 */
const PERFORMANCE_CONFIG = {
  // Frame processing limits
  maxFramesPerSecond: 30,
  minFrameInterval: 33, // 33ms = 30 FPS
  maxProcessingTime: 100, // Max 100ms per frame
  
  // Memory management
  maxFrameHistory: 10,
  memoryCleanupInterval: 5000, // 5 seconds
  maxMemoryUsage: 50 * 1024 * 1024, // 50MB
  
  // Quality thresholds
  minFrameQuality: 0.6,
  skipLowQualityFrames: true,
  adaptiveQuality: true,
  
  // Processing optimization
  useFrameSkipping: true,
  skipFrameThreshold: 0.8, // Skip if confidence > 80%
  batchProcessing: false,
  parallelProcessing: true,
  
  // Throttling
  enableThrottling: true,
  throttleThreshold: 0.9, // Throttle if CPU usage > 90%
  throttleReduction: 0.5, // Reduce processing by 50%
};

/**
 * Performance Optimizer Class
 */
class PerformanceOptimizer {
  constructor(config = {}) {
    this.config = { ...PERFORMANCE_CONFIG, ...config };
    this.frameHistory = [];
    this.processingTimes = [];
    this.memoryUsage = [];
    this.lastFrameTime = 0;
    this.skippedFrames = 0;
    this.processedFrames = 0;
    this.isThrottling = false;
    
    // Performance metrics
    this.metrics = {
      averageProcessingTime: 0,
      frameRate: 0,
      memoryUsage: 0,
      skipRate: 0,
      errorRate: 0,
    };
    
    // Start memory cleanup interval
    this.startMemoryCleanup();
    
    Logger.info("PerformanceOptimizer initialized", {
      config: this.config,
      maxFPS: this.config.maxFramesPerSecond,
    });
  }

  /**
   * Optimize frame processing
   */
  async optimizeFrameProcessing(frameData, processingFunction) {
    const startTime = Date.now();
    
    try {
      // Check if we should skip this frame
      if (this.shouldSkipFrame(frameData, startTime)) {
        this.skippedFrames++;
        return this.getSkippedFrameResult();
      }

      // Pre-process frame for optimization
      const optimizedFrame = this.preprocessFrame(frameData);
      
      // Apply throttling if needed
      if (this.isThrottling) {
        await this.applyThrottling();
      }

      // Process the frame
      const result = await this.processFrameWithTimeout(
        optimizedFrame,
        processingFunction
      );

      // Post-process and update metrics
      const processingTime = Date.now() - startTime;
      this.updateMetrics(processingTime, true);
      this.addToFrameHistory(frameData, result, processingTime);

      return {
        ...result,
        optimized: true,
        processingTime,
        frameRate: this.metrics.frameRate,
      };

    } catch (error) {
      const processingTime = Date.now() - startTime;
      this.updateMetrics(processingTime, false);
      
      Logger.error("Frame processing optimization failed", {
        error: error.message,
        processingTime,
      });
      
      throw error;
    }
  }

  /**
   * Check if frame should be skipped for performance
   */
  shouldSkipFrame(frameData, currentTime) {
    // Check frame interval (FPS limiting)
    const timeSinceLastFrame = currentTime - this.lastFrameTime;
    if (timeSinceLastFrame < this.config.minFrameInterval) {
      return true;
    }

    // Check frame quality
    if (this.config.skipLowQualityFrames) {
      const quality = this.assessFrameQuality(frameData);
      if (quality < this.config.minFrameQuality) {
        return true;
      }
    }

    // Check if we're in high confidence state (can skip frames)
    if (this.config.useFrameSkipping && this.canSkipBasedOnHistory()) {
      return true;
    }

    // Check system load
    if (this.isSystemOverloaded()) {
      return true;
    }

    return false;
  }

  /**
   * Assess frame quality for processing decision
   */
  assessFrameQuality(frameData) {
    if (!frameData || !frameData.faces || frameData.faces.length === 0) {
      return 0;
    }

    const face = frameData.faces[0];
    let quality = 0.5; // Base quality

    // Check face size (larger faces are better quality)
    if (face.bounds) {
      const faceArea = face.bounds.width * face.bounds.height;
      const imageArea = (frameData.width || 640) * (frameData.height || 480);
      const faceRatio = faceArea / imageArea;
      quality += Math.min(faceRatio * 2, 0.3); // Max 0.3 bonus
    }

    // Check landmark detection quality
    if (face.landmarks) {
      const landmarkCount = Object.keys(face.landmarks).length;
      quality += Math.min(landmarkCount / 10, 0.2); // Max 0.2 bonus
    }

    // Check detection confidence
    if (face.confidence) {
      quality += face.confidence * 0.3; // Max 0.3 bonus
    }

    return Math.min(quality, 1.0);
  }

  /**
   * Check if we can skip frames based on recent history
   */
  canSkipBasedOnHistory() {
    if (this.frameHistory.length < 3) {
      return false;
    }

    const recentFrames = this.frameHistory.slice(-3);
    const avgConfidence = recentFrames.reduce((sum, frame) => 
      sum + (frame.result?.confidence || 0), 0) / recentFrames.length;

    return avgConfidence > this.config.skipFrameThreshold;
  }

  /**
   * Check if system is overloaded
   */
  isSystemOverloaded() {
    // Check recent processing times
    if (this.processingTimes.length > 0) {
      const avgProcessingTime = this.processingTimes.reduce((a, b) => a + b) / 
        this.processingTimes.length;
      
      if (avgProcessingTime > this.config.maxProcessingTime) {
        return true;
      }
    }

    // Check memory usage
    const currentMemory = process.memoryUsage().heapUsed;
    if (currentMemory > this.config.maxMemoryUsage) {
      return true;
    }

    return false;
  }

  /**
   * Preprocess frame for optimization
   */
  preprocessFrame(frameData) {
    if (!frameData) return frameData;

    const optimized = { ...frameData };

    // Reduce image resolution if needed for performance
    if (this.isThrottling && optimized.imageData) {
      optimized.imageData = this.reduceImageResolution(optimized.imageData);
    }

    // Filter faces to keep only the best one
    if (optimized.faces && optimized.faces.length > 1) {
      optimized.faces = [this.selectBestFace(optimized.faces)];
    }

    return optimized;
  }

  /**
   * Select the best face from multiple detections
   */
  selectBestFace(faces) {
    return faces.reduce((best, current) => {
      const bestScore = this.calculateFaceScore(best);
      const currentScore = this.calculateFaceScore(current);
      return currentScore > bestScore ? current : best;
    });
  }

  /**
   * Calculate face quality score
   */
  calculateFaceScore(face) {
    let score = 0;

    // Size score (larger faces are better)
    if (face.bounds) {
      const area = face.bounds.width * face.bounds.height;
      score += Math.min(area / 10000, 0.4); // Max 0.4
    }

    // Confidence score
    if (face.confidence) {
      score += face.confidence * 0.3; // Max 0.3
    }

    // Landmark completeness
    if (face.landmarks) {
      const landmarkCount = Object.keys(face.landmarks).length;
      score += Math.min(landmarkCount / 20, 0.3); // Max 0.3
    }

    return score;
  }

  /**
   * Process frame with timeout protection
   */
  async processFrameWithTimeout(frameData, processingFunction) {
    return new Promise(async (resolve, reject) => {
      const timeout = setTimeout(() => {
        reject(new Error(`Frame processing timeout (${this.config.maxProcessingTime}ms)`));
      }, this.config.maxProcessingTime);

      try {
        const result = await processingFunction(frameData);
        clearTimeout(timeout);
        resolve(result);
      } catch (error) {
        clearTimeout(timeout);
        reject(error);
      }
    });
  }

  /**
   * Apply throttling delay
   */
  async applyThrottling() {
    const delay = this.config.minFrameInterval * this.config.throttleReduction;
    await new Promise(resolve => setTimeout(resolve, delay));
  }

  /**
   * Get result for skipped frame
   */
  getSkippedFrameResult() {
    // Return result based on recent history
    if (this.frameHistory.length > 0) {
      const lastResult = this.frameHistory[this.frameHistory.length - 1].result;
      return {
        ...lastResult,
        skipped: true,
        confidence: Math.max((lastResult?.confidence || 0) - 0.1, 0),
        message: "Frame skipped for performance optimization",
      };
    }

    return {
      success: false,
      skipped: true,
      confidence: 0,
      message: "Frame skipped - no history available",
    };
  }

  /**
   * Update performance metrics
   */
  updateMetrics(processingTime, success) {
    this.processedFrames++;
    this.processingTimes.push(processingTime);
    
    // Keep only recent processing times
    if (this.processingTimes.length > 100) {
      this.processingTimes = this.processingTimes.slice(-50);
    }

    // Update metrics
    this.metrics.averageProcessingTime = 
      this.processingTimes.reduce((a, b) => a + b) / this.processingTimes.length;
    
    this.metrics.frameRate = this.calculateFrameRate();
    this.metrics.memoryUsage = process.memoryUsage().heapUsed;
    this.metrics.skipRate = this.skippedFrames / (this.processedFrames + this.skippedFrames);
    
    if (!success) {
      this.metrics.errorRate = (this.metrics.errorRate * 0.9) + 0.1;
    } else {
      this.metrics.errorRate = this.metrics.errorRate * 0.95;
    }

    // Update throttling state
    this.updateThrottlingState();
    
    this.lastFrameTime = Date.now();
  }

  /**
   * Calculate current frame rate
   */
  calculateFrameRate() {
    if (this.frameHistory.length < 2) return 0;

    const recentFrames = this.frameHistory.slice(-10);
    if (recentFrames.length < 2) return 0;

    const timeSpan = recentFrames[recentFrames.length - 1].timestamp - 
                   recentFrames[0].timestamp;
    
    return timeSpan > 0 ? (recentFrames.length - 1) / (timeSpan / 1000) : 0;
  }

  /**
   * Update throttling state based on performance
   */
  updateThrottlingState() {
    const shouldThrottle = 
      this.metrics.averageProcessingTime > this.config.maxProcessingTime ||
      this.metrics.memoryUsage > this.config.maxMemoryUsage ||
      this.metrics.errorRate > 0.1;

    if (shouldThrottle && !this.isThrottling) {
      this.isThrottling = true;
      Logger.warn("Performance throttling enabled", {
        avgProcessingTime: this.metrics.averageProcessingTime,
        memoryUsage: this.metrics.memoryUsage,
        errorRate: this.metrics.errorRate,
      });
    } else if (!shouldThrottle && this.isThrottling) {
      this.isThrottling = false;
      Logger.info("Performance throttling disabled", {
        avgProcessingTime: this.metrics.averageProcessingTime,
        memoryUsage: this.metrics.memoryUsage,
      });
    }
  }

  /**
   * Add frame to history
   */
  addToFrameHistory(frameData, result, processingTime) {
    this.frameHistory.push({
      timestamp: Date.now(),
      frameData: this.createFrameSummary(frameData),
      result,
      processingTime,
    });

    // Keep history size manageable
    if (this.frameHistory.length > this.config.maxFrameHistory) {
      this.frameHistory = this.frameHistory.slice(-this.config.maxFrameHistory);
    }
  }

  /**
   * Create frame summary for history (reduce memory usage)
   */
  createFrameSummary(frameData) {
    if (!frameData) return null;

    return {
      faceCount: frameData.faces ? frameData.faces.length : 0,
      hasImageData: !!frameData.imageData,
      timestamp: frameData.timestamp,
      quality: this.assessFrameQuality(frameData),
    };
  }

  /**
   * Reduce image resolution for performance
   */
  reduceImageResolution(imageData) {
    // Simple resolution reduction (placeholder implementation)
    // In real implementation, this would use image processing libraries
    if (!imageData || imageData.length < 1000) return imageData;
    
    // Return every other pixel (simple downsampling)
    const reduced = new Uint8Array(Math.floor(imageData.length / 2));
    for (let i = 0; i < reduced.length; i++) {
      reduced[i] = imageData[i * 2];
    }
    
    return reduced;
  }

  /**
   * Start memory cleanup interval
   */
  startMemoryCleanup() {
    setInterval(() => {
      this.cleanupMemory();
    }, this.config.memoryCleanupInterval);
  }

  /**
   * Cleanup memory and optimize performance
   */
  cleanupMemory() {
    // Clear old processing times
    if (this.processingTimes.length > 50) {
      this.processingTimes = this.processingTimes.slice(-25);
    }

    // Clear old memory usage records
    if (this.memoryUsage.length > 50) {
      this.memoryUsage = this.memoryUsage.slice(-25);
    }

    // Force garbage collection if available
    if (global.gc) {
      global.gc();
    }

    Logger.debug("Memory cleanup completed", {
      frameHistorySize: this.frameHistory.length,
      processingTimesSize: this.processingTimes.length,
      currentMemory: process.memoryUsage().heapUsed,
    });
  }

  /**
   * Get performance statistics
   */
  getPerformanceStats() {
    return {
      ...this.metrics,
      processedFrames: this.processedFrames,
      skippedFrames: this.skippedFrames,
      isThrottling: this.isThrottling,
      frameHistorySize: this.frameHistory.length,
      config: this.config,
    };
  }

  /**
   * Reset performance metrics
   */
  reset() {
    this.frameHistory = [];
    this.processingTimes = [];
    this.memoryUsage = [];
    this.lastFrameTime = 0;
    this.skippedFrames = 0;
    this.processedFrames = 0;
    this.isThrottling = false;
    
    this.metrics = {
      averageProcessingTime: 0,
      frameRate: 0,
      memoryUsage: 0,
      skipRate: 0,
      errorRate: 0,
    };

    Logger.info("Performance optimizer reset");
  }

  /**
   * Cleanup resources
   */
  destroy() {
    this.reset();
    Logger.info("Performance optimizer destroyed");
  }
}

module.exports = {
  PerformanceOptimizer,
  PERFORMANCE_CONFIG,
};
