package com.ocrmobilesdk;

import android.app.Application;

import com.facebook.react.PackageList;
import com.facebook.react.ReactApplication;
import com.facebook.react.ReactNativeHost;
import com.facebook.react.ReactPackage;
import com.facebook.react.defaults.DefaultNewArchitectureEntryPoint;
import com.facebook.react.defaults.DefaultReactNativeHost;

import java.util.List;

public class MainApplication extends Application implements ReactApplication {

  private final ReactNativeHost mReactNativeHost = new DefaultReactNativeHost(this) {
    @Override
    public boolean isNewArchEnabled() {
      return false; // Toggle if you enable the new architecture
    }

    @Override
    public boolean isHermesEnabled() {
      return true;
    }

    @Override
    protected String getJSMainModuleName() {
      return "index";
    }

    @Override
    protected List<ReactPackage> getPackages() {
      @SuppressWarnings("UnnecessaryLocalVariable")
      List<ReactPackage> packages = new PackageList(this).getPackages();
      // Add additional packages here if needed
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
    if (mReactNativeHost.getReactInstanceManager().getCurrentReactContext() == null) {
      // Initialize any SDKs if needed
    }
    if (mReactNativeHost.getReactInstanceManager().getDevSupportManager() != null) {
      // No-op
    }
    if (DefaultNewArchitectureEntryPoint.shouldEnableNewArchitecture()) {
      DefaultNewArchitectureEntryPoint.load();
    }
  }
}
