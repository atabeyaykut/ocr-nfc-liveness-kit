package org.bouncycastle.math.ec.rfc7748;

import org.bouncycastle.math.raw.Mod;
import org.jmrtd.PassportService;

/* loaded from: classes2.dex */
public abstract class X448Field {
    private static final int M28 = 268435455;
    private static final int[] P32 = {-1, -1, -1, -1, -1, -1, -1, -2, -1, -1, -1, -1, -1, -1};
    public static final int SIZE = 16;
    private static final long U32 = 4294967295L;

    public static void add(int[] r32, int[] r42, int[] r52) {
        for (int r02 = 0; r02 < 16; r02++) {
            r52[r02] = r32[r02] + r42[r02];
        }
    }

    public static void addOne(int[] r22) {
        r22[0] = r22[0] + 1;
    }

    public static void addOne(int[] r12, int r22) {
        r12[r22] = r12[r22] + 1;
    }

    public static int areEqual(int[] r42, int[] r52) {
        int r12 = 0;
        for (int r02 = 0; r02 < 16; r02++) {
            r12 |= r42[r02] ^ r52[r02];
        }
        return (((r12 >>> 1) | (r12 & 1)) - 1) >> 31;
    }

    public static boolean areEqualVar(int[] r02, int[] r12) {
        return areEqual(r02, r12) != 0;
    }

    public static void carry(int[] r34) {
        int r12 = r34[0];
        int r32 = r34[1];
        int r52 = r34[2];
        int r72 = r34[3];
        int r92 = r34[4];
        int r11 = r34[5];
        int r13 = r34[6];
        int r15 = r34[7];
        int r17 = r34[8];
        int r19 = r34[9];
        int r21 = r34[10];
        int r23 = r34[11];
        int r25 = r34[12];
        int r27 = r34[13];
        int r29 = r34[14];
        int r31 = r34[15];
        int r33 = r32 + (r12 >>> 28);
        int r14 = r12 & M28;
        int r112 = r11 + (r92 >>> 28);
        int r93 = r92 & M28;
        int r192 = r19 + (r17 >>> 28);
        int r172 = r17 & M28;
        int r272 = r27 + (r25 >>> 28);
        int r252 = r25 & M28;
        int r53 = r52 + (r33 >>> 28);
        int r35 = r33 & M28;
        int r132 = r13 + (r112 >>> 28);
        int r113 = r112 & M28;
        int r212 = r21 + (r192 >>> 28);
        int r193 = r192 & M28;
        int r292 = r29 + (r272 >>> 28);
        int r273 = r272 & M28;
        int r73 = r72 + (r53 >>> 28);
        int r54 = r53 & M28;
        int r152 = r15 + (r132 >>> 28);
        int r133 = r132 & M28;
        int r232 = r23 + (r212 >>> 28);
        int r213 = r212 & M28;
        int r312 = r31 + (r292 >>> 28);
        int r293 = r292 & M28;
        int r332 = r312 >>> 28;
        int r313 = r312 & M28;
        int r16 = r14 + r332;
        int r94 = r93 + (r73 >>> 28);
        int r74 = r73 & M28;
        int r173 = r172 + r332 + (r152 >>> 28);
        int r153 = r152 & M28;
        int r253 = r252 + (r232 >>> 28);
        int r233 = r232 & M28;
        int r36 = r35 + (r16 >>> 28);
        int r18 = r16 & M28;
        int r114 = r113 + (r94 >>> 28);
        int r95 = r94 & M28;
        int r194 = r193 + (r173 >>> 28);
        int r174 = r173 & M28;
        int r274 = r273 + (r253 >>> 28);
        int r254 = r253 & M28;
        r34[0] = r18;
        r34[1] = r36;
        r34[2] = r54;
        r34[3] = r74;
        r34[4] = r95;
        r34[5] = r114;
        r34[6] = r133;
        r34[7] = r153;
        r34[8] = r174;
        r34[9] = r194;
        r34[10] = r213;
        r34[11] = r233;
        r34[12] = r254;
        r34[13] = r274;
        r34[14] = r293;
        r34[15] = r313;
    }

    public static void cmov(int r42, int[] r52, int r6, int[] r72, int r82) {
        for (int r02 = 0; r02 < 16; r02++) {
            int r12 = r82 + r02;
            int r22 = r72[r12];
            r72[r12] = r22 ^ ((r52[r6 + r02] ^ r22) & r42);
        }
    }

    public static void cnegate(int r22, int[] r32) {
        int[] r02 = create();
        sub(r02, r32, r02);
        cmov(-r22, r02, 0, r32, 0);
    }

    public static void copy(int[] r32, int r42, int[] r52, int r6) {
        for (int r02 = 0; r02 < 16; r02++) {
            r52[r6 + r02] = r32[r42 + r02];
        }
    }

    public static int[] create() {
        return new int[16];
    }

    public static int[] createTable(int r02) {
        return new int[r02 * 16];
    }

    public static void cswap(int r42, int[] r52, int[] r6) {
        int r43 = 0 - r42;
        for (int r02 = 0; r02 < 16; r02++) {
            int r12 = r52[r02];
            int r22 = r6[r02];
            int r32 = (r12 ^ r22) & r43;
            r52[r02] = r12 ^ r32;
            r6[r02] = r22 ^ r32;
        }
    }

    public static void decode(byte[] bArr, int r32, int[] r42) {
        decode56(bArr, r32, r42, 0);
        decode56(bArr, r32 + 7, r42, 2);
        decode56(bArr, r32 + 14, r42, 4);
        decode56(bArr, r32 + 21, r42, 6);
        decode56(bArr, r32 + 28, r42, 8);
        decode56(bArr, r32 + 35, r42, 10);
        decode56(bArr, r32 + 42, r42, 12);
        decode56(bArr, r32 + 49, r42, 14);
    }

    public static void decode(byte[] bArr, int r32, int[] r42, int r52) {
        decode56(bArr, r32, r42, r52);
        decode56(bArr, r32 + 7, r42, r52 + 2);
        decode56(bArr, r32 + 14, r42, r52 + 4);
        decode56(bArr, r32 + 21, r42, r52 + 6);
        decode56(bArr, r32 + 28, r42, r52 + 8);
        decode56(bArr, r32 + 35, r42, r52 + 10);
        decode56(bArr, r32 + 42, r42, r52 + 12);
        decode56(bArr, r32 + 49, r42, r52 + 14);
    }

    public static void decode(byte[] bArr, int[] r42) {
        decode56(bArr, 0, r42, 0);
        decode56(bArr, 7, r42, 2);
        decode56(bArr, 14, r42, 4);
        decode56(bArr, 21, r42, 6);
        decode56(bArr, 28, r42, 8);
        decode56(bArr, 35, r42, 10);
        decode56(bArr, 42, r42, 12);
        decode56(bArr, 49, r42, 14);
    }

    public static void decode(int[] r12, int r22, int[] r32) {
        decode224(r12, r22, r32, 0);
        decode224(r12, r22 + 7, r32, 8);
    }

    private static void decode224(int[] r82, int r92, int[] r10, int r11) {
        int r02 = r82[r92 + 0];
        int r12 = r82[r92 + 1];
        int r22 = r82[r92 + 2];
        int r32 = r82[r92 + 3];
        int r42 = r82[r92 + 4];
        int r52 = r82[r92 + 5];
        int r83 = r82[r92 + 6];
        r10[r11 + 0] = r02 & M28;
        r10[r11 + 1] = ((r02 >>> 28) | (r12 << 4)) & M28;
        r10[r11 + 2] = ((r12 >>> 24) | (r22 << 8)) & M28;
        r10[r11 + 3] = ((r22 >>> 20) | (r32 << 12)) & M28;
        r10[r11 + 4] = ((r32 >>> 16) | (r42 << 16)) & M28;
        r10[r11 + 5] = ((r42 >>> 12) | (r52 << 20)) & M28;
        r10[r11 + 6] = ((r52 >>> 8) | (r83 << 24)) & M28;
        r10[r11 + 7] = r83 >>> 4;
    }

    private static int decode24(byte[] bArr, int r32) {
        int r02 = bArr[r32] & 255;
        int r33 = r32 + 1;
        return ((bArr[r33 + 1] & 255) << 16) | r02 | ((bArr[r33] & 255) << 8);
    }

    private static int decode32(byte[] bArr, int r32) {
        int r02 = bArr[r32] & 255;
        int r33 = r32 + 1;
        int r03 = r02 | ((bArr[r33] & 255) << 8);
        int r34 = r33 + 1;
        return (bArr[r34 + 1] << 24) | r03 | ((bArr[r34] & 255) << 16);
    }

    private static void decode56(byte[] bArr, int r22, int[] r32, int r42) {
        int r02 = decode32(bArr, r22);
        int r12 = decode24(bArr, r22 + 4);
        r32[r42] = M28 & r02;
        r32[r42 + 1] = (r12 << 4) | (r02 >>> 28);
    }

    public static void encode(int[] r22, int r32, byte[] bArr, int r52) {
        encode56(r22, r32, bArr, r52);
        encode56(r22, r32 + 2, bArr, r52 + 7);
        encode56(r22, r32 + 4, bArr, r52 + 14);
        encode56(r22, r32 + 6, bArr, r52 + 21);
        encode56(r22, r32 + 8, bArr, r52 + 28);
        encode56(r22, r32 + 10, bArr, r52 + 35);
        encode56(r22, r32 + 12, bArr, r52 + 42);
        encode56(r22, r32 + 14, bArr, r52 + 49);
    }

    public static void encode(int[] r32, byte[] bArr) {
        encode56(r32, 0, bArr, 0);
        encode56(r32, 2, bArr, 7);
        encode56(r32, 4, bArr, 14);
        encode56(r32, 6, bArr, 21);
        encode56(r32, 8, bArr, 28);
        encode56(r32, 10, bArr, 35);
        encode56(r32, 12, bArr, 42);
        encode56(r32, 14, bArr, 49);
    }

    public static void encode(int[] r22, byte[] bArr, int r42) {
        encode56(r22, 0, bArr, r42);
        encode56(r22, 2, bArr, r42 + 7);
        encode56(r22, 4, bArr, r42 + 14);
        encode56(r22, 6, bArr, r42 + 21);
        encode56(r22, 8, bArr, r42 + 28);
        encode56(r22, 10, bArr, r42 + 35);
        encode56(r22, 12, bArr, r42 + 42);
        encode56(r22, 14, bArr, r42 + 49);
    }

    public static void encode(int[] r12, int[] r22, int r32) {
        encode224(r12, 0, r22, r32);
        encode224(r12, 8, r22, r32 + 7);
    }

    private static void encode224(int[] r82, int r92, int[] r10, int r11) {
        int r02 = r82[r92 + 0];
        int r12 = r82[r92 + 1];
        int r22 = r82[r92 + 2];
        int r32 = r82[r92 + 3];
        int r42 = r82[r92 + 4];
        int r52 = r82[r92 + 5];
        int r6 = r82[r92 + 6];
        int r83 = r82[r92 + 7];
        r10[r11 + 0] = r02 | (r12 << 28);
        r10[r11 + 1] = (r12 >>> 4) | (r22 << 24);
        r10[r11 + 2] = (r22 >>> 8) | (r32 << 20);
        r10[r11 + 3] = (r32 >>> 12) | (r42 << 16);
        r10[r11 + 4] = (r42 >>> 16) | (r52 << 12);
        r10[r11 + 5] = (r52 >>> 20) | (r6 << 8);
        r10[r11 + 6] = (r83 << 4) | (r6 >>> 24);
    }

    private static void encode24(int r12, byte[] bArr, int r32) {
        bArr[r32] = (byte) r12;
        int r33 = r32 + 1;
        bArr[r33] = (byte) (r12 >>> 8);
        bArr[r33 + 1] = (byte) (r12 >>> 16);
    }

    private static void encode32(int r12, byte[] bArr, int r32) {
        bArr[r32] = (byte) r12;
        int r33 = r32 + 1;
        bArr[r33] = (byte) (r12 >>> 8);
        int r34 = r33 + 1;
        bArr[r34] = (byte) (r12 >>> 16);
        bArr[r34 + 1] = (byte) (r12 >>> 24);
    }

    private static void encode56(int[] r12, int r22, byte[] bArr, int r42) {
        int r02 = r12[r22];
        int r13 = r12[r22 + 1];
        encode32((r13 << 28) | r02, bArr, r42);
        encode24(r13 >>> 4, bArr, r42 + 4);
    }

    public static void inv(int[] r32, int[] r42) {
        int[] r02 = create();
        int[] r12 = new int[14];
        copy(r32, 0, r02, 0);
        normalize(r02);
        encode(r02, r12, 0);
        Mod.modOddInverse(P32, r12, r12);
        decode(r12, 0, r42);
    }

    public static void invVar(int[] r32, int[] r42) {
        int[] r02 = create();
        int[] r12 = new int[14];
        copy(r32, 0, r02, 0);
        normalize(r02);
        encode(r02, r12, 0);
        Mod.modOddInverseVar(P32, r12, r12);
        decode(r12, 0, r42);
    }

    public static int isOne(int[] r42) {
        int r02 = r42[0] ^ 1;
        for (int r22 = 1; r22 < 16; r22++) {
            r02 |= r42[r22];
        }
        return (((r02 >>> 1) | (r02 & 1)) - 1) >> 31;
    }

    public static boolean isOneVar(int[] r02) {
        return isOne(r02) != 0;
    }

    public static int isZero(int[] r32) {
        int r12 = 0;
        for (int r02 = 0; r02 < 16; r02++) {
            r12 |= r32[r02];
        }
        return (((r12 >>> 1) | (r12 & 1)) - 1) >> 31;
    }

    public static boolean isZeroVar(int[] r02) {
        return isZero(r02) != 0;
    }

    public static void mul(int[] r36, int r37, int[] r38) {
        int r12 = r36[0];
        int r32 = r36[1];
        int r52 = r36[2];
        int r72 = r36[3];
        int r92 = r36[4];
        int r11 = r36[5];
        int r13 = r36[6];
        int r15 = r36[7];
        int r10 = r36[8];
        int r22 = r36[9];
        int r02 = r36[10];
        int r82 = r36[11];
        int r14 = r36[12];
        int r6 = r36[13];
        int r122 = r36[14];
        int r42 = r36[15];
        long j10 = r32;
        long j11 = r37;
        long j12 = j10 * j11;
        int r16 = ((int) j12) & M28;
        long j13 = r11 * j11;
        int r112 = ((int) j13) & M28;
        long j14 = r22 * j11;
        int r113 = ((int) j14) & M28;
        long j15 = r6 * j11;
        int r114 = ((int) j15) & M28;
        long j16 = (r52 * j11) + (j12 >>> 28);
        r38[2] = ((int) j16) & M28;
        long j17 = (r13 * j11) + (j13 >>> 28);
        r38[6] = ((int) j17) & M28;
        long j18 = (r02 * j11) + (j14 >>> 28);
        r38[10] = ((int) j18) & M28;
        long j19 = (r122 * j11) + (j15 >>> 28);
        r38[14] = ((int) j19) & M28;
        long j20 = (r72 * j11) + (j16 >>> 28);
        r38[3] = ((int) j20) & M28;
        long j21 = j20 >>> 28;
        long j22 = (r15 * j11) + (j17 >>> 28);
        r38[7] = ((int) j22) & M28;
        long j23 = (r82 * j11) + (j18 >>> 28);
        r38[11] = ((int) j23) & M28;
        long j24 = j23 >>> 28;
        long j25 = (r42 * j11) + (j19 >>> 28);
        r38[15] = ((int) j25) & M28;
        long j26 = j25 >>> 28;
        long j27 = (r92 * j11) + j21;
        r38[4] = ((int) j27) & M28;
        long j28 = j27 >>> 28;
        long j29 = (r10 * j11) + (j22 >>> 28) + j26;
        r38[8] = ((int) j29) & M28;
        long j30 = j29 >>> 28;
        long j31 = (r14 * j11) + j24;
        r38[12] = ((int) j31) & M28;
        long j32 = j31 >>> 28;
        long j33 = (r12 * j11) + j26;
        r38[0] = ((int) j33) & M28;
        r38[1] = r16 + ((int) (j33 >>> 28));
        r38[5] = r112 + ((int) j28);
        r38[9] = r113 + ((int) j30);
        r38[13] = r114 + ((int) j32);
    }

    public static void mul(int[] r141, int[] r142, int[] r143) {
        int r12 = r141[0];
        int r32 = r141[1];
        int r52 = r141[2];
        int r72 = r141[3];
        int r92 = r141[4];
        int r11 = r141[5];
        int r13 = r141[6];
        int r15 = r141[7];
        int r14 = r141[8];
        int r122 = r141[9];
        int r10 = r141[10];
        int r82 = r141[11];
        int r6 = r141[12];
        int r42 = r141[13];
        int r22 = r141[14];
        int r152 = r141[15];
        int r153 = r142[0];
        int r02 = r142[1];
        int r03 = r142[2];
        int r04 = r142[3];
        int r05 = r142[4];
        int r06 = r142[5];
        int r07 = r142[6];
        int r08 = r142[7];
        int r09 = r142[8];
        int r010 = r142[9];
        int r011 = r142[10];
        int r012 = r142[11];
        int r013 = r142[12];
        int r014 = r142[13];
        int r015 = r142[14];
        int r016 = r142[15];
        int r017 = r12 + r14;
        int r018 = r52 + r10;
        int r019 = r72 + r82;
        int r020 = r92 + r6;
        int r021 = r11 + r42;
        int r022 = r13 + r22;
        int r023 = r153 + r09;
        int r024 = r02 + r010;
        int r025 = r03 + r011;
        int r026 = r04 + r012;
        int r027 = r05 + r013;
        int r028 = r06 + r014;
        int r029 = r07 + r015;
        int r030 = r08 + r016;
        long j10 = r12;
        long j11 = r153;
        long j12 = j10 * j11;
        long j13 = r15;
        long j14 = r02;
        long j15 = j13 * j14;
        long j16 = r13;
        long j17 = r03;
        long j18 = (j16 * j17) + j15;
        long j19 = r11;
        long j20 = r04;
        long j21 = (j19 * j20) + j18;
        long j22 = r92;
        long j23 = r05;
        long j24 = (j22 * j23) + j21;
        long j25 = r72;
        long j26 = r06;
        long j27 = (j25 * j26) + j24;
        long j28 = r52;
        long j29 = r07;
        long j30 = (j28 * j29) + j27;
        long j31 = r32;
        long j32 = r08;
        long j33 = (j31 * j32) + j30;
        long j34 = r14;
        long j35 = r09;
        long j36 = j34 * j35;
        long j37 = r152;
        long j38 = r010;
        long j39 = j37 * j38;
        long j40 = r22;
        long j41 = r011;
        long j42 = (j40 * j41) + j39;
        long j43 = r42;
        long j44 = r012;
        long j45 = (j43 * j44) + j42;
        long j46 = r6;
        long j47 = r013;
        long j48 = (j46 * j47) + j45;
        long j49 = r82;
        long j50 = r014;
        long j51 = (j49 * j50) + j48;
        long j52 = r10;
        long j53 = r015;
        long j54 = (j52 * j53) + j51;
        long j55 = r122;
        long j56 = r016;
        long j57 = (j55 * j56) + j54;
        long j58 = r017;
        long j59 = r023;
        long j60 = j58 * j59;
        long j61 = r15 + r152;
        long j62 = r024;
        long j63 = j61 * j62;
        long j64 = r022;
        long j65 = r025;
        long j66 = (j64 * j65) + j63;
        long j67 = r021;
        long j68 = r026;
        long j69 = (j67 * j68) + j66;
        long j70 = r020;
        long j71 = r027;
        long j72 = (j70 * j71) + j69;
        long j73 = r019;
        long j74 = r028;
        long j75 = (j73 * j74) + j72;
        long j76 = r018;
        long j77 = r029;
        long j78 = (j76 * j77) + j75;
        long j79 = r32 + r122;
        long j80 = r030;
        long j81 = (j79 * j80) + j78;
        long j82 = ((j12 + j36) + j81) - j33;
        int r123 = ((int) j82) & M28;
        long j83 = j82 >>> 28;
        long j84 = ((j57 + j60) - j12) + j81;
        int r124 = ((int) j84) & M28;
        long j85 = (j10 * j14) + (j31 * j11);
        long j86 = (j52 * j56) + (j49 * j53) + (j46 * j50) + (j43 * j47) + (j40 * j44) + (j37 * j41);
        long j87 = (j58 * j62) + (j79 * j59);
        long j88 = (j76 * j80) + (j73 * j77) + (j70 * j74) + (j67 * j71) + (j64 * j68) + (j61 * j65);
        long j89 = (((j85 + ((j34 * j38) + (j55 * j35))) + j88) - ((j28 * j32) + ((j25 * j29) + ((j22 * j26) + ((j19 * j23) + ((j16 * j20) + (j13 * j17))))))) + j83;
        int r125 = ((int) j89) & M28;
        long j90 = ((j86 + j87) - j85) + j88 + (j84 >>> 28);
        int r126 = ((int) j90) & M28;
        long j91 = (j10 * j17) + (j31 * j14) + (j28 * j11);
        long j92 = (j49 * j56) + (j46 * j53) + (j43 * j50) + (j40 * j47) + (j37 * j44);
        long j93 = (j58 * j65) + (j79 * j62) + (j76 * j59);
        long j94 = (j73 * j80) + (j70 * j77) + (j67 * j74) + (j64 * j71) + (j61 * j68);
        long j95 = (((j91 + ((j34 * j41) + ((j55 * j38) + (j52 * j35)))) + j94) - ((j25 * j32) + ((j22 * j29) + ((j19 * j26) + ((j16 * j23) + (j13 * j20)))))) + (j89 >>> 28);
        int r127 = ((int) j95) & M28;
        long j96 = ((j92 + j93) - j91) + j94 + (j90 >>> 28);
        int r128 = ((int) j96) & M28;
        long j97 = (j10 * j20) + (j31 * j17) + (j28 * j14) + (j25 * j11);
        long j98 = (j46 * j56) + (j43 * j53) + (j40 * j50) + (j37 * j47);
        long j99 = (j58 * j68) + (j79 * j65) + (j76 * j62) + (j73 * j59);
        long j100 = (j70 * j80) + (j67 * j77) + (j64 * j74) + (j61 * j71);
        long j101 = (((j97 + ((j34 * j44) + ((j55 * j41) + ((j52 * j38) + (j49 * j35))))) + j100) - ((j22 * j32) + ((j19 * j29) + ((j16 * j26) + (j13 * j23))))) + (j95 >>> 28);
        int r129 = ((int) j101) & M28;
        long j102 = ((j98 + j99) - j97) + j100 + (j96 >>> 28);
        int r1210 = ((int) j102) & M28;
        long j103 = (j10 * j23) + (j31 * j20) + (j28 * j17) + (j25 * j14) + (j22 * j11);
        long j104 = (j43 * j56) + (j40 * j53) + (j37 * j50);
        long j105 = (j58 * j71) + (j79 * j68) + (j76 * j65) + (j73 * j62) + (j70 * j59);
        long j106 = (j67 * j80) + (j64 * j77) + (j61 * j74);
        long j107 = (((j103 + ((j34 * j47) + ((j55 * j44) + ((j52 * j41) + ((j49 * j38) + (j46 * j35)))))) + j106) - ((j19 * j32) + ((j16 * j29) + (j13 * j26)))) + (j101 >>> 28);
        int r1211 = ((int) j107) & M28;
        long j108 = ((j104 + j105) - j103) + j106 + (j102 >>> 28);
        int r1212 = ((int) j108) & M28;
        long j109 = (j10 * j26) + (j31 * j23) + (j28 * j20) + (j25 * j17) + (j22 * j14) + (j19 * j11);
        long j110 = (j40 * j56) + (j37 * j53);
        long j111 = (j58 * j74) + (j79 * j71) + (j76 * j68) + (j73 * j65) + (j70 * j62) + (j67 * j59);
        long j112 = (j64 * j80) + (j61 * j77);
        long j113 = (((j109 + ((j34 * j50) + ((j55 * j47) + ((j52 * j44) + ((j49 * j41) + ((j46 * j38) + (j43 * j35))))))) + j112) - ((j16 * j32) + (j13 * j29))) + (j107 >>> 28);
        int r1213 = ((int) j113) & M28;
        long j114 = ((j110 + j111) - j109) + j112 + (j108 >>> 28);
        int r1214 = ((int) j114) & M28;
        long j115 = (j10 * j29) + (j31 * j26) + (j28 * j23) + (j25 * j20) + (j22 * j17) + (j19 * j14) + (j16 * j11);
        long j116 = j37 * j56;
        long j117 = (j58 * j77) + (j79 * j74) + (j76 * j71) + (j73 * j68) + (j70 * j65) + (j67 * j62) + (j64 * j59);
        long j118 = j61 * j80;
        long j119 = (((j115 + ((j34 * j53) + ((j55 * j50) + ((j52 * j47) + ((j49 * j44) + ((j46 * j41) + ((j43 * j38) + (j40 * j35)))))))) + j118) - (j13 * j32)) + (j113 >>> 28);
        int r1215 = ((int) j119) & M28;
        long j120 = ((j116 + j117) - j115) + j118 + (j114 >>> 28);
        int r1216 = ((int) j120) & M28;
        long j121 = (j10 * j32) + (j31 * j29) + (j28 * j26) + (j25 * j23) + (j22 * j20) + (j19 * j17) + (j14 * j16) + (j11 * j13);
        long j122 = (j34 * j56) + (j55 * j53) + (j52 * j50) + (j49 * j47) + (j46 * j44) + (j41 * j43) + (j38 * j40) + (j37 * j35);
        long j123 = j121 + j122 + (j119 >>> 28);
        int r031 = ((int) j123) & M28;
        long j124 = (((j58 * j80) + ((j79 * j77) + ((j76 * j74) + ((j73 * j71) + ((j70 * j68) + ((j67 * j65) + ((j64 * j62) + (j61 * j59)))))))) - j121) + (j120 >>> 28);
        int r16 = ((int) j124) & M28;
        long j125 = j124 >>> 28;
        long j126 = (j123 >>> 28) + j125 + r124;
        int r62 = ((int) j126) & M28;
        long j127 = j125 + r123;
        r143[0] = ((int) j127) & M28;
        r143[1] = r125 + ((int) (j127 >>> 28));
        r143[2] = r127;
        r143[3] = r129;
        r143[4] = r1211;
        r143[5] = r1213;
        r143[6] = r1215;
        r143[7] = r031;
        r143[8] = r62;
        r143[9] = r126 + ((int) (j126 >>> 28));
        r143[10] = r128;
        r143[11] = r1210;
        r143[12] = r1212;
        r143[13] = r1214;
        r143[14] = r1216;
        r143[15] = r16;
    }

    public static void negate(int[] r12, int[] r22) {
        sub(create(), r12, r22);
    }

    public static void normalize(int[] r12) {
        reduce(r12, 1);
        reduce(r12, -1);
    }

    public static void one(int[] r32) {
        r32[0] = 1;
        for (int r12 = 1; r12 < 16; r12++) {
            r32[r12] = 0;
        }
    }

    private static void powPm3d4(int[] r42, int[] r52) {
        int[] r02 = create();
        sqr(r42, r02);
        mul(r42, r02, r02);
        int[] r12 = create();
        sqr(r02, r12);
        mul(r42, r12, r12);
        int[] r03 = create();
        sqr(r12, 3, r03);
        mul(r12, r03, r03);
        int[] r32 = create();
        sqr(r03, 3, r32);
        mul(r12, r32, r32);
        int[] r04 = create();
        sqr(r32, 9, r04);
        mul(r32, r04, r04);
        int[] r13 = create();
        sqr(r04, r13);
        mul(r42, r13, r13);
        int[] r22 = create();
        sqr(r13, 18, r22);
        mul(r04, r22, r22);
        int[] r05 = create();
        sqr(r22, 37, r05);
        mul(r22, r05, r05);
        int[] r33 = create();
        sqr(r05, 37, r33);
        mul(r22, r33, r33);
        int[] r06 = create();
        sqr(r33, 111, r06);
        mul(r33, r06, r06);
        int[] r14 = create();
        sqr(r06, r14);
        mul(r42, r14, r14);
        int[] r43 = create();
        sqr(r14, PassportService.DEFAULT_MAX_BLOCKSIZE, r43);
        mul(r43, r06, r52);
    }

    private static void reduce(int[] r13, int r14) {
        int r12;
        int r15 = r13[15];
        int r32 = r15 & M28;
        long j10 = (r15 >>> 28) + r14;
        int r142 = 0;
        long j11 = j10;
        while (true) {
            if (r142 >= 8) {
                break;
            }
            long j12 = j11 + (4294967295L & r13[r142]);
            r13[r142] = ((int) j12) & M28;
            j11 = j12 >> 28;
            r142++;
        }
        long j13 = j11 + j10;
        for (r12 = 8; r12 < 15; r12++) {
            long j14 = j13 + (r13[r12] & 4294967295L);
            r13[r12] = ((int) j14) & M28;
            j13 = j14 >> 28;
        }
        r13[15] = r32 + ((int) j13);
    }

    public static void sqr(int[] r02, int r12, int[] r22) {
        sqr(r02, r22);
        while (true) {
            r12--;
            if (r12 <= 0) {
                return;
            } else {
                sqr(r22, r22);
            }
        }
    }

    public static void sqr(int[] r110, int[] r111) {
        int r12 = r110[0];
        int r32 = r110[1];
        int r52 = r110[2];
        int r72 = r110[3];
        int r92 = r110[4];
        int r11 = r110[5];
        int r13 = r110[6];
        int r15 = r110[7];
        int r14 = r110[8];
        int r122 = r110[9];
        int r10 = r110[10];
        int r82 = r110[11];
        int r6 = r110[12];
        int r42 = r110[13];
        int r22 = r110[14];
        int r02 = r110[15];
        int r03 = r12 * 2;
        int r04 = r32 * 2;
        int r05 = r52 * 2;
        int r06 = r72 * 2;
        int r07 = r92 * 2;
        int r08 = r11 * 2;
        int r09 = r13 * 2;
        int r010 = r14 * 2;
        int r011 = r122 * 2;
        int r012 = r10 * 2;
        int r013 = r82 * 2;
        int r014 = r6 * 2;
        int r015 = r42 * 2;
        int r016 = r22 * 2;
        int r017 = r12 + r14;
        int r142 = r32 + r122;
        int r123 = r52 + r10;
        int r102 = r72 + r82;
        int r83 = r92 + r6;
        int r73 = r11 + r42;
        int r53 = r13 + r22;
        int r33 = r15 + r02;
        int r34 = r017 * 2;
        int r35 = r142 * 2;
        int r143 = r123 * 2;
        int r124 = r102 * 2;
        int r103 = r73 * 2;
        long j10 = r12;
        long j11 = j10 * j10;
        long j12 = r15;
        long j13 = r04;
        long j14 = j12 * j13;
        long j15 = r13;
        long j16 = r05;
        long j17 = (j15 * j16) + j14;
        long j18 = r11;
        long j19 = r06;
        long j20 = r92;
        long j21 = (j20 * j20) + (j18 * j19) + j17;
        long j22 = r14;
        long j23 = r02;
        long j24 = r011;
        long j25 = j23 * j24;
        long j26 = r22;
        long j27 = r012;
        long j28 = (j26 * j27) + j25;
        long j29 = r42;
        long j30 = r013;
        long j31 = (j29 * j30) + j28;
        long j32 = r6;
        long j33 = r017;
        long j34 = r33;
        long j35 = r35 & 4294967295L;
        long j36 = j34 * j35;
        long j37 = r53;
        long j38 = r143 & 4294967295L;
        long j39 = (j37 * j38) + j36;
        long j40 = r73;
        long j41 = r124 & 4294967295L;
        long j42 = (j40 * j41) + j39;
        long j43 = r83;
        long j44 = (j43 * j43) + j42;
        long j45 = ((j11 + (j22 * j22)) + j44) - j21;
        int r152 = ((int) j45) & M28;
        long j46 = ((((j32 * j32) + j31) + (j33 * j33)) - j11) + j44;
        int r153 = ((int) j46) & M28;
        long j47 = j46 >>> 28;
        long j48 = r32;
        long j49 = r03;
        long j50 = j48 * j49;
        long j51 = j15 * j19;
        long j52 = r07;
        long j53 = j18 * j52;
        long j54 = r122;
        long j55 = r010;
        long j56 = j54 * j55;
        long j57 = (j26 * j30) + (j23 * j27);
        long j58 = r014;
        long j59 = (j29 * j58) + j57;
        long j60 = r142;
        long j61 = r34 & 4294967295L;
        long j62 = (j37 * j41) + (j34 * j38);
        long j63 = (r83 * 2) & 4294967295L;
        long j64 = (j40 * j63) + j62;
        long j65 = (((j50 + j56) + j64) - (j53 + (j51 + (j12 * j16)))) + (j45 >>> 28);
        int r154 = ((int) j65) & M28;
        long j66 = ((j59 + (j60 * j61)) - j50) + j64 + j47;
        int r104 = ((int) j66) & M28;
        long j67 = j66 >>> 28;
        long j68 = r52;
        long j69 = (j48 * j48) + (j68 * j49);
        long j70 = r10;
        long j71 = (j54 * j54) + (j70 * j55);
        long j72 = r123;
        long j73 = (j40 * j40) + (j37 * j63) + (j34 * j41);
        long j74 = (((j69 + j71) + j73) - ((j18 * j18) + ((j15 * j52) + (j12 * j19)))) + (j65 >>> 28);
        int r155 = ((int) j74) & M28;
        long j75 = ((((j29 * j29) + ((j26 * j58) + (j23 * j30))) + ((j60 * j60) + (j72 * j61))) - j69) + j73 + j67;
        int r156 = ((int) j75) & M28;
        long j76 = r72;
        long j77 = (j68 * j13) + (j76 * j49);
        long j78 = r08;
        long j79 = r82;
        long j80 = (j70 * j24) + (j79 * j55);
        long j81 = r015;
        long j82 = j26 * j81;
        long j83 = r102;
        long j84 = j72 * j35;
        long j85 = j63 * j34;
        long j86 = r103 & 4294967295L;
        long j87 = (j37 * j86) + j85;
        long j88 = (((j77 + j80) + j87) - ((j15 * j78) + (j12 * j52))) + (j74 >>> 28);
        int r105 = ((int) j88) & M28;
        long j89 = j88 >>> 28;
        long j90 = (((j82 + (j23 * j58)) + (j84 + (j83 * j61))) - j77) + j87 + (j75 >>> 28);
        int r23 = ((int) j90) & M28;
        long j91 = (j68 * j68) + (j76 * j13) + (j20 * j49);
        long j92 = (j15 * j15) + (j78 * j12);
        long j93 = (j70 * j70) + (j79 * j24) + (j32 * j55);
        long j94 = (j37 * j37) + (j86 * j34);
        long j95 = (((j91 + j93) + j94) - j92) + j89;
        int r36 = ((int) j95) & M28;
        long j96 = j95 >>> 28;
        long j97 = ((((j26 * j26) + (j23 * j81)) + ((j72 * j72) + ((j83 * j35) + (j43 * j61)))) - j91) + j94 + (j90 >>> 28);
        int r106 = ((int) j97) & M28;
        long j98 = (j76 * j16) + (j20 * j13) + (j18 * j49);
        long j99 = (j79 * j27) + (j32 * j24) + (j29 * j55);
        long j100 = (j83 * j38) + (j43 * j35) + (j40 * j61);
        long j101 = ((r53 * 2) & 4294967295L) * j34;
        long j102 = (((j98 + j99) + j101) - (r09 * j12)) + j96;
        int r107 = ((int) j102) & M28;
        long j103 = (((r016 * j23) + j100) - j98) + j101 + (j97 >>> 28);
        int r84 = ((int) j103) & M28;
        long j104 = (j76 * j76) + (j20 * j16) + (j18 * j13) + (j15 * j49);
        long j105 = j34 * j34;
        long j106 = (((j104 + ((j79 * j79) + ((j32 * j27) + ((j29 * j24) + (j26 * j55))))) + j105) - (j12 * j12)) + (j102 >>> 28);
        int r93 = ((int) j106) & M28;
        long j107 = (((j23 * j23) + ((j83 * j83) + ((j43 * j38) + ((j40 * j35) + (j37 * j61))))) - j104) + j105 + (j103 >>> 28);
        int r112 = ((int) j107) & M28;
        long j108 = (j20 * j19) + (j18 * j16) + (j15 * j13) + (j12 * j49);
        long j109 = (j32 * j30) + (j29 * j27) + (j26 * j24) + (j55 * j23) + j108 + (j106 >>> 28);
        int r018 = ((int) j109) & M28;
        long j110 = (((j43 * j41) + ((j40 * j38) + ((j37 * j35) + (j34 * j61)))) - j108) + (j107 >>> 28);
        int r16 = ((int) j110) & M28;
        long j111 = j110 >>> 28;
        long j112 = (j109 >>> 28) + j111 + r153;
        int r43 = ((int) j112) & M28;
        long j113 = j111 + r152;
        r111[0] = ((int) j113) & M28;
        r111[1] = r154 + ((int) (j113 >>> 28));
        r111[2] = r155;
        r111[3] = r105;
        r111[4] = r36;
        r111[5] = r107;
        r111[6] = r93;
        r111[7] = r018;
        r111[8] = r43;
        r111[9] = r104 + ((int) (j112 >>> 28));
        r111[10] = r156;
        r111[11] = r23;
        r111[12] = r106;
        r111[13] = r84;
        r111[14] = r112;
        r111[15] = r16;
    }

    public static boolean sqrtRatioVar(int[] r32, int[] r42, int[] r52) {
        int[] r02 = create();
        int[] r12 = create();
        sqr(r32, r02);
        mul(r02, r42, r02);
        sqr(r02, r12);
        mul(r02, r32, r02);
        mul(r12, r32, r12);
        mul(r12, r42, r12);
        int[] r22 = create();
        powPm3d4(r12, r22);
        mul(r22, r02, r22);
        int[] r03 = create();
        sqr(r22, r03);
        mul(r03, r42, r03);
        sub(r32, r03, r03);
        normalize(r03);
        if (!isZeroVar(r03)) {
            return false;
        }
        copy(r22, 0, r52, 0);
        return true;
    }

    public static void sub(int[] r49, int[] r50, int[] r51) {
        int r12 = r49[0];
        int r32 = r49[1];
        int r52 = r49[2];
        int r72 = r49[3];
        int r92 = r49[4];
        int r11 = r49[5];
        int r13 = r49[6];
        int r15 = r49[7];
        int r17 = r49[8];
        int r19 = r49[9];
        int r21 = r49[10];
        int r23 = r49[11];
        int r25 = r49[12];
        int r27 = r49[13];
        int r29 = r49[14];
        int r31 = r49[15];
        int r322 = r50[0];
        int r33 = r50[1];
        int r34 = r50[2];
        int r35 = r50[3];
        int r36 = r50[4];
        int r37 = r50[5];
        int r38 = r50[6];
        int r39 = r50[7];
        int r40 = r50[8];
        int r41 = r50[9];
        int r42 = r50[10];
        int r43 = r50[11];
        int r44 = r50[12];
        int r45 = r50[13];
        int r46 = r50[14];
        int r310 = (r32 + 536870910) - r33;
        int r112 = (r11 + 536870910) - r37;
        int r192 = (r19 + 536870910) - r41;
        int r272 = (r27 + 536870910) - r45;
        int r312 = (r31 + 536870910) - r50[15];
        int r53 = ((r52 + 536870910) - r34) + (r310 >>> 28);
        int r311 = r310 & M28;
        int r132 = ((r13 + 536870910) - r38) + (r112 >>> 28);
        int r113 = r112 & M28;
        int r212 = ((r21 + 536870910) - r42) + (r192 >>> 28);
        int r193 = r192 & M28;
        int r292 = ((r29 + 536870910) - r46) + (r272 >>> 28);
        int r273 = r272 & M28;
        int r73 = ((r72 + 536870910) - r35) + (r53 >>> 28);
        int r54 = r53 & M28;
        int r152 = ((r15 + 536870910) - r39) + (r132 >>> 28);
        int r133 = r132 & M28;
        int r232 = ((r23 + 536870910) - r43) + (r212 >>> 28);
        int r213 = r212 & M28;
        int r313 = r312 + (r292 >>> 28);
        int r293 = r292 & M28;
        int r332 = r313 >>> 28;
        int r314 = r313 & M28;
        int r14 = ((r12 + 536870910) - r322) + r332;
        int r93 = ((r92 + 536870910) - r36) + (r73 >>> 28);
        int r74 = r73 & M28;
        int r172 = ((r17 + 536870908) - r40) + r332 + (r152 >>> 28);
        int r153 = r152 & M28;
        int r252 = ((r25 + 536870910) - r44) + (r232 >>> 28);
        int r233 = r232 & M28;
        int r315 = r311 + (r14 >>> 28);
        int r16 = r14 & M28;
        int r114 = r113 + (r93 >>> 28);
        int r94 = r93 & M28;
        int r194 = r193 + (r172 >>> 28);
        int r173 = r172 & M28;
        int r274 = r273 + (r252 >>> 28);
        int r253 = r252 & M28;
        r51[0] = r16;
        r51[1] = r315;
        r51[2] = r54;
        r51[3] = r74;
        r51[4] = r94;
        r51[5] = r114;
        r51[6] = r133;
        r51[7] = r153;
        r51[8] = r173;
        r51[9] = r194;
        r51[10] = r213;
        r51[11] = r233;
        r51[12] = r253;
        r51[13] = r274;
        r51[14] = r293;
        r51[15] = r314;
    }

    public static void subOne(int[] r32) {
        int[] r02 = create();
        r02[0] = 1;
        sub(r32, r02, r32);
    }

    public static void zero(int[] r32) {
        for (int r12 = 0; r12 < 16; r12++) {
            r32[r12] = 0;
        }
    }
}
