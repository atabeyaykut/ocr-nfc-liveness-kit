package org.bouncycastle.pqc.crypto.newhope;

import android.R;
import org.bouncycastle.crypto.digests.SHAKEDigest;
import org.bouncycastle.crypto.hpke.HPKE;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
class Poly {
    public static void add(short[] sArr, short[] sArr2, short[] sArr3) {
        for (int r02 = 0; r02 < 1024; r02++) {
            sArr3[r02] = Reduce.barrett((short) (sArr[r02] + sArr2[r02]));
        }
    }

    public static void fromBytes(short[] sArr, byte[] bArr) {
        for (int r02 = 0; r02 < 256; r02++) {
            int r12 = r02 * 7;
            int r22 = bArr[r12 + 0] & 255;
            int r32 = bArr[r12 + 1] & 255;
            int r42 = bArr[r12 + 2] & 255;
            int r52 = bArr[r12 + 3] & 255;
            int r6 = bArr[r12 + 4] & 255;
            int r72 = bArr[r12 + 5] & 255;
            int r13 = bArr[r12 + 6] & 255;
            int r82 = r02 * 4;
            sArr[r82 + 0] = (short) (r22 | ((r32 & 63) << 8));
            sArr[r82 + 1] = (short) ((r32 >>> 6) | (r42 << 2) | ((r52 & 15) << 10));
            sArr[r82 + 2] = (short) ((r52 >>> 4) | (r6 << 4) | ((r72 & 3) << 12));
            sArr[r82 + 3] = (short) ((r13 << 6) | (r72 >>> 2));
        }
    }

    public static void fromNTT(short[] sArr) {
        NTT.bitReverse(sArr);
        NTT.core(sArr, Precomp.OMEGAS_INV_MONTGOMERY);
        NTT.mulCoefficients(sArr, Precomp.PSIS_INV_MONTGOMERY);
    }

    public static void getNoise(short[] sArr, byte[] bArr, byte b10) {
        byte[] bArr2 = new byte[8];
        bArr2[0] = b10;
        byte[] bArr3 = new byte[4096];
        ChaCha20.process(bArr, bArr2, bArr3, 0, 4096);
        for (int r82 = 0; r82 < 1024; r82++) {
            int r92 = Pack.bigEndianToInt(bArr3, r82 * 4);
            int r42 = 0;
            for (int r12 = 0; r12 < 8; r12++) {
                r42 += (r92 >> r12) & R.attr.cacheColorHint;
            }
            sArr[r82] = (short) (((((r42 >>> 24) + (r42 >>> 0)) & 255) + 12289) - (((r42 >>> 16) + (r42 >>> 8)) & 255));
        }
    }

    private static short normalize(short s7) {
        short sBarrett = Reduce.barrett(s7);
        int r02 = sBarrett - 12289;
        return (short) (((sBarrett ^ r02) & (r02 >> 31)) ^ r02);
    }

    public static void pointWise(short[] sArr, short[] sArr2, short[] sArr3) {
        for (int r02 = 0; r02 < 1024; r02++) {
            sArr3[r02] = Reduce.montgomery((sArr[r02] & HPKE.aead_EXPORT_ONLY) * (65535 & Reduce.montgomery((sArr2[r02] & HPKE.aead_EXPORT_ONLY) * 3186)));
        }
    }

    public static void toBytes(byte[] bArr, short[] sArr) {
        for (int r02 = 0; r02 < 256; r02++) {
            int r12 = r02 * 4;
            short sNormalize = normalize(sArr[r12 + 0]);
            short sNormalize2 = normalize(sArr[r12 + 1]);
            short sNormalize3 = normalize(sArr[r12 + 2]);
            short sNormalize4 = normalize(sArr[r12 + 3]);
            int r52 = r02 * 7;
            bArr[r52 + 0] = (byte) sNormalize;
            bArr[r52 + 1] = (byte) ((sNormalize >> 8) | (sNormalize2 << 6));
            bArr[r52 + 2] = (byte) (sNormalize2 >> 2);
            bArr[r52 + 3] = (byte) ((sNormalize2 >> 10) | (sNormalize3 << 4));
            bArr[r52 + 4] = (byte) (sNormalize3 >> 4);
            bArr[r52 + 5] = (byte) ((sNormalize3 >> 12) | (sNormalize4 << 2));
            bArr[r52 + 6] = (byte) (sNormalize4 >> 6);
        }
    }

    public static void toNTT(short[] sArr) {
        NTT.mulCoefficients(sArr, Precomp.PSIS_BITREV_MONTGOMERY);
        NTT.core(sArr, Precomp.OMEGAS_MONTGOMERY);
    }

    public static void uniform(short[] sArr, byte[] bArr) {
        SHAKEDigest sHAKEDigest = new SHAKEDigest(128);
        sHAKEDigest.update(bArr, 0, bArr.length);
        int r82 = 0;
        while (true) {
            byte[] bArr2 = new byte[256];
            sHAKEDigest.doOutput(bArr2, 0, 256);
            for (int r42 = 0; r42 < 256; r42 += 2) {
                int r52 = (bArr2[r42] & 255) | ((bArr2[r42 + 1] & 255) << 8);
                if (r52 < 61445) {
                    int r6 = r82 + 1;
                    sArr[r82] = (short) r52;
                    if (r6 == 1024) {
                        return;
                    } else {
                        r82 = r6;
                    }
                }
            }
        }
    }
}
