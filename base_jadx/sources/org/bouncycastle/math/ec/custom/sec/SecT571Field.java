package org.bouncycastle.math.ec.custom.sec;

import java.math.BigInteger;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.math.raw.Interleave;
import org.bouncycastle.math.raw.Nat;
import org.bouncycastle.math.raw.Nat576;

/* loaded from: classes2.dex */
public class SecT571Field {
    private static final long M59 = 576460752303423487L;
    private static final long[] ROOT_Z = {3161836309350906777L, -7642453882179322845L, -3821226941089661423L, 7312758566309945096L, -556661012383879292L, 8945041530681231562L, -4750851271514160027L, 6847946401097695794L, 541669439031730457L};

    private static void add(long[] jArr, int r72, long[] jArr2, int r92, long[] jArr3, int r11) {
        for (int r02 = 0; r02 < 9; r02++) {
            jArr3[r11 + r02] = jArr[r72 + r02] ^ jArr2[r92 + r02];
        }
    }

    public static void add(long[] jArr, long[] jArr2, long[] jArr3) {
        for (int r02 = 0; r02 < 9; r02++) {
            jArr3[r02] = jArr[r02] ^ jArr2[r02];
        }
    }

    private static void addBothTo(long[] jArr, int r92, long[] jArr2, int r11, long[] jArr3, int r13) {
        for (int r02 = 0; r02 < 9; r02++) {
            int r12 = r13 + r02;
            jArr3[r12] = jArr3[r12] ^ (jArr[r92 + r02] ^ jArr2[r11 + r02]);
        }
    }

    public static void addBothTo(long[] jArr, long[] jArr2, long[] jArr3) {
        for (int r02 = 0; r02 < 9; r02++) {
            jArr3[r02] = jArr3[r02] ^ (jArr[r02] ^ jArr2[r02]);
        }
    }

    public static void addExt(long[] jArr, long[] jArr2, long[] jArr3) {
        for (int r02 = 0; r02 < 18; r02++) {
            jArr3[r02] = jArr[r02] ^ jArr2[r02];
        }
    }

    public static void addOne(long[] jArr, long[] jArr2) {
        jArr2[0] = jArr[0] ^ 1;
        for (int r02 = 1; r02 < 9; r02++) {
            jArr2[r02] = jArr[r02];
        }
    }

    private static void addTo(long[] jArr, long[] jArr2) {
        for (int r02 = 0; r02 < 9; r02++) {
            jArr2[r02] = jArr2[r02] ^ jArr[r02];
        }
    }

    public static long[] fromBigInteger(BigInteger bigInteger) {
        return Nat.fromBigInteger64(571, bigInteger);
    }

    public static void halfTrace(long[] jArr, long[] jArr2) {
        long[] jArrCreateExt64 = Nat576.createExt64();
        Nat576.copy64(jArr, jArr2);
        for (int r12 = 1; r12 < 571; r12 += 2) {
            implSquare(jArr2, jArrCreateExt64);
            reduce(jArrCreateExt64, jArr2);
            implSquare(jArr2, jArrCreateExt64);
            reduce(jArrCreateExt64, jArr2);
            addTo(jArr, jArr2);
        }
    }

    public static void implMultiply(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] jArr4 = new long[16];
        for (int r10 = 0; r10 < 9; r10++) {
            implMulwAcc(jArr4, jArr[r10], jArr2[r10], jArr3, r10 << 1);
        }
        long j10 = jArr3[0];
        long j11 = jArr3[1];
        long j12 = jArr3[2] ^ j10;
        long j13 = j12 ^ j11;
        jArr3[1] = j13;
        long j14 = j11 ^ jArr3[3];
        long j15 = j12 ^ jArr3[4];
        long j16 = j15 ^ j14;
        jArr3[2] = j16;
        long j17 = j14 ^ jArr3[5];
        long j18 = j15 ^ jArr3[6];
        long j19 = j18 ^ j17;
        jArr3[3] = j19;
        long j20 = j17 ^ jArr3[7];
        long j21 = j18 ^ jArr3[8];
        long j22 = j21 ^ j20;
        jArr3[4] = j22;
        long j23 = j20 ^ jArr3[9];
        long j24 = j21 ^ jArr3[10];
        long j25 = j24 ^ j23;
        jArr3[5] = j25;
        long j26 = j23 ^ jArr3[11];
        long j27 = j24 ^ jArr3[12];
        long j28 = j27 ^ j26;
        jArr3[6] = j28;
        long j29 = j26 ^ jArr3[13];
        long j30 = j27 ^ jArr3[14];
        long j31 = j30 ^ j29;
        jArr3[7] = j31;
        long j32 = j29 ^ jArr3[15];
        long j33 = j30 ^ jArr3[16];
        long j34 = j33 ^ j32;
        jArr3[8] = j34;
        long j35 = (j32 ^ jArr3[17]) ^ j33;
        jArr3[9] = j10 ^ j35;
        jArr3[10] = j13 ^ j35;
        jArr3[11] = j16 ^ j35;
        jArr3[12] = j19 ^ j35;
        jArr3[13] = j22 ^ j35;
        jArr3[14] = j25 ^ j35;
        jArr3[15] = j28 ^ j35;
        jArr3[16] = j31 ^ j35;
        jArr3[17] = j34 ^ j35;
        implMulwAcc(jArr4, jArr[0] ^ jArr[1], jArr2[0] ^ jArr2[1], jArr3, 1);
        implMulwAcc(jArr4, jArr[0] ^ jArr[2], jArr2[0] ^ jArr2[2], jArr3, 2);
        implMulwAcc(jArr4, jArr[0] ^ jArr[3], jArr2[0] ^ jArr2[3], jArr3, 3);
        implMulwAcc(jArr4, jArr[1] ^ jArr[2], jArr2[1] ^ jArr2[2], jArr3, 3);
        implMulwAcc(jArr4, jArr[0] ^ jArr[4], jArr2[0] ^ jArr2[4], jArr3, 4);
        implMulwAcc(jArr4, jArr[1] ^ jArr[3], jArr2[1] ^ jArr2[3], jArr3, 4);
        implMulwAcc(jArr4, jArr[0] ^ jArr[5], jArr2[0] ^ jArr2[5], jArr3, 5);
        implMulwAcc(jArr4, jArr[1] ^ jArr[4], jArr2[1] ^ jArr2[4], jArr3, 5);
        implMulwAcc(jArr4, jArr[2] ^ jArr[3], jArr2[2] ^ jArr2[3], jArr3, 5);
        implMulwAcc(jArr4, jArr[0] ^ jArr[6], jArr2[0] ^ jArr2[6], jArr3, 6);
        implMulwAcc(jArr4, jArr[1] ^ jArr[5], jArr2[1] ^ jArr2[5], jArr3, 6);
        implMulwAcc(jArr4, jArr[2] ^ jArr[4], jArr2[2] ^ jArr2[4], jArr3, 6);
        implMulwAcc(jArr4, jArr[0] ^ jArr[7], jArr2[0] ^ jArr2[7], jArr3, 7);
        implMulwAcc(jArr4, jArr[1] ^ jArr[6], jArr2[1] ^ jArr2[6], jArr3, 7);
        implMulwAcc(jArr4, jArr[2] ^ jArr[5], jArr2[2] ^ jArr2[5], jArr3, 7);
        implMulwAcc(jArr4, jArr[3] ^ jArr[4], jArr2[3] ^ jArr2[4], jArr3, 7);
        implMulwAcc(jArr4, jArr[0] ^ jArr[8], jArr2[0] ^ jArr2[8], jArr3, 8);
        implMulwAcc(jArr4, jArr[1] ^ jArr[7], jArr2[1] ^ jArr2[7], jArr3, 8);
        implMulwAcc(jArr4, jArr[2] ^ jArr[6], jArr2[2] ^ jArr2[6], jArr3, 8);
        implMulwAcc(jArr4, jArr[3] ^ jArr[5], jArr2[3] ^ jArr2[5], jArr3, 8);
        implMulwAcc(jArr4, jArr[1] ^ jArr[8], jArr2[1] ^ jArr2[8], jArr3, 9);
        implMulwAcc(jArr4, jArr[2] ^ jArr[7], jArr2[2] ^ jArr2[7], jArr3, 9);
        implMulwAcc(jArr4, jArr[3] ^ jArr[6], jArr2[3] ^ jArr2[6], jArr3, 9);
        implMulwAcc(jArr4, jArr[4] ^ jArr[5], jArr2[4] ^ jArr2[5], jArr3, 9);
        implMulwAcc(jArr4, jArr[2] ^ jArr[8], jArr2[2] ^ jArr2[8], jArr3, 10);
        implMulwAcc(jArr4, jArr[3] ^ jArr[7], jArr2[3] ^ jArr2[7], jArr3, 10);
        implMulwAcc(jArr4, jArr[4] ^ jArr[6], jArr2[4] ^ jArr2[6], jArr3, 10);
        implMulwAcc(jArr4, jArr[3] ^ jArr[8], jArr2[3] ^ jArr2[8], jArr3, 11);
        implMulwAcc(jArr4, jArr[4] ^ jArr[7], jArr2[4] ^ jArr2[7], jArr3, 11);
        implMulwAcc(jArr4, jArr[5] ^ jArr[6], jArr2[5] ^ jArr2[6], jArr3, 11);
        implMulwAcc(jArr4, jArr[4] ^ jArr[8], jArr2[4] ^ jArr2[8], jArr3, 12);
        implMulwAcc(jArr4, jArr[5] ^ jArr[7], jArr2[5] ^ jArr2[7], jArr3, 12);
        implMulwAcc(jArr4, jArr[5] ^ jArr[8], jArr2[5] ^ jArr2[8], jArr3, 13);
        implMulwAcc(jArr4, jArr[6] ^ jArr[7], jArr2[6] ^ jArr2[7], jArr3, 13);
        implMulwAcc(jArr4, jArr[6] ^ jArr[8], jArr2[6] ^ jArr2[8], jArr3, 14);
        implMulwAcc(jArr4, jArr[7] ^ jArr[8], jArr2[7] ^ jArr2[8], jArr3, 15);
    }

    public static void implMultiplyPrecomp(long[] jArr, long[] jArr2, long[] jArr3) {
        for (int r12 = 56; r12 >= 0; r12 -= 8) {
            for (int r32 = 1; r32 < 9; r32 += 2) {
                int r52 = (int) (jArr[r32] >>> r12);
                addBothTo(jArr2, (r52 & 15) * 9, jArr2, (((r52 >>> 4) & 15) + 16) * 9, jArr3, r32 - 1);
            }
            Nat.shiftUpBits64(16, jArr3, 0, 8, 0L);
        }
        for (int r02 = 56; r02 >= 0; r02 -= 8) {
            for (int r13 = 0; r13 < 9; r13 += 2) {
                int r42 = (int) (jArr[r13] >>> r02);
                addBothTo(jArr2, (r42 & 15) * 9, jArr2, (((r42 >>> 4) & 15) + 16) * 9, jArr3, r13);
            }
            if (r02 > 0) {
                Nat.shiftUpBits64(18, jArr3, 0, 8, 0L);
            }
        }
    }

    public static void implMulwAcc(long[] jArr, long j10, long j11, long[] jArr2, int r19) {
        long j12 = j10;
        jArr[1] = j11;
        for (int r32 = 2; r32 < 16; r32 += 2) {
            long j13 = jArr[r32 >>> 1] << 1;
            jArr[r32] = j13;
            jArr[r32 + 1] = j13 ^ j11;
        }
        int r33 = (int) j12;
        long j14 = jArr[r33 & 15] ^ (jArr[(r33 >>> 4) & 15] << 4);
        long j15 = 0;
        int r52 = 56;
        do {
            int r10 = (int) (j12 >>> r52);
            long j16 = (jArr[(r10 >>> 4) & 15] << 4) ^ jArr[r10 & 15];
            j14 ^= j16 << r52;
            j15 ^= j16 >>> (-r52);
            r52 -= 8;
        } while (r52 > 0);
        for (int r53 = 0; r53 < 7; r53++) {
            j12 = (j12 & (-72340172838076674L)) >>> 1;
            j15 ^= ((j11 << r53) >> 63) & j12;
        }
        jArr2[r19] = jArr2[r19] ^ j14;
        int r02 = r19 + 1;
        jArr2[r02] = jArr2[r02] ^ j15;
    }

    public static void implSquare(long[] jArr, long[] jArr2) {
        Interleave.expand64To128(jArr, 0, 9, jArr2, 0);
    }

    public static void invert(long[] jArr, long[] jArr2) {
        if (Nat576.isZero64(jArr)) {
            throw new IllegalStateException();
        }
        long[] jArrCreate64 = Nat576.create64();
        long[] jArrCreate642 = Nat576.create64();
        long[] jArrCreate643 = Nat576.create64();
        square(jArr, jArrCreate643);
        square(jArrCreate643, jArrCreate64);
        square(jArrCreate64, jArrCreate642);
        multiply(jArrCreate64, jArrCreate642, jArrCreate64);
        squareN(jArrCreate64, 2, jArrCreate642);
        multiply(jArrCreate64, jArrCreate642, jArrCreate64);
        multiply(jArrCreate64, jArrCreate643, jArrCreate64);
        squareN(jArrCreate64, 5, jArrCreate642);
        multiply(jArrCreate64, jArrCreate642, jArrCreate64);
        squareN(jArrCreate642, 5, jArrCreate642);
        multiply(jArrCreate64, jArrCreate642, jArrCreate64);
        squareN(jArrCreate64, 15, jArrCreate642);
        multiply(jArrCreate64, jArrCreate642, jArrCreate643);
        squareN(jArrCreate643, 30, jArrCreate64);
        squareN(jArrCreate64, 30, jArrCreate642);
        multiply(jArrCreate64, jArrCreate642, jArrCreate64);
        squareN(jArrCreate64, 60, jArrCreate642);
        multiply(jArrCreate64, jArrCreate642, jArrCreate64);
        squareN(jArrCreate642, 60, jArrCreate642);
        multiply(jArrCreate64, jArrCreate642, jArrCreate64);
        squareN(jArrCreate64, 180, jArrCreate642);
        multiply(jArrCreate64, jArrCreate642, jArrCreate64);
        squareN(jArrCreate642, 180, jArrCreate642);
        multiply(jArrCreate64, jArrCreate642, jArrCreate64);
        multiply(jArrCreate64, jArrCreate643, jArr2);
    }

    public static void multiply(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] jArrCreateExt64 = Nat576.createExt64();
        implMultiply(jArr, jArr2, jArrCreateExt64);
        reduce(jArrCreateExt64, jArr3);
    }

    public static void multiplyAddToExt(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] jArrCreateExt64 = Nat576.createExt64();
        implMultiply(jArr, jArr2, jArrCreateExt64);
        addExt(jArr3, jArrCreateExt64, jArr3);
    }

    public static void multiplyPrecomp(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] jArrCreateExt64 = Nat576.createExt64();
        implMultiplyPrecomp(jArr, jArr2, jArrCreateExt64);
        reduce(jArrCreateExt64, jArr3);
    }

    public static void multiplyPrecompAddToExt(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] jArrCreateExt64 = Nat576.createExt64();
        implMultiplyPrecomp(jArr, jArr2, jArrCreateExt64);
        addExt(jArr3, jArrCreateExt64, jArr3);
    }

    public static long[] precompMultiplicand(long[] jArr) {
        long[] jArr2 = new long[288];
        int r22 = 0;
        System.arraycopy(jArr, 0, jArr2, 9, 9);
        int r92 = 7;
        while (r92 > 0) {
            int r82 = r22 + 18;
            Nat.shiftUpBit64(9, jArr2, r82 >>> 1, 0L, jArr2, r82);
            reduce5(jArr2, r82);
            add(jArr2, 9, jArr2, r82, jArr2, r82 + 9);
            r92--;
            r22 = r82;
        }
        Nat.shiftUpBits64(144, jArr2, 0, 4, 0L, jArr2, 144);
        return jArr2;
    }

    public static void reduce(long[] jArr, long[] jArr2) {
        long j10 = jArr[9];
        long j11 = jArr[17];
        long j12 = (((j10 ^ (j11 >>> 59)) ^ (j11 >>> 57)) ^ (j11 >>> 54)) ^ (j11 >>> 49);
        long j13 = (j11 << 15) ^ (((jArr[8] ^ (j11 << 5)) ^ (j11 << 7)) ^ (j11 << 10));
        for (int r92 = 16; r92 >= 10; r92--) {
            long j14 = jArr[r92];
            jArr2[r92 - 8] = (((j13 ^ (j14 >>> 59)) ^ (j14 >>> 57)) ^ (j14 >>> 54)) ^ (j14 >>> 49);
            j13 = (((jArr[r92 - 9] ^ (j14 << 5)) ^ (j14 << 7)) ^ (j14 << 10)) ^ (j14 << 15);
        }
        jArr2[1] = (((j13 ^ (j12 >>> 59)) ^ (j12 >>> 57)) ^ (j12 >>> 54)) ^ (j12 >>> 49);
        long j15 = (j12 << 15) ^ (((jArr[0] ^ (j12 << 5)) ^ (j12 << 7)) ^ (j12 << 10));
        long j16 = jArr2[8];
        long j17 = j16 >>> 59;
        jArr2[0] = (((j15 ^ j17) ^ (j17 << 2)) ^ (j17 << 5)) ^ (j17 << 10);
        jArr2[8] = M59 & j16;
    }

    public static void reduce5(long[] jArr, int r12) {
        int r02 = r12 + 8;
        long j10 = jArr[r02];
        long j11 = j10 >>> 59;
        jArr[r12] = ((j11 << 10) ^ (((j11 << 2) ^ j11) ^ (j11 << 5))) ^ jArr[r12];
        jArr[r02] = j10 & M59;
    }

    public static void sqrt(long[] jArr, long[] jArr2) {
        long[] jArrCreate64 = Nat576.create64();
        long[] jArrCreate642 = Nat576.create64();
        int r32 = 0;
        for (int r22 = 0; r22 < 4; r22++) {
            int r72 = r32 + 1;
            long jUnshuffle = Interleave.unshuffle(jArr[r32]);
            r32 = r72 + 1;
            long jUnshuffle2 = Interleave.unshuffle(jArr[r72]);
            jArrCreate64[r22] = (BodyPartID.bodyIdMax & jUnshuffle) | (jUnshuffle2 << 32);
            jArrCreate642[r22] = (jUnshuffle >>> 32) | ((-4294967296L) & jUnshuffle2);
        }
        long jUnshuffle3 = Interleave.unshuffle(jArr[r32]);
        jArrCreate64[4] = BodyPartID.bodyIdMax & jUnshuffle3;
        jArrCreate642[4] = jUnshuffle3 >>> 32;
        multiply(jArrCreate642, ROOT_Z, jArr2);
        add(jArr2, jArrCreate64, jArr2);
    }

    public static void square(long[] jArr, long[] jArr2) {
        long[] jArrCreateExt64 = Nat576.createExt64();
        implSquare(jArr, jArrCreateExt64);
        reduce(jArrCreateExt64, jArr2);
    }

    public static void squareAddToExt(long[] jArr, long[] jArr2) {
        long[] jArrCreateExt64 = Nat576.createExt64();
        implSquare(jArr, jArrCreateExt64);
        addExt(jArr2, jArrCreateExt64, jArr2);
    }

    public static void squareN(long[] jArr, int r22, long[] jArr2) {
        long[] jArrCreateExt64 = Nat576.createExt64();
        implSquare(jArr, jArrCreateExt64);
        while (true) {
            reduce(jArrCreateExt64, jArr2);
            r22--;
            if (r22 <= 0) {
                return;
            } else {
                implSquare(jArr2, jArrCreateExt64);
            }
        }
    }

    public static int trace(long[] jArr) {
        long j10 = jArr[0];
        long j11 = jArr[8];
        return ((int) ((j10 ^ (j11 >>> 49)) ^ (j11 >>> 57))) & 1;
    }
}
