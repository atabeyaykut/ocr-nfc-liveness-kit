package com.ocrmobilesdk;

import android.app.Application;
import androidx.multidex.MultiDexApplication;

import com.facebook.react.ReactApplication;
import com.facebook.react.ReactNativeHost;
import com.facebook.react.ReactPackage;
import com.facebook.react.PackageList;
import com.facebook.react.shell.MainReactPackage;
import com.facebook.react.defaults.DefaultNewArchitectureEntryPoint;
import com.facebook.react.defaults.DefaultReactNativeHost;
import com.facebook.react.ReactInstanceManager;
import com.facebook.react.ReactInstanceEventListener;
import com.facebook.react.bridge.ReactContext;
import com.facebook.soloader.SoLoader;
import android.util.Log;

import com.ocrmobilesdk.BuildConfig;
import com.ocr.OCRSDKPackage;
import com.ocr.modules.FaceDetectionPackage;

// Native modules will be auto-linked via PackageList

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class MainApplication extends MultiDexApplication implements ReactApplication {

  private final ReactNativeHost mReactNativeHost = new DefaultReactNativeHost(this) {
    @Override
    public boolean isNewArchEnabled() {
      return BuildConfig.IS_NEW_ARCHITECTURE_ENABLED;
    }

    @Override
    public Boolean isHermesEnabled() {
      return BuildConfig.IS_HERMES_ENABLED;
    }

    @Override
    public boolean getUseDeveloperSupport() {
      return BuildConfig.DEBUG;
    }

    @Override
    protected String getJSMainModuleName() {
      return "index";
    }

    @Override
    protected List<ReactPackage> getPackages() {
      @SuppressWarnings("UnnecessaryLocalVariable")
      List<ReactPackage> packages = new PackageList(this).getPackages();
      // Add custom OCR SDK package
      packages.add(new OCRSDKPackage());
      // Add Face Detection package
      packages.add(new FaceDetectionPackage());
      
      return packages;
    }
  };

  @Override
  public ReactNativeHost getReactNativeHost() {
    return mReactNativeHost;
  }

  @Override
  public void onCreate() {
    super.onCreate();
    SoLoader.init(this, false);
    if (BuildConfig.IS_NEW_ARCHITECTURE_ENABLED) {
      DefaultNewArchitectureEntryPoint.load();
    }
    
    // Add ReactInstanceEventListener to ensure bridge is ready before modules send events
    final ReactInstanceManager reactInstanceManager = mReactNativeHost.getReactInstanceManager();
    reactInstanceManager.addReactInstanceEventListener(new ReactInstanceEventListener() {
      @Override
      public void onReactContextInitialized(ReactContext context) {
        Log.d("MainApplication", "React Context initialized - Bridge is ready");
        // React Native bridge is now fully initialized
        // Native modules can now safely send events to JavaScript
      }
    });
  }
}
