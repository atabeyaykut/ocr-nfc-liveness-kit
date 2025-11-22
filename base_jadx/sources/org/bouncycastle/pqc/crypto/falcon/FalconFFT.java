package org.bouncycastle.pqc.crypto.falcon;

/* loaded from: classes2.dex */
class FalconFFT {
    FPREngine fpr = new FPREngine();

    public void FFT(FalconFPR[] falconFPRArr, int r25, int r26) {
        int r12 = r26;
        int r22 = 1;
        int r32 = (1 << r12) >> 1;
        int r42 = 2;
        int r6 = r32;
        int r52 = 1;
        while (r52 < r12) {
            int r72 = r6 >> 1;
            int r82 = r42 >> 1;
            int r92 = 0;
            int r10 = 0;
            while (r92 < r82) {
                FalconFPR[] falconFPRArr2 = this.fpr.fpr_gm_tab;
                int r13 = (r42 + r92) << r22;
                FalconFPR falconFPR = falconFPRArr2[r13 + 0];
                FalconFPR falconFPR2 = falconFPRArr2[r13 + r22];
                int r132 = r10;
                for (int r11 = r10 + r72; r132 < r11; r11 = r11) {
                    int r15 = r25 + r132;
                    FalconFPR falconFPR3 = falconFPRArr[r15];
                    int r16 = r15 + r32;
                    FalconFPR falconFPR4 = falconFPRArr[r16];
                    int r17 = r15 + r72;
                    int r18 = r72;
                    int r19 = r17 + r32;
                    int r20 = r32;
                    ComplexNumberWrapper complexNumberWrapperFPC_MUL = FPC_MUL(falconFPRArr[r17], falconFPRArr[r19], falconFPR, falconFPR2);
                    FalconFPR falconFPR5 = complexNumberWrapperFPC_MUL.f11869re;
                    FalconFPR falconFPR6 = complexNumberWrapperFPC_MUL.im;
                    int r21 = r82;
                    ComplexNumberWrapper complexNumberWrapperFPC_ADD = FPC_ADD(falconFPR3, falconFPR4, falconFPR5, falconFPR6);
                    falconFPRArr[r15] = complexNumberWrapperFPC_ADD.f11869re;
                    falconFPRArr[r16] = complexNumberWrapperFPC_ADD.im;
                    ComplexNumberWrapper complexNumberWrapperFPC_SUB = FPC_SUB(falconFPR3, falconFPR4, falconFPR5, falconFPR6);
                    falconFPRArr[r17] = complexNumberWrapperFPC_SUB.f11869re;
                    falconFPRArr[r19] = complexNumberWrapperFPC_SUB.im;
                    r132++;
                    r72 = r18;
                    r32 = r20;
                    r82 = r21;
                }
                r92++;
                r10 += r6;
                r22 = 1;
            }
            r52++;
            r42 <<= 1;
            r12 = r26;
            r6 = r72;
            r22 = 1;
        }
    }

    public ComplexNumberWrapper FPC_ADD(FalconFPR falconFPR, FalconFPR falconFPR2, FalconFPR falconFPR3, FalconFPR falconFPR4) {
        return new ComplexNumberWrapper(this.fpr.fpr_add(falconFPR, falconFPR3), this.fpr.fpr_add(falconFPR2, falconFPR4));
    }

    public ComplexNumberWrapper FPC_DIV(FalconFPR falconFPR, FalconFPR falconFPR2, FalconFPR falconFPR3, FalconFPR falconFPR4) {
        FPREngine fPREngine = this.fpr;
        FalconFPR falconFPRFpr_inv = this.fpr.fpr_inv(fPREngine.fpr_add(fPREngine.fpr_sqr(falconFPR3), this.fpr.fpr_sqr(falconFPR4)));
        FalconFPR falconFPRFpr_mul = this.fpr.fpr_mul(falconFPR3, falconFPRFpr_inv);
        FPREngine fPREngine2 = this.fpr;
        FalconFPR falconFPRFpr_mul2 = fPREngine2.fpr_mul(fPREngine2.fpr_neg(falconFPR4), falconFPRFpr_inv);
        FPREngine fPREngine3 = this.fpr;
        FalconFPR falconFPRFpr_sub = fPREngine3.fpr_sub(fPREngine3.fpr_mul(falconFPR, falconFPRFpr_mul), this.fpr.fpr_mul(falconFPR2, falconFPRFpr_mul2));
        FPREngine fPREngine4 = this.fpr;
        return new ComplexNumberWrapper(falconFPRFpr_sub, fPREngine4.fpr_add(fPREngine4.fpr_mul(falconFPR, falconFPRFpr_mul2), this.fpr.fpr_mul(falconFPR2, falconFPRFpr_mul)));
    }

    public ComplexNumberWrapper FPC_INV(FalconFPR falconFPR, FalconFPR falconFPR2) {
        FPREngine fPREngine = this.fpr;
        FalconFPR falconFPRFpr_inv = this.fpr.fpr_inv(fPREngine.fpr_add(fPREngine.fpr_sqr(falconFPR), this.fpr.fpr_sqr(falconFPR2)));
        FalconFPR falconFPRFpr_mul = this.fpr.fpr_mul(falconFPR, falconFPRFpr_inv);
        FPREngine fPREngine2 = this.fpr;
        return new ComplexNumberWrapper(falconFPRFpr_mul, fPREngine2.fpr_mul(fPREngine2.fpr_neg(falconFPR2), falconFPRFpr_inv));
    }

    public ComplexNumberWrapper FPC_MUL(FalconFPR falconFPR, FalconFPR falconFPR2, FalconFPR falconFPR3, FalconFPR falconFPR4) {
        FPREngine fPREngine = this.fpr;
        FalconFPR falconFPRFpr_sub = fPREngine.fpr_sub(fPREngine.fpr_mul(falconFPR, falconFPR3), this.fpr.fpr_mul(falconFPR2, falconFPR4));
        FPREngine fPREngine2 = this.fpr;
        return new ComplexNumberWrapper(falconFPRFpr_sub, fPREngine2.fpr_add(fPREngine2.fpr_mul(falconFPR, falconFPR4), this.fpr.fpr_mul(falconFPR2, falconFPR3)));
    }

    public ComplexNumberWrapper FPC_SQR(FalconFPR falconFPR, FalconFPR falconFPR2) {
        FPREngine fPREngine = this.fpr;
        FalconFPR falconFPRFpr_sub = fPREngine.fpr_sub(fPREngine.fpr_sqr(falconFPR), this.fpr.fpr_sqr(falconFPR2));
        FPREngine fPREngine2 = this.fpr;
        return new ComplexNumberWrapper(falconFPRFpr_sub, fPREngine2.fpr_double(fPREngine2.fpr_mul(falconFPR, falconFPR2)));
    }

    public ComplexNumberWrapper FPC_SUB(FalconFPR falconFPR, FalconFPR falconFPR2, FalconFPR falconFPR3, FalconFPR falconFPR4) {
        return new ComplexNumberWrapper(this.fpr.fpr_sub(falconFPR, falconFPR3), this.fpr.fpr_sub(falconFPR2, falconFPR4));
    }

    public void iFFT(FalconFPR[] falconFPRArr, int r25, int r26) {
        int r72;
        int r12 = 1;
        int r22 = 1 << r26;
        int r32 = r22 >> 1;
        int r42 = r26;
        int r52 = r22;
        int r6 = 1;
        while (true) {
            r72 = 0;
            if (r42 <= r12) {
                break;
            }
            r52 >>= r12;
            int r82 = r6 << 1;
            int r92 = 0;
            while (r72 < r32) {
                FPREngine fPREngine = this.fpr;
                FalconFPR[] falconFPRArr2 = fPREngine.fpr_gm_tab;
                int r13 = (r52 + r92) << r12;
                FalconFPR falconFPR = falconFPRArr2[r13 + 0];
                FalconFPR falconFPRFpr_neg = fPREngine.fpr_neg(falconFPRArr2[r13 + r12]);
                int r122 = r72;
                for (int r10 = r72 + r6; r122 < r10; r10 = r10) {
                    int r132 = r25 + r122;
                    FalconFPR falconFPR2 = falconFPRArr[r132];
                    int r16 = r132 + r32;
                    FalconFPR falconFPR3 = falconFPRArr[r16];
                    int r17 = r132 + r6;
                    int r18 = r52;
                    FalconFPR falconFPR4 = falconFPRArr[r17];
                    int r19 = r17 + r32;
                    int r20 = r32;
                    FalconFPR falconFPR5 = falconFPRArr[r19];
                    int r21 = r6;
                    ComplexNumberWrapper complexNumberWrapperFPC_ADD = FPC_ADD(falconFPR2, falconFPR3, falconFPR4, falconFPR5);
                    falconFPRArr[r132] = complexNumberWrapperFPC_ADD.f11869re;
                    falconFPRArr[r16] = complexNumberWrapperFPC_ADD.im;
                    ComplexNumberWrapper complexNumberWrapperFPC_SUB = FPC_SUB(falconFPR2, falconFPR3, falconFPR4, falconFPR5);
                    ComplexNumberWrapper complexNumberWrapperFPC_MUL = FPC_MUL(complexNumberWrapperFPC_SUB.f11869re, complexNumberWrapperFPC_SUB.im, falconFPR, falconFPRFpr_neg);
                    falconFPRArr[r17] = complexNumberWrapperFPC_MUL.f11869re;
                    falconFPRArr[r19] = complexNumberWrapperFPC_MUL.im;
                    r122++;
                    r52 = r18;
                    r32 = r20;
                    r6 = r21;
                }
                r92++;
                r72 += r82;
                r12 = 1;
            }
            r42--;
            r6 = r82;
            r12 = 1;
        }
        if (r26 > 0) {
            FalconFPR falconFPR6 = this.fpr.fpr_p2_tab[r26];
            while (r72 < r22) {
                int r33 = r25 + r72;
                falconFPRArr[r33] = this.fpr.fpr_mul(falconFPRArr[r33], falconFPR6);
                r72++;
            }
        }
    }

    public void poly_LDL_fft(FalconFPR[] falconFPRArr, int r16, FalconFPR[] falconFPRArr2, int r18, FalconFPR[] falconFPRArr3, int r20, int r21) {
        int r12 = (1 << r21) >> 1;
        for (int r22 = 0; r22 < r12; r22++) {
            int r32 = r16 + r22;
            FalconFPR falconFPR = falconFPRArr[r32];
            FalconFPR falconFPR2 = falconFPRArr[r32 + r12];
            int r52 = r18 + r22;
            FalconFPR falconFPR3 = falconFPRArr2[r52];
            int r72 = r52 + r12;
            FalconFPR falconFPR4 = falconFPRArr2[r72];
            int r92 = r20 + r22;
            FalconFPR falconFPR5 = falconFPRArr3[r92];
            int r11 = r92 + r12;
            FalconFPR falconFPR6 = falconFPRArr3[r11];
            ComplexNumberWrapper complexNumberWrapperFPC_DIV = FPC_DIV(falconFPR3, falconFPR4, falconFPR, falconFPR2);
            FalconFPR falconFPR7 = complexNumberWrapperFPC_DIV.f11869re;
            FalconFPR falconFPR8 = complexNumberWrapperFPC_DIV.im;
            ComplexNumberWrapper complexNumberWrapperFPC_MUL = FPC_MUL(falconFPR7, falconFPR8, falconFPR3, this.fpr.fpr_neg(falconFPR4));
            ComplexNumberWrapper complexNumberWrapperFPC_SUB = FPC_SUB(falconFPR5, falconFPR6, complexNumberWrapperFPC_MUL.f11869re, complexNumberWrapperFPC_MUL.im);
            falconFPRArr3[r92] = complexNumberWrapperFPC_SUB.f11869re;
            falconFPRArr3[r11] = complexNumberWrapperFPC_SUB.im;
            falconFPRArr2[r52] = falconFPR7;
            falconFPRArr2[r72] = this.fpr.fpr_neg(falconFPR8);
        }
    }

    public void poly_LDLmv_fft(FalconFPR[] falconFPRArr, int r12, FalconFPR[] falconFPRArr2, int r14, FalconFPR[] falconFPRArr3, int r16, FalconFPR[] falconFPRArr4, int r18, FalconFPR[] falconFPRArr5, int r20, int r21) {
        int r13 = (1 << r21) >> 1;
        for (int r22 = 0; r22 < r13; r22++) {
            int r32 = r16 + r22;
            FalconFPR falconFPR = falconFPRArr3[r32];
            FalconFPR falconFPR2 = falconFPRArr3[r32 + r13];
            int r52 = r18 + r22;
            FalconFPR falconFPR3 = falconFPRArr4[r52];
            FalconFPR falconFPR4 = falconFPRArr4[r52 + r13];
            int r72 = r20 + r22;
            FalconFPR falconFPR5 = falconFPRArr5[r72];
            FalconFPR falconFPR6 = falconFPRArr5[r72 + r13];
            ComplexNumberWrapper complexNumberWrapperFPC_DIV = FPC_DIV(falconFPR3, falconFPR4, falconFPR, falconFPR2);
            FalconFPR falconFPR7 = complexNumberWrapperFPC_DIV.f11869re;
            FalconFPR falconFPR8 = complexNumberWrapperFPC_DIV.im;
            ComplexNumberWrapper complexNumberWrapperFPC_MUL = FPC_MUL(falconFPR7, falconFPR8, falconFPR3, this.fpr.fpr_neg(falconFPR4));
            ComplexNumberWrapper complexNumberWrapperFPC_SUB = FPC_SUB(falconFPR5, falconFPR6, complexNumberWrapperFPC_MUL.f11869re, complexNumberWrapperFPC_MUL.im);
            int r6 = r12 + r22;
            falconFPRArr[r6] = complexNumberWrapperFPC_SUB.f11869re;
            falconFPRArr[r6 + r13] = complexNumberWrapperFPC_SUB.im;
            int r53 = r14 + r22;
            falconFPRArr2[r53] = falconFPR7;
            falconFPRArr2[r53 + r13] = this.fpr.fpr_neg(falconFPR8);
        }
    }

    public void poly_add(FalconFPR[] falconFPRArr, int r72, FalconFPR[] falconFPRArr2, int r92, int r10) {
        int r102 = 1 << r10;
        for (int r02 = 0; r02 < r102; r02++) {
            int r12 = r72 + r02;
            falconFPRArr[r12] = this.fpr.fpr_add(falconFPRArr[r12], falconFPRArr2[r92 + r02]);
        }
    }

    public void poly_add_muladj_fft(FalconFPR[] falconFPRArr, int r14, FalconFPR[] falconFPRArr2, int r16, FalconFPR[] falconFPRArr3, int r18, FalconFPR[] falconFPRArr4, int r20, FalconFPR[] falconFPRArr5, int r22, int r23) {
        int r12 = (1 << r23) >> 1;
        for (int r24 = 0; r24 < r12; r24++) {
            int r32 = r16 + r24;
            FalconFPR falconFPR = falconFPRArr2[r32];
            FalconFPR falconFPR2 = falconFPRArr2[r32 + r12];
            int r52 = r18 + r24;
            FalconFPR falconFPR3 = falconFPRArr3[r52];
            FalconFPR falconFPR4 = falconFPRArr3[r52 + r12];
            int r72 = r20 + r24;
            FalconFPR falconFPR5 = falconFPRArr4[r72];
            FalconFPR falconFPR6 = falconFPRArr4[r72 + r12];
            int r92 = r22 + r24;
            FalconFPR falconFPR7 = falconFPRArr5[r92];
            FalconFPR falconFPR8 = falconFPRArr5[r92 + r12];
            ComplexNumberWrapper complexNumberWrapperFPC_MUL = FPC_MUL(falconFPR, falconFPR2, falconFPR5, this.fpr.fpr_neg(falconFPR6));
            FalconFPR falconFPR9 = complexNumberWrapperFPC_MUL.f11869re;
            FalconFPR falconFPR10 = complexNumberWrapperFPC_MUL.im;
            ComplexNumberWrapper complexNumberWrapperFPC_MUL2 = FPC_MUL(falconFPR3, falconFPR4, falconFPR7, this.fpr.fpr_neg(falconFPR8));
            FalconFPR falconFPR11 = complexNumberWrapperFPC_MUL2.f11869re;
            FalconFPR falconFPR12 = complexNumberWrapperFPC_MUL2.im;
            int r73 = r14 + r24;
            falconFPRArr[r73] = this.fpr.fpr_add(falconFPR9, falconFPR11);
            falconFPRArr[r73 + r12] = this.fpr.fpr_add(falconFPR10, falconFPR12);
        }
    }

    public void poly_adj_fft(FalconFPR[] falconFPRArr, int r6, int r72) {
        int r73 = 1 << r72;
        for (int r02 = r73 >> 1; r02 < r73; r02++) {
            int r12 = r6 + r02;
            falconFPRArr[r12] = this.fpr.fpr_neg(falconFPRArr[r12]);
        }
    }

    public void poly_div_autoadj_fft(FalconFPR[] falconFPRArr, int r72, FalconFPR[] falconFPRArr2, int r92, int r10) {
        int r102 = (1 << r10) >> 1;
        for (int r02 = 0; r02 < r102; r02++) {
            FalconFPR falconFPRFpr_inv = this.fpr.fpr_inv(falconFPRArr2[r92 + r02]);
            int r22 = r72 + r02;
            falconFPRArr[r22] = this.fpr.fpr_mul(falconFPRArr[r22], falconFPRFpr_inv);
            int r23 = r22 + r102;
            falconFPRArr[r23] = this.fpr.fpr_mul(falconFPRArr[r23], falconFPRFpr_inv);
        }
    }

    public void poly_div_fft(FalconFPR[] falconFPRArr, int r92, FalconFPR[] falconFPRArr2, int r11, int r12) {
        int r122 = (1 << r12) >> 1;
        for (int r02 = 0; r02 < r122; r02++) {
            int r13 = r92 + r02;
            int r32 = r13 + r122;
            int r52 = r11 + r02;
            ComplexNumberWrapper complexNumberWrapperFPC_DIV = FPC_DIV(falconFPRArr[r13], falconFPRArr[r32], falconFPRArr2[r52], falconFPRArr2[r52 + r122]);
            falconFPRArr[r13] = complexNumberWrapperFPC_DIV.f11869re;
            falconFPRArr[r32] = complexNumberWrapperFPC_DIV.im;
        }
    }

    public void poly_invnorm2_fft(FalconFPR[] falconFPRArr, int r10, FalconFPR[] falconFPRArr2, int r12, FalconFPR[] falconFPRArr3, int r14, int r15) {
        int r152 = (1 << r15) >> 1;
        for (int r02 = 0; r02 < r152; r02++) {
            int r13 = r12 + r02;
            FalconFPR falconFPR = falconFPRArr2[r13];
            FalconFPR falconFPR2 = falconFPRArr2[r13 + r152];
            int r32 = r14 + r02;
            FalconFPR falconFPR3 = falconFPRArr3[r32];
            FalconFPR falconFPR4 = falconFPRArr3[r32 + r152];
            FPREngine fPREngine = this.fpr;
            FalconFPR falconFPRFpr_add = fPREngine.fpr_add(fPREngine.fpr_sqr(falconFPR), this.fpr.fpr_sqr(falconFPR2));
            FPREngine fPREngine2 = this.fpr;
            falconFPRArr[r10 + r02] = fPREngine.fpr_inv(fPREngine.fpr_add(falconFPRFpr_add, fPREngine2.fpr_add(fPREngine2.fpr_sqr(falconFPR3), this.fpr.fpr_sqr(falconFPR4))));
        }
    }

    public void poly_merge_fft(FalconFPR[] falconFPRArr, int r15, FalconFPR[] falconFPRArr2, int r17, FalconFPR[] falconFPRArr3, int r19, int r20) {
        int r22 = (1 << r20) >> 1;
        int r32 = r22 >> 1;
        falconFPRArr[r15 + 0] = falconFPRArr2[r17 + 0];
        falconFPRArr[r15 + r22] = falconFPRArr3[r19 + 0];
        for (int r42 = 0; r42 < r32; r42++) {
            int r52 = r17 + r42;
            FalconFPR falconFPR = falconFPRArr2[r52];
            FalconFPR falconFPR2 = falconFPRArr2[r52 + r32];
            int r72 = r19 + r42;
            FalconFPR falconFPR3 = falconFPRArr3[r72];
            FalconFPR falconFPR4 = falconFPRArr3[r72 + r32];
            FalconFPR[] falconFPRArr4 = this.fpr.fpr_gm_tab;
            int r10 = (r42 + r22) << 1;
            ComplexNumberWrapper complexNumberWrapperFPC_MUL = FPC_MUL(falconFPR3, falconFPR4, falconFPRArr4[r10 + 0], falconFPRArr4[r10 + 1]);
            FalconFPR falconFPR5 = complexNumberWrapperFPC_MUL.f11869re;
            FalconFPR falconFPR6 = complexNumberWrapperFPC_MUL.im;
            ComplexNumberWrapper complexNumberWrapperFPC_ADD = FPC_ADD(falconFPR, falconFPR2, falconFPR5, falconFPR6);
            FalconFPR falconFPR7 = complexNumberWrapperFPC_ADD.f11869re;
            FalconFPR falconFPR8 = complexNumberWrapperFPC_ADD.im;
            int r11 = (r42 << 1) + r15;
            int r12 = r11 + 0;
            falconFPRArr[r12] = falconFPR7;
            falconFPRArr[r12 + r22] = falconFPR8;
            ComplexNumberWrapper complexNumberWrapperFPC_SUB = FPC_SUB(falconFPR, falconFPR2, falconFPR5, falconFPR6);
            FalconFPR falconFPR9 = complexNumberWrapperFPC_SUB.f11869re;
            FalconFPR falconFPR10 = complexNumberWrapperFPC_SUB.im;
            int r112 = r11 + 1;
            falconFPRArr[r112] = falconFPR9;
            falconFPRArr[r112 + r22] = falconFPR10;
        }
    }

    public void poly_mul_autoadj_fft(FalconFPR[] falconFPRArr, int r82, FalconFPR[] falconFPRArr2, int r10, int r11) {
        int r112 = (1 << r11) >> 1;
        for (int r02 = 0; r02 < r112; r02++) {
            int r12 = r82 + r02;
            int r42 = r10 + r02;
            falconFPRArr[r12] = this.fpr.fpr_mul(falconFPRArr[r12], falconFPRArr2[r42]);
            int r13 = r12 + r112;
            falconFPRArr[r13] = this.fpr.fpr_mul(falconFPRArr[r13], falconFPRArr2[r42]);
        }
    }

    public void poly_mul_fft(FalconFPR[] falconFPRArr, int r92, FalconFPR[] falconFPRArr2, int r11, int r12) {
        int r122 = (1 << r12) >> 1;
        for (int r02 = 0; r02 < r122; r02++) {
            int r13 = r92 + r02;
            int r32 = r13 + r122;
            int r52 = r11 + r02;
            ComplexNumberWrapper complexNumberWrapperFPC_MUL = FPC_MUL(falconFPRArr[r13], falconFPRArr[r32], falconFPRArr2[r52], falconFPRArr2[r52 + r122]);
            falconFPRArr[r13] = complexNumberWrapperFPC_MUL.f11869re;
            falconFPRArr[r32] = complexNumberWrapperFPC_MUL.im;
        }
    }

    public void poly_muladj_fft(FalconFPR[] falconFPRArr, int r10, FalconFPR[] falconFPRArr2, int r12, int r13) {
        int r132 = (1 << r13) >> 1;
        for (int r02 = 0; r02 < r132; r02++) {
            int r14 = r10 + r02;
            int r32 = r14 + r132;
            int r52 = r12 + r02;
            ComplexNumberWrapper complexNumberWrapperFPC_MUL = FPC_MUL(falconFPRArr[r14], falconFPRArr[r32], falconFPRArr2[r52], this.fpr.fpr_neg(falconFPRArr2[r52 + r132]));
            falconFPRArr[r14] = complexNumberWrapperFPC_MUL.f11869re;
            falconFPRArr[r32] = complexNumberWrapperFPC_MUL.im;
        }
    }

    public void poly_mulconst(FalconFPR[] falconFPRArr, int r6, FalconFPR falconFPR, int r82) {
        int r83 = 1 << r82;
        for (int r02 = 0; r02 < r83; r02++) {
            int r12 = r6 + r02;
            falconFPRArr[r12] = this.fpr.fpr_mul(falconFPRArr[r12], falconFPR);
        }
    }

    public void poly_mulselfadj_fft(FalconFPR[] falconFPRArr, int r92, int r10) {
        int r102 = (1 << r10) >> 1;
        for (int r02 = 0; r02 < r102; r02++) {
            int r12 = r92 + r02;
            FalconFPR falconFPR = falconFPRArr[r12];
            int r32 = r12 + r102;
            FalconFPR falconFPR2 = falconFPRArr[r32];
            FPREngine fPREngine = this.fpr;
            falconFPRArr[r12] = fPREngine.fpr_add(fPREngine.fpr_sqr(falconFPR), this.fpr.fpr_sqr(falconFPR2));
            falconFPRArr[r32] = this.fpr.fpr_zero;
        }
    }

    public void poly_neg(FalconFPR[] falconFPRArr, int r6, int r72) {
        int r73 = 1 << r72;
        for (int r02 = 0; r02 < r73; r02++) {
            int r12 = r6 + r02;
            falconFPRArr[r12] = this.fpr.fpr_neg(falconFPRArr[r12]);
        }
    }

    public void poly_split_fft(FalconFPR[] falconFPRArr, int r15, FalconFPR[] falconFPRArr2, int r17, FalconFPR[] falconFPRArr3, int r19, int r20) {
        int r22 = (1 << r20) >> 1;
        int r32 = r22 >> 1;
        falconFPRArr[r15 + 0] = falconFPRArr3[r19 + 0];
        falconFPRArr2[r17 + 0] = falconFPRArr3[r19 + r22];
        for (int r42 = 0; r42 < r32; r42++) {
            int r52 = r19 + (r42 << 1);
            int r6 = r52 + 0;
            FalconFPR falconFPR = falconFPRArr3[r6];
            FalconFPR falconFPR2 = falconFPRArr3[r6 + r22];
            int r53 = r52 + 1;
            FalconFPR falconFPR3 = falconFPRArr3[r53];
            FalconFPR falconFPR4 = falconFPRArr3[r53 + r22];
            ComplexNumberWrapper complexNumberWrapperFPC_ADD = FPC_ADD(falconFPR, falconFPR2, falconFPR3, falconFPR4);
            FalconFPR falconFPR5 = complexNumberWrapperFPC_ADD.f11869re;
            FalconFPR falconFPR6 = complexNumberWrapperFPC_ADD.im;
            int r11 = r15 + r42;
            falconFPRArr[r11] = this.fpr.fpr_half(falconFPR5);
            falconFPRArr[r11 + r32] = this.fpr.fpr_half(falconFPR6);
            ComplexNumberWrapper complexNumberWrapperFPC_SUB = FPC_SUB(falconFPR, falconFPR2, falconFPR3, falconFPR4);
            FalconFPR falconFPR7 = complexNumberWrapperFPC_SUB.f11869re;
            FalconFPR falconFPR8 = complexNumberWrapperFPC_SUB.im;
            FPREngine fPREngine = this.fpr;
            FalconFPR[] falconFPRArr4 = fPREngine.fpr_gm_tab;
            int r92 = (r42 + r22) << 1;
            ComplexNumberWrapper complexNumberWrapperFPC_MUL = FPC_MUL(falconFPR7, falconFPR8, falconFPRArr4[r92 + 0], fPREngine.fpr_neg(falconFPRArr4[r92 + 1]));
            FalconFPR falconFPR9 = complexNumberWrapperFPC_MUL.f11869re;
            FalconFPR falconFPR10 = complexNumberWrapperFPC_MUL.im;
            int r72 = r17 + r42;
            falconFPRArr2[r72] = this.fpr.fpr_half(falconFPR9);
            falconFPRArr2[r72 + r32] = this.fpr.fpr_half(falconFPR10);
        }
    }

    public void poly_sub(FalconFPR[] falconFPRArr, int r72, FalconFPR[] falconFPRArr2, int r92, int r10) {
        int r102 = 1 << r10;
        for (int r02 = 0; r02 < r102; r02++) {
            int r12 = r72 + r02;
            falconFPRArr[r12] = this.fpr.fpr_sub(falconFPRArr[r12], falconFPRArr2[r92 + r02]);
        }
    }
}
