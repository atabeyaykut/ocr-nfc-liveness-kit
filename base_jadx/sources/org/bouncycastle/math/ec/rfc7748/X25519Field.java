package org.bouncycastle.math.ec.rfc7748;

import androidx.appcompat.widget.v;
import org.bouncycastle.math.raw.Mod;

/* loaded from: classes2.dex */
public abstract class X25519Field {
    private static final int M24 = 16777215;
    private static final int M25 = 33554431;
    private static final int M26 = 67108863;
    private static final int[] P32 = {-19, -1, -1, -1, -1, -1, -1, Integer.MAX_VALUE};
    private static final int[] ROOT_NEG_ONE = {-32595792, -7943725, 4688975, 3500415, 6194736, 33281959, -12573105, -1002827, 163343, 5703241};
    public static final int SIZE = 10;

    public static void add(int[] r32, int[] r42, int[] r52) {
        for (int r02 = 0; r02 < 10; r02++) {
            r52[r02] = r32[r02] + r42[r02];
        }
    }

    public static void addOne(int[] r22) {
        r22[0] = r22[0] + 1;
    }

    public static void addOne(int[] r12, int r22) {
        r12[r22] = r12[r22] + 1;
    }

    public static void apm(int[] r42, int[] r52, int[] r6, int[] r72) {
        for (int r02 = 0; r02 < 10; r02++) {
            int r12 = r42[r02];
            int r22 = r52[r02];
            r6[r02] = r12 + r22;
            r72[r02] = r12 - r22;
        }
    }

    public static int areEqual(int[] r42, int[] r52) {
        int r12 = 0;
        for (int r02 = 0; r02 < 10; r02++) {
            r12 |= r42[r02] ^ r52[r02];
        }
        return (((r12 >>> 1) | (r12 & 1)) - 1) >> 31;
    }

    public static boolean areEqualVar(int[] r02, int[] r12) {
        return areEqual(r02, r12) != 0;
    }

    public static void carry(int[] r23) {
        int r12 = r23[0];
        int r32 = r23[1];
        int r52 = r23[2];
        int r72 = r23[3];
        int r92 = r23[4];
        int r11 = r23[5];
        int r13 = r23[6];
        int r15 = r23[7];
        int r17 = r23[8];
        int r19 = r23[9];
        int r53 = r52 + (r32 >> 26);
        int r33 = r32 & M26;
        int r93 = r92 + (r72 >> 26);
        int r73 = r72 & M26;
        int r152 = r15 + (r13 >> 26);
        int r132 = r13 & M26;
        int r192 = r19 + (r17 >> 26);
        int r172 = r17 & M26;
        int r74 = r73 + (r53 >> 25);
        int r54 = r53 & M25;
        int r112 = r11 + (r93 >> 25);
        int r94 = r93 & M25;
        int r173 = r172 + (r152 >> 25);
        int r153 = r152 & M25;
        int r22 = ((r192 >> 25) * 38) + r12;
        int r14 = r192 & M25;
        int r34 = r33 + (r22 >> 26);
        int r193 = r22 & M26;
        int r133 = r132 + (r112 >> 26);
        int r113 = r112 & M26;
        int r55 = r54 + (r34 >> 26);
        int r35 = r34 & M26;
        int r95 = r94 + (r74 >> 26);
        int r75 = r74 & M26;
        int r154 = r153 + (r133 >> 26);
        int r134 = r133 & M26;
        int r16 = r14 + (r173 >> 26);
        int r174 = r173 & M26;
        r23[0] = r193;
        r23[1] = r35;
        r23[2] = r55;
        r23[3] = r75;
        r23[4] = r95;
        r23[5] = r113;
        r23[6] = r134;
        r23[7] = r154;
        r23[8] = r174;
        r23[9] = r16;
    }

    public static void cmov(int r42, int[] r52, int r6, int[] r72, int r82) {
        for (int r02 = 0; r02 < 10; r02++) {
            int r12 = r82 + r02;
            int r22 = r72[r12];
            r72[r12] = r22 ^ ((r52[r6 + r02] ^ r22) & r42);
        }
    }

    public static void cnegate(int r22, int[] r32) {
        int r23 = 0 - r22;
        for (int r02 = 0; r02 < 10; r02++) {
            r32[r02] = (r32[r02] ^ r23) - r23;
        }
    }

    public static void copy(int[] r32, int r42, int[] r52, int r6) {
        for (int r02 = 0; r02 < 10; r02++) {
            r52[r6 + r02] = r32[r42 + r02];
        }
    }

    public static int[] create() {
        return new int[10];
    }

    public static int[] createTable(int r02) {
        return new int[r02 * 10];
    }

    public static void cswap(int r42, int[] r52, int[] r6) {
        int r43 = 0 - r42;
        for (int r02 = 0; r02 < 10; r02++) {
            int r12 = r52[r02];
            int r22 = r6[r02];
            int r32 = (r12 ^ r22) & r43;
            r52[r02] = r12 ^ r32;
            r6[r02] = r22 ^ r32;
        }
    }

    public static void decode(byte[] bArr, int r22, int[] r32) {
        decode128(bArr, r22, r32, 0);
        decode128(bArr, r22 + 16, r32, 5);
        r32[9] = r32[9] & 16777215;
    }

    public static void decode(byte[] bArr, int r22, int[] r32, int r42) {
        decode128(bArr, r22, r32, r42);
        decode128(bArr, r22 + 16, r32, r42 + 5);
        int r43 = r42 + 9;
        r32[r43] = r32[r43] & 16777215;
    }

    public static void decode(byte[] bArr, int[] r32) {
        decode128(bArr, 0, r32, 0);
        decode128(bArr, 16, r32, 5);
        r32[9] = r32[9] & 16777215;
    }

    public static void decode(int[] r12, int r22, int[] r32) {
        decode128(r12, r22, r32, 0);
        decode128(r12, r22 + 4, r32, 5);
        r32[9] = r32[9] & 16777215;
    }

    private static void decode128(byte[] bArr, int r6, int[] r72, int r82) {
        int r02 = decode32(bArr, r6 + 0);
        int r12 = decode32(bArr, r6 + 4);
        int r22 = decode32(bArr, r6 + 8);
        int r52 = decode32(bArr, r6 + 12);
        r72[r82 + 0] = r02 & M26;
        r72[r82 + 1] = ((r02 >>> 26) | (r12 << 6)) & M26;
        r72[r82 + 2] = ((r22 << 12) | (r12 >>> 20)) & M25;
        r72[r82 + 3] = ((r52 << 19) | (r22 >>> 13)) & M26;
        r72[r82 + 4] = r52 >>> 7;
    }

    private static void decode128(int[] r52, int r6, int[] r72, int r82) {
        int r02 = r52[r6 + 0];
        int r12 = r52[r6 + 1];
        int r22 = r52[r6 + 2];
        int r53 = r52[r6 + 3];
        r72[r82 + 0] = r02 & M26;
        r72[r82 + 1] = ((r02 >>> 26) | (r12 << 6)) & M26;
        r72[r82 + 2] = ((r22 << 12) | (r12 >>> 20)) & M25;
        r72[r82 + 3] = ((r53 << 19) | (r22 >>> 13)) & M26;
        r72[r82 + 4] = r53 >>> 7;
    }

    private static int decode32(byte[] bArr, int r32) {
        int r02 = bArr[r32] & 255;
        int r33 = r32 + 1;
        int r03 = r02 | ((bArr[r33] & 255) << 8);
        int r34 = r33 + 1;
        return (bArr[r34 + 1] << 24) | r03 | ((bArr[r34] & 255) << 16);
    }

    public static void encode(int[] r02, int r12, byte[] bArr, int r32) {
        encode128(r02, r12, bArr, r32);
        encode128(r02, r12 + 5, bArr, r32 + 16);
    }

    public static void encode(int[] r22, byte[] bArr) {
        encode128(r22, 0, bArr, 0);
        encode128(r22, 5, bArr, 16);
    }

    public static void encode(int[] r12, byte[] bArr, int r32) {
        encode128(r12, 0, bArr, r32);
        encode128(r12, 5, bArr, r32 + 16);
    }

    public static void encode(int[] r12, int[] r22, int r32) {
        encode128(r12, 0, r22, r32);
        encode128(r12, 5, r22, r32 + 4);
    }

    private static void encode128(int[] r42, int r52, byte[] bArr, int r72) {
        int r02 = r42[r52 + 0];
        int r12 = r42[r52 + 1];
        int r22 = r42[r52 + 2];
        int r32 = r42[r52 + 3];
        int r43 = r42[r52 + 4];
        encode32((r12 << 26) | r02, bArr, r72 + 0);
        encode32((r12 >>> 6) | (r22 << 20), bArr, r72 + 4);
        encode32((r22 >>> 12) | (r32 << 13), bArr, r72 + 8);
        encode32((r43 << 7) | (r32 >>> 19), bArr, r72 + 12);
    }

    private static void encode128(int[] r52, int r6, int[] r72, int r82) {
        int r02 = r52[r6 + 0];
        int r12 = r52[r6 + 1];
        int r22 = r52[r6 + 2];
        int r32 = r52[r6 + 3];
        int r53 = r52[r6 + 4];
        r72[r82 + 0] = r02 | (r12 << 26);
        r72[r82 + 1] = (r12 >>> 6) | (r22 << 20);
        r72[r82 + 2] = (r22 >>> 12) | (r32 << 13);
        r72[r82 + 3] = (r53 << 7) | (r32 >>> 19);
    }

    private static void encode32(int r12, byte[] bArr, int r32) {
        bArr[r32] = (byte) r12;
        int r33 = r32 + 1;
        bArr[r33] = (byte) (r12 >>> 8);
        int r34 = r33 + 1;
        bArr[r34] = (byte) (r12 >>> 16);
        bArr[r34 + 1] = (byte) (r12 >>> 24);
    }

    public static void inv(int[] r32, int[] r42) {
        int[] r02 = create();
        int[] r12 = new int[8];
        copy(r32, 0, r02, 0);
        normalize(r02);
        encode(r02, r12, 0);
        Mod.modOddInverse(P32, r12, r12);
        decode(r12, 0, r42);
    }

    public static void invVar(int[] r32, int[] r42) {
        int[] r02 = create();
        int[] r12 = new int[8];
        copy(r32, 0, r02, 0);
        normalize(r02);
        encode(r02, r12, 0);
        Mod.modOddInverseVar(P32, r12, r12);
        decode(r12, 0, r42);
    }

    public static int isOne(int[] r42) {
        int r02 = r42[0] ^ 1;
        for (int r22 = 1; r22 < 10; r22++) {
            r02 |= r42[r22];
        }
        return (((r02 >>> 1) | (r02 & 1)) - 1) >> 31;
    }

    public static boolean isOneVar(int[] r02) {
        return isOne(r02) != 0;
    }

    public static int isZero(int[] r32) {
        int r12 = 0;
        for (int r02 = 0; r02 < 10; r02++) {
            r12 |= r32[r02];
        }
        return (((r12 >>> 1) | (r12 & 1)) - 1) >> 31;
    }

    public static boolean isZeroVar(int[] r02) {
        return isZero(r02) != 0;
    }

    public static void mul(int[] r25, int r26, int[] r27) {
        int r12 = r25[0];
        int r32 = r25[1];
        int r52 = r25[2];
        int r72 = r25[3];
        int r92 = r25[4];
        int r11 = r25[5];
        int r13 = r25[6];
        int r15 = r25[7];
        int r14 = r25[8];
        int r82 = r25[9];
        long j10 = r26;
        long j11 = r52 * j10;
        int r122 = ((int) j11) & M25;
        long j12 = r92 * j10;
        int r93 = ((int) j12) & M25;
        long j13 = r15 * j10;
        int r152 = ((int) j13) & M25;
        long j14 = j13 >> 25;
        long j15 = r82 * j10;
        int r83 = ((int) j15) & M25;
        long j16 = (r12 * j10) + ((j15 >> 25) * 38);
        r27[0] = ((int) j16) & M26;
        long j17 = (r11 * j10) + (j12 >> 25);
        r27[5] = ((int) j17) & M26;
        long j18 = j17 >> 26;
        long j19 = (r32 * j10) + (j16 >> 26);
        r27[1] = ((int) j19) & M26;
        long j20 = j19 >> 26;
        long j21 = (r72 * j10) + (j11 >> 25);
        r27[3] = ((int) j21) & M26;
        long j22 = j21 >> 26;
        long j23 = (r13 * j10) + j18;
        r27[6] = ((int) j23) & M26;
        long j24 = j23 >> 26;
        long j25 = (r14 * j10) + j14;
        r27[8] = M26 & ((int) j25);
        r27[2] = r122 + ((int) j20);
        r27[4] = r93 + ((int) j22);
        r27[7] = r152 + ((int) j24);
        r27[9] = r83 + ((int) (j25 >> 26));
    }

    public static void mul(int[] r75, int[] r76, int[] r77) {
        int r12 = r75[0];
        int r02 = r76[0];
        int r32 = r75[1];
        int r22 = r76[1];
        int r52 = r75[2];
        int r42 = r76[2];
        int r72 = r75[3];
        int r6 = r76[3];
        int r92 = r75[4];
        int r82 = r76[4];
        int r11 = r75[5];
        int r10 = r76[5];
        int r13 = r75[6];
        int r14 = r76[6];
        int r122 = r75[7];
        int r123 = r76[7];
        int r15 = r75[8];
        int r152 = r76[8];
        int r153 = r75[9];
        int r154 = r76[9];
        long j10 = r12;
        long j11 = r02;
        long j12 = j10 * j11;
        long j13 = r22;
        long j14 = r32;
        long j15 = (j14 * j11) + (j10 * j13);
        long j16 = r42;
        long j17 = r52;
        long j18 = (j17 * j11) + (j14 * j13) + (j10 * j16);
        long j19 = j17 * j13;
        long j20 = r6;
        long j21 = r72;
        long jB = v.b(j21, j11, j10 * j20, (j19 + (j14 * j16)) << 1);
        long j22 = (j17 * j16) << 1;
        long j23 = r82;
        long j24 = r92;
        long jB2 = v.b(j11, j24, (j21 * j13) + (j14 * j20) + (j10 * j23), j22);
        long j25 = ((j24 * j13) + ((j21 * j16) + ((j17 * j20) + (j14 * j23)))) << 1;
        long j26 = (j21 * j20) + (((j24 * j16) + (j17 * j23)) << 1);
        long j27 = (j20 * j24) + (j21 * j23);
        long j28 = (j24 * j23) << 1;
        long j29 = r11;
        long j30 = r10;
        long j31 = r14;
        long j32 = r13;
        long j33 = (j32 * j30) + (j29 * j31);
        long j34 = r123;
        long j35 = r122;
        long j36 = (j35 * j30) + (j32 * j31) + (j29 * j34);
        long j37 = j35 * j31;
        long j38 = r152;
        long j39 = r15;
        long jB3 = v.b(j39, j30, j29 * j38, (j37 + (j32 * j34)) << 1);
        long j40 = (j35 * j34) << 1;
        long j41 = r154;
        long j42 = (j39 * j31) + (j32 * j38) + (j29 * j41);
        long j43 = r153;
        long jB4 = v.b(j30, j43, j42, j40);
        long j44 = (j43 * j31) + (j39 * j34) + (j35 * j38) + (j32 * j41);
        long j45 = j12 - (j44 * 76);
        long j46 = j15 - (((j39 * j38) + (((j43 * j34) + (j35 * j41)) << 1)) * 38);
        long j47 = j18 - (((j38 * j43) + (j39 * j41)) * 38);
        long j48 = jB - ((j43 * j41) * 76);
        long j49 = j25 - (j29 * j30);
        long j50 = j26 - j33;
        long j51 = j27 - j36;
        long j52 = j28 - jB3;
        int r93 = r12 + r11;
        int r102 = r02 + r10;
        int r112 = r32 + r13;
        int r132 = r22 + r14;
        int r142 = r52 + r122;
        int r155 = r42 + r123;
        int r43 = r72 + r15;
        int r53 = r6 + r152;
        int r62 = r92 + r153;
        long j53 = r93;
        long j54 = r102;
        long j55 = j53 * j54;
        long j56 = r132;
        long j57 = r112;
        long j58 = (j57 * j54) + (j53 * j56);
        long j59 = r155;
        long j60 = r142;
        long j61 = (j60 * j54) + (j57 * j56) + (j53 * j59);
        long j62 = j60 * j56;
        long j63 = r53;
        long j64 = r43;
        long jB5 = v.b(j64, j54, j53 * j63, (j62 + (j57 * j59)) << 1);
        long j65 = (j60 * j59) << 1;
        long j66 = r82 + r154;
        long j67 = (j64 * j56) + (j57 * j63) + (j53 * j66);
        long j68 = r62;
        long jB6 = v.b(j54, j68, j67, j65);
        long j69 = ((j56 * j68) + ((j64 * j59) + ((j60 * j63) + (j57 * j66)))) << 1;
        long j70 = (j64 * j63) + (((j68 * j59) + (j60 * j66)) << 1);
        long j71 = (j63 * j68) + (j64 * j66);
        long j72 = (jB5 - j48) + j52;
        int r23 = ((int) j72) & M26;
        long j73 = ((jB6 - jB2) - jB4) + (j72 >> 26);
        int r73 = ((int) j73) & M25;
        long j74 = ((((j73 >> 25) + j69) - j49) * 38) + j45;
        r77[0] = ((int) j74) & M26;
        long j75 = ((j70 - j50) * 38) + j46 + (j74 >> 26);
        r77[1] = ((int) j75) & M26;
        long j76 = ((j71 - j51) * 38) + j47 + (j75 >> 26);
        r77[2] = ((int) j76) & M25;
        long j77 = ((((j68 * j66) << 1) - j52) * 38) + j48 + (j76 >> 25);
        r77[3] = ((int) j77) & M26;
        long jB7 = v.b(jB4, 38L, jB2, j77 >> 26);
        r77[4] = ((int) jB7) & M25;
        long j78 = (j55 - j45) + j49 + (jB7 >> 25);
        r77[5] = ((int) j78) & M26;
        long j79 = (j58 - j46) + j50 + (j78 >> 26);
        r77[6] = ((int) j79) & M26;
        long j80 = (j61 - j47) + j51 + (j79 >> 26);
        r77[7] = ((int) j80) & M25;
        long j81 = (j80 >> 25) + r23;
        r77[8] = ((int) j81) & M26;
        r77[9] = r73 + ((int) (j81 >> 26));
    }

    public static void negate(int[] r22, int[] r32) {
        for (int r02 = 0; r02 < 10; r02++) {
            r32[r02] = -r22[r02];
        }
    }

    public static void normalize(int[] r12) {
        int r02 = (r12[9] >>> 23) & 1;
        reduce(r12, r02);
        reduce(r12, -r02);
    }

    public static void one(int[] r32) {
        r32[0] = 1;
        for (int r12 = 1; r12 < 10; r12++) {
            r32[r12] = 0;
        }
    }

    private static void powPm5d8(int[] r42, int[] r52, int[] r6) {
        sqr(r42, r52);
        mul(r42, r52, r52);
        int[] r02 = create();
        sqr(r52, r02);
        mul(r42, r02, r02);
        sqr(r02, 2, r02);
        mul(r52, r02, r02);
        int[] r53 = create();
        sqr(r02, 5, r53);
        mul(r02, r53, r53);
        int[] r32 = create();
        sqr(r53, 5, r32);
        mul(r02, r32, r32);
        sqr(r32, 10, r02);
        mul(r53, r02, r02);
        sqr(r02, 25, r53);
        mul(r02, r53, r53);
        sqr(r53, 25, r32);
        mul(r02, r32, r32);
        sqr(r32, 50, r02);
        mul(r53, r02, r02);
        sqr(r02, 125, r53);
        mul(r02, r53, r53);
        sqr(r53, 2, r02);
        mul(r02, r42, r6);
    }

    private static void reduce(int[] r10, int r11) {
        int r12 = r10[9];
        long j10 = (((r12 >> 24) + r11) * 19) + r10[0];
        r10[0] = ((int) j10) & M26;
        long j11 = (j10 >> 26) + r10[1];
        r10[1] = ((int) j11) & M26;
        long j12 = (j11 >> 26) + r10[2];
        r10[2] = ((int) j12) & M25;
        long j13 = (j12 >> 25) + r10[3];
        r10[3] = ((int) j13) & M26;
        long j14 = (j13 >> 26) + r10[4];
        r10[4] = ((int) j14) & M25;
        long j15 = (j14 >> 25) + r10[5];
        r10[5] = ((int) j15) & M26;
        long j16 = (j15 >> 26) + r10[6];
        r10[6] = ((int) j16) & M26;
        long j17 = (j16 >> 26) + r10[7];
        r10[7] = M25 & ((int) j17);
        long j18 = (j17 >> 25) + r10[8];
        r10[8] = M26 & ((int) j18);
        r10[9] = (16777215 & r12) + ((int) (j18 >> 26));
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

    public static void sqr(int[] r50, int[] r51) {
        int r02 = r50[0];
        int r12 = r50[1];
        int r22 = r50[2];
        int r32 = r50[3];
        int r42 = r50[4];
        int r52 = r50[5];
        int r6 = r50[6];
        int r72 = r50[7];
        int r92 = r50[8];
        int r11 = r50[9];
        long j10 = r02;
        long j11 = j10 * j10;
        long j12 = r12 * 2;
        long j13 = j10 * j12;
        long j14 = r22 * 2;
        long j15 = r12;
        long j16 = (j15 * j15) + (j10 * j14);
        long j17 = r32 * 2;
        long j18 = (j10 * j17) + (j12 * j14);
        long j19 = r42 * 2;
        long j20 = (j15 * j17) + (j10 * j19) + (r22 * j14);
        long j21 = (j17 * j14) + (j12 * j19);
        long j22 = r32;
        long j23 = (j22 * j22) + (j14 * j19);
        long j24 = j22 * j19;
        long j25 = r42 * j19;
        long j26 = r52;
        long j27 = r6 * 2;
        long j28 = r72 * 2;
        long j29 = r6;
        long j30 = (j29 * j29) + (j26 * j28);
        long j31 = r92 * 2;
        long j32 = (j26 * j31) + (j27 * j28);
        long j33 = r11 * 2;
        long j34 = (j29 * j31) + (j26 * j33) + (r72 * j28);
        long j35 = r92;
        long j36 = j11 - (((j31 * j28) + (j27 * j33)) * 38);
        long j37 = j13 - (((j35 * j35) + (j28 * j33)) * 38);
        long j38 = j16 - ((j35 * j33) * 38);
        long j39 = j18 - ((r11 * j33) * 38);
        long j40 = j21 - (j26 * j26);
        long j41 = j23 - (j26 * j27);
        long j42 = j24 - j30;
        long j43 = j25 - j32;
        int r14 = r02 + r52;
        int r62 = r12 + r6;
        int r73 = r22 + r72;
        int r23 = r32 + r92;
        int r53 = r42 + r11;
        long j44 = r14;
        long j45 = r62 * 2;
        long j46 = r73 * 2;
        long j47 = r62;
        long j48 = (j47 * j47) + (j44 * j46);
        long j49 = r23 * 2;
        long j50 = (j44 * j49) + (j45 * j46);
        long j51 = r53 * 2;
        long j52 = (j47 * j49) + (j44 * j51) + (r73 * j46);
        long j53 = (j49 * j46) + (j45 * j51);
        long j54 = r23;
        long j55 = (j54 * j54) + (j46 * j51);
        long j56 = j54 * j51;
        long j57 = r53 * j51;
        long j58 = (j50 - j39) + j43;
        int r82 = ((int) j58) & M26;
        long j59 = ((j52 - j20) - j34) + (j58 >> 26);
        int r43 = ((int) j59) & M25;
        long j60 = ((((j59 >> 25) + j53) - j40) * 38) + j36;
        r51[0] = ((int) j60) & M26;
        long j61 = ((j55 - j41) * 38) + j37 + (j60 >> 26);
        r51[1] = ((int) j61) & M26;
        long j62 = ((j56 - j42) * 38) + j38 + (j61 >> 26);
        r51[2] = ((int) j62) & M25;
        long j63 = ((j57 - j43) * 38) + j39 + (j62 >> 25);
        r51[3] = ((int) j63) & M26;
        long jB = v.b(j34, 38L, j20, j63 >> 26);
        r51[4] = ((int) jB) & M25;
        long j64 = ((j44 * j44) - j36) + j40 + (jB >> 25);
        r51[5] = ((int) j64) & M26;
        long j65 = ((j44 * j45) - j37) + j41 + (j64 >> 26);
        r51[6] = ((int) j65) & M26;
        long j66 = (j48 - j38) + j42 + (j65 >> 26);
        r51[7] = ((int) j66) & M25;
        long j67 = (j66 >> 25) + r82;
        r51[8] = ((int) j67) & M26;
        r51[9] = r43 + ((int) (j67 >> 26));
    }

    public static boolean sqrtRatioVar(int[] r52, int[] r6, int[] r72) {
        int[] r02 = create();
        int[] r12 = create();
        mul(r52, r6, r02);
        sqr(r6, r12);
        mul(r02, r12, r02);
        sqr(r12, r12);
        mul(r12, r02, r12);
        int[] r22 = create();
        int[] r32 = create();
        powPm5d8(r12, r22, r32);
        mul(r32, r02, r32);
        int[] r03 = create();
        sqr(r32, r03);
        mul(r03, r6, r03);
        sub(r03, r52, r22);
        normalize(r22);
        if (isZeroVar(r22)) {
            copy(r32, 0, r72, 0);
            return true;
        }
        add(r03, r52, r22);
        normalize(r22);
        if (!isZeroVar(r22)) {
            return false;
        }
        mul(r32, ROOT_NEG_ONE, r72);
        return true;
    }

    public static void sub(int[] r32, int[] r42, int[] r52) {
        for (int r02 = 0; r02 < 10; r02++) {
            r52[r02] = r32[r02] - r42[r02];
        }
    }

    public static void subOne(int[] r22) {
        r22[0] = r22[0] - 1;
    }

    public static void zero(int[] r32) {
        for (int r12 = 0; r12 < 10; r12++) {
            r32[r12] = 0;
        }
    }
}
