package org.bouncycastle.pqc.crypto.crystals.kyber;

/* loaded from: classes2.dex */
final class CBD {
    private static long convertByteTo24BitUnsignedInt(byte[] bArr, int r6) {
        return ((bArr[r6 + 2] & 255) << 16) | (bArr[r6] & 255) | ((bArr[r6 + 1] & 255) << 8);
    }

    private static long convertByteTo32BitUnsignedInt(byte[] bArr, int r6) {
        return ((bArr[r6 + 3] & 255) << 24) | (bArr[r6] & 255) | ((bArr[r6 + 1] & 255) << 8) | ((bArr[r6 + 2] & 255) << 16);
    }

    public static void kyberCBD(Poly poly, byte[] bArr, int r15) {
        if (r15 != 3) {
            for (int r22 = 0; r22 < 32; r22++) {
                long jConvertByteTo32BitUnsignedInt = convertByteTo32BitUnsignedInt(bArr, r22 * 4);
                long j10 = (jConvertByteTo32BitUnsignedInt & 1431655765) + ((jConvertByteTo32BitUnsignedInt >> 1) & 1431655765);
                for (int r32 = 0; r32 < 8; r32++) {
                    int r42 = r32 * 4;
                    poly.setCoeffIndex((r22 * 8) + r32, (short) (((short) ((j10 >> (r42 + 0)) & 3)) - ((short) (3 & (j10 >> (r42 + r15))))));
                }
            }
            return;
        }
        for (int r152 = 0; r152 < 64; r152++) {
            long jConvertByteTo24BitUnsignedInt = convertByteTo24BitUnsignedInt(bArr, r152 * 3);
            long j11 = (jConvertByteTo24BitUnsignedInt & 2396745) + ((jConvertByteTo24BitUnsignedInt >> 1) & 2396745) + ((jConvertByteTo24BitUnsignedInt >> 2) & 2396745);
            for (int r33 = 0; r33 < 4; r33++) {
                int r43 = r33 * 6;
                poly.setCoeffIndex((r152 * 4) + r33, (short) (((short) ((j11 >> (r43 + 0)) & 7)) - ((short) (7 & (j11 >> (r43 + 3))))));
            }
        }
    }
}
