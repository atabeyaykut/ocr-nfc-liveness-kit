package androidx.core.accessibilityservice;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.content.pm.PackageManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public final class AccessibilityServiceInfoCompat {
    public static final int CAPABILITY_CAN_FILTER_KEY_EVENTS = 8;
    public static final int CAPABILITY_CAN_REQUEST_ENHANCED_WEB_ACCESSIBILITY = 4;
    public static final int CAPABILITY_CAN_REQUEST_TOUCH_EXPLORATION = 2;
    public static final int CAPABILITY_CAN_RETRIEVE_WINDOW_CONTENT = 1;
    public static final int FEEDBACK_ALL_MASK = -1;
    public static final int FEEDBACK_BRAILLE = 32;
    public static final int FLAG_INCLUDE_NOT_IMPORTANT_VIEWS = 2;
    public static final int FLAG_REPORT_VIEW_IDS = 16;
    public static final int FLAG_REQUEST_ENHANCED_WEB_ACCESSIBILITY = 8;
    public static final int FLAG_REQUEST_FILTER_KEY_EVENTS = 32;
    public static final int FLAG_REQUEST_TOUCH_EXPLORATION_MODE = 4;

    private AccessibilityServiceInfoCompat() {
    }

    @NonNull
    public static String capabilityToString(int r12) {
        return r12 != 1 ? r12 != 2 ? r12 != 4 ? r12 != 8 ? "UNKNOWN" : "CAPABILITY_CAN_FILTER_KEY_EVENTS" : "CAPABILITY_CAN_REQUEST_ENHANCED_WEB_ACCESSIBILITY" : "CAPABILITY_CAN_REQUEST_TOUCH_EXPLORATION" : "CAPABILITY_CAN_RETRIEVE_WINDOW_CONTENT";
    }

    @NonNull
    public static String feedbackTypeToString(int r42) {
        StringBuilder sb2 = new StringBuilder();
        String str = "[";
        while (true) {
            sb2.append(str);
            while (r42 > 0) {
                int r12 = 1 << Integer.numberOfTrailingZeros(r42);
                r42 &= ~r12;
                if (sb2.length() > 1) {
                    sb2.append(", ");
                }
                if (r12 == 1) {
                    str = "FEEDBACK_SPOKEN";
                } else if (r12 == 2) {
                    str = "FEEDBACK_HAPTIC";
                } else if (r12 == 4) {
                    str = "FEEDBACK_AUDIBLE";
                } else if (r12 == 8) {
                    str = "FEEDBACK_VISUAL";
                } else if (r12 == 16) {
                    str = "FEEDBACK_GENERIC";
                }
            }
            sb2.append("]");
            return sb2.toString();
        }
    }

    @Nullable
    public static String flagToString(int r12) {
        if (r12 == 1) {
            return "DEFAULT";
        }
        if (r12 == 2) {
            return "FLAG_INCLUDE_NOT_IMPORTANT_VIEWS";
        }
        if (r12 == 4) {
            return "FLAG_REQUEST_TOUCH_EXPLORATION_MODE";
        }
        if (r12 == 8) {
            return "FLAG_REQUEST_ENHANCED_WEB_ACCESSIBILITY";
        }
        if (r12 == 16) {
            return "FLAG_REPORT_VIEW_IDS";
        }
        if (r12 != 32) {
            return null;
        }
        return "FLAG_REQUEST_FILTER_KEY_EVENTS";
    }

    public static int getCapabilities(@NonNull AccessibilityServiceInfo accessibilityServiceInfo) {
        return accessibilityServiceInfo.getCapabilities();
    }

    @Nullable
    public static String loadDescription(@NonNull AccessibilityServiceInfo accessibilityServiceInfo, @NonNull PackageManager packageManager) {
        return accessibilityServiceInfo.loadDescription(packageManager);
    }
}
