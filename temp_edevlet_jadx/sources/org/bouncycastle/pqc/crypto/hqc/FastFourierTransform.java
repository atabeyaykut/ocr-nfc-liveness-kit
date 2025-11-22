package org.bouncycastle.pqc.crypto.hqc;

/* loaded from: classes2.dex */
class FastFourierTransform {
    public static void computeFFTBetas(int[] r32, int r42) {
        int r02 = 0;
        while (true) {
            int r22 = r42 - 1;
            if (r02 >= r22) {
                return;
            }
            r32[r02] = 1 << (r22 - r02);
            r02++;
        }
    }

    public static void computeFFTRec(int[] r18, int[] r19, int r20, int r21, int r22, int[] r23, int r24, int r25) {
        int r12 = 1;
        int r52 = 1 << (r24 - 2);
        int r6 = r25 - 2;
        int r72 = 1 << r6;
        int[] r82 = new int[r52];
        int[] r13 = new int[r52];
        int[] r53 = new int[r6];
        int[] r14 = new int[r6];
        int[] r15 = new int[r72];
        int[] r10 = new int[r72];
        int[] r92 = new int[r72];
        int[] r62 = new int[(r25 - r24) + 1];
        if (r22 == 1) {
            for (int r26 = 0; r26 < r21; r26++) {
                r62[r26] = GFCalculator.mult(r23[r26], r19[1]);
            }
            r18[0] = r19[0];
            for (int r16 = 0; r16 < r21; r16++) {
                for (int r27 = 0; r27 < r12; r27++) {
                    r18[r12 + r27] = r18[r27] ^ r62[r16];
                }
                r12 <<= 1;
            }
            return;
        }
        int r63 = r21 - 1;
        if (r23[r63] != 1) {
            int r73 = 1;
            for (int r32 = 1 << r22; r73 < r32; r32 = r32) {
                r12 = GFCalculator.mult(r12, r23[r63]);
                r19[r73] = GFCalculator.mult(r12, r19[r73]);
                r73++;
            }
        }
        computeRadix(r82, r13, r19, r22, r24);
        for (int r17 = 0; r17 < r63; r17++) {
            int r33 = GFCalculator.mult(r23[r17], GFCalculator.inverse(r23[r63]));
            r53[r17] = r33;
            r14[r17] = GFCalculator.mult(r33, r33) ^ r53[r17];
        }
        computeSubsetSum(r15, r53, r63);
        int r122 = r22 - 1;
        computeFFTRec(r10, r82, (r20 + 1) / 2, r63, r122, r14, r24, r25);
        int r102 = 1 << (r63 & 15);
        if (r20 <= 3) {
            r18[0] = r10[0];
            r18[r102] = r10[0] ^ r13[0];
            for (int r123 = 1; r123 < r102; r123++) {
                int r28 = r10[r123] ^ GFCalculator.mult(r15[r123], r13[0]);
                r18[r123] = r28;
                r18[r102 + r123] = r28 ^ r13[0];
            }
            return;
        }
        computeFFTRec(r92, r13, r20 / 2, r63, r122, r14, r24, r25);
        System.arraycopy(r92, 0, r18, r102, r102);
        r18[0] = r10[0];
        r18[r102] = r18[r102] ^ r10[0];
        for (int r124 = 1; r124 < r102; r124++) {
            int r29 = r10[r124] ^ GFCalculator.mult(r15[r124], r92[r124]);
            r18[r124] = r29;
            int r34 = r102 + r124;
            r18[r34] = r29 ^ r18[r34];
        }
    }

    public static void computeRadix(int[] r16, int[] r17, int[] r18, int r19, int r20) {
        if (r19 == 1) {
            r16[0] = r18[0];
            r17[0] = r18[1];
            return;
        }
        if (r19 == 2) {
            r16[0] = r18[0];
            int r02 = r18[2];
            int r32 = r18[3];
            int r03 = r02 ^ r32;
            r16[1] = r03;
            r17[0] = r03 ^ r18[1];
            r17[1] = r32;
            return;
        }
        if (r19 == 3) {
            r16[0] = r18[0];
            int r04 = r18[4];
            int r72 = r18[6];
            r16[2] = r04 ^ r72;
            int r05 = r18[7];
            r16[3] = r72 ^ r05;
            int r6 = r18[3];
            int r52 = r18[5];
            int r62 = (r6 ^ r52) ^ r05;
            r17[1] = r62;
            r17[2] = r52 ^ r72;
            r17[3] = r05;
            int r06 = (r18[2] ^ r16[2]) ^ r62;
            r16[1] = r06;
            r17[0] = r06 ^ r18[1];
            return;
        }
        if (r19 != 4) {
            computeRadixBig(r16, r17, r18, r19, r20);
            return;
        }
        int r07 = r18[8];
        int r92 = r18[12];
        r16[4] = r07 ^ r92;
        int r08 = r18[14];
        r16[6] = r92 ^ r08;
        int r10 = r18[15];
        r16[7] = r08 ^ r10;
        int r11 = r18[11];
        int r12 = r18[13];
        int r13 = r11 ^ r12;
        r17[5] = r13;
        r17[6] = r12 ^ r08;
        r17[7] = r10;
        int r14 = r18[10];
        int r93 = (r92 ^ r14) ^ r13;
        r16[5] = r93;
        int r132 = r18[9];
        r17[4] = r93 ^ (r132 ^ r12);
        r16[0] = r18[0];
        int r63 = (r18[7] ^ r11) ^ r10;
        r17[3] = r63;
        int r09 = (r08 ^ (r18[6] ^ r14)) ^ r63;
        r16[3] = r09;
        int r64 = (r18[4] ^ r16[4]) ^ r09;
        int r73 = r17[3];
        r16[2] = r64 ^ r73;
        int r33 = r18[3];
        int r53 = (((r18[5] ^ r33) ^ r132) ^ r12) ^ r73;
        r17[1] = r53;
        r17[2] = r09 ^ (r33 ^ r53);
        int r010 = (r18[2] ^ r16[2]) ^ r53;
        r16[1] = r010;
        r17[0] = r010 ^ r18[1];
    }

    public static void computeRadixBig(int[] r18, int[] r19, int[] r20, int r21, int r22) {
        int r42 = 1 << (r21 - 2);
        int r6 = 1 << (r22 - 2);
        int r72 = r6 * 2;
        int[] r82 = new int[r72];
        int[] r73 = new int[r72];
        int[] r92 = new int[r6];
        int[] r10 = new int[r6];
        int[] r11 = new int[r6];
        int[] r62 = new int[r6];
        int r12 = r42 * 3;
        int r13 = r42 * 2;
        Utils.copyBytes(r20, r12, r82, 0, r13);
        Utils.copyBytes(r20, r12, r82, r42, r13);
        Utils.copyBytes(r20, 0, r73, 0, r42 * 4);
        for (int r122 = 0; r122 < r42; r122++) {
            int r15 = r82[r122] ^ r20[r13 + r122];
            r82[r122] = r15;
            int r16 = r42 + r122;
            r73[r16] = r73[r16] ^ r15;
        }
        int r23 = r21 - 1;
        computeRadix(r92, r10, r82, r23, r22);
        computeRadix(r11, r62, r73, r23, r22);
        Utils.copyBytes(r11, 0, r18, 0, r13);
        Utils.copyBytes(r92, 0, r18, r42, r13);
        Utils.copyBytes(r62, 0, r19, 0, r13);
        Utils.copyBytes(r10, 0, r19, r42, r13);
    }

    public static void computeSubsetSum(int[] r6, int[] r72, int r82) {
        r6[0] = 0;
        for (int r12 = 0; r12 < r82; r12++) {
            int r22 = 0;
            while (true) {
                int r32 = 1 << r12;
                if (r22 < r32) {
                    r6[r32 + r22] = r72[r12] ^ r6[r22];
                    r22++;
                }
            }
        }
    }

    public static void fastFourierTransform(int[] r19, int[] r20, int r21, int r22) {
        int r12 = 1 << r22;
        int[] r23 = new int[r12];
        int[] r11 = new int[r12];
        int[] r13 = new int[7];
        int[] r15 = new int[128];
        int[] r82 = new int[128];
        int[] r14 = new int[7];
        int[] r72 = new int[128];
        computeFFTBetas(r14, 8);
        computeSubsetSum(r72, r14, 7);
        computeRadix(r23, r11, r20, r22, r22);
        for (int r32 = 0; r32 < 7; r32++) {
            int r42 = r14[r32];
            r13[r32] = GFCalculator.mult(r42, r42) ^ r14[r32];
        }
        int r16 = r22 - 1;
        computeFFTRec(r15, r23, (r21 + 1) / 2, 7, r16, r13, r22, 8);
        computeFFTRec(r82, r11, r21 / 2, 7, r16, r13, r22, 8);
        System.arraycopy(r82, 0, r19, 128, 128);
        r19[0] = r15[0];
        r19[128] = r19[128] ^ r15[0];
        for (int r10 = 1; r10 < 128; r10++) {
            int r24 = r15[r10] ^ GFCalculator.mult(r72[r10], r82[r10]);
            r19[r10] = r24;
            int r33 = 128 + r10;
            r19[r33] = r24 ^ r19[r33];
        }
    }

    public static void fastFourierTransformGetError(byte[] bArr, int[] r72, int r82, int[] r92) {
        int[] r12 = new int[7];
        int[] r22 = new int[r82];
        computeFFTBetas(r12, 8);
        computeSubsetSum(r22, r12, 7);
        byte unsigned16Bits = (byte) (bArr[0] ^ (Utils.toUnsigned16Bits((-r72[0]) >> 15) ^ 1));
        bArr[0] = unsigned16Bits;
        bArr[0] = (byte) (unsigned16Bits ^ (Utils.toUnsigned16Bits((-r72[r82]) >> 15) ^ 1));
        for (int r02 = 1; r02 < r82; r02++) {
            int r13 = 255 - r92[r22[r02]];
            bArr[r13] = (byte) (bArr[r13] ^ (Math.abs((-r72[r02]) >> 15) ^ 1));
            int r14 = 255 - r92[r22[r02] ^ 1];
            bArr[r14] = (byte) (bArr[r14] ^ (Math.abs((-r72[r82 + r02]) >> 15) ^ 1));
        }
    }
}
