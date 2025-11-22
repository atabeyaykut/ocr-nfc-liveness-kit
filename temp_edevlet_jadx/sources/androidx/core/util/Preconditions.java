package androidx.core.util;

import android.text.TextUtils;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import com.google.android.material.transformation.FabTransformationScrimBehavior;
import java.util.Locale;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public final class Preconditions {
    private Preconditions() {
    }

    public static void checkArgument(boolean z10) {
        if (!z10) {
            throw new IllegalArgumentException();
        }
    }

    public static void checkArgument(boolean z10, @NonNull Object obj) {
        if (!z10) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
    }

    public static void checkArgument(boolean z10, @NonNull String str, @NonNull Object... objArr) {
        if (!z10) {
            throw new IllegalArgumentException(String.format(str, objArr));
        }
    }

    public static float checkArgumentFinite(float f, @NonNull String str) {
        if (Float.isNaN(f)) {
            throw new IllegalArgumentException(android.support.v4.media.a.f(str, " must not be NaN"));
        }
        if (Float.isInfinite(f)) {
            throw new IllegalArgumentException(android.support.v4.media.a.f(str, " must not be infinite"));
        }
        return f;
    }

    public static double checkArgumentInRange(double d10, double d11, double d12, @NonNull String str) {
        if (d10 < d11) {
            throw new IllegalArgumentException(String.format(Locale.US, "%s is out of range of [%f, %f] (too low)", str, Double.valueOf(d11), Double.valueOf(d12)));
        }
        if (d10 <= d12) {
            return d10;
        }
        throw new IllegalArgumentException(String.format(Locale.US, "%s is out of range of [%f, %f] (too high)", str, Double.valueOf(d11), Double.valueOf(d12)));
    }

    public static float checkArgumentInRange(float f, float f10, float f11, @NonNull String str) {
        if (f < f10) {
            throw new IllegalArgumentException(String.format(Locale.US, "%s is out of range of [%f, %f] (too low)", str, Float.valueOf(f10), Float.valueOf(f11)));
        }
        if (f <= f11) {
            return f;
        }
        throw new IllegalArgumentException(String.format(Locale.US, "%s is out of range of [%f, %f] (too high)", str, Float.valueOf(f10), Float.valueOf(f11)));
    }

    public static int checkArgumentInRange(int r52, int r6, int r72, @NonNull String str) {
        if (r52 < r6) {
            throw new IllegalArgumentException(String.format(Locale.US, "%s is out of range of [%d, %d] (too low)", str, Integer.valueOf(r6), Integer.valueOf(r72)));
        }
        if (r52 <= r72) {
            return r52;
        }
        throw new IllegalArgumentException(String.format(Locale.US, "%s is out of range of [%d, %d] (too high)", str, Integer.valueOf(r6), Integer.valueOf(r72)));
    }

    public static long checkArgumentInRange(long j10, long j11, long j12, @NonNull String str) {
        if (j10 < j11) {
            throw new IllegalArgumentException(String.format(Locale.US, "%s is out of range of [%d, %d] (too low)", str, Long.valueOf(j11), Long.valueOf(j12)));
        }
        if (j10 <= j12) {
            return j10;
        }
        throw new IllegalArgumentException(String.format(Locale.US, "%s is out of range of [%d, %d] (too high)", str, Long.valueOf(j11), Long.valueOf(j12)));
    }

    @IntRange(from = FabTransformationScrimBehavior.COLLAPSE_DELAY)
    public static int checkArgumentNonnegative(int r02) {
        if (r02 >= 0) {
            return r02;
        }
        throw new IllegalArgumentException();
    }

    @IntRange(from = FabTransformationScrimBehavior.COLLAPSE_DELAY)
    public static int checkArgumentNonnegative(int r02, @Nullable String str) {
        if (r02 >= 0) {
            return r02;
        }
        throw new IllegalArgumentException(str);
    }

    public static int checkFlagsArgument(int r32, int r42) {
        if ((r32 & r42) == r32) {
            return r32;
        }
        throw new IllegalArgumentException("Requested flags 0x" + Integer.toHexString(r32) + ", but only 0x" + Integer.toHexString(r42) + " are allowed");
    }

    @NonNull
    public static <T> T checkNotNull(@Nullable T t10) {
        t10.getClass();
        return t10;
    }

    @NonNull
    public static <T> T checkNotNull(@Nullable T t10, @NonNull Object obj) {
        if (t10 != null) {
            return t10;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    public static void checkState(boolean z10) {
        checkState(z10, null);
    }

    public static void checkState(boolean z10, @Nullable String str) {
        if (!z10) {
            throw new IllegalStateException(str);
        }
    }

    @NonNull
    public static <T extends CharSequence> T checkStringNotEmpty(@Nullable T t10) {
        if (TextUtils.isEmpty(t10)) {
            throw new IllegalArgumentException();
        }
        return t10;
    }

    @NonNull
    public static <T extends CharSequence> T checkStringNotEmpty(@Nullable T t10, @NonNull Object obj) {
        if (TextUtils.isEmpty(t10)) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
        return t10;
    }

    @NonNull
    public static <T extends CharSequence> T checkStringNotEmpty(@Nullable T t10, @NonNull String str, @NonNull Object... objArr) {
        if (TextUtils.isEmpty(t10)) {
            throw new IllegalArgumentException(String.format(str, objArr));
        }
        return t10;
    }
}
