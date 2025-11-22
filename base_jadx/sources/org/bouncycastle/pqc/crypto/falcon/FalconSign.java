package org.bouncycastle.pqc.crypto.falcon;

import org.bouncycastle.crypto.hpke.HPKE;

/* loaded from: classes2.dex */
class FalconSign {
    FPREngine fpr = new FPREngine();
    FalconFFT fft = new FalconFFT();
    FalconCommon common = new FalconCommon();

    private static int MKN(int r12) {
        return 1 << r12;
    }

    public int do_sign_dyn(SamplerZ samplerZ, SamplerCtx samplerCtx, short[] sArr, int r27, byte[] bArr, int r29, byte[] bArr2, int r31, byte[] bArr3, int r33, byte[] bArr4, int r35, short[] sArr2, int r37, int r38, FalconFPR[] falconFPRArr, int r40) {
        int r11 = MKN(r38);
        int r10 = r40 + r11;
        int r92 = r10 + r11;
        int r82 = r92 + r11;
        smallints_to_fpr(falconFPRArr, r10, bArr, r29, r38);
        smallints_to_fpr(falconFPRArr, r40, bArr2, r31, r38);
        smallints_to_fpr(falconFPRArr, r82, bArr3, r33, r38);
        smallints_to_fpr(falconFPRArr, r92, bArr4, r35, r38);
        this.fft.FFT(falconFPRArr, r10, r38);
        this.fft.FFT(falconFPRArr, r40, r38);
        this.fft.FFT(falconFPRArr, r82, r38);
        this.fft.FFT(falconFPRArr, r92, r38);
        this.fft.poly_neg(falconFPRArr, r10, r38);
        this.fft.poly_neg(falconFPRArr, r82, r38);
        int r72 = r82 + r11;
        int r6 = r72 + r11;
        System.arraycopy(falconFPRArr, r10, falconFPRArr, r72, r11);
        this.fft.poly_mulselfadj_fft(falconFPRArr, r72, r38);
        System.arraycopy(falconFPRArr, r40, falconFPRArr, r6, r11);
        this.fft.poly_muladj_fft(falconFPRArr, r6, falconFPRArr, r92, r38);
        this.fft.poly_mulselfadj_fft(falconFPRArr, r40, r38);
        this.fft.poly_add(falconFPRArr, r40, falconFPRArr, r72, r38);
        System.arraycopy(falconFPRArr, r10, falconFPRArr, r72, r11);
        this.fft.poly_muladj_fft(falconFPRArr, r10, falconFPRArr, r82, r38);
        this.fft.poly_add(falconFPRArr, r10, falconFPRArr, r6, r38);
        this.fft.poly_mulselfadj_fft(falconFPRArr, r92, r38);
        System.arraycopy(falconFPRArr, r82, falconFPRArr, r6, r11);
        this.fft.poly_mulselfadj_fft(falconFPRArr, r6, r38);
        this.fft.poly_add(falconFPRArr, r92, falconFPRArr, r6, r38);
        int r52 = r6 + r11;
        int r02 = 0;
        while (r02 < r11) {
            falconFPRArr[r6 + r02] = this.fpr.fpr_of(sArr2[r37 + r02]);
            r02++;
            r52 = r52;
        }
        int r16 = r52;
        this.fft.FFT(falconFPRArr, r6, r38);
        FalconFPR falconFPR = this.fpr.fpr_inverse_of_q;
        System.arraycopy(falconFPRArr, r6, falconFPRArr, r16, r11);
        this.fft.poly_mul_fft(falconFPRArr, r16, falconFPRArr, r72, r38);
        this.fft.poly_mulconst(falconFPRArr, r16, this.fpr.fpr_neg(falconFPR), r38);
        this.fft.poly_mul_fft(falconFPRArr, r6, falconFPRArr, r82, r38);
        this.fft.poly_mulconst(falconFPRArr, r6, falconFPR, r38);
        int r93 = r11 * 2;
        System.arraycopy(falconFPRArr, r6, falconFPRArr, r82, r93);
        ffSampling_fft_dyntree(samplerZ, samplerCtx, falconFPRArr, r82, falconFPRArr, r72, falconFPRArr, r40, falconFPRArr, r10, falconFPRArr, r92, r38, r38, falconFPRArr, r6);
        System.arraycopy(falconFPRArr, r82, falconFPRArr, r72, r93);
        smallints_to_fpr(falconFPRArr, r10, bArr, r29, r38);
        smallints_to_fpr(falconFPRArr, r40, bArr2, r31, r38);
        smallints_to_fpr(falconFPRArr, r82, bArr3, r33, r38);
        smallints_to_fpr(falconFPRArr, r92, bArr4, r35, r38);
        this.fft.FFT(falconFPRArr, r10, r38);
        this.fft.FFT(falconFPRArr, r40, r38);
        this.fft.FFT(falconFPRArr, r82, r38);
        this.fft.FFT(falconFPRArr, r92, r38);
        this.fft.poly_neg(falconFPRArr, r10, r38);
        this.fft.poly_neg(falconFPRArr, r82, r38);
        int r73 = r16 + r11;
        System.arraycopy(falconFPRArr, r72, falconFPRArr, r16, r11);
        System.arraycopy(falconFPRArr, r6, falconFPRArr, r73, r11);
        this.fft.poly_mul_fft(falconFPRArr, r16, falconFPRArr, r40, r38);
        this.fft.poly_mul_fft(falconFPRArr, r73, falconFPRArr, r92, r38);
        this.fft.poly_add(falconFPRArr, r16, falconFPRArr, r73, r38);
        System.arraycopy(falconFPRArr, r72, falconFPRArr, r73, r11);
        this.fft.poly_mul_fft(falconFPRArr, r73, falconFPRArr, r10, r38);
        System.arraycopy(falconFPRArr, r16, falconFPRArr, r72, r11);
        this.fft.poly_mul_fft(falconFPRArr, r6, falconFPRArr, r82, r38);
        this.fft.poly_add(falconFPRArr, r6, falconFPRArr, r73, r38);
        this.fft.iFFT(falconFPRArr, r72, r38);
        this.fft.iFFT(falconFPRArr, r6, r38);
        short[] sArr3 = new short[r11];
        int r53 = 0;
        int r74 = 0;
        for (int r42 = 0; r42 < r11; r42++) {
            int r94 = (sArr2[r37 + r42] & HPKE.aead_EXPORT_ONLY) - ((int) this.fpr.fpr_rint(falconFPRArr[r72 + r42]));
            r53 += r94 * r94;
            r74 |= r53;
            sArr3[r42] = (short) r94;
        }
        int r32 = (-(r74 >>> 31)) | r53;
        short[] sArr4 = new short[r11];
        for (int r54 = 0; r54 < r11; r54++) {
            sArr4[r54] = (short) (-this.fpr.fpr_rint(falconFPRArr[r6 + r54]));
        }
        if (this.common.is_short_half(r32, sArr4, 0, r38) == 0) {
            return 0;
        }
        System.arraycopy(sArr4, 0, sArr, r27, r11);
        return 1;
    }

    public int do_sign_tree(SamplerZ samplerZ, SamplerCtx samplerCtx, short[] sArr, int r27, FalconFPR[] falconFPRArr, int r29, short[] sArr2, int r31, int r32, FalconFPR[] falconFPRArr2, int r34) {
        int r11 = MKN(r32);
        int r10 = r34 + r11;
        int r16 = r29 + skoff_b00(r32);
        int r17 = r29 + skoff_b01(r32);
        int r18 = r29 + skoff_b10(r32);
        int r19 = r29 + skoff_b11(r32);
        int r82 = r29 + skoff_tree(r32);
        for (int r02 = 0; r02 < r11; r02++) {
            falconFPRArr2[r34 + r02] = this.fpr.fpr_of(sArr2[r31 + r02]);
        }
        this.fft.FFT(falconFPRArr2, r34, r32);
        FalconFPR falconFPR = this.fpr.fpr_inverse_of_q;
        System.arraycopy(falconFPRArr2, r34, falconFPRArr2, r10, r11);
        this.fft.poly_mul_fft(falconFPRArr2, r10, falconFPRArr, r17, r32);
        this.fft.poly_mulconst(falconFPRArr2, r10, this.fpr.fpr_neg(falconFPR), r32);
        this.fft.poly_mul_fft(falconFPRArr2, r34, falconFPRArr, r19, r32);
        this.fft.poly_mulconst(falconFPRArr2, r34, falconFPR, r32);
        int r72 = r10 + r11;
        int r6 = r72 + r11;
        ffSampling_fft(samplerZ, samplerCtx, falconFPRArr2, r72, falconFPRArr2, r6, falconFPRArr, r82, falconFPRArr2, r34, falconFPRArr2, r10, r32, falconFPRArr2, r6 + r11);
        System.arraycopy(falconFPRArr2, r72, falconFPRArr2, r34, r11);
        System.arraycopy(falconFPRArr2, r6, falconFPRArr2, r10, r11);
        this.fft.poly_mul_fft(falconFPRArr2, r72, falconFPRArr, r16, r32);
        this.fft.poly_mul_fft(falconFPRArr2, r6, falconFPRArr, r18, r32);
        this.fft.poly_add(falconFPRArr2, r72, falconFPRArr2, r6, r32);
        System.arraycopy(falconFPRArr2, r34, falconFPRArr2, r6, r11);
        this.fft.poly_mul_fft(falconFPRArr2, r6, falconFPRArr, r17, r32);
        System.arraycopy(falconFPRArr2, r72, falconFPRArr2, r34, r11);
        this.fft.poly_mul_fft(falconFPRArr2, r10, falconFPRArr, r19, r32);
        this.fft.poly_add(falconFPRArr2, r10, falconFPRArr2, r6, r32);
        this.fft.iFFT(falconFPRArr2, r34, r32);
        this.fft.iFFT(falconFPRArr2, r10, r32);
        short[] sArr3 = new short[r11];
        int r33 = 0;
        int r42 = 0;
        for (int r22 = 0; r22 < r11; r22++) {
            int r52 = (sArr2[r31 + r22] & HPKE.aead_EXPORT_ONLY) - ((int) this.fpr.fpr_rint(falconFPRArr2[r34 + r22]));
            r33 += r52 * r52;
            r42 |= r33;
            sArr3[r22] = (short) r52;
        }
        int r23 = (-(r42 >>> 31)) | r33;
        short[] sArr4 = new short[r11];
        for (int r43 = 0; r43 < r11; r43++) {
            sArr4[r43] = (short) (-this.fpr.fpr_rint(falconFPRArr2[r10 + r43]));
        }
        if (this.common.is_short_half(r23, sArr4, 0, r32) == 0) {
            return 0;
        }
        System.arraycopy(sArr4, 0, sArr, r27, r11);
        System.arraycopy(sArr3, 0, falconFPRArr2, r34, r11);
        return 1;
    }

    public void expand_privkey(FalconFPR[] falconFPRArr, int r19, byte[] bArr, int r21, byte[] bArr2, int r23, byte[] bArr3, int r25, byte[] bArr4, int r27, int r28, FalconFPR[] falconFPRArr2, int r30) {
        int r72 = MKN(r28);
        int r82 = r19 + skoff_b00(r28);
        int r92 = r19 + skoff_b01(r28);
        int r11 = r19 + skoff_b10(r28);
        int r15 = r19 + skoff_b11(r28);
        int r52 = r19 + skoff_tree(r28);
        smallints_to_fpr(falconFPRArr, r92, bArr, r21, r28);
        smallints_to_fpr(falconFPRArr, r82, bArr2, r23, r28);
        smallints_to_fpr(falconFPRArr, r15, bArr3, r25, r28);
        smallints_to_fpr(falconFPRArr, r11, bArr4, r27, r28);
        this.fft.FFT(falconFPRArr, r92, r28);
        this.fft.FFT(falconFPRArr, r82, r28);
        this.fft.FFT(falconFPRArr, r15, r28);
        this.fft.FFT(falconFPRArr, r11, r28);
        this.fft.poly_neg(falconFPRArr, r92, r28);
        this.fft.poly_neg(falconFPRArr, r15, r28);
        int r53 = r30 + r72;
        int r42 = r53 + r72;
        int r32 = r42 + r72;
        System.arraycopy(falconFPRArr, r82, falconFPRArr2, r30, r72);
        this.fft.poly_mulselfadj_fft(falconFPRArr2, r30, r28);
        System.arraycopy(falconFPRArr, r92, falconFPRArr2, r32, r72);
        this.fft.poly_mulselfadj_fft(falconFPRArr2, r32, r28);
        this.fft.poly_add(falconFPRArr2, r30, falconFPRArr2, r32, r28);
        System.arraycopy(falconFPRArr, r82, falconFPRArr2, r53, r72);
        this.fft.poly_muladj_fft(falconFPRArr2, r53, falconFPRArr, r11, r28);
        System.arraycopy(falconFPRArr, r92, falconFPRArr2, r32, r72);
        this.fft.poly_muladj_fft(falconFPRArr2, r32, falconFPRArr, r15, r28);
        this.fft.poly_add(falconFPRArr2, r53, falconFPRArr2, r32, r28);
        System.arraycopy(falconFPRArr, r11, falconFPRArr2, r42, r72);
        this.fft.poly_mulselfadj_fft(falconFPRArr2, r42, r28);
        System.arraycopy(falconFPRArr, r15, falconFPRArr2, r32, r72);
        this.fft.poly_mulselfadj_fft(falconFPRArr2, r32, r28);
        this.fft.poly_add(falconFPRArr2, r42, falconFPRArr2, r32, r28);
        ffLDL_fft(falconFPRArr, r52, falconFPRArr2, r30, falconFPRArr2, r53, falconFPRArr2, r42, r28, falconFPRArr2, r32);
        ffLDL_binary_normalize(falconFPRArr, r52, r28, r28);
    }

    public void ffLDL_binary_normalize(FalconFPR[] falconFPRArr, int r42, int r52, int r6) {
        int r02 = MKN(r6);
        if (r02 == 1) {
            int r43 = r42 + 0;
            FPREngine fPREngine = this.fpr;
            falconFPRArr[r43] = fPREngine.fpr_mul(fPREngine.fpr_sqrt(falconFPRArr[r43]), this.fpr.fpr_inv_sigma[r52]);
        } else {
            int r44 = r42 + r02;
            int r62 = r6 - 1;
            ffLDL_binary_normalize(falconFPRArr, r44, r52, r62);
            ffLDL_binary_normalize(falconFPRArr, r44 + ffLDL_treesize(r62), r52, r62);
        }
    }

    public void ffLDL_fft(FalconFPR[] falconFPRArr, int r26, FalconFPR[] falconFPRArr2, int r28, FalconFPR[] falconFPRArr3, int r30, FalconFPR[] falconFPRArr4, int r32, int r33, FalconFPR[] falconFPRArr5, int r35) {
        int r72 = MKN(r33);
        if (r72 == 1) {
            falconFPRArr[r26 + 0] = falconFPRArr2[r28 + 0];
            return;
        }
        int r23 = r72 >> 1;
        int r52 = r35 + r72;
        int r42 = r35 + (r72 << 1);
        System.arraycopy(falconFPRArr2, r28, falconFPRArr5, r35, r72);
        this.fft.poly_LDLmv_fft(falconFPRArr5, r52, falconFPRArr, r26, falconFPRArr2, r28, falconFPRArr3, r30, falconFPRArr4, r32, r33);
        this.fft.poly_split_fft(falconFPRArr5, r42, falconFPRArr5, r42 + r23, falconFPRArr5, r35, r33);
        int r15 = r35 + r23;
        this.fft.poly_split_fft(falconFPRArr5, r35, falconFPRArr5, r15, falconFPRArr5, r52, r33);
        System.arraycopy(falconFPRArr5, r42, falconFPRArr5, r52, r72);
        int r14 = r26 + r72;
        int r13 = r33 - 1;
        ffLDL_fft_inner(falconFPRArr, r14, falconFPRArr5, r52, falconFPRArr5, r52 + r23, r13, falconFPRArr5, r42);
        ffLDL_fft_inner(falconFPRArr, r14 + ffLDL_treesize(r13), falconFPRArr5, r35, falconFPRArr5, r15, r13, falconFPRArr5, r42);
    }

    public void ffLDL_fft_inner(FalconFPR[] falconFPRArr, int r26, FalconFPR[] falconFPRArr2, int r28, FalconFPR[] falconFPRArr3, int r30, int r31, FalconFPR[] falconFPRArr4, int r33) {
        int r82 = MKN(r31);
        if (r82 == 1) {
            falconFPRArr[r26 + 0] = falconFPRArr2[r28 + 0];
            return;
        }
        int r23 = r82 >> 1;
        this.fft.poly_LDLmv_fft(falconFPRArr4, r33, falconFPRArr, r26, falconFPRArr2, r28, falconFPRArr3, r30, falconFPRArr2, r28, r31);
        int r11 = r30 + r23;
        this.fft.poly_split_fft(falconFPRArr3, r30, falconFPRArr3, r11, falconFPRArr2, r28, r31);
        int r12 = r28 + r23;
        this.fft.poly_split_fft(falconFPRArr2, r28, falconFPRArr2, r12, falconFPRArr4, r33, r31);
        int r13 = r26 + r82;
        int r14 = r31 - 1;
        ffLDL_fft_inner(falconFPRArr, r13, falconFPRArr3, r30, falconFPRArr3, r11, r14, falconFPRArr4, r33);
        ffLDL_fft_inner(falconFPRArr, r13 + ffLDL_treesize(r14), falconFPRArr2, r28, falconFPRArr2, r12, r14, falconFPRArr4, r33);
    }

    public int ffLDL_treesize(int r22) {
        return (r22 + 1) << r22;
    }

    public void ffSampling_fft(SamplerZ samplerZ, SamplerCtx samplerCtx, FalconFPR[] falconFPRArr, int r28, FalconFPR[] falconFPRArr2, int r30, FalconFPR[] falconFPRArr3, int r32, FalconFPR[] falconFPRArr4, int r34, FalconFPR[] falconFPRArr5, int r36, int r37, FalconFPR[] falconFPRArr6, int r39) {
        if (r37 != 2) {
            if (r37 != 1) {
                int r12 = 1 << r37;
                int r16 = r12 >> 1;
                int r17 = r32 + r12;
                int r82 = r37 - 1;
                int r18 = r17 + ffLDL_treesize(r82);
                int r19 = r30 + r16;
                this.fft.poly_split_fft(falconFPRArr2, r30, falconFPRArr2, r19, falconFPRArr5, r36, r37);
                int r20 = r39 + r16;
                int r21 = r39 + r12;
                ffSampling_fft(samplerZ, samplerCtx, falconFPRArr6, r39, falconFPRArr6, r20, falconFPRArr3, r18, falconFPRArr2, r30, falconFPRArr2, r19, r82, falconFPRArr6, r21);
                this.fft.poly_merge_fft(falconFPRArr2, r30, falconFPRArr6, r39, falconFPRArr6, r20, r37);
                System.arraycopy(falconFPRArr5, r36, falconFPRArr6, r39, r12);
                this.fft.poly_sub(falconFPRArr6, r39, falconFPRArr2, r30, r37);
                this.fft.poly_mul_fft(falconFPRArr6, r39, falconFPRArr3, r32, r37);
                this.fft.poly_add(falconFPRArr6, r39, falconFPRArr4, r34, r37);
                int r122 = r28 + r16;
                this.fft.poly_split_fft(falconFPRArr, r28, falconFPRArr, r122, falconFPRArr6, r39, r37);
                ffSampling_fft(samplerZ, samplerCtx, falconFPRArr6, r39, falconFPRArr6, r20, falconFPRArr3, r17, falconFPRArr, r28, falconFPRArr, r122, r82, falconFPRArr6, r21);
                this.fft.poly_merge_fft(falconFPRArr, r28, falconFPRArr6, r39, falconFPRArr6, r20, r37);
                return;
            }
            FalconFPR falconFPR = falconFPRArr5[r36 + 0];
            FalconFPR falconFPR2 = falconFPRArr5[r36 + 1];
            FalconFPR falconFPR3 = falconFPRArr3[r32 + 3];
            FalconFPR falconFPRFpr_of = this.fpr.fpr_of(samplerZ.sample(samplerCtx, falconFPR, falconFPR3));
            falconFPRArr2[r30 + 0] = falconFPRFpr_of;
            FalconFPR falconFPRFpr_of2 = this.fpr.fpr_of(samplerZ.sample(samplerCtx, falconFPR2, falconFPR3));
            falconFPRArr2[r30 + 1] = falconFPRFpr_of2;
            FalconFPR falconFPRFpr_sub = this.fpr.fpr_sub(falconFPR, falconFPRFpr_of);
            FalconFPR falconFPRFpr_sub2 = this.fpr.fpr_sub(falconFPR2, falconFPRFpr_of2);
            FalconFPR falconFPR4 = falconFPRArr3[r32 + 0];
            FalconFPR falconFPR5 = falconFPRArr3[r32 + 1];
            FPREngine fPREngine = this.fpr;
            FalconFPR falconFPRFpr_sub3 = fPREngine.fpr_sub(fPREngine.fpr_mul(falconFPRFpr_sub, falconFPR4), this.fpr.fpr_mul(falconFPRFpr_sub2, falconFPR5));
            FPREngine fPREngine2 = this.fpr;
            FalconFPR falconFPRFpr_add = fPREngine2.fpr_add(fPREngine2.fpr_mul(falconFPRFpr_sub, falconFPR5), this.fpr.fpr_mul(falconFPRFpr_sub2, falconFPR4));
            FalconFPR falconFPRFpr_add2 = this.fpr.fpr_add(falconFPRFpr_sub3, falconFPRArr4[r34 + 0]);
            FalconFPR falconFPRFpr_add3 = this.fpr.fpr_add(falconFPRFpr_add, falconFPRArr4[r34 + 1]);
            FalconFPR falconFPR6 = falconFPRArr3[r32 + 2];
            falconFPRArr[r28 + 0] = this.fpr.fpr_of(samplerZ.sample(samplerCtx, falconFPRFpr_add2, falconFPR6));
            falconFPRArr[r28 + 1] = this.fpr.fpr_of(samplerZ.sample(samplerCtx, falconFPRFpr_add3, falconFPR6));
            return;
        }
        int r13 = r32 + 4;
        int r22 = r32 + 8;
        int r33 = r36 + 0;
        FalconFPR falconFPR7 = falconFPRArr5[r33];
        int r52 = r36 + 2;
        FalconFPR falconFPR8 = falconFPRArr5[r52];
        int r72 = r36 + 1;
        FalconFPR falconFPR9 = falconFPRArr5[r72];
        int r92 = r36 + 3;
        FalconFPR falconFPR10 = falconFPRArr5[r92];
        FalconFPR falconFPRFpr_add4 = this.fpr.fpr_add(falconFPR7, falconFPR9);
        FalconFPR falconFPRFpr_add5 = this.fpr.fpr_add(falconFPR8, falconFPR10);
        FalconFPR falconFPRFpr_half = this.fpr.fpr_half(falconFPRFpr_add4);
        FalconFPR falconFPRFpr_half2 = this.fpr.fpr_half(falconFPRFpr_add5);
        FalconFPR falconFPRFpr_sub4 = this.fpr.fpr_sub(falconFPR7, falconFPR9);
        FalconFPR falconFPRFpr_sub5 = this.fpr.fpr_sub(falconFPR8, falconFPR10);
        FPREngine fPREngine3 = this.fpr;
        FalconFPR falconFPRFpr_mul = fPREngine3.fpr_mul(fPREngine3.fpr_add(falconFPRFpr_sub4, falconFPRFpr_sub5), this.fpr.fpr_invsqrt8);
        FPREngine fPREngine4 = this.fpr;
        FalconFPR falconFPRFpr_mul2 = fPREngine4.fpr_mul(fPREngine4.fpr_sub(falconFPRFpr_sub5, falconFPRFpr_sub4), this.fpr.fpr_invsqrt8);
        FalconFPR falconFPR11 = falconFPRArr3[r22 + 3];
        FalconFPR falconFPRFpr_of3 = this.fpr.fpr_of(samplerZ.sample(samplerCtx, falconFPRFpr_mul, falconFPR11));
        FalconFPR falconFPRFpr_of4 = this.fpr.fpr_of(samplerZ.sample(samplerCtx, falconFPRFpr_mul2, falconFPR11));
        FalconFPR falconFPRFpr_sub6 = this.fpr.fpr_sub(falconFPRFpr_mul, falconFPRFpr_of3);
        FalconFPR falconFPRFpr_sub7 = this.fpr.fpr_sub(falconFPRFpr_mul2, falconFPRFpr_of4);
        FalconFPR falconFPR12 = falconFPRArr3[r22 + 0];
        FalconFPR falconFPR13 = falconFPRArr3[r22 + 1];
        FPREngine fPREngine5 = this.fpr;
        FalconFPR falconFPRFpr_sub8 = fPREngine5.fpr_sub(fPREngine5.fpr_mul(falconFPRFpr_sub6, falconFPR12), this.fpr.fpr_mul(falconFPRFpr_sub7, falconFPR13));
        FPREngine fPREngine6 = this.fpr;
        FalconFPR falconFPRFpr_add6 = fPREngine6.fpr_add(fPREngine6.fpr_mul(falconFPRFpr_sub6, falconFPR13), this.fpr.fpr_mul(falconFPRFpr_sub7, falconFPR12));
        FalconFPR falconFPRFpr_add7 = this.fpr.fpr_add(falconFPRFpr_sub8, falconFPRFpr_half);
        FalconFPR falconFPRFpr_add8 = this.fpr.fpr_add(falconFPRFpr_add6, falconFPRFpr_half2);
        FalconFPR falconFPR14 = falconFPRArr3[r22 + 2];
        FalconFPR falconFPRFpr_of5 = this.fpr.fpr_of(samplerZ.sample(samplerCtx, falconFPRFpr_add7, falconFPR14));
        FalconFPR falconFPRFpr_of6 = this.fpr.fpr_of(samplerZ.sample(samplerCtx, falconFPRFpr_add8, falconFPR14));
        FPREngine fPREngine7 = this.fpr;
        FalconFPR falconFPRFpr_mul3 = fPREngine7.fpr_mul(fPREngine7.fpr_sub(falconFPRFpr_of3, falconFPRFpr_of4), this.fpr.fpr_invsqrt2);
        FPREngine fPREngine8 = this.fpr;
        FalconFPR falconFPRFpr_mul4 = fPREngine8.fpr_mul(fPREngine8.fpr_add(falconFPRFpr_of3, falconFPRFpr_of4), this.fpr.fpr_invsqrt2);
        FalconFPR falconFPRFpr_add9 = this.fpr.fpr_add(falconFPRFpr_of5, falconFPRFpr_mul3);
        falconFPRArr2[r30 + 0] = falconFPRFpr_add9;
        FalconFPR falconFPRFpr_add10 = this.fpr.fpr_add(falconFPRFpr_of6, falconFPRFpr_mul4);
        falconFPRArr2[r30 + 2] = falconFPRFpr_add10;
        FalconFPR falconFPRFpr_sub9 = this.fpr.fpr_sub(falconFPRFpr_of5, falconFPRFpr_mul3);
        falconFPRArr2[r30 + 1] = falconFPRFpr_sub9;
        FalconFPR falconFPRFpr_sub10 = this.fpr.fpr_sub(falconFPRFpr_of6, falconFPRFpr_mul4);
        falconFPRArr2[r30 + 3] = falconFPRFpr_sub10;
        FalconFPR falconFPRFpr_sub11 = this.fpr.fpr_sub(falconFPRArr5[r33], falconFPRFpr_add9);
        FalconFPR falconFPRFpr_sub12 = this.fpr.fpr_sub(falconFPRArr5[r72], falconFPRFpr_sub9);
        FalconFPR falconFPRFpr_sub13 = this.fpr.fpr_sub(falconFPRArr5[r52], falconFPRFpr_add10);
        FalconFPR falconFPRFpr_sub14 = this.fpr.fpr_sub(falconFPRArr5[r92], falconFPRFpr_sub10);
        FalconFPR falconFPR15 = falconFPRArr3[r32 + 0];
        FalconFPR falconFPR16 = falconFPRArr3[r32 + 2];
        FPREngine fPREngine9 = this.fpr;
        FalconFPR falconFPRFpr_sub15 = fPREngine9.fpr_sub(fPREngine9.fpr_mul(falconFPRFpr_sub11, falconFPR15), this.fpr.fpr_mul(falconFPRFpr_sub13, falconFPR16));
        FPREngine fPREngine10 = this.fpr;
        FalconFPR falconFPRFpr_add11 = fPREngine10.fpr_add(fPREngine10.fpr_mul(falconFPRFpr_sub11, falconFPR16), this.fpr.fpr_mul(falconFPRFpr_sub13, falconFPR15));
        FalconFPR falconFPR17 = falconFPRArr3[r32 + 1];
        FalconFPR falconFPR18 = falconFPRArr3[r32 + 3];
        FPREngine fPREngine11 = this.fpr;
        FalconFPR falconFPRFpr_sub16 = fPREngine11.fpr_sub(fPREngine11.fpr_mul(falconFPRFpr_sub12, falconFPR17), this.fpr.fpr_mul(falconFPRFpr_sub14, falconFPR18));
        FPREngine fPREngine12 = this.fpr;
        FalconFPR falconFPRFpr_add12 = fPREngine12.fpr_add(fPREngine12.fpr_mul(falconFPRFpr_sub12, falconFPR18), this.fpr.fpr_mul(falconFPRFpr_sub14, falconFPR17));
        FalconFPR falconFPRFpr_add13 = this.fpr.fpr_add(falconFPRFpr_sub15, falconFPRArr4[r34 + 0]);
        FalconFPR falconFPRFpr_add14 = this.fpr.fpr_add(falconFPRFpr_sub16, falconFPRArr4[r34 + 1]);
        FalconFPR falconFPRFpr_add15 = this.fpr.fpr_add(falconFPRFpr_add11, falconFPRArr4[r34 + 2]);
        FalconFPR falconFPRFpr_add16 = this.fpr.fpr_add(falconFPRFpr_add12, falconFPRArr4[r34 + 3]);
        FalconFPR falconFPRFpr_add17 = this.fpr.fpr_add(falconFPRFpr_add13, falconFPRFpr_add14);
        FalconFPR falconFPRFpr_add18 = this.fpr.fpr_add(falconFPRFpr_add15, falconFPRFpr_add16);
        FalconFPR falconFPRFpr_half3 = this.fpr.fpr_half(falconFPRFpr_add17);
        FalconFPR falconFPRFpr_half4 = this.fpr.fpr_half(falconFPRFpr_add18);
        FalconFPR falconFPRFpr_sub17 = this.fpr.fpr_sub(falconFPRFpr_add13, falconFPRFpr_add14);
        FalconFPR falconFPRFpr_sub18 = this.fpr.fpr_sub(falconFPRFpr_add15, falconFPRFpr_add16);
        FPREngine fPREngine13 = this.fpr;
        FalconFPR falconFPRFpr_mul5 = fPREngine13.fpr_mul(fPREngine13.fpr_add(falconFPRFpr_sub17, falconFPRFpr_sub18), this.fpr.fpr_invsqrt8);
        FPREngine fPREngine14 = this.fpr;
        FalconFPR falconFPRFpr_mul6 = fPREngine14.fpr_mul(fPREngine14.fpr_sub(falconFPRFpr_sub18, falconFPRFpr_sub17), this.fpr.fpr_invsqrt8);
        FalconFPR falconFPR19 = falconFPRArr3[r13 + 3];
        FalconFPR falconFPRFpr_of7 = this.fpr.fpr_of(samplerZ.sample(samplerCtx, falconFPRFpr_mul5, falconFPR19));
        FalconFPR falconFPRFpr_of8 = this.fpr.fpr_of(samplerZ.sample(samplerCtx, falconFPRFpr_mul6, falconFPR19));
        FalconFPR falconFPRFpr_sub19 = this.fpr.fpr_sub(falconFPRFpr_mul5, falconFPRFpr_of7);
        FalconFPR falconFPRFpr_sub20 = this.fpr.fpr_sub(falconFPRFpr_mul6, falconFPRFpr_of8);
        FalconFPR falconFPR20 = falconFPRArr3[r13 + 0];
        FalconFPR falconFPR21 = falconFPRArr3[r13 + 1];
        FPREngine fPREngine15 = this.fpr;
        FalconFPR falconFPRFpr_sub21 = fPREngine15.fpr_sub(fPREngine15.fpr_mul(falconFPRFpr_sub19, falconFPR20), this.fpr.fpr_mul(falconFPRFpr_sub20, falconFPR21));
        FPREngine fPREngine16 = this.fpr;
        FalconFPR falconFPRFpr_add19 = fPREngine16.fpr_add(fPREngine16.fpr_mul(falconFPRFpr_sub19, falconFPR21), this.fpr.fpr_mul(falconFPRFpr_sub20, falconFPR20));
        FalconFPR falconFPRFpr_add20 = this.fpr.fpr_add(falconFPRFpr_sub21, falconFPRFpr_half3);
        FalconFPR falconFPRFpr_add21 = this.fpr.fpr_add(falconFPRFpr_add19, falconFPRFpr_half4);
        FalconFPR falconFPR22 = falconFPRArr3[r13 + 2];
        FalconFPR falconFPRFpr_of9 = this.fpr.fpr_of(samplerZ.sample(samplerCtx, falconFPRFpr_add20, falconFPR22));
        FalconFPR falconFPRFpr_of10 = this.fpr.fpr_of(samplerZ.sample(samplerCtx, falconFPRFpr_add21, falconFPR22));
        FPREngine fPREngine17 = this.fpr;
        FalconFPR falconFPRFpr_mul7 = fPREngine17.fpr_mul(fPREngine17.fpr_sub(falconFPRFpr_of7, falconFPRFpr_of8), this.fpr.fpr_invsqrt2);
        FPREngine fPREngine18 = this.fpr;
        FalconFPR falconFPRFpr_mul8 = fPREngine18.fpr_mul(fPREngine18.fpr_add(falconFPRFpr_of7, falconFPRFpr_of8), this.fpr.fpr_invsqrt2);
        falconFPRArr[r28 + 0] = this.fpr.fpr_add(falconFPRFpr_of9, falconFPRFpr_mul7);
        falconFPRArr[r28 + 2] = this.fpr.fpr_add(falconFPRFpr_of10, falconFPRFpr_mul8);
        falconFPRArr[r28 + 1] = this.fpr.fpr_sub(falconFPRFpr_of9, falconFPRFpr_mul7);
        falconFPRArr[r28 + 3] = this.fpr.fpr_sub(falconFPRFpr_of10, falconFPRFpr_mul8);
    }

    public void ffSampling_fft_dyntree(SamplerZ samplerZ, SamplerCtx samplerCtx, FalconFPR[] falconFPRArr, int r40, FalconFPR[] falconFPRArr2, int r42, FalconFPR[] falconFPRArr3, int r44, FalconFPR[] falconFPRArr4, int r46, FalconFPR[] falconFPRArr5, int r48, int r49, int r50, FalconFPR[] falconFPRArr6, int r52) {
        if (r50 == 0) {
            FalconFPR falconFPR = falconFPRArr3[r44 + 0];
            FPREngine fPREngine = this.fpr;
            FalconFPR falconFPRFpr_mul = fPREngine.fpr_mul(fPREngine.fpr_sqrt(falconFPR), this.fpr.fpr_inv_sigma[r49]);
            falconFPRArr[r40 + 0] = this.fpr.fpr_of(samplerZ.sample(samplerCtx, falconFPRArr[r1], falconFPRFpr_mul));
            falconFPRArr2[r42 + 0] = this.fpr.fpr_of(samplerZ.sample(samplerCtx, falconFPRArr2[r1], falconFPRFpr_mul));
            return;
        }
        int r22 = 1 << r50;
        int r12 = r22 >> 1;
        this.fft.poly_LDL_fft(falconFPRArr3, r44, falconFPRArr4, r46, falconFPRArr5, r48, r50);
        int r34 = r52 + r12;
        this.fft.poly_split_fft(falconFPRArr6, r52, falconFPRArr6, r34, falconFPRArr3, r44, r50);
        System.arraycopy(falconFPRArr6, r52, falconFPRArr3, r44, r22);
        this.fft.poly_split_fft(falconFPRArr6, r52, falconFPRArr6, r34, falconFPRArr5, r48, r50);
        System.arraycopy(falconFPRArr6, r52, falconFPRArr5, r48, r22);
        System.arraycopy(falconFPRArr4, r46, falconFPRArr6, r52, r22);
        System.arraycopy(falconFPRArr3, r44, falconFPRArr4, r46, r12);
        int r13 = r46 + r12;
        System.arraycopy(falconFPRArr5, r48, falconFPRArr4, r13, r12);
        int r14 = r52 + r22;
        int r17 = r14 + r12;
        this.fft.poly_split_fft(falconFPRArr6, r14, falconFPRArr6, r17, falconFPRArr2, r42, r50);
        int r02 = r50 - 1;
        ffSampling_fft_dyntree(samplerZ, samplerCtx, falconFPRArr6, r14, falconFPRArr6, r17, falconFPRArr5, r48, falconFPRArr5, r48 + r12, falconFPRArr4, r13, r49, r02, falconFPRArr6, r14 + r22);
        int r10 = r52 + (r22 << 1);
        this.fft.poly_merge_fft(falconFPRArr6, r10, falconFPRArr6, r14, falconFPRArr6, r17, r50);
        System.arraycopy(falconFPRArr2, r42, falconFPRArr6, r14, r22);
        this.fft.poly_sub(falconFPRArr6, r14, falconFPRArr6, r10, r50);
        System.arraycopy(falconFPRArr6, r10, falconFPRArr2, r42, r22);
        this.fft.poly_mul_fft(falconFPRArr6, r52, falconFPRArr6, r14, r50);
        this.fft.poly_add(falconFPRArr, r40, falconFPRArr6, r52, r50);
        this.fft.poly_split_fft(falconFPRArr6, r52, falconFPRArr6, r34, falconFPRArr, r40, r50);
        ffSampling_fft_dyntree(samplerZ, samplerCtx, falconFPRArr6, r52, falconFPRArr6, r34, falconFPRArr3, r44, falconFPRArr3, r44 + r12, falconFPRArr4, r46, r49, r02, falconFPRArr6, r14);
        this.fft.poly_merge_fft(falconFPRArr, r40, falconFPRArr6, r52, falconFPRArr6, r34, r50);
    }

    public void sign_dyn(short[] sArr, int r20, SHAKE256 shake256, byte[] bArr, int r23, byte[] bArr2, int r25, byte[] bArr3, int r27, byte[] bArr4, int r29, short[] sArr2, int r31, int r32, FalconFPR[] falconFPRArr, int r34) {
        SamplerCtx samplerCtx;
        SamplerZ samplerZ;
        do {
            samplerCtx = new SamplerCtx();
            samplerZ = new SamplerZ();
            samplerCtx.sigma_min = this.fpr.fpr_sigma_min[r32];
            samplerCtx.f11877p.prng_init(shake256);
        } while (do_sign_dyn(samplerZ, samplerCtx, sArr, r20, bArr, r23, bArr2, r25, bArr3, r27, bArr4, r29, sArr2, r31, r32, falconFPRArr, r34) == 0);
    }

    public void sign_tree(short[] sArr, int r16, SHAKE256 shake256, FalconFPR[] falconFPRArr, int r19, short[] sArr2, int r21, int r22, FalconFPR[] falconFPRArr2, int r24) {
        SamplerCtx samplerCtx;
        SamplerZ samplerZ;
        do {
            samplerCtx = new SamplerCtx();
            samplerZ = new SamplerZ();
            samplerCtx.sigma_min = this.fpr.fpr_sigma_min[r22];
            samplerCtx.f11877p.prng_init(shake256);
        } while (do_sign_tree(samplerZ, samplerCtx, sArr, r16, falconFPRArr, r19, sArr2, r21, r22, falconFPRArr2, r24) == 0);
    }

    public int skoff_b00(int r12) {
        return 0;
    }

    public int skoff_b01(int r12) {
        return MKN(r12);
    }

    public int skoff_b10(int r12) {
        return MKN(r12) * 2;
    }

    public int skoff_b11(int r12) {
        return MKN(r12) * 3;
    }

    public int skoff_tree(int r12) {
        return MKN(r12) * 4;
    }

    public void smallints_to_fpr(FalconFPR[] falconFPRArr, int r72, byte[] bArr, int r92, int r10) {
        int r102 = MKN(r10);
        for (int r02 = 0; r02 < r102; r02++) {
            falconFPRArr[r72 + r02] = this.fpr.fpr_of(bArr[r92 + r02]);
        }
    }
}
