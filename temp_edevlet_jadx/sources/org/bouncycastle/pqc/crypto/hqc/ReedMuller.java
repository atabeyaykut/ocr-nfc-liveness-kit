package org.bouncycastle.pqc.crypto.hqc;

import androidx.core.internal.view.SupportMenu;
import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
class ReedMuller {

    public static class Codeword {
        int[] type32 = new int[4];
        int[] type8 = new int[16];
    }

    private static int Bit0Mask(int r02) {
        return (-(r02 & 1)) & (-1);
    }

    public static void decode(byte[] bArr, long[] jArr, int r13, int r14) {
        byte[] bArrClone = Arrays.clone(bArr);
        int length = jArr.length / 2;
        Codeword[] codewordArr = new Codeword[length];
        int[] r32 = new int[jArr.length * 2];
        Utils.fromLongArrayToByte32Array(r32, jArr);
        for (int r52 = 0; r52 < length; r52++) {
            codewordArr[r52] = new Codeword();
            for (int r72 = 0; r72 < 4; r72++) {
                codewordArr[r52].type32[r72] = r32[(r52 * 4) + r72];
            }
        }
        int[] r53 = new int[128];
        for (int r73 = 0; r73 < r13; r73++) {
            expandThenSum(r53, codewordArr, r73 * r14, r14);
            int[] r82 = new int[128];
            hadamardTransform(r53, r82);
            r82[0] = r82[0] - (r14 * 64);
            bArrClone[r73] = (byte) findPeaks(r82);
        }
        int[] r132 = new int[length * 4];
        int r33 = 0;
        for (int r142 = 0; r142 < length; r142++) {
            int[] r54 = codewordArr[r142].type32;
            System.arraycopy(r54, 0, r132, r33, r54.length);
            r33 += 4;
        }
        Utils.fromByte32ArrayToLongArray(jArr, r132);
        System.arraycopy(bArrClone, 0, bArr, 0, bArr.length);
    }

    public static void encode(long[] jArr, byte[] bArr, int r10, int r11) {
        byte[] bArrClone = Arrays.clone(bArr);
        int r02 = r10 * r11;
        Codeword[] codewordArr = new Codeword[r02];
        for (int r32 = 0; r32 < r02; r32++) {
            codewordArr[r32] = new Codeword();
        }
        for (int r33 = 0; r33 < r10; r33++) {
            int r42 = r33 * r11;
            encodeSub(codewordArr[r42], bArrClone[r33]);
            for (int r52 = 1; r52 < r11; r52++) {
                codewordArr[r42 + r52] = codewordArr[r42];
            }
        }
        int[] r92 = new int[r02 * 4];
        int r112 = 0;
        for (int r102 = 0; r102 < r02; r102++) {
            int[] r34 = codewordArr[r102].type32;
            System.arraycopy(r34, 0, r92, r112, r34.length);
            r112 += 4;
        }
        Utils.fromByte32ArrayToLongArray(jArr, r92);
    }

    public static void encodeSub(Codeword codeword, int r52) {
        int r02 = ((((Bit0Mask(r52 >> 7) ^ (Bit0Mask(r52 >> 0) & (-1431655766))) ^ (Bit0Mask(r52 >> 1) & (-858993460))) ^ (Bit0Mask(r52 >> 2) & (-252645136))) ^ (Bit0Mask(r52 >> 3) & (-16711936))) ^ (Bit0Mask(r52 >> 4) & SupportMenu.CATEGORY_MASK);
        codeword.type32[0] = r02;
        int r12 = r52 >> 5;
        int r03 = r02 ^ Bit0Mask(r12);
        codeword.type32[1] = r03;
        int r53 = Bit0Mask(r52 >> 6) ^ r03;
        codeword.type32[3] = r53;
        codeword.type32[2] = r53 ^ Bit0Mask(r12);
    }

    private static void expandThenSum(int[] r10, Codeword[] codewordArr, int r12, int r13) {
        for (int r14 = 0; r14 < 4; r14++) {
            for (int r22 = 0; r22 < 32; r22++) {
                r10[(r14 * 32) + r22] = (codewordArr[r12 + 0].type32[r14] >> r22) & 1;
            }
        }
        for (int r15 = 1; r15 < r13; r15++) {
            for (int r52 = 0; r52 < 4; r52++) {
                for (int r6 = 0; r6 < 32; r6++) {
                    int r72 = (r52 * 32) + r6;
                    r10[r72] = r10[r72] + ((codewordArr[r15 + r12].type32[r52] >> r6) & 1);
                }
            }
        }
    }

    private static int findPeaks(int[] r92) {
        int r22 = 0;
        int r32 = 0;
        int r42 = 0;
        for (int r12 = 0; r12 < 128; r12++) {
            int r52 = r92[r12];
            int r6 = r52 > 0 ? -1 : 0;
            int r62 = ((~r6) & (-r52)) | (r6 & r52);
            if (r62 > r42) {
                r22 = r52;
            }
            if (r62 > r42) {
                r32 = r12;
            }
            if (r62 > r42) {
                r42 = r62;
            }
        }
        return r32 | ((r22 > 0 ? 1 : 0) * 128);
    }

    private static void hadamardTransform(int[] r10, int[] r11) {
        int[] r02 = Arrays.clone(r10);
        int[] r12 = Arrays.clone(r11);
        int r32 = 0;
        while (true) {
            int[] r92 = r12;
            r12 = r02;
            r02 = r92;
            if (r32 >= 7) {
                System.arraycopy(r02, 0, r10, 0, r10.length);
                System.arraycopy(r12, 0, r11, 0, r11.length);
                return;
            }
            for (int r42 = 0; r42 < 64; r42++) {
                int r52 = r42 * 2;
                int r72 = r52 + 1;
                r02[r42] = r12[r52] + r12[r72];
                r02[r42 + 64] = r12[r52] - r12[r72];
            }
            r32++;
        }
    }
}
