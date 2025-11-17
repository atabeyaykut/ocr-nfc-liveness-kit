# ProGuard/R8 rules for React Native app
# Keep default rules; add library-specific rules below if needed.

# React Native Core
-keepclassmembers class * {
    @com.facebook.react.bridge.ReactMethod <methods>;
}
-keep class com.facebook.react.** { *; }
-keep class com.facebook.hermes.** { *; }
-keep class com.facebook.jni.** { *; }

# Vision Camera
-keep class com.mrousavy.camera.** { *; }
-keep class com.oney.WebRTCModule.** { *; }

# ML Kit
-keep class com.google.mlkit.** { *; }
-keep class com.google.android.gms.** { *; }
-keep class com.google.android.datatransport.** { *; }

# NFC
-keep class android.nfc.** { *; }
-keep class community.revteltech.nfc.** { *; }

# Image Libraries
-keep class com.reactnative.ivpusic.imagepicker.** { *; }
-keep class com.bam.react.** { *; }

# File System
-keep class com.rnfs.** { *; }

# Permissions
-keep class com.zoontek.rnpermissions.** { *; }

# Gesture Handler
-keep class com.swmansion.gesturehandler.** { *; }

# Text Recognition
-keep class com.google.android.gms.vision.** { *; }

# Keep models and annotations
-keepattributes *Annotation*
-keepattributes Signature
-keepattributes Exceptions
-keepattributes InnerClasses
-keepattributes EnclosingMethod

# Don't warn about missing classes
-dontwarn com.facebook.react.**
-dontwarn com.facebook.hermes.**
-dontwarn com.google.mlkit.**
-dontwarn com.mrousavy.camera.**
-dontwarn okhttp3.**
-dontwarn okio.**
