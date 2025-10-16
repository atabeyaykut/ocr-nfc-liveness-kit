package com.ocr.modules;

import android.content.Context;
import android.content.pm.PackageManager;
import android.nfc.NfcAdapter;
import android.os.Build;

import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.WritableMap;
import com.facebook.react.bridge.WritableNativeMap;
import com.sdk.utils.LogSanitizer;

/**
 * SDK Capabilities Module - React Native Bridge
 * 
 * Provides runtime capability detection for OCR SDK
 * 
 * Features:
 * - Platform information
 * - NFC availability and status
 * - Camera availability
 * - Security features
 * - Hardware capabilities
 * 
 * @author Mobile SDK Team
 * @version 1.0.0
 */
public class SDKCapabilitiesModule extends ReactContextBaseJavaModule {
    
    private static final String TAG = "SDKCapabilities";
    private static final String MODULE_NAME = "SDKCapabilities";
    
    private final ReactApplicationContext reactContext;
    
    public SDKCapabilitiesModule(ReactApplicationContext reactContext) {
        super(reactContext);
        this.reactContext = reactContext;
    }
    
    @Override
    public String getName() {
        return MODULE_NAME;
    }
    
    /**
     * Get device capabilities
     * 
     * @param promise Promise to resolve with capabilities object
     */
    @ReactMethod
    public void getCapabilities(Promise promise) {
        try {
            LogSanitizer.d(TAG, "Getting device capabilities");
            
            WritableMap capabilities = new WritableNativeMap();
            
            // Platform information
            capabilities.putString("platform", "android");
            capabilities.putInt("sdkInt", Build.VERSION.SDK_INT);
            capabilities.putString("release", Build.VERSION.RELEASE);
            capabilities.putString("deviceModel", Build.MODEL);
            capabilities.putString("manufacturer", Build.MANUFACTURER);
            
            // NFC capabilities
            boolean hasNfc = hasNfcHardware();
            boolean nfcEnabled = isNfcEnabled();
            capabilities.putBoolean("hasNfc", hasNfc);
            capabilities.putBoolean("nfcEnabled", nfcEnabled);
            
            // Camera capabilities
            boolean hasCamera = hasCameraHardware();
            boolean hasCamera2 = hasCamera2Support();
            capabilities.putBoolean("cameraAvailable", hasCamera);
            capabilities.putBoolean("camera2Supported", hasCamera2);
            
            // Security features
            capabilities.putBoolean("selinuxEnforcing", isSELinuxEnforcing());
            capabilities.putBoolean("hardwareKeystore", hasHardwareKeystore());
            
            // Additional capabilities
            capabilities.putBoolean("hasFingerprint", hasFingerprintHardware());
            capabilities.putBoolean("hasSecureHardware", hasSecureHardware());
            
            // Timestamp
            capabilities.putString("timestamp", java.time.Instant.now().toString());
            
            LogSanitizer.d(TAG, String.format("Capabilities: NFC=%s, Camera=%s, API=%d", 
                    hasNfc, hasCamera, Build.VERSION.SDK_INT));
            
            promise.resolve(capabilities);
            
        } catch (Exception e) {
            LogSanitizer.e(TAG, "Failed to get capabilities", e);
            promise.reject("CAPABILITY_ERROR", "Failed to get device capabilities: " + e.getMessage());
        }
    }
    
    /**
     * Check if device meets minimum requirements
     * 
     * @param promise Promise to resolve with boolean result
     */
    @ReactMethod
    public void meetsMinimumRequirements(Promise promise) {
        try {
            boolean meetsRequirements = true;
            WritableMap issues = new WritableNativeMap();
            
            // Check minimum API level
            if (Build.VERSION.SDK_INT < 23) {
                meetsRequirements = false;
                issues.putString("apiLevel", "Minimum API 23 required, found API " + Build.VERSION.SDK_INT);
            }
            
            // Check camera (required for OCR)
            if (!hasCameraHardware()) {
                meetsRequirements = false;
                issues.putString("camera", "Camera hardware required for OCR functionality");
            }
            
            // NFC is optional but warn if not available
            if (!hasNfcHardware()) {
                issues.putString("nfc", "NFC not available - NFC features will be disabled");
            }
            
            WritableMap result = new WritableNativeMap();
            result.putBoolean("meetsRequirements", meetsRequirements);
            result.putMap("issues", issues);
            
            promise.resolve(result);
            
        } catch (Exception e) {
            LogSanitizer.e(TAG, "Failed to check requirements", e);
            promise.reject("REQUIREMENT_CHECK_ERROR", "Failed to check requirements: " + e.getMessage());
        }
    }
    
    // ========== Private Helper Methods ==========
    
    private boolean hasNfcHardware() {
        try {
            PackageManager pm = reactContext.getPackageManager();
            return pm.hasSystemFeature(PackageManager.FEATURE_NFC);
        } catch (Exception e) {
            LogSanitizer.w(TAG, "Failed to check NFC hardware", e);
            return false;
        }
    }
    
    private boolean isNfcEnabled() {
        try {
            if (!hasNfcHardware()) {
                return false;
            }
            
            NfcAdapter nfcAdapter = NfcAdapter.getDefaultAdapter(reactContext);
            return nfcAdapter != null && nfcAdapter.isEnabled();
        } catch (Exception e) {
            LogSanitizer.w(TAG, "Failed to check NFC status", e);
            return false;
        }
    }
    
    private boolean hasCameraHardware() {
        try {
            PackageManager pm = reactContext.getPackageManager();
            return pm.hasSystemFeature(PackageManager.FEATURE_CAMERA) ||
                   pm.hasSystemFeature(PackageManager.FEATURE_CAMERA_FRONT);
        } catch (Exception e) {
            LogSanitizer.w(TAG, "Failed to check camera hardware", e);
            return false;
        }
    }
    
    private boolean hasCamera2Support() {
        try {
            PackageManager pm = reactContext.getPackageManager();
            return pm.hasSystemFeature(PackageManager.FEATURE_CAMERA_LEVEL_FULL) ||
                   pm.hasSystemFeature(PackageManager.FEATURE_CAMERA_CAPABILITY_MANUAL_SENSOR) ||
                   Build.VERSION.SDK_INT >= 21; // Camera2 API available from API 21
        } catch (Exception e) {
            LogSanitizer.w(TAG, "Failed to check Camera2 support", e);
            return false;
        }
    }
    
    private boolean isSELinuxEnforcing() {
        try {
            // Check if SELinux is enforcing
            Process process = Runtime.getRuntime().exec("getenforce");
            process.waitFor();
            java.io.BufferedReader reader = new java.io.BufferedReader(
                    new java.io.InputStreamReader(process.getInputStream()));
            String result = reader.readLine();
            return "Enforcing".equals(result);
        } catch (Exception e) {
            LogSanitizer.w(TAG, "Failed to check SELinux status", e);
            return false; // Assume not enforcing if can't determine
        }
    }
    
    private boolean hasHardwareKeystore() {
        try {
            PackageManager pm = reactContext.getPackageManager();
            return pm.hasSystemFeature(PackageManager.FEATURE_STRONGBOX_KEYSTORE) ||
                   pm.hasSystemFeature("android.hardware.keystore") ||
                   Build.VERSION.SDK_INT >= 23; // Hardware-backed keystore from API 23
        } catch (Exception e) {
            LogSanitizer.w(TAG, "Failed to check hardware keystore", e);
            return false;
        }
    }
    
    private boolean hasFingerprintHardware() {
        try {
            PackageManager pm = reactContext.getPackageManager();
            return pm.hasSystemFeature(PackageManager.FEATURE_FINGERPRINT);
        } catch (Exception e) {
            LogSanitizer.w(TAG, "Failed to check fingerprint hardware", e);
            return false;
        }
    }
    
    private boolean hasSecureHardware() {
        try {
            PackageManager pm = reactContext.getPackageManager();
            return pm.hasSystemFeature(PackageManager.FEATURE_STRONGBOX_KEYSTORE) ||
                   pm.hasSystemFeature(PackageManager.FEATURE_SECURITY_MODEL_COMPATIBLE);
        } catch (Exception e) {
            LogSanitizer.w(TAG, "Failed to check secure hardware", e);
            return false;
        }
    }
}
