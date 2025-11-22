package r3;

import android.os.Looper;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;

/* loaded from: classes.dex */
public final class r {
    public static void a(boolean z10) {
        if (!z10) {
            throw new IllegalArgumentException();
        }
    }

    public static void b(boolean z10, @NonNull String str) {
        if (!z10) {
            throw new IllegalArgumentException(String.valueOf(str));
        }
    }

    public static void c(boolean z10, @NonNull String str, @NonNull Object... objArr) {
        if (!z10) {
            throw new IllegalArgumentException(String.format(str, objArr));
        }
    }

    public static void d(@NonNull h4.i iVar) {
        Looper looperMyLooper = Looper.myLooper();
        if (looperMyLooper != iVar.getLooper()) {
            String name = looperMyLooper != null ? looperMyLooper.getThread().getName() : "null current looper";
            throw new IllegalStateException("Must be called on " + iVar.getLooper().getThread().getName() + " thread, but got " + name + ".");
        }
    }

    public static void e(@NonNull String str) {
        if (!(Looper.getMainLooper() == Looper.myLooper())) {
            throw new IllegalStateException(str);
        }
    }

    @NonNull
    @EnsuresNonNull({"#1"})
    public static void f(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Given String is empty or null");
        }
    }

    @NonNull
    @EnsuresNonNull({"#1"})
    public static void g(@NonNull String str, @Nullable String str2) {
        if (TextUtils.isEmpty(str2)) {
            throw new IllegalArgumentException(str);
        }
    }

    public static void h(@NonNull String str) {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            throw new IllegalStateException(str);
        }
    }

    @NonNull
    @EnsuresNonNull({"#1"})
    public static void i(@Nullable Object obj) {
        if (obj == null) {
            throw new NullPointerException("null reference");
        }
    }

    @NonNull
    @EnsuresNonNull({"#1"})
    public static void j(@NonNull Object obj, @NonNull String str) {
        if (obj == null) {
            throw new NullPointerException(str);
        }
    }

    public static void k(@NonNull String str, boolean z10) {
        if (!z10) {
            throw new IllegalStateException(String.valueOf(str));
        }
    }

    public static void l(boolean z10) {
        if (!z10) {
            throw new IllegalStateException();
        }
    }
}
