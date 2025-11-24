# ProGuard/R8 rules for React Native app
# Keep default rules; add library-specific rules below if needed.

# React Native Core - CRITICAL
-keepclassmembers class * {
    @com.facebook.react.bridge.ReactMethod <methods>;
}
-keep class com.facebook.react.** { *; }
-keep class com.facebook.hermes.** { *; }
-keep class com.facebook.jni.** { *; }
-keep class com.facebook.react.bridge.** { *; }
-keep class com.facebook.react.uimanager.** { *; }
-keep class com.facebook.react.turbomodule.** { *; }

# React Native Reanimated - CRITICAL for worklets
-keep class com.swmansion.reanimated.** { *; }
-keep class com.facebook.react.animated.** { *; }

# React Native Worklets Core - CRITICAL
-keep class com.margelo.worklets.** { *; }
-keep class com.margelo.nitro.** { *; }

# Vision Camera - CRITICAL
-keep class com.mrousavy.camera.** { *; }
-keep class com.oney.WebRTCModule.** { *; }

# ML Kit Face Detection - CRITICAL
-keep class com.google.mlkit.vision.face.** { *; }
-keep class com.google.android.gms.internal.mlkit_vision_face.** { *; }

# ML Kit Text Recognition - CRITICAL
-keep class com.google.mlkit.vision.text.** { *; }
-keep class com.google.android.gms.internal.mlkit_vision_text.** { *; }

# ML Kit Common - CRITICAL
-keep class com.google.mlkit.** { *; }
-keep class com.google.android.gms.** { *; }
-keep class com.google.android.datatransport.** { *; }

# NFC - CRITICAL for passport reading
-keep class android.nfc.** { *; }
-keep class community.revteltech.nfc.** { *; }
-keep class org.jmrtd.** { *; }
-keep class net.sf.scuba.** { *; }

# BouncyCastle Crypto - CRITICAL for BAC/PACE
-keep class org.bouncycastle.** { *; }
-dontwarn org.bouncycastle.**

# Image Libraries
-keep class com.reactnative.ivpusic.imagepicker.** { *; }
-keep class com.bam.react.** { *; }

# File System
-keep class com.rnfs.** { *; }

# Permissions
-keep class com.zoontek.rnpermissions.** { *; }

# Gesture Handler
-keep class com.swmansion.gesturehandler.** { *; }

# React Navigation
-keep class com.swmansion.rnscreens.** { *; }

# Safe Area Context
-keep class com.th3rdwave.safeareacontext.** { *; }

# TTS
-keep class net.no_mad.tts.** { *; }

# Keep all native modules
-keep class com.ocrmobilesdk.** { *; }
-keep class com.sdk.** { *; }

# Keep models and annotations - CRITICAL
-keepattributes *Annotation*
-keepattributes Signature
-keepattributes Exceptions
-keepattributes InnerClasses
-keepattributes EnclosingMethod
-keepattributes SourceFile
-keepattributes LineNumberTable

# Keep JavaScript interface methods
-keepclassmembers class * {
    @android.webkit.JavascriptInterface <methods>;
}

# Keep native methods
-keepclasseswithmembernames class * {
    native <methods>;
}

# Keep enums
-keepclassmembers enum * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}

# Keep Parcelables
-keep class * implements android.os.Parcelable {
    public static final android.os.Parcelable$Creator *;
}

# Keep Serializable
-keepclassmembers class * implements java.io.Serializable {
    static final long serialVersionUID;
    private static final java.io.ObjectStreamField[] serialPersistentFields;
    private void writeObject(java.io.ObjectOutputStream);
    private void readObject(java.io.ObjectInputStream);
    java.lang.Object writeReplace();
    java.lang.Object readResolve();
}

# Don't warn about missing classes
-dontwarn com.facebook.react.**
-dontwarn com.facebook.hermes.**
-dontwarn com.google.mlkit.**
-dontwarn com.mrousavy.camera.**
-dontwarn okhttp3.**
-dontwarn okio.**
-dontwarn org.jmrtd.**
-dontwarn net.sf.scuba.**
-dontwarn javax.naming.**
-dontwarn javax.security.**
