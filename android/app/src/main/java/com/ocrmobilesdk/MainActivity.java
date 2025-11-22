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
import android.util.Log;
import com.facebook.react.bridge.ReactContext;
import com.facebook.react.ReactInstanceManager;
import com.sdk.nfc.NFCPassportReaderModule;

public class MainActivity extends ReactActivity {
  private NfcAdapter nfcAdapter;
  private PendingIntent pendingIntent;
  private Tag pendingTag = null;

  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(null);

    Log.d("MainActivity", "▶▶▶ onCreate CALLED ◀◀◀");

    // Initialize NFC adapter
    nfcAdapter = NfcAdapter.getDefaultAdapter(this);
    if (nfcAdapter != null) {
      Log.d("MainActivity", "NFC Adapter initialized successfully");
      Intent intent = new Intent(this, getClass()).addFlags(Intent.FLAG_ACTIVITY_SINGLE_TOP);
      pendingIntent = PendingIntent.getActivity(this, 0, intent, PendingIntent.FLAG_MUTABLE);
      Log.d("MainActivity", "PendingIntent created for NFC foreground dispatch");
    } else {
      Log.e("MainActivity", "NFC Adapter is NULL - device does not support NFC!");
    }
  }

  @Override
  protected void onResume() {
    super.onResume();
    Log.d("MainActivity", "▶▶▶ onResume CALLED ◀◀◀");

    // Enable NFC foreground dispatch
    if (nfcAdapter != null) {
      nfcAdapter.enableForegroundDispatch(this, pendingIntent, null, null);
      Log.d("MainActivity", "✅ NFC foreground dispatch ENABLED");
    } else {
      Log.w("MainActivity", "Cannot enable NFC dispatch - adapter is null");
    }
  }

  @Override
  protected void onPause() {
    super.onPause();
    Log.d("MainActivity", "▶▶▶ onPause CALLED ◀◀◀");

    // Disable NFC foreground dispatch
    if (nfcAdapter != null) {
      nfcAdapter.disableForegroundDispatch(this);
      Log.d("MainActivity", "❌ NFC foreground dispatch DISABLED");
    }
  }

  @Override
  public void onNewIntent(Intent intent) {
    super.onNewIntent(intent);
    setIntent(intent);

    Log.d("MainActivity", "▶▶▶▶▶▶ onNewIntent CALLED ◀◀◀◀◀◀");
    Log.d("MainActivity", "Intent action: " + (intent.getAction() != null ? intent.getAction() : "NULL"));

    // Handle NFC intent
    if (NfcAdapter.ACTION_TECH_DISCOVERED.equals(intent.getAction()) ||
        NfcAdapter.ACTION_TAG_DISCOVERED.equals(intent.getAction())) {
      Log.d("MainActivity", "🔔 NFC ACTION MATCHED!");
      Tag tag = intent.getParcelableExtra(NfcAdapter.EXTRA_TAG);
      if (tag != null) {
        Log.d("MainActivity", "=== NFC TAG DETECTED ===");
        Log.d("MainActivity", "Tag: " + tag.toString());
        Log.d("MainActivity", "Tag ID: " + bytesToHex(tag.getId()));

        // Store tag for retry
        pendingTag = tag;

        // Try to pass tag to native module
        tryPassTagToModule(tag, 3); // 3 retry attempts
      } else {
        Log.e("MainActivity", "❌ Tag is NULL even though action matched!");
      }
    } else {
      Log.w("MainActivity", "⚠️ Intent action did NOT match NFC actions");
      Log.w("MainActivity", "Expected: TECH_DISCOVERED or TAG_DISCOVERED");
      Log.w("MainActivity", "Got: " + intent.getAction());
    }
  }

  private void tryPassTagToModule(final Tag tag, final int retriesLeft) {
    if (retriesLeft <= 0) {
      Log.e("MainActivity", "Failed to pass tag after all retries");
      return;
    }

    try {
      ReactInstanceManager reactInstanceManager = getReactNativeHost().getReactInstanceManager();
      ReactContext reactContext = reactInstanceManager.getCurrentReactContext();

      if (reactContext != null) {
        NFCPassportReaderModule nfcModule = reactContext.getNativeModule(NFCPassportReaderModule.class);
        if (nfcModule != null) {
          nfcModule.setTag(tag);
          Log.d("MainActivity", "✅ Tag successfully passed to NFCPassportReaderModule");
          pendingTag = null; // Clear pending
          return;
        } else {
          Log.w("MainActivity", "NFCPassportReaderModule not found, retrying... (" + retriesLeft + " left)");
        }
      } else {
        Log.w("MainActivity", "ReactContext not ready, retrying... (" + retriesLeft + " left)");
      }

      // Retry after 500ms
      new android.os.Handler().postDelayed(new Runnable() {
        @Override
        public void run() {
          tryPassTagToModule(tag, retriesLeft - 1);
        }
      }, 500);

    } catch (Exception e) {
      Log.e("MainActivity", "Error passing tag: " + e.getMessage(), e);
    }
  }

  private String bytesToHex(byte[] bytes) {
    StringBuilder sb = new StringBuilder();
    for (byte b : bytes) {
      sb.append(String.format("%02X:", b));
    }
    return sb.length() > 0 ? sb.substring(0, sb.length() - 1) : "";
  }

  @Override
  protected String getMainComponentName() {
    // This should match the app name registered from JavaScript
    // (AppRegistry.registerComponent)
    return "mobile-sdk-ocr-nfc-liveness";
  }

  /**
   * Returns the instance of the {@link ReactActivityDelegate}. There the RootView
   * is created and
   * you can specify the renderer you wish to use - the new renderer (Fabric) or
   * the old renderer
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
