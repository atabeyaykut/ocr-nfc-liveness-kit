package org.bouncycastle.math.ec.custom.sec;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.math.raw.Mod;
import org.bouncycastle.math.raw.Nat;
import org.bouncycastle.math.raw.Nat384;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
public class SecP384R1Field {
    private static final long M = 4294967295L;
    private static final int P11 = -1;
    private static final int PExt23 = -1;
    static final int[] P = {-1, 0, 0, -1, -2, -1, -1, -1, -1, -1, -1, -1};
    private static final int[] PExt = {1, -2, 0, 2, 0, -2, 0, 2, 1, 0, 0, 0, -2, 1, 0, -2, -3, -1, -1, -1, -1, -1, -1, -1};
    private static final int[] PExtInv = {-1, 1, -1, -3, -1, 1, -1, -3, -2, -1, -1, -1, 1, -2, -1, 1, 2};

    public static void add(int[] r12, int[] r22, int[] r32) {
        if (Nat.add(12, r12, r22, r32) != 0 || (r32[11] == -1 && Nat.gte(12, r32, P))) {
            addPInvTo(r32);
        }
    }

    public static void addExt(int[] r12, int[] r22, int[] r32) {
        if (Nat.add(24, r12, r22, r32) != 0 || (r32[23] == -1 && Nat.gte(24, r32, PExt))) {
            int[] r13 = PExtInv;
            if (Nat.addTo(r13.length, r13, r32) != 0) {
                Nat.incAt(24, r32, r13.length);
            }
        }
    }

    public static void addOne(int[] r22, int[] r32) {
        if (Nat.inc(12, r22, r32) != 0 || (r32[11] == -1 && Nat.gte(12, r32, P))) {
            addPInvTo(r32);
        }
    }

    private static void addPInvTo(int[] r12) {
        long j10 = (r12[0] & 4294967295L) + 1;
        r12[0] = (int) j10;
        long j11 = ((r12[1] & 4294967295L) - 1) + (j10 >> 32);
        r12[1] = (int) j11;
        long j12 = j11 >> 32;
        if (j12 != 0) {
            long j13 = j12 + (r12[2] & 4294967295L);
            r12[2] = (int) j13;
            j12 = j13 >> 32;
        }
        long j14 = (r12[3] & 4294967295L) + 1 + j12;
        r12[3] = (int) j14;
        long j15 = (4294967295L & r12[4]) + 1 + (j14 >> 32);
        r12[4] = (int) j15;
        if ((j15 >> 32) != 0) {
            Nat.incAt(12, r12, 5);
        }
    }

    public static int[] fromBigInteger(BigInteger bigInteger) {
        int[] r32 = Nat.fromBigInteger(KyberEngine.KyberPolyBytes, bigInteger);
        if (r32[11] == -1) {
            int[] r02 = P;
            if (Nat.gte(12, r32, r02)) {
                Nat.subFrom(12, r02, r32);
            }
        }
        return r32;
    }

    public static void half(int[] r32, int[] r42) {
        if ((r32[0] & 1) == 0) {
            Nat.shiftDownBit(12, r32, 0, r42);
        } else {
            Nat.shiftDownBit(12, r42, Nat.add(12, r32, P, r42));
        }
    }

    public static void inv(int[] r12, int[] r22) {
        Mod.checkedModOddInverse(P, r12, r22);
    }

    public static int isZero(int[] r32) {
        int r12 = 0;
        for (int r02 = 0; r02 < 12; r02++) {
            r12 |= r32[r02];
        }
        return (((r12 >>> 1) | (r12 & 1)) - 1) >> 31;
    }

    public static void multiply(int[] r12, int[] r22, int[] r32) {
        int[] r02 = Nat.create(24);
        Nat384.mul(r12, r22, r02);
        reduce(r02, r32);
    }

    public static void multiply(int[] r02, int[] r12, int[] r22, int[] r32) {
        Nat384.mul(r02, r12, r32);
        reduce(r32, r22);
    }

    public static void negate(int[] r22, int[] r32) {
        if (isZero(r22) == 0) {
            Nat.sub(12, P, r22, r32);
        } else {
            int[] r23 = P;
            Nat.sub(12, r23, r23, r32);
        }
    }

    public static void random(SecureRandom secureRandom, int[] r42) {
        byte[] bArr = new byte[48];
        do {
            secureRandom.nextBytes(bArr);
            Pack.littleEndianToInt(bArr, 0, r42, 0, 12);
        } while (Nat.lessThan(12, r42, P) == 0);
    }

    public static void randomMult(SecureRandom secureRandom, int[] r22) {
        do {
            random(secureRandom, r22);
        } while (isZero(r22) != 0);
    }

    public static void reduce(int[] r40, int[] r41) {
        long j10 = r40[16] & 4294967295L;
        long j11 = r40[17] & 4294967295L;
        long j12 = r40[18] & 4294967295L;
        long j13 = r40[19] & 4294967295L;
        long j14 = r40[20] & 4294967295L;
        long j15 = r40[21] & 4294967295L;
        long j16 = r40[22] & 4294967295L;
        long j17 = r40[23] & 4294967295L;
        long j18 = ((r40[12] & 4294967295L) + j14) - 1;
        long j19 = (r40[13] & 4294967295L) + j16;
        long j20 = (r40[14] & 4294967295L) + j16 + j17;
        long j21 = (r40[15] & 4294967295L) + j17;
        long j22 = j11 + j15;
        long j23 = j15 - j17;
        long j24 = j16 - j17;
        long j25 = j18 + j23;
        long j26 = (r40[0] & 4294967295L) + j25 + 0;
        r41[0] = (int) j26;
        long j27 = (((r40[1] & 4294967295L) + j17) - j18) + j19 + (j26 >> 32);
        r41[1] = (int) j27;
        long j28 = (((r40[2] & 4294967295L) - j15) - j19) + j20 + (j27 >> 32);
        r41[2] = (int) j28;
        long j29 = ((r40[3] & 4294967295L) - j20) + j21 + j25 + (j28 >> 32);
        r41[3] = (int) j29;
        long j30 = (((((r40[4] & 4294967295L) + j10) + j15) + j19) - j21) + j25 + (j29 >> 32);
        r41[4] = (int) j30;
        long j31 = ((r40[5] & 4294967295L) - j10) + j19 + j20 + j22 + (j30 >> 32);
        r41[5] = (int) j31;
        long j32 = (((r40[6] & 4294967295L) + j12) - j11) + j20 + j21 + (j31 >> 32);
        r41[6] = (int) j32;
        long j33 = ((((r40[7] & 4294967295L) + j10) + j13) - j12) + j21 + (j32 >> 32);
        r41[7] = (int) j33;
        long j34 = (((((r40[8] & 4294967295L) + j10) + j11) + j14) - j13) + (j33 >> 32);
        r41[8] = (int) j34;
        long j35 = (((r40[9] & 4294967295L) + j12) - j14) + j22 + (j34 >> 32);
        r41[9] = (int) j35;
        long j36 = ((((r40[10] & 4294967295L) + j12) + j13) - j23) + j24 + (j35 >> 32);
        r41[10] = (int) j36;
        long j37 = ((((r40[11] & 4294967295L) + j13) + j14) - j24) + (j36 >> 32);
        r41[11] = (int) j37;
        reduce32((int) ((j37 >> 32) + 1), r41);
    }

    public static void reduce32(int r11, int[] r12) {
        long j10;
        if (r11 != 0) {
            long j11 = r11 & 4294967295L;
            long j12 = (r12[0] & 4294967295L) + j11 + 0;
            r12[0] = (int) j12;
            long j13 = ((r12[1] & 4294967295L) - j11) + (j12 >> 32);
            r12[1] = (int) j13;
            long j14 = j13 >> 32;
            if (j14 != 0) {
                long j15 = j14 + (r12[2] & 4294967295L);
                r12[2] = (int) j15;
                j14 = j15 >> 32;
            }
            long j16 = (r12[3] & 4294967295L) + j11 + j14;
            r12[3] = (int) j16;
            long j17 = (4294967295L & r12[4]) + j11 + (j16 >> 32);
            r12[4] = (int) j17;
            j10 = j17 >> 32;
        } else {
            j10 = 0;
        }
        if ((j10 == 0 || Nat.incAt(12, r12, 5) == 0) && !(r12[11] == -1 && Nat.gte(12, r12, P))) {
            return;
        }
        addPInvTo(r12);
    }

    public static void square(int[] r12, int[] r22) {
        int[] r02 = Nat.create(24);
        Nat384.square(r12, r02);
        reduce(r02, r22);
    }

    public static void square(int[] r02, int[] r12, int[] r22) {
        Nat384.square(r02, r22);
        reduce(r22, r12);
    }

    public static void squareN(int[] r12, int r22, int[] r32) {
        int[] r02 = Nat.create(24);
        Nat384.square(r12, r02);
        while (true) {
            reduce(r02, r32);
            r22--;
            if (r22 <= 0) {
                return;
            } else {
                Nat384.square(r32, r02);
            }
        }
    }

    public static void squareN(int[] r02, int r12, int[] r22, int[] r32) {
        Nat384.square(r02, r32);
        while (true) {
            reduce(r32, r22);
            r12--;
            if (r12 <= 0) {
                return;
            } else {
                Nat384.square(r22, r32);
            }
        }
    }

    private static void subPInvFrom(int[] r12) {
        long j10 = (r12[0] & 4294967295L) - 1;
        r12[0] = (int) j10;
        long j11 = (r12[1] & 4294967295L) + 1 + (j10 >> 32);
        r12[1] = (int) j11;
        long j12 = j11 >> 32;
        if (j12 != 0) {
            long j13 = j12 + (r12[2] & 4294967295L);
            r12[2] = (int) j13;
            j12 = j13 >> 32;
        }
        long j14 = ((r12[3] & 4294967295L) - 1) + j12;
        r12[3] = (int) j14;
        long j15 = ((4294967295L & r12[4]) - 1) + (j14 >> 32);
        r12[4] = (int) j15;
        if ((j15 >> 32) != 0) {
            Nat.decAt(12, r12, 5);
        }
    }

    public static void subtract(int[] r12, int[] r22, int[] r32) {
        if (Nat.sub(12, r12, r22, r32) != 0) {
            subPInvFrom(r32);
        }
    }

    public static void subtractExt(int[] r12, int[] r22, int[] r32) {
        if (Nat.sub(24, r12, r22, r32) != 0) {
            int[] r13 = PExtInv;
            if (Nat.subFrom(r13.length, r13, r32) != 0) {
                Nat.decAt(24, r32, r13.length);
            }
        }
    }

    public static void twice(int[] r22, int[] r32) {
        if (Nat.shiftUpBit(12, r22, 0, r32) != 0 || (r32[11] == -1 && Nat.gte(12, r32, P))) {
            addPInvTo(r32);
        }
    }
}
