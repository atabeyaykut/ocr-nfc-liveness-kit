package org.bouncycastle.pqc.crypto.saber;

import org.bouncycastle.pqc.crypto.crystals.dilithium.DilithiumEngine;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* loaded from: classes2.dex */
class Poly {
    private static final int KARATSUBA_N = 64;
    private static int SCHB_N = 16;
    private final int N_RES;
    private final int N_SB;
    private final int N_SB_RES;
    private final int SABER_L;
    private final int SABER_N;
    private final SABEREngine engine;
    private final Utils utils;

    public Poly(SABEREngine sABEREngine) {
        this.engine = sABEREngine;
        this.SABER_L = sABEREngine.getSABER_L();
        int saber_n = sABEREngine.getSABER_N();
        this.SABER_N = saber_n;
        this.N_RES = saber_n << 1;
        this.N_SB = saber_n >> 2;
        this.N_SB_RES = (r0 * 2) - 1;
        this.utils = sABEREngine.getUtils();
    }

    private short OVERFLOWING_MUL(int r12, int r22) {
        return (short) (r12 * r22);
    }

    private void cbd(short[] sArr, byte[] bArr, int r24) {
        int[] r32 = new int[4];
        if (this.engine.getSABER_MU() == 6) {
            for (int r42 = 0; r42 < this.SABER_N / 4; r42++) {
                int r52 = (int) load_littleendian(bArr, (r42 * 3) + r24, 3);
                int r11 = 0;
                for (int r10 = 0; r10 < 3; r10++) {
                    r11 += (r52 >> r10) & 2396745;
                }
                r32[0] = r11 & 7;
                r32[1] = (r11 >>> 6) & 7;
                r32[2] = (r11 >>> 12) & 7;
                r32[3] = (r11 >>> 18) & 7;
                int r13 = r42 * 4;
                sArr[r13 + 0] = (short) (r32[0] - ((r11 >>> 3) & 7));
                sArr[r13 + 1] = (short) (r32[1] - ((r11 >>> 9) & 7));
                sArr[r13 + 2] = (short) (r32[2] - ((r11 >>> 15) & 7));
                sArr[r13 + 3] = (short) (r32[3] - (r11 >>> 21));
            }
            return;
        }
        char c10 = 15;
        if (this.engine.getSABER_MU() == 8) {
            for (int r43 = 0; r43 < this.SABER_N / 4; r43++) {
                int r53 = r43 * 4;
                int r12 = (int) load_littleendian(bArr, r24 + r53, 4);
                int r132 = 0;
                for (int r112 = 0; r112 < 4; r112++) {
                    r132 += (r12 >>> r112) & 286331153;
                }
                r32[0] = r132 & 15;
                r32[1] = (r132 >>> 8) & 15;
                r32[2] = (r132 >>> 16) & 15;
                r32[3] = (r132 >>> 24) & 15;
                sArr[r53 + 0] = (short) (r32[0] - ((r132 >>> 4) & 15));
                sArr[r53 + 1] = (short) (r32[1] - ((r132 >>> 12) & 15));
                sArr[r53 + 2] = (short) (r32[2] - ((r132 >>> 20) & 15));
                sArr[r53 + 3] = (short) (r32[3] - (r132 >>> 28));
            }
            return;
        }
        char c11 = '\n';
        if (this.engine.getSABER_MU() == 10) {
            int r44 = 0;
            while (r44 < this.SABER_N / 4) {
                long jLoad_littleendian = load_littleendian(bArr, (r44 * 5) + r24, 5);
                long j10 = 0;
                for (int r113 = 0; r113 < 5; r113++) {
                    j10 += (jLoad_littleendian >>> r113) & 35468117025L;
                }
                r32[0] = (int) (j10 & 31);
                r32[1] = (int) ((j10 >>> c11) & 31);
                r32[2] = (int) ((j10 >>> 20) & 31);
                r32[3] = (int) ((j10 >>> 30) & 31);
                int r133 = r44 * 4;
                sArr[r133 + 0] = (short) (r32[0] - ((int) ((j10 >>> 5) & 31)));
                sArr[r133 + 1] = (short) (r32[1] - ((int) ((j10 >>> c10) & 31)));
                sArr[r133 + 2] = (short) (r32[2] - ((int) ((j10 >>> 25) & 31)));
                sArr[r133 + 3] = (short) (r32[3] - ((int) (j10 >>> 35)));
                r44++;
                c11 = '\n';
                c10 = 15;
            }
        }
    }

    private void karatsuba_simple(int[] r25, int[] r26, int[] r27) {
        int[] r22 = new int[31];
        int[] r32 = new int[31];
        int[] r42 = new int[31];
        int[] r6 = new int[63];
        int r82 = 0;
        while (true) {
            if (r82 >= 16) {
                break;
            }
            int r10 = r25[r82];
            int r11 = r25[r82 + 16];
            int r12 = r25[r82 + 32];
            int r13 = r25[r82 + 48];
            int r14 = 0;
            for (int r92 = 16; r14 < r92; r92 = 16) {
                int r15 = r26[r14];
                int r72 = r26[r14 + 16];
                int r16 = r82 + r14;
                int r17 = r16 + 0;
                r27[r17] = r27[r17] + OVERFLOWING_MUL(r10, r15);
                int r18 = r16 + 32;
                r27[r18] = r27[r18] + OVERFLOWING_MUL(r11, r72);
                int r19 = r10;
                int[] r23 = r6;
                r22[r16] = (int) (((r15 + r72) * (r10 + r11)) + r22[r16]);
                int r52 = r26[r14 + 32];
                int r62 = r26[r14 + 48];
                int r73 = r16 + 64;
                r27[r73] = r27[r73] + OVERFLOWING_MUL(r52, r12);
                int r74 = r16 + 96;
                r27[r74] = r27[r74] + OVERFLOWING_MUL(r62, r13);
                r42[r16] = r42[r16] + OVERFLOWING_MUL(r12 + r13, r52 + r62);
                int r152 = r15 + r52;
                int r102 = r19 + r12;
                r23[r17] = r23[r17] + OVERFLOWING_MUL(r152, r102);
                int r75 = r72 + r62;
                int r53 = r11 + r13;
                r23[r18] = r23[r18] + OVERFLOWING_MUL(r75, r53);
                r32[r16] = r32[r16] + OVERFLOWING_MUL(r152 + r75, r102 + r53);
                r14++;
                r10 = r19;
                r82 = r82;
                r6 = r23;
            }
            r82++;
        }
        int[] r232 = r6;
        for (int r110 = 0; r110 < 31; r110++) {
            int r63 = r110 + 0;
            int r76 = r110 + 32;
            r32[r110] = (r32[r110] - r232[r63]) - r232[r76];
            r22[r110] = (r22[r110] - r27[r63]) - r27[r76];
            r42[r110] = (r42[r110] - r27[r110 + 64]) - r27[r110 + 96];
        }
        for (int r111 = 0; r111 < 31; r111++) {
            int r64 = r111 + 16;
            r232[r64] = r232[r64] + r32[r111];
            r27[r64] = r27[r64] + r22[r111];
            int r65 = r111 + 80;
            r27[r65] = r27[r65] + r42[r111];
        }
        for (int r112 = 0; r112 < 63; r112++) {
            r232[r112] = (r232[r112] - r27[r112]) - r27[r112 + 64];
        }
        for (int r77 = 0; r77 < 63; r77++) {
            int r24 = r77 + 32;
            r27[r24] = r27[r24] + r232[r77];
        }
    }

    private long load_littleendian(byte[] bArr, int r82, int r92) {
        long j10 = bArr[r82 + 0] & 255;
        for (int r22 = 1; r22 < r92; r22++) {
            j10 |= (bArr[r82 + r22] & 255) << (r22 * 8);
        }
        return j10;
    }

    private void poly_mul_acc(short[] sArr, short[] sArr2, short[] sArr3) {
        short[] sArr4 = new short[this.SABER_N * 2];
        toom_cook_4way(sArr, sArr2, sArr4);
        int r52 = this.SABER_N;
        while (true) {
            int r6 = this.SABER_N;
            if (r52 >= r6 * 2) {
                return;
            }
            int r12 = r52 - r6;
            sArr3[r12] = (short) ((sArr4[r52 - r6] - sArr4[r52]) + sArr3[r12]);
            r52++;
        }
    }

    private void toom_cook_4way(short[] sArr, short[] sArr2, short[] sArr3) {
        int r12 = this.N_SB;
        int[] r22 = new int[r12];
        int[] r32 = new int[r12];
        int[] r42 = new int[r12];
        int[] r52 = new int[r12];
        int[] r6 = new int[r12];
        int[] r72 = new int[r12];
        int[] r82 = new int[r12];
        int[] r92 = new int[r12];
        int[] r10 = new int[r12];
        int[] r11 = new int[r12];
        int[] r122 = new int[r12];
        int[] r13 = new int[r12];
        int[] r14 = new int[r12];
        int[] r15 = new int[r12];
        int r152 = this.N_SB_RES;
        int[] r93 = new int[r152];
        int[] r94 = new int[r152];
        int[] r95 = new int[r152];
        int[] r96 = new int[r152];
        int[] r97 = new int[r152];
        int[] r98 = new int[r152];
        int[] r153 = new int[r152];
        int r154 = 0;
        while (true) {
            int r99 = this.N_SB;
            if (r154 >= r99) {
                break;
            }
            short s7 = sArr[r154];
            short s10 = sArr[r154 + r99];
            short s11 = sArr[(r99 * 2) + r154];
            short s12 = sArr[(r99 * 3) + r154];
            int[] r28 = r15;
            short s13 = (short) (s7 + s11);
            int[] r29 = r10;
            short s14 = (short) (s10 + s12);
            int[] r30 = r14;
            r42[r154] = (short) (s13 + s14);
            r52[r154] = (short) (s13 - s14);
            short s15 = (short) (((s7 << 2) + s11) << 1);
            short s16 = (short) ((s10 << 2) + s12);
            r6[r154] = (short) (s15 + s16);
            r72[r154] = (short) (s15 - s16);
            r32[r154] = (short) ((s12 << 3) + (s11 << 2) + (s10 << 1) + s7);
            r82[r154] = s7;
            r22[r154] = s12;
            r154++;
            r15 = r28;
            r10 = r29;
            r14 = r30;
        }
        int[] r282 = r15;
        int[] r292 = r10;
        int[] r302 = r14;
        int r16 = 0;
        while (true) {
            int r910 = this.N_SB;
            if (r16 >= r910) {
                break;
            }
            short s17 = sArr2[r16];
            short s18 = sArr2[r16 + r910];
            short s19 = sArr2[(r910 * 2) + r16];
            short s20 = sArr2[(r910 * 3) + r16];
            int r25 = s17 + s19;
            int r26 = s18 + s20;
            r11[r16] = r25 + r26;
            r122[r16] = r25 - r26;
            int r252 = ((s17 << 2) + s19) << 1;
            int r262 = (s18 << 2) + s20;
            r13[r16] = r252 + r262;
            r302[r16] = r252 - r262;
            r292[r16] = (s20 << 3) + (s19 << 2) + (s18 << 1) + s17;
            r282[r16] = s17;
            r92[r16] = s20;
            r16++;
        }
        karatsuba_simple(r22, r92, r93);
        karatsuba_simple(r32, r292, r94);
        karatsuba_simple(r42, r11, r95);
        karatsuba_simple(r52, r122, r96);
        karatsuba_simple(r6, r13, r97);
        karatsuba_simple(r72, r302, r98);
        karatsuba_simple(r82, r282, r153);
        for (int r53 = 0; r53 < this.N_SB_RES; r53++) {
            int r83 = r93[r53];
            int r102 = r94[r53];
            int r112 = r95[r53];
            int r123 = r96[r53];
            int r132 = r97[r53];
            int r142 = r98[r53];
            int r155 = r153[r53];
            int r103 = r102 + r132;
            int r143 = r142 - r132;
            int r124 = ((r123 & 65535) - (r112 & 65535)) >>> 1;
            int r113 = r112 + r124;
            int r104 = (r103 - (r113 << 6)) - r113;
            int r114 = (r113 - r155) - r83;
            int r17 = (r114 * 45) + r104;
            int r105 = (((((((r132 - r83) - (r155 << 6)) << 1) + r143) & 65535) - (r114 << 3)) * 43691) >> 3;
            int r133 = (((r17 & 65535) + ((r124 & 65535) << 4)) * 36409) >> 1;
            int r125 = -(r124 + r133);
            int r144 = ((((r133 & 65535) * 30) - ((r143 + r17) & 65535)) * 61167) >> 2;
            int r115 = r114 - r105;
            int r134 = r133 - r144;
            sArr3[r53] = (short) (sArr3[r53] + (r155 & 65535));
            int r156 = r53 + 64;
            sArr3[r156] = (short) (sArr3[r156] + (r144 & 65535));
            int r145 = r53 + 128;
            sArr3[r145] = (short) (sArr3[r145] + (r105 & 65535));
            int r106 = r53 + 192;
            sArr3[r106] = (short) (sArr3[r106] + (r125 & 65535));
            int r107 = r53 + 256;
            sArr3[r107] = (short) (sArr3[r107] + (r115 & 65535));
            int r108 = r53 + DilithiumEngine.DilithiumPolyT1PackedBytes;
            sArr3[r108] = (short) (sArr3[r108] + (r134 & 65535));
            int r109 = r53 + KyberEngine.KyberPolyBytes;
            sArr3[r109] = (short) (sArr3[r109] + (r83 & 65535));
        }
    }

    public void GenMatrix(short[][][] sArr, byte[] bArr) {
        int saber_polyvecbytes = this.SABER_L * this.engine.getSABER_POLYVECBYTES();
        byte[] bArr2 = new byte[saber_polyvecbytes];
        SABEREngine sABEREngine = this.engine;
        sABEREngine.symmetric.prf(bArr2, bArr, sABEREngine.getSABER_SEEDBYTES(), saber_polyvecbytes);
        for (int r6 = 0; r6 < this.SABER_L; r6++) {
            this.utils.BS2POLVECq(bArr2, this.engine.getSABER_POLYVECBYTES() * r6, sArr[r6]);
        }
    }

    public void GenSecret(short[][] sArr, byte[] bArr) {
        int r02 = this.SABER_L * this.engine.getSABER_POLYCOINBYTES();
        byte[] bArr2 = new byte[r02];
        SABEREngine sABEREngine = this.engine;
        sABEREngine.symmetric.prf(bArr2, bArr, sABEREngine.getSABER_NOISE_SEEDBYTES(), r02);
        for (int r03 = 0; r03 < this.SABER_L; r03++) {
            SABEREngine sABEREngine2 = this.engine;
            if (sABEREngine2.usingEffectiveMasking) {
                for (int r22 = 0; r22 < this.SABER_N / 4; r22++) {
                    int r42 = r22 * 4;
                    sArr[r03][r42] = (short) (((bArr2[(this.engine.getSABER_POLYCOINBYTES() * r03) + r22] & 3) ^ 2) - 2);
                    sArr[r03][r42 + 1] = (short) ((((bArr2[(this.engine.getSABER_POLYCOINBYTES() * r03) + r22] >>> 2) & 3) ^ 2) - 2);
                    sArr[r03][r42 + 2] = (short) ((((bArr2[(this.engine.getSABER_POLYCOINBYTES() * r03) + r22] >>> 4) & 3) ^ 2) - 2);
                    sArr[r03][r42 + 3] = (short) ((((bArr2[(this.engine.getSABER_POLYCOINBYTES() * r03) + r22] >>> 6) & 3) ^ 2) - 2);
                }
            } else {
                cbd(sArr[r03], bArr2, sABEREngine2.getSABER_POLYCOINBYTES() * r03);
            }
        }
    }

    public void InnerProd(short[][] sArr, short[][] sArr2, short[] sArr3) {
        for (int r02 = 0; r02 < this.SABER_L; r02++) {
            poly_mul_acc(sArr[r02], sArr2[r02], sArr3);
        }
    }

    public void MatrixVectorMul(short[][][] sArr, short[][] sArr2, short[][] sArr3, int r10) {
        for (int r12 = 0; r12 < this.SABER_L; r12++) {
            for (int r22 = 0; r22 < this.SABER_L; r22++) {
                if (r10 == 1) {
                    poly_mul_acc(sArr[r22][r12], sArr2[r22], sArr3[r12]);
                } else {
                    poly_mul_acc(sArr[r12][r22], sArr2[r22], sArr3[r12]);
                }
            }
        }
    }
}
