package org.bouncycastle.pqc.crypto.sphincs;

import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
class Permute {
    private static final int CHACHA_ROUNDS = 12;

    public static void permute(int r32, int[] r33) {
        int r22 = 16;
        if (r33.length != 16) {
            throw new IllegalArgumentException();
        }
        if (r32 % 2 != 0) {
            throw new IllegalArgumentException("Number of rounds must be even");
        }
        char c10 = 0;
        int r34 = r33[0];
        int r52 = r33[1];
        int r72 = r33[2];
        int r92 = r33[3];
        int r11 = r33[4];
        int r13 = r33[5];
        int r15 = r33[6];
        int r14 = 7;
        int r16 = r33[7];
        int r12 = 8;
        int r17 = r33[8];
        int r19 = r33[9];
        int r21 = r33[10];
        int r23 = r33[11];
        int r24 = r33[12];
        int r26 = r33[13];
        int r28 = r33[14];
        int r31 = r33[15];
        int r30 = r28;
        int r282 = r26;
        int r262 = r24;
        int r242 = r23;
        int r232 = r21;
        int r212 = r19;
        int r192 = r17;
        int r172 = r16;
        int r162 = r15;
        int r152 = r13;
        int r132 = r11;
        int r112 = r92;
        int r93 = r72;
        int r73 = r52;
        int r53 = r34;
        int r35 = r32;
        while (r35 > 0) {
            int r54 = r53 + r132;
            int r82 = rotl(r262 ^ r54, r22);
            int r193 = r192 + r82;
            int r133 = rotl(r132 ^ r193, 12);
            int r55 = r54 + r133;
            int r83 = rotl(r82 ^ r55, r12);
            int r194 = r193 + r83;
            int r134 = rotl(r133 ^ r194, r14);
            int r74 = r73 + r152;
            int r6 = rotl(r282 ^ r74, r22);
            int r213 = r212 + r6;
            int r153 = rotl(r152 ^ r213, 12);
            int r75 = r74 + r153;
            int r62 = rotl(r6 ^ r75, r12);
            int r214 = r213 + r62;
            int r154 = rotl(r153 ^ r214, r14);
            int r94 = r93 + r162;
            int r42 = rotl(r30 ^ r94, r22);
            int r233 = r232 + r42;
            int r18 = rotl(r162 ^ r233, 12);
            int r95 = r94 + r18;
            int r43 = rotl(r42 ^ r95, r12);
            int r234 = r233 + r43;
            int r110 = rotl(r18 ^ r234, r14);
            int r113 = r112 + r172;
            int r142 = rotl(r31 ^ r113, r22);
            int r243 = r242 + r142;
            int r25 = rotl(r172 ^ r243, 12);
            int r114 = r113 + r25;
            int r143 = rotl(r142 ^ r114, r12);
            int r244 = r243 + r143;
            int r27 = rotl(r25 ^ r244, 7);
            int r56 = r55 + r154;
            int r122 = rotl(r143 ^ r56, 16);
            int r235 = r234 + r122;
            int r144 = rotl(r154 ^ r235, 12);
            r53 = r56 + r144;
            r31 = rotl(r122 ^ r53, 8);
            r232 = r235 + r31;
            r152 = rotl(r144 ^ r232, 7);
            int r76 = r75 + r110;
            int r84 = rotl(r83 ^ r76, 16);
            int r245 = r244 + r84;
            int r111 = rotl(r110 ^ r245, 12);
            r73 = r76 + r111;
            r262 = rotl(r84 ^ r73, 8);
            r242 = r245 + r262;
            r162 = rotl(r111 ^ r242, 7);
            int r96 = r95 + r27;
            int r115 = rotl(r62 ^ r96, 16);
            int r195 = r194 + r115;
            int r29 = rotl(r27 ^ r195, 12);
            r93 = r96 + r29;
            r282 = rotl(r115 ^ r93, 8);
            r192 = r195 + r282;
            r172 = rotl(r29 ^ r192, 7);
            int r116 = r114 + r134;
            r22 = 16;
            int r117 = rotl(r43 ^ r116, 16);
            int r215 = r214 + r117;
            int r44 = rotl(r134 ^ r215, 12);
            r112 = r116 + r44;
            r30 = rotl(r117 ^ r112, 8);
            r212 = r215 + r30;
            r132 = rotl(r44 ^ r212, 7);
            r35 -= 2;
            c10 = 0;
            r12 = 8;
            r14 = 7;
        }
        r33[c10] = r53;
        r33[1] = r73;
        r33[2] = r93;
        r33[3] = r112;
        r33[4] = r132;
        r33[5] = r152;
        r33[6] = r162;
        r33[7] = r172;
        r33[8] = r192;
        r33[9] = r212;
        r33[10] = r232;
        r33[11] = r242;
        r33[12] = r262;
        r33[13] = r282;
        r33[14] = r30;
        r33[15] = r31;
    }

    public static int rotl(int r12, int r22) {
        return (r12 >>> (-r22)) | (r12 << r22);
    }

    public void chacha_permute(byte[] bArr, byte[] bArr2) {
        int[] r12 = new int[16];
        for (int r32 = 0; r32 < 16; r32++) {
            r12[r32] = Pack.littleEndianToInt(bArr2, r32 * 4);
        }
        permute(12, r12);
        for (int r22 = 0; r22 < 16; r22++) {
            Pack.intToLittleEndian(r12[r22], bArr, r22 * 4);
        }
    }
}
