package q1;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public final class l {
    public static void a(@NonNull String str, boolean z10) {
        if (!z10) {
            throw new IllegalArgumentException(str);
        }
    }

    @NonNull
    public static void b(@Nullable Object obj) {
        if (obj == null) {
            throw new NullPointerException("Argument must not be null");
        }
    }
}
