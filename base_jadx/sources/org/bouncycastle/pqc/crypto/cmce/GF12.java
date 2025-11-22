package org.bouncycastle.pqc.crypto.cmce;

import org.bouncycastle.math.raw.Interleave;

/* loaded from: classes2.dex */
final class GF12 extends GF {
    private int gf_mul_ext_par(short s7, short s10, short s11, short s12) {
        int r02 = (s10 & 1) * s7;
        int r12 = (s12 & 1) * s11;
        for (int r32 = 1; r32 < 12; r32++) {
            int r42 = 1 << r32;
            r02 ^= (s10 & r42) * s7;
            r12 ^= (r42 & s12) * s11;
        }
        return r02 ^ r12;
    }

    @Override // org.bouncycastle.pqc.crypto.cmce.GF
    public short gf_frac(short s7, short s10) {
        return gf_mul(gf_inv(s7), s10);
    }

    @Override // org.bouncycastle.pqc.crypto.cmce.GF
    public short gf_inv(short s7) {
        short sGf_mul = gf_mul(gf_sq(s7), s7);
        short sGf_mul2 = gf_mul(gf_sq(gf_sq(sGf_mul)), sGf_mul);
        return gf_sq(gf_mul(gf_sq(gf_mul(gf_sq(gf_sq(gf_mul(gf_sq(gf_sq(gf_sq(gf_sq(sGf_mul2)))), sGf_mul2))), sGf_mul)), s7));
    }

    @Override // org.bouncycastle.pqc.crypto.cmce.GF
    public short gf_mul(short s7, short s10) {
        int r02 = (s10 & 1) * s7;
        for (int r22 = 1; r22 < 12; r22++) {
            r02 ^= ((1 << r22) & s10) * s7;
        }
        return gf_reduce(r02);
    }

    @Override // org.bouncycastle.pqc.crypto.cmce.GF
    public int gf_mul_ext(short s7, short s10) {
        int r02 = (s10 & 1) * s7;
        for (int r22 = 1; r22 < 12; r22++) {
            r02 ^= ((1 << r22) & s10) * s7;
        }
        return r02;
    }

    @Override // org.bouncycastle.pqc.crypto.cmce.GF
    public void gf_mul_poly(int r15, int[] r16, short[] sArr, short[] sArr2, short[] sArr3, int[] r20) {
        r20[0] = gf_mul_ext(sArr2[0], sArr3[0]);
        for (int r52 = 1; r52 < r15; r52++) {
            int r6 = r52 + r52;
            r20[r6 - 1] = 0;
            short s7 = sArr2[r52];
            short s10 = sArr3[r52];
            for (int r92 = 0; r92 < r52; r92++) {
                int r10 = r52 + r92;
                r20[r10] = r20[r10] ^ gf_mul_ext_par(s7, sArr3[r92], sArr2[r92], s10);
            }
            r20[r6] = gf_mul_ext(s7, s10);
        }
        for (int r53 = (r15 - 1) * 2; r53 >= r15; r53--) {
            int r62 = r20[r53];
            for (int r72 = 0; r72 < r16.length - 1; r72++) {
                int r82 = (r53 - r15) + r16[r72];
                r20[r82] = r20[r82] ^ r62;
            }
            int r73 = r53 - r15;
            r20[r73] = (r62 << 1) ^ r20[r73];
        }
        for (int r32 = 0; r32 < r15; r32++) {
            sArr[r32] = gf_reduce(r20[r32]);
        }
    }

    @Override // org.bouncycastle.pqc.crypto.cmce.GF
    public short gf_reduce(int r52) {
        return (short) ((r52 >>> 21) ^ ((((r52 & 4095) ^ (r52 >>> 12)) ^ ((2093056 & r52) >>> 9)) ^ ((14680064 & r52) >>> 18)));
    }

    @Override // org.bouncycastle.pqc.crypto.cmce.GF
    public short gf_sq(short s7) {
        return gf_reduce(Interleave.expand16to32(s7));
    }

    @Override // org.bouncycastle.pqc.crypto.cmce.GF
    public int gf_sq_ext(short s7) {
        return Interleave.expand16to32(s7);
    }

    @Override // org.bouncycastle.pqc.crypto.cmce.GF
    public void gf_sqr_poly(int r72, int[] r82, short[] sArr, short[] sArr2, int[] r11) {
        r11[0] = gf_sq_ext(sArr2[0]);
        for (int r22 = 1; r22 < r72; r22++) {
            int r32 = r22 + r22;
            r11[r32 - 1] = 0;
            r11[r32] = gf_sq_ext(sArr2[r22]);
        }
        for (int r10 = (r72 - 1) * 2; r10 >= r72; r10--) {
            int r23 = r11[r10];
            for (int r33 = 0; r33 < r82.length - 1; r33++) {
                int r42 = (r10 - r72) + r82[r33];
                r11[r42] = r11[r42] ^ r23;
            }
            int r34 = r10 - r72;
            r11[r34] = (r23 << 1) ^ r11[r34];
        }
        for (int r02 = 0; r02 < r72; r02++) {
            sArr[r02] = gf_reduce(r11[r02]);
        }
    }
}
