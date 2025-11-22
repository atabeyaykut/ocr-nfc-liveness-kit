package org.bouncycastle.pqc.crypto.cmce;

import org.bouncycastle.math.raw.Interleave;

/* loaded from: classes2.dex */
final class GF13 extends GF {
    private int gf_mul_ext_par(short s7, short s10, short s11, short s12) {
        int r02 = (s10 & 1) * s7;
        int r12 = (s12 & 1) * s11;
        for (int r32 = 1; r32 < 13; r32++) {
            int r42 = 1 << r32;
            r02 ^= (s10 & r42) * s7;
            r12 ^= (r42 & s12) * s11;
        }
        return r02 ^ r12;
    }

    private short gf_sq2(short s7) {
        return gf_reduce(Interleave.expand16to32(gf_reduce(Interleave.expand16to32(s7))));
    }

    private short gf_sq2mul(short s7, short s10) {
        long j10 = s7;
        long j11 = s10;
        long j12 = (j11 << 18) * (64 & j10);
        long j13 = j10 ^ (j10 << 21);
        long j14 = ((j11 << 15) * (j13 & 8589934624L)) ^ (((((j12 ^ ((j11 << 0) * (268435457 & j13))) ^ ((j11 << 3) * (536870914 & j13))) ^ ((j11 << 6) * (1073741828 & j13))) ^ ((j11 << 9) * (2147483656L & j13))) ^ ((j11 << 12) * (4294967312L & j13)));
        long j15 = 2305834213120671744L & j14;
        long j16 = j14 ^ ((j15 >>> 26) ^ (((j15 >>> 18) ^ (j15 >>> 20)) ^ (j15 >>> 24)));
        long j17 = 8796025913344L & j16;
        return gf_reduce(67108863 & ((int) (j16 ^ ((j17 >>> 26) ^ (((j17 >>> 18) ^ (j17 >>> 20)) ^ (j17 >>> 24))))));
    }

    private short gf_sqmul(short s7, short s10) {
        long j10 = s7;
        long j11 = s10;
        long j12 = (j11 << 6) * (64 & j10);
        long j13 = j10 ^ (j10 << 7);
        long j14 = ((j11 << 5) * (j13 & 524320)) ^ (((((j12 ^ ((j11 << 0) * (16385 & j13))) ^ ((j11 << 1) * (32770 & j13))) ^ ((j11 << 2) * (65540 & j13))) ^ ((j11 << 3) * (131080 & j13))) ^ ((j11 << 4) * (262160 & j13)));
        long j15 = 137371844608L & j14;
        return gf_reduce(67108863 & ((int) (j14 ^ ((j15 >>> 26) ^ (((j15 >>> 18) ^ (j15 >>> 20)) ^ (j15 >>> 24))))));
    }

    @Override // org.bouncycastle.pqc.crypto.cmce.GF
    public short gf_frac(short s7, short s10) {
        short sGf_sqmul = gf_sqmul(s7, s7);
        short sGf_sq2mul = gf_sq2mul(sGf_sqmul, sGf_sqmul);
        return gf_sqmul(gf_sq2mul(gf_sq2(gf_sq2mul(gf_sq2(sGf_sq2mul), sGf_sq2mul)), sGf_sq2mul), s10);
    }

    @Override // org.bouncycastle.pqc.crypto.cmce.GF
    public short gf_inv(short s7) {
        return gf_frac(s7, (short) 1);
    }

    @Override // org.bouncycastle.pqc.crypto.cmce.GF
    public short gf_mul(short s7, short s10) {
        int r02 = (s10 & 1) * s7;
        for (int r22 = 1; r22 < 13; r22++) {
            r02 ^= ((1 << r22) & s10) * s7;
        }
        return gf_reduce(r02);
    }

    @Override // org.bouncycastle.pqc.crypto.cmce.GF
    public int gf_mul_ext(short s7, short s10) {
        int r02 = (s10 & 1) * s7;
        for (int r22 = 1; r22 < 13; r22++) {
            r02 ^= ((1 << r22) & s10) * s7;
        }
        return r02;
    }

    @Override // org.bouncycastle.pqc.crypto.cmce.GF
    public void gf_mul_poly(int r14, int[] r15, short[] sArr, short[] sArr2, short[] sArr3, int[] r19) {
        r19[0] = gf_mul_ext(sArr2[0], sArr3[0]);
        for (int r42 = 1; r42 < r14; r42++) {
            int r52 = r42 + r42;
            r19[r52 - 1] = 0;
            short s7 = sArr2[r42];
            short s10 = sArr3[r42];
            for (int r82 = 0; r82 < r42; r82++) {
                int r92 = r42 + r82;
                r19[r92] = r19[r92] ^ gf_mul_ext_par(s7, sArr3[r82], sArr2[r82], s10);
            }
            r19[r52] = gf_mul_ext(s7, s10);
        }
        for (int r43 = (r14 - 1) * 2; r43 >= r14; r43--) {
            int r53 = r19[r43];
            for (int r02 : r15) {
                int r72 = (r43 - r14) + r02;
                r19[r72] = r19[r72] ^ r53;
            }
        }
        for (int r32 = 0; r32 < r14; r32++) {
            sArr[r32] = gf_reduce(r19[r32]);
        }
    }

    @Override // org.bouncycastle.pqc.crypto.cmce.GF
    public short gf_reduce(int r6) {
        int r02 = r6 & 8191;
        int r62 = r6 >>> 13;
        int r12 = ((r62 << 4) ^ (r62 << 3)) ^ (r62 << 1);
        int r22 = r12 >>> 13;
        return (short) ((((r62 ^ r02) ^ r22) ^ (r12 & 8191)) ^ (((r22 << 4) ^ (r22 << 3)) ^ (r22 << 1)));
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
    public void gf_sqr_poly(int r6, int[] r72, short[] sArr, short[] sArr2, int[] r10) {
        r10[0] = gf_sq_ext(sArr2[0]);
        for (int r12 = 1; r12 < r6; r12++) {
            int r22 = r12 + r12;
            r10[r22 - 1] = 0;
            r10[r22] = gf_sq_ext(sArr2[r12]);
        }
        for (int r92 = (r6 - 1) * 2; r92 >= r6; r92--) {
            int r13 = r10[r92];
            for (int r02 : r72) {
                int r32 = (r92 - r6) + r02;
                r10[r32] = r10[r32] ^ r13;
            }
        }
        for (int r03 = 0; r03 < r6; r03++) {
            sArr[r03] = gf_reduce(r10[r03]);
        }
    }
}
