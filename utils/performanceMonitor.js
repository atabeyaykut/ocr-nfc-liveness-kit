/**
 * Performance Monitor Utility
 * Tracks performance metrics without affecting production code
 * Production-safe: Optional monitoring, minimal overhead
 */

/**
 * Performance Metric Class
 */
class PerformanceMetric {
  constructor(name, startTime) {
    this.name = name;
    this.startTime = startTime;
    this.endTime = null;
    this.duration = null;
    this.metadata = {};
    this.markers = [];
  }

  /**
   * Add marker point
   */
  addMarker(name) {
    this.markers.push({
      name,
      timestamp: Date.now(),
      timeFromStart: Date.now() - this.startTime,
    });
  }

  /**
   * End measurement
   */
  end() {
    this.endTime = Date.now();
    this.duration = this.endTime - this.startTime;
    return this.duration;
  }

  /**
   * Add metadata
   */
  setMetadata(key, value) {
    this.metadata[key] = value;
  }

  /**
   * Convert to JSON
   */
  toJSON() {
    return {
      name: this.name,
      duration: this.duration,
      startTime: this.startTime,
      endTime: this.endTime,
      markers: this.markers,
      metadata: this.metadata,
    };
  }
}

/**
 * Performance Monitor Class
 */
class PerformanceMonitor {
  constructor() {
    this.enabled = true;
    this.measurements = new Map();
    this.completedMeasurements = [];
    this.maxStoredMeasurements = 100;
  }

  /**
   * Enable/disable monitoring
   */
  setEnabled(enabled) {
    this.enabled = enabled;
  }

  /**
   * Start measuring
   * @param {string} name - Measurement name
   * @returns {PerformanceMetric} Metric instance
   */
  start(name) {
    if (!this.enabled) return null;

    const metric = new PerformanceMetric(name, Date.now());
    this.measurements.set(name, metric);
    return metric;
  }

  /**
   * Add marker to existing measurement
   * @param {string} name - Measurement name
   * @param {string} markerName - Marker name
   */
  mark(name, markerName) {
    if (!this.enabled) return;

    const metric = this.measurements.get(name);
    if (metric) {
      metric.addMarker(markerName);
    }
  }

  /**
   * End measurement
   * @param {string} name - Measurement name
   * @returns {number} Duration in milliseconds
   */
  end(name) {
    if (!this.enabled) return null;

    const metric = this.measurements.get(name);
    if (!metric) return null;

    const duration = metric.end();
    
    // Move to completed measurements
    this.completedMeasurements.push(metric);
    this.measurements.delete(name);

    // Limit stored measurements
    if (this.completedMeasurements.length > this.maxStoredMeasurements) {
      this.completedMeasurements.shift();
    }

    // Log if enabled
    this._logMetric(metric);

    // Track in analytics
    this._trackMetric(metric);

    return duration;
  }

  /**
   * Measure async function
   * @param {string} name - Measurement name
   * @param {Function} fn - Async function to measure
   * @returns {Promise<any>} Function result
   */
  async measure(name, fn) {
    if (!this.enabled) return await fn();

    this.start(name);
    try {
      const result = await fn();
      this.end(name);
      return result;
    } catch (error) {
      this.end(name);
      throw error;
    }
  }

  /**
   * Get metric by name
   * @param {string} name - Measurement name
   * @returns {PerformanceMetric|null}
   */
  getMetric(name) {
    return this.completedMeasurements.find(m => m.name === name) || null;
  }

  /**
   * Get all metrics
   * @returns {Array<PerformanceMetric>}
   */
  getAllMetrics() {
    return [...this.completedMeasurements];
  }

  /**
   * Get metrics by name pattern
   * @param {string|RegExp} pattern - Name pattern
   * @returns {Array<PerformanceMetric>}
   */
  getMetricsByPattern(pattern) {
    const regex = typeof pattern === 'string' 
      ? new RegExp(pattern) 
      : pattern;
    
    return this.completedMeasurements.filter(m => regex.test(m.name));
  }

  /**
   * Get statistics for a metric name
   * @param {string} name - Metric name
   * @returns {object} Statistics
   */
  getStatistics(name) {
    const metrics = this.completedMeasurements.filter(m => m.name === name);
    
    if (metrics.length === 0) {
      return null;
    }

    const durations = metrics.map(m => m.duration);
    const sum = durations.reduce((a, b) => a + b, 0);
    const avg = sum / durations.length;
    const min = Math.min(...durations);
    const max = Math.max(...durations);
    
    // Calculate percentiles
    const sorted = durations.sort((a, b) => a - b);
    const p50 = sorted[Math.floor(sorted.length * 0.5)];
    const p95 = sorted[Math.floor(sorted.length * 0.95)];
    const p99 = sorted[Math.floor(sorted.length * 0.99)];

    return {
      name,
      count: metrics.length,
      avg,
      min,
      max,
      sum,
      p50,
      p95,
      p99,
    };
  }

  /**
   * Get memory usage (if available)
   * @returns {object|null} Memory info
   */
  getMemoryUsage() {
    if (typeof performance !== 'undefined' && performance.memory) {
      return {
        usedJSHeapSize: performance.memory.usedJSHeapSize,
        totalJSHeapSize: performance.memory.totalJSHeapSize,
        jsHeapSizeLimit: performance.memory.jsHeapSizeLimit,
        usedPercent: (performance.memory.usedJSHeapSize / performance.memory.jsHeapSizeLimit * 100).toFixed(2),
      };
    }
    return null;
  }

  /**
   * Clear all measurements
   */
  clear() {
    this.measurements.clear();
    this.completedMeasurements = [];
  }

  /**
   * Export measurements as JSON
   * @returns {string} JSON string
   */
  export() {
    return JSON.stringify({
      completedMeasurements: this.completedMeasurements.map(m => m.toJSON()),
      timestamp: new Date().toISOString(),
    }, null, 2);
  }

  /**
   * Log metric (private)
   */
  _logMetric(metric) {
    if (metric.duration > 1000) {
      // Log slow operations
      console.warn('[PerformanceMonitor] Slow operation detected:', {
        name: metric.name,
        duration: `${metric.duration}ms`,
      });
    }
  }

  /**
   * Track metric in analytics (private)
   */
  _trackMetric(metric) {
    try {
      const analytics = require('./analytics');
      analytics.trackPerformance(metric.name, metric.duration, metric.metadata);
    } catch (e) {
      // Analytics not available, ignore
    }
  }
}

// Singleton instance
const monitor = new PerformanceMonitor();

/**
 * Decorator for measuring function performance
 * @param {string} name - Measurement name
 */
function measured(name) {
  return function (target, propertyKey, descriptor) {
    const originalMethod = descriptor.value;

    descriptor.value = async function (...args) {
      const metricName = name || `${target.constructor.name}.${propertyKey}`;
      return await monitor.measure(metricName, () => originalMethod.apply(this, args));
    };

    return descriptor;
  };
}

module.exports = monitor;
module.exports.PerformanceMonitor = PerformanceMonitor;
module.exports.measured = measured;
