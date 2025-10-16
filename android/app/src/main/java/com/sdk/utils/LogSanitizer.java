package com.sdk.utils;

import android.util.Log;
import com.ocrmobilesdk.BuildConfig;

import java.util.regex.Pattern;

/**
 * Log Sanitizer - Production-safe logging utility
 * 
 * Features:
 * - Automatic PII filtering
 * - BuildConfig.DEBUG guards
 * - Sensitive data masking
 * - Production log suppression
 * 
 * Security:
 * - Prevents PII leakage in logs
 * - KVKK/GDPR compliant
 * - No sensitive data in production logs
 * 
 * Usage:
 * ```java
 * // Instead of: Log.d(TAG, "User: " + username);
 * LogSanitizer.d(TAG, "User authenticated");
 * 
 * // For sensitive data:
 * LogSanitizer.sensitive(TAG, "Token: " + token); // Only logs in DEBUG
 * ```
 * 
 * @author Mobile SDK Team
 * @version 1.0.0
 */
public class LogSanitizer {
    
    // Patterns for PII detection
    private static final Pattern TC_NO_PATTERN = Pattern.compile("\\b\\d{11}\\b");
    private static final Pattern PHONE_PATTERN = Pattern.compile("\\b\\d{10,11}\\b");
    private static final Pattern EMAIL_PATTERN = Pattern.compile("[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}");
    private static final Pattern CREDIT_CARD_PATTERN = Pattern.compile("\\b\\d{4}[\\s-]?\\d{4}[\\s-]?\\d{4}[\\s-]?\\d{4}\\b");
    private static final Pattern TOKEN_PATTERN = Pattern.compile("[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}");
    
    // Sensitive keywords
    private static final String[] SENSITIVE_KEYWORDS = {
        "password", "passwd", "pwd", "secret", "token", "key", "apikey", "api_key",
        "tcno", "tc_no", "tc", "ssn", "credit", "card", "cvv", "pin", "otp"
    };
    
    /**
     * Debug log (only in DEBUG builds)
     */
    public static void d(String tag, String message) {
        if (BuildConfig.DEBUG) {
            Log.d(tag, sanitize(message));
        }
    }
    
    /**
     * Info log (sanitized in production)
     */
    public static void i(String tag, String message) {
        Log.i(tag, sanitize(message));
    }
    
    /**
     * Warning log (sanitized in production)
     */
    public static void w(String tag, String message) {
        Log.w(tag, sanitize(message));
    }
    
    /**
     * Warning log with throwable
     */
    public static void w(String tag, String message, Throwable throwable) {
        Log.w(tag, sanitize(message), throwable);
    }
    
    /**
     * Error log (sanitized in production)
     */
    public static void e(String tag, String message) {
        Log.e(tag, sanitize(message));
    }
    
    /**
     * Error log with throwable
     */
    public static void e(String tag, String message, Throwable throwable) {
        Log.e(tag, sanitize(message), throwable);
    }
    
    /**
     * Verbose log (only in DEBUG builds)
     */
    public static void v(String tag, String message) {
        if (BuildConfig.DEBUG) {
            Log.v(tag, sanitize(message));
        }
    }
    
    /**
     * Sensitive log (ONLY in DEBUG builds)
     */
    public static void sensitive(String tag, String message) {
        if (BuildConfig.DEBUG) {
            Log.d(tag, "[SENSITIVE] " + message);
        }
    }
    
    /**
     * Security log (always logged, but sanitized)
     */
    public static void security(String tag, String message) {
        Log.i(tag, "[SECURITY] " + sanitize(message));
    }
    
    /**
     * Performance log (only in DEBUG builds)
     */
    public static void performance(String tag, String operation, long durationMs) {
        if (BuildConfig.DEBUG) {
            Log.d(tag, String.format("[PERF] %s: %dms", operation, durationMs));
        }
    }
    
    /**
     * Sanitize log message by removing/masking PII
     */
    private static String sanitize(String message) {
        if (message == null) {
            return "null";
        }
        
        // In DEBUG mode, return as-is
        if (BuildConfig.DEBUG) {
            return message;
        }
        
        // In RELEASE mode, sanitize
        String sanitized = message;
        
        // Mask TC numbers
        sanitized = TC_NO_PATTERN.matcher(sanitized).replaceAll("***********");
        
        // Mask phone numbers
        sanitized = PHONE_PATTERN.matcher(sanitized).replaceAll("**********");
        
        // Mask emails
        sanitized = EMAIL_PATTERN.matcher(sanitized).replaceAll("***@***.***");
        
        // Mask credit cards
        sanitized = CREDIT_CARD_PATTERN.matcher(sanitized).replaceAll("****-****-****-****");
        
        // Mask tokens/UUIDs
        sanitized = TOKEN_PATTERN.matcher(sanitized).replaceAll("********-****-****-****-************");
        
        // Check for sensitive keywords
        String lowerMessage = sanitized.toLowerCase();
        for (String keyword : SENSITIVE_KEYWORDS) {
            if (lowerMessage.contains(keyword)) {
                sanitized = sanitized.replaceAll(
                    "(?i)" + keyword + "\\s*[=:]\\s*[^\\s,;]+",
                    keyword + "=***"
                );
            }
        }
        
        return sanitized;
    }
    
    /**
     * Check if a string contains PII
     */
    public static boolean containsPII(String text) {
        if (text == null || text.isEmpty()) {
            return false;
        }
        
        if (TC_NO_PATTERN.matcher(text).find()) return true;
        if (EMAIL_PATTERN.matcher(text).find()) return true;
        if (CREDIT_CARD_PATTERN.matcher(text).find()) return true;
        if (TOKEN_PATTERN.matcher(text).find()) return true;
        
        String lowerText = text.toLowerCase();
        for (String keyword : SENSITIVE_KEYWORDS) {
            if (lowerText.contains(keyword)) {
                return true;
            }
        }
        
        return false;
    }
    
    /**
     * Mask a string value
     */
    public static String mask(String value, int visibleChars) {
        if (value == null || value.isEmpty()) {
            return "";
        }
        
        if (value.length() <= visibleChars) {
            return "***";
        }
        
        String visible = value.substring(0, visibleChars);
        int maskedLength = Math.min(value.length() - visibleChars, 10);
        StringBuilder masked = new StringBuilder(visible);
        for (int i = 0; i < maskedLength; i++) {
            masked.append("*");
        }
        
        return masked.toString();
    }
    
    /**
     * Mask email
     */
    public static String maskEmail(String email) {
        if (email == null || !email.contains("@")) {
            return "***@***.***";
        }
        
        String[] parts = email.split("@");
        if (parts.length != 2) {
            return "***@***.***";
        }
        
        String localPart = parts[0];
        String domain = parts[1];
        
        if (localPart.length() <= 2) {
            return "***@" + domain;
        }
        
        return localPart.substring(0, 2) + "***@" + domain;
    }
    
    /**
     * Mask phone number
     */
    public static String maskPhone(String phone) {
        if (phone == null || phone.length() < 4) {
            return "**********";
        }
        
        String lastFour = phone.substring(phone.length() - 4);
        return "******" + lastFour;
    }
    
    /**
     * Mask TC number
     */
    public static String maskTCNo(String tcNo) {
        if (tcNo == null || tcNo.length() != 11) {
            return "***********";
        }
        
        return tcNo.substring(0, 2) + "*******" + tcNo.substring(9, 11);
    }
    
    /**
     * Assert no PII (for testing)
     */
    public static void assertNoPII(String text, String context) {
        if (containsPII(text)) {
            throw new AssertionError("PII detected in " + context + ": " + sanitize(text));
        }
    }
}
