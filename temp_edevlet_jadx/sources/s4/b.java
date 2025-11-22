package s4;

import java.util.AbstractList;
import java.util.List;
import java.util.RandomAccess;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* loaded from: classes.dex */
public final class b {
    public static AbstractList a(List list, ca caVar) {
        return list instanceof RandomAccess ? new g0(list, caVar) : new i0(list, caVar);
    }

    public static void b(int r6, int r72) {
        String strZ;
        if (r6 < 0 || r6 >= r72) {
            if (r6 < 0) {
                strZ = x5.a.z("%s (%s) must not be negative", "index", Integer.valueOf(r6));
            } else {
                if (r72 < 0) {
                    throw new IllegalArgumentException(androidx.appcompat.widget.v.c(26, "negative size: ", r72));
                }
                strZ = x5.a.z("%s (%s) must be less than size (%s)", "index", Integer.valueOf(r6), Integer.valueOf(r72));
            }
            throw new IndexOutOfBoundsException(strZ);
        }
    }

    public static void c(int r22, int r32) {
        if (r22 < 0 || r22 > r32) {
            throw new IndexOutOfBoundsException(e(r22, r32, "index"));
        }
    }

    public static void d(int r22, int r32, int r42) {
        if (r22 < 0 || r32 < r22 || r32 > r42) {
            throw new IndexOutOfBoundsException((r22 < 0 || r22 > r42) ? e(r22, r42, "start index") : (r32 < 0 || r32 > r42) ? e(r32, r42, "end index") : x5.a.z("end index (%s) must not be less than start index (%s)", Integer.valueOf(r32), Integer.valueOf(r22)));
        }
    }

    public static String e(int r42, int r52, @NullableDecl String str) {
        if (r42 < 0) {
            return x5.a.z("%s (%s) must not be negative", str, Integer.valueOf(r42));
        }
        if (r52 >= 0) {
            return x5.a.z("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(r42), Integer.valueOf(r52));
        }
        throw new IllegalArgumentException(androidx.appcompat.widget.v.c(26, "negative size: ", r52));
    }
}
