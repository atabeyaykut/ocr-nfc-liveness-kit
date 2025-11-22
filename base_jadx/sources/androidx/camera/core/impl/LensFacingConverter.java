package androidx.camera.core.impl;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

@RequiresApi(21)
/* loaded from: classes.dex */
public class LensFacingConverter {
    private LensFacingConverter() {
    }

    @NonNull
    public static String nameOf(int r22) {
        if (r22 == 0) {
            return "FRONT";
        }
        if (r22 == 1) {
            return "BACK";
        }
        throw new IllegalArgumentException(android.support.v4.media.a.d("Unknown lens facing ", r22));
    }

    public static int valueOf(@Nullable String str) {
        if (str == null) {
            throw new NullPointerException("name cannot be null");
        }
        if (str.equals("BACK")) {
            return 1;
        }
        if (str.equals("FRONT")) {
            return 0;
        }
        throw new IllegalArgumentException("Unknown len facing name ".concat(str));
    }

    @NonNull
    public static Integer[] values() {
        return new Integer[]{0, 1};
    }
}
