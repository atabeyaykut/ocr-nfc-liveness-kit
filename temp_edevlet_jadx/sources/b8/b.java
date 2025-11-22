package b8;

import androidx.appcompat.widget.v;

/* loaded from: classes2.dex */
public final class b {
    public static int a(int r32) {
        if (r32 == 0) {
            return 0;
        }
        if (r32 == 90) {
            return 1;
        }
        if (r32 == 180) {
            return 2;
        }
        if (r32 == 270) {
            return 3;
        }
        throw new IllegalArgumentException(v.c(29, "Invalid rotation: ", r32));
    }
}
