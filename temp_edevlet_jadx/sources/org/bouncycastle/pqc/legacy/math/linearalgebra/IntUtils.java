package org.bouncycastle.pqc.legacy.math.linearalgebra;

import androidx.browser.browseractions.a;

/* loaded from: classes2.dex */
public final class IntUtils {
    private IntUtils() {
    }

    public static int[] clone(int[] r32) {
        int[] r02 = new int[r32.length];
        System.arraycopy(r32, 0, r02, 0, r32.length);
        return r02;
    }

    public static boolean equals(int[] r6, int[] r72) {
        if (r6.length != r72.length) {
            return false;
        }
        boolean z10 = true;
        for (int length = r6.length - 1; length >= 0; length--) {
            z10 &= r6[length] == r72[length];
        }
        return z10;
    }

    public static void fill(int[] r12, int r22) {
        for (int length = r12.length - 1; length >= 0; length--) {
            r12[length] = r22;
        }
    }

    private static int partition(int[] r32, int r42, int r52, int r6) {
        int r02 = r32[r6];
        r32[r6] = r32[r52];
        r32[r52] = r02;
        int r62 = r42;
        while (r42 < r52) {
            int r12 = r32[r42];
            if (r12 <= r02) {
                int r22 = r32[r62];
                r32[r62] = r12;
                r32[r42] = r22;
                r62++;
            }
            r42++;
        }
        int r43 = r32[r62];
        r32[r62] = r32[r52];
        r32[r52] = r43;
        return r62;
    }

    public static void quicksort(int[] r22) {
        quicksort(r22, 0, r22.length - 1);
    }

    public static void quicksort(int[] r22, int r32, int r42) {
        if (r42 > r32) {
            int r02 = partition(r22, r32, r42, r42);
            quicksort(r22, r32, r02 - 1);
            quicksort(r22, r02 + 1, r42);
        }
    }

    public static int[] subArray(int[] r22, int r32, int r42) {
        int r43 = r42 - r32;
        int[] r02 = new int[r43];
        System.arraycopy(r22, r32, r02, 0, r43);
        return r02;
    }

    public static String toHexString(int[] r02) {
        return ByteUtils.toHexString(BigEndianConversions.toByteArray(r02));
    }

    public static String toString(int[] r42) {
        String strB = "";
        for (int r02 : r42) {
            strB = a.b(androidx.constraintlayout.core.a.e(strB), r02, " ");
        }
        return strB;
    }
}
