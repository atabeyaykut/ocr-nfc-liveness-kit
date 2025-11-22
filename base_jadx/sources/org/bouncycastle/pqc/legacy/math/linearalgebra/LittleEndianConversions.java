package org.bouncycastle.pqc.legacy.math.linearalgebra;

/* loaded from: classes2.dex */
public final class LittleEndianConversions {
    private LittleEndianConversions() {
    }

    public static void I2OSP(int r22, byte[] bArr, int r42) {
        int r02 = r42 + 1;
        bArr[r42] = (byte) r22;
        int r43 = r02 + 1;
        bArr[r02] = (byte) (r22 >>> 8);
        bArr[r43] = (byte) (r22 >>> 16);
        bArr[r43 + 1] = (byte) (r22 >>> 24);
    }

    public static void I2OSP(int r22, byte[] bArr, int r42, int r52) {
        for (int r53 = r52 - 1; r53 >= 0; r53--) {
            bArr[r42 + r53] = (byte) (r22 >>> (r53 * 8));
        }
    }

    public static void I2OSP(long j10, byte[] bArr, int r6) {
        int r02 = r6 + 1;
        bArr[r6] = (byte) j10;
        int r62 = r02 + 1;
        bArr[r02] = (byte) (j10 >>> 8);
        int r03 = r62 + 1;
        bArr[r62] = (byte) (j10 >>> 16);
        int r63 = r03 + 1;
        bArr[r03] = (byte) (j10 >>> 24);
        int r04 = r63 + 1;
        bArr[r63] = (byte) (j10 >>> 32);
        int r64 = r04 + 1;
        bArr[r04] = (byte) (j10 >>> 40);
        bArr[r64] = (byte) (j10 >>> 48);
        bArr[r64 + 1] = (byte) (j10 >>> 56);
    }

    public static byte[] I2OSP(int r32) {
        return new byte[]{(byte) r32, (byte) (r32 >>> 8), (byte) (r32 >>> 16), (byte) (r32 >>> 24)};
    }

    public static byte[] I2OSP(long j10) {
        return new byte[]{(byte) j10, (byte) (j10 >>> 8), (byte) (j10 >>> 16), (byte) (j10 >>> 24), (byte) (j10 >>> 32), (byte) (j10 >>> 40), (byte) (j10 >>> 48), (byte) (j10 >>> 56)};
    }

    public static int OS2IP(byte[] bArr) {
        return ((bArr[3] & 255) << 24) | (bArr[0] & 255) | ((bArr[1] & 255) << 8) | ((bArr[2] & 255) << 16);
    }

    public static int OS2IP(byte[] bArr, int r32) {
        int r02 = r32 + 1;
        int r12 = r02 + 1;
        int r33 = (bArr[r32] & 255) | ((bArr[r02] & 255) << 8);
        int r03 = r12 + 1;
        return ((bArr[r03] & 255) << 24) | r33 | ((bArr[r12] & 255) << 16);
    }

    public static int OS2IP(byte[] bArr, int r42, int r52) {
        int r02 = 0;
        for (int r53 = r52 - 1; r53 >= 0; r53--) {
            r02 |= (bArr[r42 + r53] & 255) << (r53 * 8);
        }
        return r02;
    }

    public static long OS2LIP(byte[] bArr, int r92) {
        long j10 = bArr[r92] & 255;
        int r22 = r92 + 1 + 1 + 1;
        long j11 = j10 | ((bArr[r0] & 255) << 8) | ((bArr[r9] & 255) << 16);
        long j12 = j11 | ((bArr[r22] & 255) << 24);
        long j13 = j12 | ((bArr[r9] & 255) << 32);
        long j14 = j13 | ((bArr[r2] & 255) << 40);
        int r23 = r22 + 1 + 1 + 1 + 1;
        return ((bArr[r23] & 255) << 56) | j14 | ((bArr[r9] & 255) << 48);
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
