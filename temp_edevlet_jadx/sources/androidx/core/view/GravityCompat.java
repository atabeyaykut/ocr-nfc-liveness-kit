package androidx.core.view;

import android.graphics.Rect;
import android.view.Gravity;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

/* loaded from: classes.dex */
public final class GravityCompat {
    public static final int END = 8388613;
    public static final int RELATIVE_HORIZONTAL_GRAVITY_MASK = 8388615;
    public static final int RELATIVE_LAYOUT_DIRECTION = 8388608;
    public static final int START = 8388611;

    @RequiresApi(17)
    public static class Api17Impl {
        private Api17Impl() {
        }

        @DoNotInline
        public static void apply(int r02, int r12, int r22, Rect rect, int r42, int r52, Rect rect2, int r72) {
            Gravity.apply(r02, r12, r22, rect, r42, r52, rect2, r72);
        }

        @DoNotInline
        public static void apply(int r02, int r12, int r22, Rect rect, Rect rect2, int r52) {
            Gravity.apply(r02, r12, r22, rect, rect2, r52);
        }

        @DoNotInline
        public static void applyDisplay(int r02, Rect rect, Rect rect2, int r32) {
            Gravity.applyDisplay(r02, rect, rect2, r32);
        }
    }

    private GravityCompat() {
    }

    public static void apply(int r02, int r12, int r22, @NonNull Rect rect, int r42, int r52, @NonNull Rect rect2, int r72) {
        Api17Impl.apply(r02, r12, r22, rect, r42, r52, rect2, r72);
    }

    public static void apply(int r02, int r12, int r22, @NonNull Rect rect, @NonNull Rect rect2, int r52) {
        Api17Impl.apply(r02, r12, r22, rect, rect2, r52);
    }

    public static void applyDisplay(int r02, @NonNull Rect rect, @NonNull Rect rect2, int r32) {
        Api17Impl.applyDisplay(r02, rect, rect2, r32);
    }

    public static int getAbsoluteGravity(int r02, int r12) {
        return Gravity.getAbsoluteGravity(r02, r12);
    }
}
