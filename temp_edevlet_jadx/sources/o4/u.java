package o4;

import androidx.appcompat.widget.v;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* loaded from: classes.dex */
public final class u {
    public static void a(int r6, int r72) {
        String strZ0;
        if (r6 < 0 || r6 >= r72) {
            if (r6 < 0) {
                strZ0 = b8.f.z0("%s (%s) must not be negative", "index", Integer.valueOf(r6));
            } else {
                if (r72 < 0) {
                    throw new IllegalArgumentException(v.c(26, "negative size: ", r72));
                }
                strZ0 = b8.f.z0("%s (%s) must be less than size (%s)", "index", Integer.valueOf(r6), Integer.valueOf(r72));
            }
            throw new IndexOutOfBoundsException(strZ0);
        }
    }

    public static void b(int r22, int r32) {
        if (r22 < 0 || r22 > r32) {
            throw new IndexOutOfBoundsException(d(r22, r32, "index"));
        }
    }

    public static void c(int r22, int r32, int r42) {
        if (r22 < 0 || r32 < r22 || r32 > r42) {
            throw new IndexOutOfBoundsException((r22 < 0 || r22 > r42) ? d(r22, r42, "start index") : (r32 < 0 || r32 > r42) ? d(r32, r42, "end index") : b8.f.z0("end index (%s) must not be less than start index (%s)", Integer.valueOf(r32), Integer.valueOf(r22)));
        }
    }

    public static String d(int r42, int r52, @NullableDecl String str) {
        if (r42 < 0) {
            return b8.f.z0("%s (%s) must not be negative", str, Integer.valueOf(r42));
        }
        if (r52 >= 0) {
            return b8.f.z0("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(r42), Integer.valueOf(r52));
        }
        throw new IllegalArgumentException(v.c(26, "negative size: ", r52));
    }
}
