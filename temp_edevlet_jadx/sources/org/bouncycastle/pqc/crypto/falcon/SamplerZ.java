package org.bouncycastle.pqc.crypto.falcon;

import androidx.core.view.ViewCompat;

/* loaded from: classes2.dex */
class SamplerZ {
    FPREngine fpr = new FPREngine();

    public int BerExp(FalconRNG falconRNG, FalconFPR falconFPR, FalconFPR falconFPR2) {
        int r12;
        FPREngine fPREngine = this.fpr;
        int r13 = (int) fPREngine.fpr_trunc(fPREngine.fpr_mul(falconFPR, fPREngine.fpr_inv_log2));
        FPREngine fPREngine2 = this.fpr;
        long jFpr_expm_p63 = ((this.fpr.fpr_expm_p63(fPREngine2.fpr_sub(falconFPR, fPREngine2.fpr_mul(fPREngine2.fpr_of(r13), this.fpr.fpr_log2)), falconFPR2) << 1) - 1) >>> (((r13 ^ 63) & (-((63 - r13) >>> 31))) ^ r13);
        int r02 = 64;
        do {
            r02 -= 8;
            r12 = (falconRNG.prng_get_u8() & 255) - (((int) (jFpr_expm_p63 >>> r02)) & 255);
            if (r12 != 0) {
                break;
            }
        } while (r02 > 0);
        return r12 >>> 31;
    }

    public int gaussian0_sampler(FalconRNG falconRNG) {
        int[] r12 = {10745844, 3068844, 3741698, 5559083, 1580863, 8248194, 2260429, 13669192, 2736639, 708981, 4421575, 10046180, 169348, 7122675, 4136815, 30538, 13063405, 7650655, 4132, 14505003, 7826148, 417, 16768101, 11363290, 31, 8444042, 8086568, 1, 12844466, 265321, 0, 1232676, 13644283, 0, 38047, 9111839, 0, 870, 6138264, 0, 14, 12545723, 0, 0, 3104126, 0, 0, 28824, 0, 0, 198, 0, 0, 1};
        long jPrng_get_u64 = falconRNG.prng_get_u64();
        int r10 = falconRNG.prng_get_u8() & 255;
        int r42 = ((int) jPrng_get_u64) & ViewCompat.MEASURED_SIZE_MASK;
        int r52 = 16777215 & ((int) (jPrng_get_u64 >>> 24));
        int r102 = (r10 << 16) | ((int) (jPrng_get_u64 >>> 48));
        int r32 = 0;
        for (int r22 = 0; r22 < 54; r22 += 3) {
            int r6 = r12[r22 + 2];
            r32 += ((r102 - r12[r22 + 0]) - (((r52 - r12[r22 + 1]) - ((r42 - r6) >>> 31)) >>> 31)) >>> 31;
        }
        return r32;
    }

    public int sample(SamplerCtx samplerCtx, FalconFPR falconFPR, FalconFPR falconFPR2) {
        return sampler(samplerCtx, falconFPR, falconFPR2);
    }

    public int sampler(SamplerCtx samplerCtx, FalconFPR falconFPR, FalconFPR falconFPR2) {
        int r22;
        int r42;
        FalconFPR falconFPRFpr_mul;
        FPREngine fPREngine;
        int r12 = (int) this.fpr.fpr_floor(falconFPR);
        FPREngine fPREngine2 = this.fpr;
        FalconFPR falconFPRFpr_sub = fPREngine2.fpr_sub(falconFPR, fPREngine2.fpr_of(r12));
        FPREngine fPREngine3 = this.fpr;
        FalconFPR falconFPRFpr_half = fPREngine3.fpr_half(fPREngine3.fpr_sqr(falconFPR2));
        FalconFPR falconFPRFpr_mul2 = this.fpr.fpr_mul(falconFPR2, samplerCtx.sigma_min);
        do {
            r22 = gaussian0_sampler(samplerCtx.f11877p);
            r42 = (((r3 << 1) - 1) * r22) + (samplerCtx.f11877p.prng_get_u8() & 255 & 1);
            FPREngine fPREngine4 = this.fpr;
            falconFPRFpr_mul = fPREngine4.fpr_mul(fPREngine4.fpr_sqr(fPREngine4.fpr_sub(fPREngine4.fpr_of(r42), falconFPRFpr_sub)), falconFPRFpr_half);
            fPREngine = this.fpr;
        } while (BerExp(samplerCtx.f11877p, fPREngine.fpr_sub(falconFPRFpr_mul, fPREngine.fpr_mul(fPREngine.fpr_of(r22 * r22), this.fpr.fpr_inv_2sqrsigma0)), falconFPRFpr_mul2) == 0);
        return r12 + r42;
    }
}
