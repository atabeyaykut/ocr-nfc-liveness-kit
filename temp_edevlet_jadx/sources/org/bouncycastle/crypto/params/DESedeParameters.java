package org.bouncycastle.crypto.params;

/* loaded from: classes2.dex */
public class DESedeParameters extends DESParameters {
    public static final int DES_EDE_KEY_LENGTH = 24;

    public DESedeParameters(byte[] bArr) {
        super(bArr);
        if (isWeakKey(bArr, 0, bArr.length)) {
            throw new IllegalArgumentException("attempt to create weak DESede key");
        }
    }

    public static boolean isReal2Key(byte[] bArr, int r52) {
        boolean z10 = false;
        for (int r12 = r52; r12 != r52 + 8; r12++) {
            if (bArr[r12] != bArr[r12 + 8]) {
                z10 = true;
            }
        }
        return z10;
    }

    public static boolean isReal3Key(byte[] bArr, int r10) {
        int r12 = r10;
        boolean z10 = false;
        boolean z11 = false;
        boolean z12 = false;
        while (true) {
            boolean z13 = true;
            if (r12 == r10 + 8) {
                break;
            }
            byte b10 = bArr[r12];
            byte b11 = bArr[r12 + 8];
            z10 |= b10 != b11;
            byte b12 = bArr[r12 + 16];
            z11 |= b10 != b12;
            if (b11 == b12) {
                z13 = false;
            }
            z12 |= z13;
            r12++;
        }
        return z10 && z11 && z12;
    }

    public static boolean isRealEDEKey(byte[] bArr, int r32) {
        return bArr.length == 16 ? isReal2Key(bArr, r32) : isReal3Key(bArr, r32);
    }

    public static boolean isWeakKey(byte[] bArr, int r22) {
        return isWeakKey(bArr, r22, bArr.length - r22);
    }

    public static boolean isWeakKey(byte[] bArr, int r22, int r32) {
        while (r22 < r32) {
            if (DESParameters.isWeakKey(bArr, r22)) {
                return true;
            }
            r22 += 8;
        }
        return false;
    }
}
