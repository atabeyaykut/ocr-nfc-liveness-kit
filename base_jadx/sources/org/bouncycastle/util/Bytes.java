package org.bouncycastle.util;

/* loaded from: classes2.dex */
public class Bytes {
    public static final int BYTES = 1;
    public static final int SIZE = 8;

    public static void xor(int r42, byte[] bArr, int r6, byte[] bArr2, int r82, byte[] bArr3, int r10) {
        for (int r02 = 0; r02 < r42; r02++) {
            bArr3[r10 + r02] = (byte) (bArr[r6 + r02] ^ bArr2[r82 + r02]);
        }
    }

    public static void xor(int r32, byte[] bArr, byte[] bArr2, byte[] bArr3) {
        for (int r02 = 0; r02 < r32; r02++) {
            bArr3[r02] = (byte) (bArr[r02] ^ bArr2[r02]);
        }
    }

    public static void xorTo(int r42, byte[] bArr, int r6, byte[] bArr2, int r82) {
        for (int r02 = 0; r02 < r42; r02++) {
            int r12 = r82 + r02;
            bArr2[r12] = (byte) (bArr2[r12] ^ bArr[r6 + r02]);
        }
    }

    public static void xorTo(int r32, byte[] bArr, byte[] bArr2) {
        for (int r02 = 0; r02 < r32; r02++) {
            bArr2[r02] = (byte) (bArr2[r02] ^ bArr[r02]);
        }
    }
}
