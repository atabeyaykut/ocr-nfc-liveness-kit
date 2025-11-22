package org.bouncycastle.pqc.crypto.picnic;

import androidx.core.view.MotionEventCompat;
import org.bouncycastle.util.Integers;

/* loaded from: classes2.dex */
class Utils {
    public static int ceil_log2(int r02) {
        if (r02 == 0) {
            return 0;
        }
        return 32 - nlz(r02 - 1);
    }

    public static byte getBit(byte[] bArr, int r22) {
        return (byte) ((bArr[r22 >>> 3] >>> ((r22 & 7) ^ 7)) & 1);
    }

    public static int getBit(int r02, int r12) {
        return (r02 >>> (r12 ^ 7)) & 1;
    }

    public static int getBit(int[] r12, int r22) {
        return (r12[r22 >>> 5] >>> ((r22 & 31) ^ 7)) & 1;
    }

    public static int getBitFromWordArray(int[] r02, int r12) {
        return getBit(r02, r12);
    }

    public static byte getCrumbAligned(byte[] bArr, int r22) {
        int r12 = bArr[r22 >>> 2] >>> (((r22 << 1) & 6) ^ 6);
        return (byte) (((r12 & 2) >> 1) | ((r12 & 1) << 1));
    }

    public static int getTrailingBitsMask(int r32) {
        int r02 = r32 & (-8);
        int r12 = ~((-1) << r02);
        int r33 = r32 & 7;
        return r33 != 0 ? r12 ^ (((MotionEventCompat.ACTION_POINTER_INDEX_MASK >>> r33) & 255) << r02) : r12;
    }

    private static int nlz(int r22) {
        int r02;
        if (r22 == 0) {
            return 32;
        }
        if ((r22 >>> 16) == 0) {
            r22 <<= 16;
            r02 = 17;
        } else {
            r02 = 1;
        }
        if ((r22 >>> 24) == 0) {
            r02 += 8;
            r22 <<= 8;
        }
        if ((r22 >>> 28) == 0) {
            r02 += 4;
            r22 <<= 4;
        }
        if ((r22 >>> 30) == 0) {
            r02 += 2;
            r22 <<= 2;
        }
        return r02 - (r22 >>> 31);
    }

    public static int numBytes(int r02) {
        if (r02 == 0) {
            return 0;
        }
        return ((r02 - 1) / 8) + 1;
    }

    public static int parity(byte[] bArr, int r52) {
        byte b10 = bArr[0];
        for (int r22 = 1; r22 < r52; r22++) {
            b10 = (byte) (b10 ^ bArr[r22]);
        }
        return Integers.bitCount(b10 & 255) & 1;
    }

    public static int parity16(int r12) {
        return Integers.bitCount(r12 & 65535) & 1;
    }

    public static int parity32(int r02) {
        return Integers.bitCount(r02) & 1;
    }

    public static int setBit(int r12, int r22, int r32) {
        int r23 = r22 ^ 7;
        return (r12 & (~(1 << r23))) | (r32 << r23);
    }

    public static void setBit(byte[] bArr, int r42, byte b10) {
        int r02 = r42 >>> 3;
        int r43 = (r42 & 7) ^ 7;
        bArr[r02] = (byte) ((b10 << r43) | (bArr[r02] & (~(1 << r43))));
    }

    public static void setBit(int[] r32, int r42, int r52) {
        int r02 = r42 >>> 5;
        int r43 = (r42 & 31) ^ 7;
        r32[r02] = (r52 << r43) | (r32[r02] & (~(1 << r43)));
    }

    public static void setBitInWordArray(int[] r02, int r12, int r22) {
        setBit(r02, r12, r22);
    }

    public static void zeroTrailingBits(int[] r22, int r32) {
        if ((r32 & 31) != 0) {
            int r02 = r32 >>> 5;
            r22[r02] = getTrailingBitsMask(r32) & r22[r02];
        }
    }
}
