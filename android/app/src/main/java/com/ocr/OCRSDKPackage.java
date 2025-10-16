package com.ocr;

import com.facebook.react.ReactPackage;
import com.facebook.react.bridge.NativeModule;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.uimanager.ViewManager;

import com.ocr.modules.SecureStorageModule;
import com.ocr.modules.SDKCapabilitiesModule;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 * OCR SDK Package - React Native module registration
 * 
 * Registers all native modules for the OCR SDK
 * 
 * Modules:
 * - SecureStorageModule - Secure storage with cleanup
 * - SDKCapabilitiesModule - Device capability detection
 * 
 * @author Mobile SDK Team
 * @version 1.0.0
 */
public class OCRSDKPackage implements ReactPackage {
    
    @Override
    public List<NativeModule> createNativeModules(ReactApplicationContext reactContext) {
        List<NativeModule> modules = new ArrayList<>();
        
        // Add SecureStorageModule
        modules.add(new SecureStorageModule(reactContext));
        
        // Add SDKCapabilitiesModule
        modules.add(new SDKCapabilitiesModule(reactContext));
        
        return modules;
    }
    
    @Override
    public List<ViewManager> createViewManagers(ReactApplicationContext reactContext) {
        return Collections.emptyList();
    }
}
