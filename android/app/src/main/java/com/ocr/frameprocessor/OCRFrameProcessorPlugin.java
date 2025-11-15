package com.ocr.frameprocessor;

import android.os.SystemClock;
import android.util.Log;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.camera.core.ImageProxy;

import com.google.android.gms.tasks.Tasks;
import com.google.mlkit.vision.common.InputImage;
import com.google.mlkit.vision.text.Text;
import com.google.mlkit.vision.text.TextRecognition;
import com.google.mlkit.vision.text.latin.TextRecognizerOptions;
import com.mrousavy.camera.frameprocessors.Frame;
import com.mrousavy.camera.frameprocessors.FrameProcessorPlugin;
import com.mrousavy.camera.frameprocessors.FrameProcessorPluginRegistry;
import com.mrousavy.camera.frameprocessors.VisionCameraProxy;
import com.mrousavy.camera.core.FrameInvalidError;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;

public class OCRFrameProcessorPlugin extends FrameProcessorPlugin {
  private static final String TAG = "OCRFrameProcessor";
  private static final long FRAME_THROTTLE_MS = 350L;
  private long lastProcessedAt = 0L;

  private final com.google.mlkit.vision.text.TextRecognizer recognizer;

  public OCRFrameProcessorPlugin(@NonNull VisionCameraProxy proxy, @Nullable Map<String, Object> options) {
    super();
    recognizer = TextRecognition.getClient(TextRecognizerOptions.DEFAULT_OPTIONS);
  }

  @Override
  public Object callback(@NonNull Frame frame, @Nullable Map<String, Object> params) {
    long now = SystemClock.elapsedRealtime();
    if (now - lastProcessedAt < FRAME_THROTTLE_MS) {
      return null;
    }

    ImageProxy imageProxy;
    try {
      imageProxy = frame.getImageProxy();
    } catch (FrameInvalidError e) {
      Log.w(TAG, "Frame invalid, skipping", e);
      return null;
    }
    if (imageProxy == null) {
      return null;
    }

    try {
      lastProcessedAt = now;

      InputImage inputImage = InputImage.fromMediaImage(
          imageProxy.getImage(),
          imageProxy.getImageInfo().getRotationDegrees()
      );

      Text result = Tasks.await(recognizer.process(inputImage), 1200, TimeUnit.MILLISECONDS);
      if (result == null || result.getText().isEmpty()) {
        return null;
      }

      Map<String, Object> payload = new HashMap<>();
      payload.put("text", result.getText());
      payload.put("confidence", estimateConfidence(result));
      payload.put("blockCount", result.getTextBlocks().size());
      payload.put("timestamp", now);
      return payload;
    } catch (Exception e) {
      Log.w(TAG, "Frame processing failed", e);
      return null;
    } finally {
      imageProxy.close();
    }
  }

  private double estimateConfidence(@NonNull Text text) {
    if (text.getTextBlocks().isEmpty()) {
      return 0.0;
    }

    double confidenceSum = 0.0;
    int observationCount = 0;

    for (Text.TextBlock block : text.getTextBlocks()) {
      for (Text.Line line : block.getLines()) {
        for (Text.Element element : line.getElements()) {
          confidenceSum += element.getConfidence();
          observationCount++;
        }
      }
    }

    if (observationCount == 0) {
      return 0.0;
    }

    double score = confidenceSum / observationCount;
    // Clamp and round for stability
    score = Math.max(0.0, Math.min(1.0, score));
    return Math.round(score * 1000.0) / 1000.0;
  }

  public static void register() {
    FrameProcessorPluginRegistry.addFrameProcessorPlugin(
      "ocrScanner",
      new FrameProcessorPluginRegistry.PluginInitializer() {
        @Override
        public @NonNull FrameProcessorPlugin initializePlugin(@NonNull VisionCameraProxy proxy, @Nullable Map<String, Object> options) {
          return new OCRFrameProcessorPlugin(proxy, options);
        }
      }
    );
  }
}
