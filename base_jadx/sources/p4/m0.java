package p4;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* loaded from: classes.dex */
public final class m0 {
    public static int a(int r12) {
        return (r12 + 1) * (r12 < 32 ? 4 : 2);
    }

    public static boolean b(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static int c(@NullableDecl Object obj, @NullableDecl Object obj2, int r11, Object obj3, int[] r13, Object[] objArr, @NullableDecl Object[] objArr2) {
        int r22;
        int r6;
        int r02 = da.a(obj);
        int r12 = r02 & r11;
        int r23 = d(r12, obj3);
        if (r23 != 0) {
            int r42 = ~r11;
            int r03 = r02 & r42;
            int r52 = -1;
            while (true) {
                r22 = r23 - 1;
                r6 = r13[r22];
                if ((r6 & r42) != r03 || !b(obj, objArr[r22]) || (objArr2 != null && !b(obj2, objArr2[r22]))) {
                    int r53 = r6 & r11;
                    if (r53 == 0) {
                        break;
                    }
                    r52 = r22;
                    r23 = r53;
                } else {
                    break;
                }
            }
            int r92 = r6 & r11;
            if (r52 == -1) {
                f(r12, r92, obj3);
            } else {
                r13[r52] = (r92 & r11) | (r13[r52] & r42);
            }
            return r22;
        }
        return -1;
    }

    public static int d(int r12, Object obj) {
        return obj instanceof byte[] ? ((byte[]) obj)[r12] & 255 : obj instanceof short[] ? (char) ((short[]) obj)[r12] : ((int[]) obj)[r12];
    }

    public static Object e(int r32) {
        if (r32 < 2 || r32 > 1073741824 || Integer.highestOneBit(r32) != r32) {
            throw new IllegalArgumentException(androidx.appcompat.widget.v.c(52, "must be power of 2 between 2^1 and 2^30: ", r32));
        }
        return r32 <= 256 ? new byte[r32] : r32 <= 65536 ? new short[r32] : new int[r32];
    }

    public static void f(int r12, int r22, Object obj) {
        if (obj instanceof byte[]) {
            ((byte[]) obj)[r12] = (byte) r22;
        } else if (obj instanceof short[]) {
            ((short[]) obj)[r12] = (short) r22;
        } else {
            ((int[]) obj)[r12] = r22;
        }
    }
}
