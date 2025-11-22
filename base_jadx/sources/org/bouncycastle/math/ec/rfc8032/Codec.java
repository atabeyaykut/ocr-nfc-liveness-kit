package org.bouncycastle.math.ec.rfc8032;

/* loaded from: classes2.dex */
abstract class Codec {
    public static int decode16(byte[] bArr, int r22) {
        return ((bArr[r22 + 1] & 255) << 8) | (bArr[r22] & 255);
    }

    public static int decode24(byte[] bArr, int r32) {
        int r02 = bArr[r32] & 255;
        int r33 = r32 + 1;
        return ((bArr[r33 + 1] & 255) << 16) | r02 | ((bArr[r33] & 255) << 8);
    }

    public static int decode32(byte[] bArr, int r32) {
        int r02 = bArr[r32] & 255;
        int r33 = r32 + 1;
        int r03 = r02 | ((bArr[r33] & 255) << 8);
        int r34 = r33 + 1;
        return (bArr[r34 + 1] << 24) | r03 | ((bArr[r34] & 255) << 16);
    }

    public static void decode32(byte[] bArr, int r42, int[] r52, int r6, int r72) {
        for (int r02 = 0; r02 < r72; r02++) {
            r52[r6 + r02] = decode32(bArr, (r02 * 4) + r42);
        }
    }

    public static void encode24(int r12, byte[] bArr, int r32) {
        bArr[r32] = (byte) r12;
        int r33 = r32 + 1;
        bArr[r33] = (byte) (r12 >>> 8);
        bArr[r33 + 1] = (byte) (r12 >>> 16);
    }

    public static void encode32(int r12, byte[] bArr, int r32) {
        bArr[r32] = (byte) r12;
        int r33 = r32 + 1;
        bArr[r33] = (byte) (r12 >>> 8);
        int r34 = r33 + 1;
        bArr[r34] = (byte) (r12 >>> 16);
        bArr[r34 + 1] = (byte) (r12 >>> 24);
    }

    public static void encode32(int[] r32, int r42, int r52, byte[] bArr, int r72) {
        for (int r02 = 0; r02 < r52; r02++) {
            encode32(r32[r42 + r02], bArr, (r02 * 4) + r72);
        }
    }

    public static void encode56(long j10, byte[] bArr, int r42) {
        encode32((int) j10, bArr, r42);
        encode24((int) (j10 >>> 32), bArr, r42 + 4);
    }
}
