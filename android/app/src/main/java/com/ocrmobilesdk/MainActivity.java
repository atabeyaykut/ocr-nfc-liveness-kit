package com.ocrmobilesdk;

import com.facebook.react.ReactActivity;
import com.facebook.react.ReactActivityDelegate;
import com.facebook.react.ReactRootView;
import com.facebook.react.defaults.DefaultNewArchitectureEntryPoint;
import com.facebook.react.defaults.DefaultReactActivityDelegate;
// import com.swmansion.gesturehandler.react.RNGestureHandlerEnabledRootView; // Not used
import android.os.Bundle;
import android.content.Intent;
import android.nfc.NfcAdapter;
import android.nfc.Tag;
import android.app.PendingIntent;

public class MainActivity extends ReactActivity {
  private NfcAdapter nfcAdapter;
  private PendingIntent pendingIntent;

  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(null);
    
    // Initialize NFC adapter
    nfcAdapter = NfcAdapter.getDefaultAdapter(this);
    if (nfcAdapter != null) {
      Intent intent = new Intent(this, getClass()).addFlags(Intent.FLAG_ACTIVITY_SINGLE_TOP);
      pendingIntent = PendingIntent.getActivity(this, 0, intent, PendingIntent.FLAG_MUTABLE);
    }
  }

  @Override
  protected void onResume() {
    super.onResume();
    // Enable NFC foreground dispatch
    if (nfcAdapter != null) {
      nfcAdapter.enableForegroundDispatch(this, pendingIntent, null, null);
    }
  }

  @Override
  protected void onPause() {
    super.onPause();
    // Disable NFC foreground dispatch
    if (nfcAdapter != null) {
      nfcAdapter.disableForegroundDispatch(this);
    }
  }

  @Override
  public void onNewIntent(Intent intent) {
    super.onNewIntent(intent);
    setIntent(intent);
    
    // Handle NFC intent
    if (NfcAdapter.ACTION_TECH_DISCOVERED.equals(intent.getAction()) || 
        NfcAdapter.ACTION_TAG_DISCOVERED.equals(intent.getAction())) {
      Tag tag = intent.getParcelableExtra(NfcAdapter.EXTRA_TAG);
      if (tag != null) {
        // NFC tag detected - this will be handled by the React Native NFC manager
      }
    }
  }

  @Override
  protected String getMainComponentName() {
    // This should match the app name registered from JavaScript (AppRegistry.registerComponent)
    return "mobile-sdk-ocr-nfc-liveness";
  }

  /**
   * Returns the instance of the {@link ReactActivityDelegate}. There the RootView is created and
   * you can specify the renderer you wish to use - the new renderer (Fabric) or the old renderer
   * (Paper).
   */
  @Override
  protected ReactActivityDelegate createReactActivityDelegate() {
    return new DefaultReactActivityDelegate(
        this,
        getMainComponentName(),
        // If you opted-in for the New Architecture, we enable the Fabric Renderer.
        DefaultNewArchitectureEntryPoint.getFabricEnabled()) {
      
      @Override
      protected ReactRootView createRootView() {
        ReactRootView reactRootView = new ReactRootView(MainActivity.this);
        // Enable gesture handler for better touch handling
        return reactRootView;
      }
    };
  }
}
