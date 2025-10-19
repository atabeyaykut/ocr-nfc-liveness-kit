package com.ocr.modules;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.util.Base64;

import androidx.annotation.NonNull;

import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.WritableArray;
import com.facebook.react.bridge.WritableMap;
import com.facebook.react.module.annotations.ReactModule;

import com.google.mlkit.vision.common.InputImage;
import com.google.mlkit.vision.face.Face;
import com.google.mlkit.vision.face.FaceDetection;
import com.google.mlkit.vision.face.FaceDetector;
import com.google.mlkit.vision.face.FaceDetectorOptions;

import java.io.File;
import java.io.IOException;
import java.util.List;

/**
 * React Native Module for ML Kit Face Detection
 * Provides face detection and liveness detection capabilities
 */
@ReactModule(name = FaceDetectionModule.NAME)
public class FaceDetectionModule extends ReactContextBaseJavaModule {
    public static final String NAME = "FaceDetectionModule";
    
    private final ReactApplicationContext reactContext;
    private FaceDetector faceDetector;

    public FaceDetectionModule(ReactApplicationContext reactContext) {
        super(reactContext);
        this.reactContext = reactContext;
        initializeFaceDetector();
    }

    @NonNull
    @Override
    public String getName() {
        return NAME;
    }

    /**
     * Initialize ML Kit Face Detector with optimal settings
     */
    private void initializeFaceDetector() {
        FaceDetectorOptions options = new FaceDetectorOptions.Builder()
                .setPerformanceMode(FaceDetectorOptions.PERFORMANCE_MODE_ACCURATE)
                .setLandmarkMode(FaceDetectorOptions.LANDMARK_MODE_ALL)
                .setClassificationMode(FaceDetectorOptions.CLASSIFICATION_MODE_ALL)
                .setMinFaceSize(0.15f)
                .enableTracking()
                .build();
        
        faceDetector = FaceDetection.getClient(options);
    }

    /**
     * Detect faces in an image from file path
     * @param imagePath Path to the image file
     * @param promise Promise to resolve with detected faces
     */
    @ReactMethod
    public void detectFaces(String imagePath, Promise promise) {
        try {
            InputImage image = InputImage.fromFilePath(reactContext, Uri.fromFile(new File(imagePath)));
            processFaceDetection(image, promise);
        } catch (IOException e) {
            promise.reject("IMAGE_LOAD_ERROR", "Failed to load image: " + e.getMessage(), e);
        }
    }

    /**
     * Detect faces in an image from base64 string
     * @param base64Image Base64 encoded image string
     * @param promise Promise to resolve with detected faces
     */
    @ReactMethod
    public void detectFacesFromBase64(String base64Image, Promise promise) {
        try {
            byte[] imageBytes = Base64.decode(base64Image, Base64.DEFAULT);
            Bitmap bitmap = BitmapFactory.decodeByteArray(imageBytes, 0, imageBytes.length);
            
            if (bitmap == null) {
                promise.reject("IMAGE_DECODE_ERROR", "Failed to decode base64 image");
                return;
            }
            
            InputImage image = InputImage.fromBitmap(bitmap, 0);
            processFaceDetection(image, promise);
        } catch (Exception e) {
            promise.reject("DETECTION_ERROR", "Face detection failed: " + e.getMessage(), e);
        }
    }

    /**
     * Process face detection and return results
     */
    private void processFaceDetection(InputImage image, Promise promise) {
        faceDetector.process(image)
                .addOnSuccessListener(faces -> {
                    WritableArray facesArray = Arguments.createArray();
                    
                    for (Face face : faces) {
                        WritableMap faceMap = Arguments.createMap();
                        
                        // Face bounding box
                        WritableMap boundingBox = Arguments.createMap();
                        boundingBox.putInt("left", face.getBoundingBox().left);
                        boundingBox.putInt("top", face.getBoundingBox().top);
                        boundingBox.putInt("width", face.getBoundingBox().width());
                        boundingBox.putInt("height", face.getBoundingBox().height());
                        faceMap.putMap("boundingBox", boundingBox);
                        
                        // Face rotation angles
                        faceMap.putDouble("headEulerAngleX", face.getHeadEulerAngleX());
                        faceMap.putDouble("headEulerAngleY", face.getHeadEulerAngleY());
                        faceMap.putDouble("headEulerAngleZ", face.getHeadEulerAngleZ());
                        
                        // Classification probabilities
                        if (face.getSmilingProbability() != null) {
                            faceMap.putDouble("smilingProbability", face.getSmilingProbability());
                        }
                        if (face.getLeftEyeOpenProbability() != null) {
                            faceMap.putDouble("leftEyeOpenProbability", face.getLeftEyeOpenProbability());
                        }
                        if (face.getRightEyeOpenProbability() != null) {
                            faceMap.putDouble("rightEyeOpenProbability", face.getRightEyeOpenProbability());
                        }
                        
                        // Tracking ID
                        if (face.getTrackingId() != null) {
                            faceMap.putInt("trackingId", face.getTrackingId());
                        }
                        
                        facesArray.pushMap(faceMap);
                    }
                    
                    WritableMap result = Arguments.createMap();
                    result.putArray("faces", facesArray);
                    result.putInt("faceCount", faces.size());
                    
                    promise.resolve(result);
                })
                .addOnFailureListener(e -> {
                    promise.reject("DETECTION_FAILED", "Face detection failed: " + e.getMessage(), e);
                });
    }

    /**
     * Perform basic liveness detection
     * Checks for eye blink and head movement
     */
    @ReactMethod
    public void checkLiveness(String imagePath, Promise promise) {
        try {
            InputImage image = InputImage.fromFilePath(reactContext, Uri.fromFile(new File(imagePath)));
            
            faceDetector.process(image)
                    .addOnSuccessListener(faces -> {
                        WritableMap result = Arguments.createMap();
                        
                        if (faces.isEmpty()) {
                            result.putBoolean("isLive", false);
                            result.putString("reason", "No face detected");
                            promise.resolve(result);
                            return;
                        }
                        
                        Face face = faces.get(0);
                        boolean isLive = true;
                        String reason = "Live face detected";
                        
                        // Check if eyes are open
                        Float leftEyeOpen = face.getLeftEyeOpenProbability();
                        Float rightEyeOpen = face.getRightEyeOpenProbability();
                        
                        if (leftEyeOpen != null && rightEyeOpen != null) {
                            if (leftEyeOpen < 0.3f || rightEyeOpen < 0.3f) {
                                isLive = false;
                                reason = "Eyes closed or suspicious";
                            }
                        }
                        
                        // Check head angle (should be relatively straight)
                        float headY = face.getHeadEulerAngleY();
                        float headZ = face.getHeadEulerAngleZ();
                        
                        if (Math.abs(headY) > 30 || Math.abs(headZ) > 30) {
                            isLive = false;
                            reason = "Head angle suspicious";
                        }
                        
                        result.putBoolean("isLive", isLive);
                        result.putString("reason", reason);
                        
                        // Add detailed metrics
                        WritableMap metrics = Arguments.createMap();
                        if (leftEyeOpen != null) metrics.putDouble("leftEyeOpen", leftEyeOpen);
                        if (rightEyeOpen != null) metrics.putDouble("rightEyeOpen", rightEyeOpen);
                        metrics.putDouble("headAngleY", headY);
                        metrics.putDouble("headAngleZ", headZ);
                        result.putMap("metrics", metrics);
                        
                        promise.resolve(result);
                    })
                    .addOnFailureListener(e -> {
                        promise.reject("LIVENESS_CHECK_FAILED", "Liveness check failed: " + e.getMessage(), e);
                    });
        } catch (IOException e) {
            promise.reject("IMAGE_LOAD_ERROR", "Failed to load image: " + e.getMessage(), e);
        }
    }

    /**
     * Release resources when module is destroyed
     */
    @Override
    public void invalidate() {
        super.invalidate();
        if (faceDetector != null) {
            faceDetector.close();
        }
    }
}
