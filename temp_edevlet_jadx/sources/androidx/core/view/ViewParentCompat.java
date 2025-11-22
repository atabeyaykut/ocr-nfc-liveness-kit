package androidx.core.view;

import android.util.Log;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

/* loaded from: classes.dex */
public final class ViewParentCompat {
    private static final String TAG = "ViewParentCompat";
    private static int[] sTempNestedScrollConsumed;

    @RequiresApi(19)
    public static class Api19Impl {
        private Api19Impl() {
        }

        @DoNotInline
        public static void notifySubtreeAccessibilityStateChanged(ViewParent viewParent, View view, View view2, int r32) {
            viewParent.notifySubtreeAccessibilityStateChanged(view, view2, r32);
        }
    }

    @RequiresApi(21)
    public static class Api21Impl {
        private Api21Impl() {
        }

        @DoNotInline
        public static boolean onNestedFling(ViewParent viewParent, View view, float f, float f10, boolean z10) {
            return viewParent.onNestedFling(view, f, f10, z10);
        }

        @DoNotInline
        public static boolean onNestedPreFling(ViewParent viewParent, View view, float f, float f10) {
            return viewParent.onNestedPreFling(view, f, f10);
        }

        @DoNotInline
        public static void onNestedPreScroll(ViewParent viewParent, View view, int r22, int r32, int[] r42) {
            viewParent.onNestedPreScroll(view, r22, r32, r42);
        }

        @DoNotInline
        public static void onNestedScroll(ViewParent viewParent, View view, int r22, int r32, int r42, int r52) {
            viewParent.onNestedScroll(view, r22, r32, r42, r52);
        }

        @DoNotInline
        public static void onNestedScrollAccepted(ViewParent viewParent, View view, View view2, int r32) {
            viewParent.onNestedScrollAccepted(view, view2, r32);
        }

        @DoNotInline
        public static boolean onStartNestedScroll(ViewParent viewParent, View view, View view2, int r32) {
            return viewParent.onStartNestedScroll(view, view2, r32);
        }

        @DoNotInline
        public static void onStopNestedScroll(ViewParent viewParent, View view) {
            viewParent.onStopNestedScroll(view);
        }
    }

    private ViewParentCompat() {
    }

    private static int[] getTempNestedScrollConsumed() {
        int[] r02 = sTempNestedScrollConsumed;
        if (r02 == null) {
            sTempNestedScrollConsumed = new int[2];
        } else {
            r02[0] = 0;
            r02[1] = 0;
        }
        return sTempNestedScrollConsumed;
    }

    public static void notifySubtreeAccessibilityStateChanged(@NonNull ViewParent viewParent, @NonNull View view, @NonNull View view2, int r32) {
        Api19Impl.notifySubtreeAccessibilityStateChanged(viewParent, view, view2, r32);
    }

    public static boolean onNestedFling(@NonNull ViewParent viewParent, @NonNull View view, float f, float f10, boolean z10) {
        try {
            return Api21Impl.onNestedFling(viewParent, view, f, f10, z10);
        } catch (AbstractMethodError e10) {
            Log.e(TAG, "ViewParent " + viewParent + " does not implement interface method onNestedFling", e10);
            return false;
        }
    }

    public static boolean onNestedPreFling(@NonNull ViewParent viewParent, @NonNull View view, float f, float f10) {
        try {
            return Api21Impl.onNestedPreFling(viewParent, view, f, f10);
        } catch (AbstractMethodError e10) {
            Log.e(TAG, "ViewParent " + viewParent + " does not implement interface method onNestedPreFling", e10);
            return false;
        }
    }

    public static void onNestedPreScroll(@NonNull ViewParent viewParent, @NonNull View view, int r82, int r92, @NonNull int[] r10) {
        onNestedPreScroll(viewParent, view, r82, r92, r10, 0);
    }

    public static void onNestedPreScroll(@NonNull ViewParent viewParent, @NonNull View view, int r92, int r10, @NonNull int[] r11, int r12) {
        if (viewParent instanceof NestedScrollingParent2) {
            ((NestedScrollingParent2) viewParent).onNestedPreScroll(view, r92, r10, r11, r12);
            return;
        }
        if (r12 == 0) {
            try {
                Api21Impl.onNestedPreScroll(viewParent, view, r92, r10, r11);
            } catch (AbstractMethodError e10) {
                Log.e(TAG, "ViewParent " + viewParent + " does not implement interface method onNestedPreScroll", e10);
            }
        }
    }

    public static void onNestedScroll(@NonNull ViewParent viewParent, @NonNull View view, int r10, int r11, int r12, int r13) {
        onNestedScroll(viewParent, view, r10, r11, r12, r13, 0, getTempNestedScrollConsumed());
    }

    public static void onNestedScroll(@NonNull ViewParent viewParent, @NonNull View view, int r10, int r11, int r12, int r13, int r14) {
        onNestedScroll(viewParent, view, r10, r11, r12, r13, r14, getTempNestedScrollConsumed());
    }

    public static void onNestedScroll(@NonNull ViewParent viewParent, @NonNull View view, int r12, int r13, int r14, int r15, int r16, @NonNull int[] r17) {
        if (viewParent instanceof NestedScrollingParent3) {
            ((NestedScrollingParent3) viewParent).onNestedScroll(view, r12, r13, r14, r15, r16, r17);
            return;
        }
        r17[0] = r17[0] + r14;
        r17[1] = r17[1] + r15;
        if (viewParent instanceof NestedScrollingParent2) {
            ((NestedScrollingParent2) viewParent).onNestedScroll(view, r12, r13, r14, r15, r16);
            return;
        }
        if (r16 == 0) {
            try {
                Api21Impl.onNestedScroll(viewParent, view, r12, r13, r14, r15);
            } catch (AbstractMethodError e10) {
                Log.e(TAG, "ViewParent " + viewParent + " does not implement interface method onNestedScroll", e10);
            }
        }
    }

    public static void onNestedScrollAccepted(@NonNull ViewParent viewParent, @NonNull View view, @NonNull View view2, int r42) {
        onNestedScrollAccepted(viewParent, view, view2, r42, 0);
    }

    public static void onNestedScrollAccepted(@NonNull ViewParent viewParent, @NonNull View view, @NonNull View view2, int r42, int r52) {
        if (viewParent instanceof NestedScrollingParent2) {
            ((NestedScrollingParent2) viewParent).onNestedScrollAccepted(view, view2, r42, r52);
            return;
        }
        if (r52 == 0) {
            try {
                Api21Impl.onNestedScrollAccepted(viewParent, view, view2, r42);
            } catch (AbstractMethodError e10) {
                Log.e(TAG, "ViewParent " + viewParent + " does not implement interface method onNestedScrollAccepted", e10);
            }
        }
    }

    public static boolean onStartNestedScroll(@NonNull ViewParent viewParent, @NonNull View view, @NonNull View view2, int r42) {
        return onStartNestedScroll(viewParent, view, view2, r42, 0);
    }

    public static boolean onStartNestedScroll(@NonNull ViewParent viewParent, @NonNull View view, @NonNull View view2, int r42, int r52) {
        if (viewParent instanceof NestedScrollingParent2) {
            return ((NestedScrollingParent2) viewParent).onStartNestedScroll(view, view2, r42, r52);
        }
        if (r52 != 0) {
            return false;
        }
        try {
            return Api21Impl.onStartNestedScroll(viewParent, view, view2, r42);
        } catch (AbstractMethodError e10) {
            Log.e(TAG, "ViewParent " + viewParent + " does not implement interface method onStartNestedScroll", e10);
            return false;
        }
    }

    public static void onStopNestedScroll(@NonNull ViewParent viewParent, @NonNull View view) {
        onStopNestedScroll(viewParent, view, 0);
    }

    public static void onStopNestedScroll(@NonNull ViewParent viewParent, @NonNull View view, int r32) {
        if (viewParent instanceof NestedScrollingParent2) {
            ((NestedScrollingParent2) viewParent).onStopNestedScroll(view, r32);
            return;
        }
        if (r32 == 0) {
            try {
                Api21Impl.onStopNestedScroll(viewParent, view);
            } catch (AbstractMethodError e10) {
                Log.e(TAG, "ViewParent " + viewParent + " does not implement interface method onStopNestedScroll", e10);
            }
        }
    }

    @Deprecated
    public static boolean requestSendAccessibilityEvent(ViewParent viewParent, View view, AccessibilityEvent accessibilityEvent) {
        return viewParent.requestSendAccessibilityEvent(view, accessibilityEvent);
    }
}
