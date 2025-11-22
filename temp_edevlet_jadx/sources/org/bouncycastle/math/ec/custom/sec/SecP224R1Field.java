package org.bouncycastle.math.ec.custom.sec;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.math.raw.Mod;
import org.bouncycastle.math.raw.Nat;
import org.bouncycastle.math.raw.Nat224;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
public class SecP224R1Field {
    private static final long M = 4294967295L;
    private static final int P6 = -1;
    private static final int PExt13 = -1;
    static final int[] P = {1, 0, 0, -1, -1, -1, -1};
    private static final int[] PExt = {1, 0, 0, -2, -1, -1, 0, 2, 0, 0, -2, -1, -1, -1};
    private static final int[] PExtInv = {-1, -1, -1, 1, 0, 0, -1, -3, -1, -1, 1};

    public static void add(int[] r02, int[] r12, int[] r22) {
        if (Nat224.add(r02, r12, r22) != 0 || (r22[6] == -1 && Nat224.gte(r22, P))) {
            addPInvTo(r22);
        }
    }

    public static void addExt(int[] r12, int[] r22, int[] r32) {
        if (Nat.add(14, r12, r22, r32) != 0 || (r32[13] == -1 && Nat.gte(14, r32, PExt))) {
            int[] r13 = PExtInv;
            if (Nat.addTo(r13.length, r13, r32) != 0) {
                Nat.incAt(14, r32, r13.length);
            }
        }
    }

    public static void addOne(int[] r12, int[] r22) {
        if (Nat.inc(7, r12, r22) != 0 || (r22[6] == -1 && Nat224.gte(r22, P))) {
            addPInvTo(r22);
        }
    }

    private static void addPInvTo(int[] r12) {
        long j10 = (r12[0] & 4294967295L) - 1;
        r12[0] = (int) j10;
        long j11 = j10 >> 32;
        if (j11 != 0) {
            long j12 = j11 + (r12[1] & 4294967295L);
            r12[1] = (int) j12;
            long j13 = (j12 >> 32) + (r12[2] & 4294967295L);
            r12[2] = (int) j13;
            j11 = j13 >> 32;
        }
        long j14 = (4294967295L & r12[3]) + 1 + j11;
        r12[3] = (int) j14;
        if ((j14 >> 32) != 0) {
            Nat.incAt(7, r12, 4);
        }
    }

    public static int[] fromBigInteger(BigInteger bigInteger) {
        int[] r22 = Nat224.fromBigInteger(bigInteger);
        if (r22[6] == -1) {
            int[] r02 = P;
            if (Nat224.gte(r22, r02)) {
                Nat224.subFrom(r02, r22);
            }
        }
        return r22;
    }

    public static void half(int[] r32, int[] r42) {
        if ((r32[0] & 1) == 0) {
            Nat.shiftDownBit(7, r32, 0, r42);
        } else {
            Nat.shiftDownBit(7, r42, Nat224.add(r32, P, r42));
        }
    }

    public static void inv(int[] r12, int[] r22) {
        Mod.checkedModOddInverse(P, r12, r22);
    }

    public static int isZero(int[] r32) {
        int r12 = 0;
        for (int r02 = 0; r02 < 7; r02++) {
            r12 |= r32[r02];
        }
        return (((r12 >>> 1) | (r12 & 1)) - 1) >> 31;
    }

    public static void multiply(int[] r12, int[] r22, int[] r32) {
        int[] r02 = Nat224.createExt();
        Nat224.mul(r12, r22, r02);
        reduce(r02, r32);
    }

    public static void multiplyAddToExt(int[] r12, int[] r22, int[] r32) {
        if (Nat224.mulAddTo(r12, r22, r32) != 0 || (r32[13] == -1 && Nat.gte(14, r32, PExt))) {
            int[] r13 = PExtInv;
            if (Nat.addTo(r13.length, r13, r32) != 0) {
                Nat.incAt(14, r32, r13.length);
            }
        }
    }

    public static void negate(int[] r12, int[] r22) {
        if (isZero(r12) == 0) {
            Nat224.sub(P, r12, r22);
        } else {
            int[] r13 = P;
            Nat224.sub(r13, r13, r22);
        }
    }

    public static void random(SecureRandom secureRandom, int[] r42) {
        byte[] bArr = new byte[28];
        do {
            secureRandom.nextBytes(bArr);
            Pack.littleEndianToInt(bArr, 0, r42, 0, 7);
        } while (Nat.lessThan(7, r42, P) == 0);
    }

    public static void randomMult(SecureRandom secureRandom, int[] r22) {
        do {
            random(secureRandom, r22);
        } while (isZero(r22) != 0);
    }

    public static void reduce(int[] r31, int[] r32) {
        long j10 = r31[10] & 4294967295L;
        long j11 = r31[11] & 4294967295L;
        long j12 = r31[12] & 4294967295L;
        long j13 = r31[13] & 4294967295L;
        long j14 = ((r31[7] & 4294967295L) + j11) - 1;
        long j15 = (r31[8] & 4294967295L) + j12;
        long j16 = (r31[9] & 4294967295L) + j13;
        long j17 = ((r31[0] & 4294967295L) - j14) + 0;
        long j18 = j17 & 4294967295L;
        long j19 = ((r31[1] & 4294967295L) - j15) + (j17 >> 32);
        int r92 = (int) j19;
        r32[1] = r92;
        long j20 = ((r31[2] & 4294967295L) - j16) + (j19 >> 32);
        int r52 = (int) j20;
        r32[2] = r52;
        long j21 = (((r31[3] & 4294967295L) + j14) - j10) + (j20 >> 32);
        long j22 = (((r31[4] & 4294967295L) + j15) - j11) + (j21 >> 32);
        r32[4] = (int) j22;
        long j23 = (((r31[5] & 4294967295L) + j16) - j12) + (j22 >> 32);
        r32[5] = (int) j23;
        long j24 = (((r31[6] & 4294967295L) + j10) - j13) + (j23 >> 32);
        r32[6] = (int) j24;
        long j25 = (j24 >> 32) + 1;
        long j26 = (j21 & 4294967295L) + j25;
        long j27 = j18 - j25;
        r32[0] = (int) j27;
        long j28 = j27 >> 32;
        if (j28 != 0) {
            long j29 = j28 + (r92 & 4294967295L);
            r32[1] = (int) j29;
            long j30 = (j29 >> 32) + (4294967295L & r52);
            r32[2] = (int) j30;
            j26 += j30 >> 32;
        }
        r32[3] = (int) j26;
        if (((j26 >> 32) == 0 || Nat.incAt(7, r32, 4) == 0) && !(r32[6] == -1 && Nat224.gte(r32, P))) {
            return;
        }
        addPInvTo(r32);
    }

    public static void reduce32(int r11, int[] r12) {
        long j10;
        if (r11 != 0) {
            long j11 = r11 & 4294967295L;
            long j12 = ((r12[0] & 4294967295L) - j11) + 0;
            r12[0] = (int) j12;
            long j13 = j12 >> 32;
            if (j13 != 0) {
                long j14 = j13 + (r12[1] & 4294967295L);
                r12[1] = (int) j14;
                long j15 = (j14 >> 32) + (r12[2] & 4294967295L);
                r12[2] = (int) j15;
                j13 = j15 >> 32;
            }
            long j16 = (4294967295L & r12[3]) + j11 + j13;
            r12[3] = (int) j16;
            j10 = j16 >> 32;
        } else {
            j10 = 0;
        }
        if ((j10 == 0 || Nat.incAt(7, r12, 4) == 0) && !(r12[6] == -1 && Nat224.gte(r12, P))) {
            return;
        }
        addPInvTo(r12);
    }

    public static void square(int[] r12, int[] r22) {
        int[] r02 = Nat224.createExt();
        Nat224.square(r12, r02);
        reduce(r02, r22);
    }

    public static void squareN(int[] r12, int r22, int[] r32) {
        int[] r02 = Nat224.createExt();
        Nat224.square(r12, r02);
        while (true) {
            reduce(r02, r32);
            r22--;
            if (r22 <= 0) {
                return;
            } else {
                Nat224.square(r32, r02);
            }
        }
    }

    private static void subPInvFrom(int[] r12) {
        long j10 = (r12[0] & 4294967295L) + 1;
        r12[0] = (int) j10;
        long j11 = j10 >> 32;
        if (j11 != 0) {
            long j12 = j11 + (r12[1] & 4294967295L);
            r12[1] = (int) j12;
            long j13 = (j12 >> 32) + (r12[2] & 4294967295L);
            r12[2] = (int) j13;
            j11 = j13 >> 32;
        }
        long j14 = ((4294967295L & r12[3]) - 1) + j11;
        r12[3] = (int) j14;
        if ((j14 >> 32) != 0) {
            Nat.decAt(7, r12, 4);
        }
    }

    public static void subtract(int[] r02, int[] r12, int[] r22) {
        if (Nat224.sub(r02, r12, r22) != 0) {
            subPInvFrom(r22);
        }
    }

    public static void subtractExt(int[] r12, int[] r22, int[] r32) {
        if (Nat.sub(14, r12, r22, r32) != 0) {
            int[] r13 = PExtInv;
            if (Nat.subFrom(r13.length, r13, r32) != 0) {
                Nat.decAt(14, r32, r13.length);
            }
        }
    }

    public static void twice(int[] r22, int[] r32) {
        if (Nat.shiftUpBit(7, r22, 0, r32) != 0 || (r32[6] == -1 && Nat224.gte(r32, P))) {
            addPInvTo(r32);
        }
    }
}
