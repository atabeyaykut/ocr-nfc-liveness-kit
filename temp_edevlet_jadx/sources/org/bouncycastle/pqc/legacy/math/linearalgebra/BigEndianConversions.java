package org.bouncycastle.pqc.legacy.math.linearalgebra;

/* loaded from: classes2.dex */
public final class BigEndianConversions {
    private BigEndianConversions() {
    }

    public static void I2OSP(int r22, byte[] bArr, int r42) {
        int r02 = r42 + 1;
        bArr[r42] = (byte) (r22 >>> 24);
        int r43 = r02 + 1;
        bArr[r02] = (byte) (r22 >>> 16);
        bArr[r43] = (byte) (r22 >>> 8);
        bArr[r43 + 1] = (byte) r22;
    }

    public static void I2OSP(int r32, byte[] bArr, int r52, int r6) {
        int r62 = r6 - 1;
        for (int r02 = r62; r02 >= 0; r02--) {
            bArr[r52 + r02] = (byte) (r32 >>> ((r62 - r02) * 8));
        }
    }

    public static void I2OSP(long j10, byte[] bArr, int r6) {
        int r02 = r6 + 1;
        bArr[r6] = (byte) (j10 >>> 56);
        int r62 = r02 + 1;
        bArr[r02] = (byte) (j10 >>> 48);
        int r03 = r62 + 1;
        bArr[r62] = (byte) (j10 >>> 40);
        int r63 = r03 + 1;
        bArr[r03] = (byte) (j10 >>> 32);
        int r04 = r63 + 1;
        bArr[r63] = (byte) (j10 >>> 24);
        int r64 = r04 + 1;
        bArr[r04] = (byte) (j10 >>> 16);
        bArr[r64] = (byte) (j10 >>> 8);
        bArr[r64 + 1] = (byte) j10;
    }

    public static byte[] I2OSP(int r32) {
        return new byte[]{(byte) (r32 >>> 24), (byte) (r32 >>> 16), (byte) (r32 >>> 8), (byte) r32};
    }

    public static byte[] I2OSP(int r52, int r6) throws ArithmeticException {
        if (r52 < 0) {
            return null;
        }
        int r02 = IntegerFunctions.ceilLog256(r52);
        if (r02 > r6) {
            throw new ArithmeticException("Cannot encode given integer into specified number of octets.");
        }
        byte[] bArr = new byte[r6];
        int r22 = r6 - 1;
        for (int r32 = r22; r32 >= r6 - r02; r32--) {
            bArr[r32] = (byte) (r52 >>> ((r22 - r32) * 8));
        }
        return bArr;
    }

    public static byte[] I2OSP(long j10) {
        return new byte[]{(byte) (j10 >>> 56), (byte) (j10 >>> 48), (byte) (j10 >>> 40), (byte) (j10 >>> 32), (byte) (j10 >>> 24), (byte) (j10 >>> 16), (byte) (j10 >>> 8), (byte) j10};
    }

    public static int OS2IP(byte[] bArr) {
        if (bArr.length > 4) {
            throw new ArithmeticException("invalid input length");
        }
        if (bArr.length == 0) {
            return 0;
        }
        int length = 0;
        for (int r12 = 0; r12 < bArr.length; r12++) {
            length |= (bArr[r12] & 255) << (((bArr.length - 1) - r12) * 8);
        }
        return length;
    }

    public static int OS2IP(byte[] bArr, int r32) {
        int r02 = r32 + 1;
        int r12 = r02 + 1;
        int r33 = ((bArr[r32] & 255) << 24) | ((bArr[r02] & 255) << 16);
        int r03 = r12 + 1;
        return (bArr[r03] & 255) | r33 | ((bArr[r12] & 255) << 8);
    }

    public static int OS2IP(byte[] bArr, int r52, int r6) {
        if (bArr.length == 0 || bArr.length < (r52 + r6) - 1) {
            return 0;
        }
        int r02 = 0;
        for (int r12 = 0; r12 < r6; r12++) {
            r02 |= (bArr[r52 + r12] & 255) << (((r6 - r12) - 1) * 8);
        }
        return r02;
    }

    public static long OS2LIP(byte[] bArr, int r82) {
        long j10 = (bArr[r82] & 255) << 56;
        int r22 = r82 + 1 + 1 + 1;
        long j11 = j10 | ((bArr[r0] & 255) << 48) | ((bArr[r8] & 255) << 40);
        long j12 = j11 | ((bArr[r22] & 255) << 32);
        long j13 = j12 | ((255 & bArr[r8]) << 24);
        long j14 = j13 | ((bArr[r2] & 255) << 16);
        int r23 = r22 + 1 + 1 + 1 + 1;
        return (bArr[r23] & 255) | j14 | ((bArr[r8] & 255) << 8);
    }

    public static byte[] toByteArray(int[] r42) {
        byte[] bArr = new byte[r42.length << 2];
        for (int r12 = 0; r12 < r42.length; r12++) {
            I2OSP(r42[r12], bArr, r12 << 2);
        }
        return bArr;
    }

    public static byte[] toByteArray(int[] r52, int r6) {
        int length = r52.length;
        byte[] bArr = new byte[r6];
        int r22 = 0;
        int r32 = 0;
        while (r22 <= length - 2) {
            I2OSP(r52[r22], bArr, r32);
            r22++;
            r32 += 4;
        }
        I2OSP(r52[length - 1], bArr, r32, r6 - r32);
        return bArr;
    }

    public static int[] toIntArray(byte[] bArr) {
        int length = (bArr.length + 3) / 4;
        int length2 = bArr.length & 3;
        int[] r22 = new int[length];
        int r32 = 0;
        int r42 = 0;
        while (r32 <= length - 2) {
            r22[r32] = OS2IP(bArr, r42);
            r32++;
            r42 += 4;
        }
        int r02 = length - 1;
        if (length2 != 0) {
            r22[r02] = OS2IP(bArr, r42, length2);
        } else {
            r22[r02] = OS2IP(bArr, r42);
        }
        return r22;
    }
}
