package androidx.core.content.res;

import java.lang.reflect.Array;

/* loaded from: classes.dex */
final class GrowingArrayUtils {
    private GrowingArrayUtils() {
    }

    public static int[] append(int[] r22, int r32, int r42) {
        if (r32 + 1 > r22.length) {
            int[] r02 = new int[growSize(r32)];
            System.arraycopy(r22, 0, r02, 0, r32);
            r22 = r02;
        }
        r22[r32] = r42;
        return r22;
    }

    public static long[] append(long[] jArr, int r32, long j10) {
        if (r32 + 1 > jArr.length) {
            long[] jArr2 = new long[growSize(r32)];
            System.arraycopy(jArr, 0, jArr2, 0, r32);
            jArr = jArr2;
        }
        jArr[r32] = j10;
        return jArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.lang.Object, java.lang.Object[]] */
    public static <T> T[] append(T[] tArr, int r32, T t10) {
        if (r32 + 1 > tArr.length) {
            ?? r02 = (Object[]) Array.newInstance(tArr.getClass().getComponentType(), growSize(r32));
            System.arraycopy(tArr, 0, r02, 0, r32);
            tArr = r02;
        }
        tArr[r32] = t10;
        return tArr;
    }

    public static boolean[] append(boolean[] zArr, int r32, boolean z10) {
        if (r32 + 1 > zArr.length) {
            boolean[] zArr2 = new boolean[growSize(r32)];
            System.arraycopy(zArr, 0, zArr2, 0, r32);
            zArr = zArr2;
        }
        zArr[r32] = z10;
        return zArr;
    }

    public static int growSize(int r12) {
        if (r12 <= 4) {
            return 8;
        }
        return r12 * 2;
    }

    public static int[] insert(int[] r22, int r32, int r42, int r52) {
        if (r32 + 1 <= r22.length) {
            System.arraycopy(r22, r42, r22, r42 + 1, r32 - r42);
            r22[r42] = r52;
            return r22;
        }
        int[] r33 = new int[growSize(r32)];
        System.arraycopy(r22, 0, r33, 0, r42);
        r33[r42] = r52;
        System.arraycopy(r22, r42, r33, r42 + 1, r22.length - r42);
        return r33;
    }

    public static long[] insert(long[] jArr, int r32, int r42, long j10) {
        if (r32 + 1 <= jArr.length) {
            System.arraycopy(jArr, r42, jArr, r42 + 1, r32 - r42);
            jArr[r42] = j10;
            return jArr;
        }
        long[] jArr2 = new long[growSize(r32)];
        System.arraycopy(jArr, 0, jArr2, 0, r42);
        jArr2[r42] = j10;
        System.arraycopy(jArr, r42, jArr2, r42 + 1, jArr.length - r42);
        return jArr2;
    }

    public static <T> T[] insert(T[] tArr, int r32, int r42, T t10) {
        if (r32 + 1 <= tArr.length) {
            System.arraycopy(tArr, r42, tArr, r42 + 1, r32 - r42);
            tArr[r42] = t10;
            return tArr;
        }
        T[] tArr2 = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), growSize(r32)));
        System.arraycopy(tArr, 0, tArr2, 0, r42);
        tArr2[r42] = t10;
        System.arraycopy(tArr, r42, tArr2, r42 + 1, tArr.length - r42);
        return tArr2;
    }

    public static boolean[] insert(boolean[] zArr, int r32, int r42, boolean z10) {
        if (r32 + 1 <= zArr.length) {
            System.arraycopy(zArr, r42, zArr, r42 + 1, r32 - r42);
            zArr[r42] = z10;
            return zArr;
        }
        boolean[] zArr2 = new boolean[growSize(r32)];
        System.arraycopy(zArr, 0, zArr2, 0, r42);
        zArr2[r42] = z10;
        System.arraycopy(zArr, r42, zArr2, r42 + 1, zArr.length - r42);
        return zArr2;
    }
}
