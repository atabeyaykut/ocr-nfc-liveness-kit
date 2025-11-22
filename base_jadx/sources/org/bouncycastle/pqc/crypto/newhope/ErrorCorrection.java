package org.bouncycastle.pqc.crypto.newhope;

import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
class ErrorCorrection {
    public static short LDDecode(int r02, int r12, int r22, int r32) {
        return (short) (((((g(r02) + g(r12)) + g(r22)) + g(r32)) - 98312) >>> 31);
    }

    public static int abs(int r12) {
        int r02 = r12 >> 31;
        return (r12 ^ r02) - r02;
    }

    public static int f(int[] r32, int r42, int r52, int r6) {
        int r02 = (r6 * 2730) >> 25;
        int r03 = r02 - ((12288 - (r6 - (r02 * 12289))) >> 31);
        r32[r42] = (r03 >> 1) + (r03 & 1);
        int r04 = r03 - 1;
        r32[r52] = (r04 >> 1) + (r04 & 1);
        return abs(r6 - ((r32[r42] * 2) * 12289));
    }

    public static int g(int r32) {
        int r02 = (r32 * 2730) >> 27;
        int r03 = r02 - ((49155 - (r32 - (49156 * r02))) >> 31);
        return abs((((r03 >> 1) + (r03 & 1)) * 98312) - r32);
    }

    public static void helpRec(short[] sArr, short[] sArr2, byte[] bArr, byte b10) {
        byte[] bArr2 = new byte[8];
        bArr2[0] = b10;
        byte[] bArr3 = new byte[32];
        ChaCha20.process(bArr, bArr2, bArr3, 0, 32);
        int[] r12 = new int[8];
        for (int r32 = 0; r32 < 256; r32++) {
            int r72 = r32 + 0;
            int r52 = ((bArr3[r32 >>> 3] >>> (r32 & 7)) & 1) * 4;
            int r10 = r32 + 256;
            int r11 = r32 + 512;
            int r13 = r32 + 768;
            int r53 = (24577 - (((f(r12, 0, 4, (sArr2[r72] * 8) + r52) + f(r12, 1, 5, (sArr2[r10] * 8) + r52)) + f(r12, 2, 6, (sArr2[r11] * 8) + r52)) + f(r12, 3, 7, (sArr2[r13] * 8) + r52))) >> 31;
            int r82 = ~r53;
            int r92 = (r82 & r12[0]) ^ (r12[4] & r53);
            int r6 = (r12[1] & r82) ^ (r12[5] & r53);
            int r122 = (r12[2] & r82) ^ (r53 & r12[6]);
            int r83 = (r82 & r12[3]) ^ (r12[7] & r53);
            sArr[r72] = (short) ((r92 - r83) & 3);
            sArr[r10] = (short) ((r6 - r83) & 3);
            sArr[r11] = (short) ((r122 - r83) & 3);
            sArr[r13] = (short) (3 & ((r83 * 2) + (-r53)));
        }
    }

    public static void rec(byte[] bArr, short[] sArr, short[] sArr2) {
        Arrays.fill(bArr, (byte) 0);
        for (int r02 = 0; r02 < 256; r02++) {
            int r12 = r02 + 0;
            int r22 = (sArr[r12] * 8) + 196624;
            int r13 = sArr2[r12] * 2;
            int r42 = r02 + 768;
            short s7 = sArr2[r42];
            int r23 = r22 - ((r13 + s7) * 12289);
            int r14 = r02 + 256;
            int r6 = ((sArr[r14] * 8) + 196624) - (((sArr2[r14] * 2) + s7) * 12289);
            int r15 = r02 + 512;
            int r72 = ((sArr[r15] * 8) + 196624) - (((sArr2[r15] * 2) + s7) * 12289);
            int r16 = ((sArr[r42] * 8) + 196624) - (s7 * 12289);
            int r32 = r02 >>> 3;
            bArr[r32] = (byte) ((LDDecode(r23, r6, r72, r16) << (r02 & 7)) | bArr[r32]);
        }
    }
}
