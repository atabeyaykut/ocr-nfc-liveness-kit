package org.bouncycastle.math.ec.custom.sec;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.math.raw.Mod;
import org.bouncycastle.math.raw.Nat;
import org.bouncycastle.math.raw.Nat192;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
public class SecP192R1Field {
    private static final long M = 4294967295L;
    private static final int P5 = -1;
    private static final int PExt11 = -1;
    static final int[] P = {-1, -1, -2, -1, -1, -1};
    private static final int[] PExt = {1, 0, 2, 0, 1, 0, -2, -1, -3, -1, -1, -1};
    private static final int[] PExtInv = {-1, -1, -3, -1, -2, -1, 1, 0, 2};

    public static void add(int[] r02, int[] r12, int[] r22) {
        if (Nat192.add(r02, r12, r22) != 0 || (r22[5] == -1 && Nat192.gte(r22, P))) {
            addPInvTo(r22);
        }
    }

    public static void addExt(int[] r12, int[] r22, int[] r32) {
        if (Nat.add(12, r12, r22, r32) != 0 || (r32[11] == -1 && Nat.gte(12, r32, PExt))) {
            int[] r13 = PExtInv;
            if (Nat.addTo(r13.length, r13, r32) != 0) {
                Nat.incAt(12, r32, r13.length);
            }
        }
    }

    public static void addOne(int[] r12, int[] r22) {
        if (Nat.inc(6, r12, r22) != 0 || (r22[5] == -1 && Nat192.gte(r22, P))) {
            addPInvTo(r22);
        }
    }

    private static void addPInvTo(int[] r12) {
        long j10 = (r12[0] & 4294967295L) + 1;
        r12[0] = (int) j10;
        long j11 = j10 >> 32;
        if (j11 != 0) {
            long j12 = j11 + (r12[1] & 4294967295L);
            r12[1] = (int) j12;
            j11 = j12 >> 32;
        }
        long j13 = (4294967295L & r12[2]) + 1 + j11;
        r12[2] = (int) j13;
        if ((j13 >> 32) != 0) {
            Nat.incAt(6, r12, 3);
        }
    }

    public static int[] fromBigInteger(BigInteger bigInteger) {
        int[] r22 = Nat192.fromBigInteger(bigInteger);
        if (r22[5] == -1) {
            int[] r02 = P;
            if (Nat192.gte(r22, r02)) {
                Nat192.subFrom(r02, r22);
            }
        }
        return r22;
    }

    public static void half(int[] r32, int[] r42) {
        if ((r32[0] & 1) == 0) {
            Nat.shiftDownBit(6, r32, 0, r42);
        } else {
            Nat.shiftDownBit(6, r42, Nat192.add(r32, P, r42));
        }
    }

    public static void inv(int[] r12, int[] r22) {
        Mod.checkedModOddInverse(P, r12, r22);
    }

    public static int isZero(int[] r32) {
        int r12 = 0;
        for (int r02 = 0; r02 < 6; r02++) {
            r12 |= r32[r02];
        }
        return (((r12 >>> 1) | (r12 & 1)) - 1) >> 31;
    }

    public static void multiply(int[] r12, int[] r22, int[] r32) {
        int[] r02 = Nat192.createExt();
        Nat192.mul(r12, r22, r02);
        reduce(r02, r32);
    }

    public static void multiplyAddToExt(int[] r12, int[] r22, int[] r32) {
        if (Nat192.mulAddTo(r12, r22, r32) != 0 || (r32[11] == -1 && Nat.gte(12, r32, PExt))) {
            int[] r13 = PExtInv;
            if (Nat.addTo(r13.length, r13, r32) != 0) {
                Nat.incAt(12, r32, r13.length);
            }
        }
    }

    public static void negate(int[] r12, int[] r22) {
        if (isZero(r12) == 0) {
            Nat192.sub(P, r12, r22);
        } else {
            int[] r13 = P;
            Nat192.sub(r13, r13, r22);
        }
    }

    public static void random(SecureRandom secureRandom, int[] r42) {
        byte[] bArr = new byte[24];
        do {
            secureRandom.nextBytes(bArr);
            Pack.littleEndianToInt(bArr, 0, r42, 0, 6);
        } while (Nat.lessThan(6, r42, P) == 0);
    }

    public static void randomMult(SecureRandom secureRandom, int[] r22) {
        do {
            random(secureRandom, r22);
        } while (isZero(r22) != 0);
    }

    public static void reduce(int[] r26, int[] r27) {
        long j10 = r26[6] & 4294967295L;
        long j11 = r26[7] & 4294967295L;
        long j12 = (r26[10] & 4294967295L) + j10;
        long j13 = (r26[11] & 4294967295L) + j11;
        long j14 = (r26[1] & 4294967295L) + j13 + ((((r26[0] & 4294967295L) + j12) + 0) >> 32);
        int r32 = (int) j14;
        r27[1] = r32;
        long j15 = j12 + (r26[8] & 4294967295L);
        long j16 = j13 + (r26[9] & 4294967295L);
        long j17 = (r26[2] & 4294967295L) + j15 + (j14 >> 32);
        long j18 = j17 & 4294967295L;
        long j19 = (r26[3] & 4294967295L) + j16 + (j17 >> 32);
        r27[3] = (int) j19;
        long j20 = (r26[4] & 4294967295L) + (j15 - j10) + (j19 >> 32);
        r27[4] = (int) j20;
        long j21 = (r26[5] & 4294967295L) + (j16 - j11) + (j20 >> 32);
        r27[5] = (int) j21;
        long j22 = j21 >> 32;
        long j23 = j18 + j22;
        long j24 = j22 + (((int) r6) & 4294967295L);
        r27[0] = (int) j24;
        long j25 = j24 >> 32;
        if (j25 != 0) {
            long j26 = j25 + (r32 & 4294967295L);
            r27[1] = (int) j26;
            j23 += j26 >> 32;
        }
        r27[2] = (int) j23;
        if (((j23 >> 32) == 0 || Nat.incAt(6, r27, 3) == 0) && !(r27[5] == -1 && Nat192.gte(r27, P))) {
            return;
        }
        addPInvTo(r27);
    }

    public static void reduce32(int r11, int[] r12) {
        long j10;
        if (r11 != 0) {
            long j11 = r11 & 4294967295L;
            long j12 = (r12[0] & 4294967295L) + j11 + 0;
            r12[0] = (int) j12;
            long j13 = j12 >> 32;
            if (j13 != 0) {
                long j14 = j13 + (r12[1] & 4294967295L);
                r12[1] = (int) j14;
                j13 = j14 >> 32;
            }
            long j15 = (4294967295L & r12[2]) + j11 + j13;
            r12[2] = (int) j15;
            j10 = j15 >> 32;
        } else {
            j10 = 0;
        }
        if ((j10 == 0 || Nat.incAt(6, r12, 3) == 0) && !(r12[5] == -1 && Nat192.gte(r12, P))) {
            return;
        }
        addPInvTo(r12);
    }

    public static void square(int[] r12, int[] r22) {
        int[] r02 = Nat192.createExt();
        Nat192.square(r12, r02);
        reduce(r02, r22);
    }

    public static void squareN(int[] r12, int r22, int[] r32) {
        int[] r02 = Nat192.createExt();
        Nat192.square(r12, r02);
        while (true) {
            reduce(r02, r32);
            r22--;
            if (r22 <= 0) {
                return;
            } else {
                Nat192.square(r32, r02);
            }
        }
    }

    private static void subPInvFrom(int[] r12) {
        long j10 = (r12[0] & 4294967295L) - 1;
        r12[0] = (int) j10;
        long j11 = j10 >> 32;
        if (j11 != 0) {
            long j12 = j11 + (r12[1] & 4294967295L);
            r12[1] = (int) j12;
            j11 = j12 >> 32;
        }
        long j13 = ((4294967295L & r12[2]) - 1) + j11;
        r12[2] = (int) j13;
        if ((j13 >> 32) != 0) {
            Nat.decAt(6, r12, 3);
        }
    }

    public static void subtract(int[] r02, int[] r12, int[] r22) {
        if (Nat192.sub(r02, r12, r22) != 0) {
            subPInvFrom(r22);
        }
    }

    public static void subtractExt(int[] r12, int[] r22, int[] r32) {
        if (Nat.sub(12, r12, r22, r32) != 0) {
            int[] r13 = PExtInv;
            if (Nat.subFrom(r13.length, r13, r32) != 0) {
                Nat.decAt(12, r32, r13.length);
            }
        }
    }

    public static void twice(int[] r22, int[] r32) {
        if (Nat.shiftUpBit(6, r22, 0, r32) != 0 || (r32[5] == -1 && Nat192.gte(r32, P))) {
            addPInvTo(r32);
        }
    }
}
