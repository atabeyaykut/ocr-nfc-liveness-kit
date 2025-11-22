package org.bouncycastle.crypto.modes;

import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
class GOST3413CipherUtil {
    public static byte[] LSB(byte[] bArr, int r42) {
        byte[] bArr2 = new byte[r42];
        System.arraycopy(bArr, bArr.length - r42, bArr2, 0, r42);
        return bArr2;
    }

    public static byte[] MSB(byte[] bArr, int r12) {
        return Arrays.copyOf(bArr, r12);
    }

    public static byte[] copyFromInput(byte[] bArr, int r32, int r42) {
        if (bArr.length < r32 + r42) {
            r32 = bArr.length - r42;
        }
        byte[] bArr2 = new byte[r32];
        System.arraycopy(bArr, r42, bArr2, 0, r32);
        return bArr2;
    }

    public static byte[] sum(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[bArr.length];
        for (int r12 = 0; r12 < bArr.length; r12++) {
            bArr3[r12] = (byte) (bArr[r12] ^ bArr2[r12]);
        }
        return bArr3;
    }
}
