package com.sdk.nfc;

import org.json.JSONException;
import org.json.JSONObject;

/**
 * NFC Error Codes - Standardized error handling
 * 
 * Provides:
 * - Categorized error codes
 * - JSON serialization for JS bridge
 * - Human-readable descriptions
 * - Error severity levels
 * 
 * Categories:
 * - PA_* : Passive Authentication errors
 * - AA_* : Active Authentication errors
 * - NFC_* : General NFC errors
 * - TIMEOUT_* : Timeout errors
 * 
 * @author Mobile SDK Team
 * @version 1.0.0
 */
public class NfcErrorCodes {
    
    // Passive Authentication Errors
    public static final String PA_SOD_PARSE_FAILED = "PA_SOD_PARSE_FAILED";
    public static final String PA_SOD_MISMATCH = "PA_SOD_MISMATCH";
    public static final String PA_HASH_MISMATCH = "PA_HASH_MISMATCH";
    public static final String PA_HASH_VERIFICATION_FAILED = "PA_HASH_VERIFICATION_FAILED";
    public static final String PA_SIGNATURE_INVALID = "PA_SIGNATURE_INVALID";
    public static final String PA_CHAIN_VALIDATION_FAILED = "PA_CHAIN_VALIDATION_FAILED";
    public static final String PA_UNSUPPORTED_ALGORITHM = "PA_UNSUPPORTED_ALGORITHM";
    public static final String PA_TIMEOUT = "PA_TIMEOUT";
    
    // Active Authentication Errors
    public static final String AA_DG15_PARSE_FAILED = "AA_DG15_PARSE_FAILED";
    public static final String AA_CHIP_CONNECTION_FAILED = "AA_CHIP_CONNECTION_FAILED";
    public static final String AA_CHIP_ERROR = "AA_CHIP_ERROR";
    public static final String AA_CHALLENGE_FAILED = "AA_CHALLENGE_FAILED";
    public static final String AA_SIGNATURE_INVALID = "AA_SIGNATURE_INVALID";
    public static final String AA_TIMEOUT = "AA_TIMEOUT";
    public static final String AA_INTERRUPTED = "AA_INTERRUPTED";
    
    // General NFC Errors
    public static final String NFC_NOT_SUPPORTED = "NFC_NOT_SUPPORTED";
    public static final String NFC_DISABLED = "NFC_DISABLED";
    public static final String NFC_TAG_LOST = "NFC_TAG_LOST";
    public static final String NFC_IO_ERROR = "NFC_IO_ERROR";
    
    // Timeout Errors
    public static final String TIMEOUT_OPERATION = "TIMEOUT_OPERATION";
    public static final String TIMEOUT_HASH_VERIFICATION = "TIMEOUT_HASH_VERIFICATION";
    public static final String TIMEOUT_SIGNATURE_VERIFICATION = "TIMEOUT_SIGNATURE_VERIFICATION";
    
    // Error Severity Levels
    public enum Severity {
        LOW,      // Recoverable, retry possible
        MEDIUM,   // Partial failure, some data may be valid
        HIGH,     // Complete failure, no recovery
        CRITICAL  // System error, requires restart
    }
    
    /**
     * NFC Error - Structured error object
     */
    public static class NfcError {
        public final String code;
        public final String message;
        public final Severity severity;
        public final String category;
        public final boolean retryable;
        public final JSONObject metadata;
        
        public NfcError(String code, String message, Severity severity, 
                       String category, boolean retryable, JSONObject metadata) {
            this.code = code;
            this.message = message;
            this.severity = severity;
            this.category = category;
            this.retryable = retryable;
            this.metadata = metadata != null ? metadata : new JSONObject();
        }
        
        /**
         * Convert to JSON for JS bridge
         */
        public JSONObject toJSON() {
            try {
                JSONObject json = new JSONObject();
                json.put("code", code);
                json.put("message", message);
                json.put("severity", severity.name());
                json.put("category", category);
                json.put("retryable", retryable);
                json.put("metadata", metadata);
                return json;
            } catch (JSONException e) {
                // Fallback to minimal JSON
                try {
                    JSONObject json = new JSONObject();
                    json.put("code", code);
                    json.put("message", message);
                    return json;
                } catch (JSONException ex) {
                    return new JSONObject();
                }
            }
        }
        
        @Override
        public String toString() {
            return String.format("[%s] %s: %s (severity=%s, retryable=%s)",
                    category, code, message, severity, retryable);
        }
    }
    
    /**
     * Create Passive Authentication error
     */
    public static NfcError createPAError(String code, String message, JSONObject metadata) {
        Severity severity = getSeverityForCode(code);
        boolean retryable = isRetryable(code);
        return new NfcError(code, message, severity, "PA", retryable, metadata);
    }
    
    /**
     * Create Active Authentication error
     */
    public static NfcError createAAError(String code, String message, JSONObject metadata) {
        Severity severity = getSeverityForCode(code);
        boolean retryable = isRetryable(code);
        return new NfcError(code, message, severity, "AA", retryable, metadata);
    }
    
    /**
     * Create general NFC error
     */
    public static NfcError createNfcError(String code, String message, JSONObject metadata) {
        Severity severity = getSeverityForCode(code);
        boolean retryable = isRetryable(code);
        return new NfcError(code, message, severity, "NFC", retryable, metadata);
    }
    
    /**
     * Get severity level for error code
     */
    private static Severity getSeverityForCode(String code) {
        if (code == null) return Severity.MEDIUM;
        
        // Critical errors
        if (code.contains("PARSE_FAILED") || code.contains("UNSUPPORTED")) {
            return Severity.CRITICAL;
        }
        
        // High severity
        if (code.contains("MISMATCH") || code.contains("INVALID") || 
            code.contains("FAILED") || code.contains("CONNECTION")) {
            return Severity.HIGH;
        }
        
        // Low severity (retryable)
        if (code.contains("TIMEOUT") || code.contains("IO_ERROR") || 
            code.contains("TAG_LOST") || code.contains("INTERRUPTED")) {
            return Severity.LOW;
        }
        
        return Severity.MEDIUM;
    }
    
    /**
     * Check if error is retryable
     */
    private static boolean isRetryable(String code) {
        if (code == null) return false;
        
        // Retryable errors
        return code.contains("TIMEOUT") || 
               code.contains("IO_ERROR") || 
               code.contains("TAG_LOST") ||
               code.contains("INTERRUPTED") ||
               code.contains("CHIP_ERROR") ||
               code.contains("CHALLENGE_FAILED");
    }
    
    /**
     * Get human-readable description for error code
     */
    public static String getDescription(String code) {
        if (code == null) return "Unknown error";
        
        switch (code) {
            // PA errors
            case PA_SOD_PARSE_FAILED:
                return "Failed to parse Security Object Document (SOD)";
            case PA_SOD_MISMATCH:
                return "SOD data does not match expected format";
            case PA_HASH_MISMATCH:
                return "Data group hash does not match SOD hash";
            case PA_HASH_VERIFICATION_FAILED:
                return "Hash verification process failed";
            case PA_SIGNATURE_INVALID:
                return "SOD signature verification failed";
            case PA_CHAIN_VALIDATION_FAILED:
                return "Certificate chain validation failed";
            case PA_UNSUPPORTED_ALGORITHM:
                return "Cryptographic algorithm not supported";
            case PA_TIMEOUT:
                return "Passive authentication operation timed out";
                
            // AA errors
            case AA_DG15_PARSE_FAILED:
                return "Failed to parse Data Group 15 (public key)";
            case AA_CHIP_CONNECTION_FAILED:
                return "Failed to connect to NFC chip";
            case AA_CHIP_ERROR:
                return "NFC chip communication error";
            case AA_CHALLENGE_FAILED:
                return "Challenge-response protocol failed";
            case AA_SIGNATURE_INVALID:
                return "Active authentication signature invalid";
            case AA_TIMEOUT:
                return "Active authentication operation timed out";
            case AA_INTERRUPTED:
                return "Active authentication was interrupted";
                
            // NFC errors
            case NFC_NOT_SUPPORTED:
                return "NFC is not supported on this device";
            case NFC_DISABLED:
                return "NFC is disabled, please enable it in settings";
            case NFC_TAG_LOST:
                return "NFC tag connection lost";
            case NFC_IO_ERROR:
                return "NFC communication I/O error";
                
            // Timeout errors
            case TIMEOUT_OPERATION:
                return "Operation timed out";
            case TIMEOUT_HASH_VERIFICATION:
                return "Hash verification timed out";
            case TIMEOUT_SIGNATURE_VERIFICATION:
                return "Signature verification timed out";
                
            default:
                return "Unknown error: " + code;
        }
    }
}
