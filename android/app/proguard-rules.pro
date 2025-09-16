# ProGuard/R8 rules for React Native app
# Keep default rules; add library-specific rules below if needed.

# React Native
-keepclassmembers class * {
    @com.facebook.react.bridge.ReactMethod <methods>;
}

# Keep models and annotations (adjust package names if you add obfuscation-sensitive libs)
-keepattributes *Annotation*
-dontwarn com.facebook.react.**
-dontwarn com.facebook.hermes.**
