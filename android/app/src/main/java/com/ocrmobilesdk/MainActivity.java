package com.ocrmobilesdk;

import com.facebook.react.ReactActivity;
import android.os.Bundle;

public class MainActivity extends ReactActivity {
  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(null);
  }

  @Override
  protected String getMainComponentName() {
    // This should match the app name registered from JavaScript (AppRegistry.registerComponent)
    return "mobile-sdk-ocr-nfc-liveness";
  }
}
