/**
 * Analytics Utility
 * Optional analytics tracking for SDK usage
 * Production-safe: Disabled by default, opt-in only
 */

class Analytics {
  constructor() {
    this.enabled = false;
    this.provider = null;
    this.eventQueue = [];
  }

  /**
   * Initialize analytics (opt-in)
   * @param {object} config - Analytics configuration
   * @param {boolean} config.enabled - Enable analytics
   * @param {string} config.provider - Provider name (firebase, amplitude, custom)
   * @param {object} config.providerInstance - Provider instance
   */
  initialize(config = {}) {
    this.enabled = config.enabled || false;
    this.provider = config.provider || 'console';
    this.providerInstance = config.providerInstance || null;
    
    if (this.enabled) {
      console.log('[Analytics] Initialized with provider:', this.provider);
    }
  }

  /**
   * Track event
   * @param {string} category - Event category (OCR, NFC, Liveness)
   * @param {string} action - Event action (scan_started, scan_completed, etc.)
   * @param {string} label - Optional label
   * @param {number} value - Optional numeric value
   */
  trackEvent(category, action, label = null, value = null) {
    if (!this.enabled) return;

    const event = {
      category,
      action,
      label,
      value,
      timestamp: new Date().toISOString(),
    };

    // Queue event
    this.eventQueue.push(event);

    // Send to provider
    this._sendEvent(event);
  }

  /**
   * Track performance metric
   * @param {string} metric - Metric name
   * @param {number} duration - Duration in milliseconds
   * @param {object} metadata - Additional metadata
   */
  trackPerformance(metric, duration, metadata = {}) {
    if (!this.enabled) return;

    const performanceEvent = {
      type: 'performance',
      metric,
      duration,
      metadata,
      timestamp: new Date().toISOString(),
    };

    this._sendEvent(performanceEvent);
  }

  /**
   * Track error
   * @param {Error} error - Error object
   * @param {object} context - Error context
   */
  trackError(error, context = {}) {
    if (!this.enabled) return;

    const errorEvent = {
      type: 'error',
      message: error.message,
      stack: error.stack,
      context,
      timestamp: new Date().toISOString(),
    };

    this._sendEvent(errorEvent);
  }

  /**
   * Send event to provider
   * @private
   */
  _sendEvent(event) {
    try {
      if (this.providerInstance && typeof this.providerInstance.logEvent === 'function') {
        // Firebase Analytics, Amplitude, etc.
        this.providerInstance.logEvent(event);
      } else if (this.provider === 'console') {
        // Console logging for debugging
        console.log('[Analytics Event]', JSON.stringify(event, null, 2));
      }
    } catch (error) {
      console.warn('[Analytics] Failed to send event:', error.message);
    }
  }

  /**
   * Get queued events
   * @returns {array} Event queue
   */
  getEventQueue() {
    return [...this.eventQueue];
  }

  /**
   * Clear event queue
   */
  clearEventQueue() {
    this.eventQueue = [];
  }

  /**
   * Disable analytics
   */
  disable() {
    this.enabled = false;
    console.log('[Analytics] Disabled');
  }
}

// Singleton instance
const analytics = new Analytics();

module.exports = analytics;
module.exports.Analytics = Analytics;
