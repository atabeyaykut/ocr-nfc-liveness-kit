package org.bouncycastle.math.ec.custom.sec;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.math.raw.Mod;
import org.bouncycastle.math.raw.Nat;
import org.bouncycastle.math.raw.Nat128;
import org.bouncycastle.math.raw.Nat256;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
public class SecP128R1Field {
    private static final long M = 4294967295L;
    private static final int P3s1 = 2147483646;
    private static final int PExt7s1 = 2147483646;
    static final int[] P = {-1, -1, -1, -3};
    private static final int[] PExt = {1, 0, 0, 4, -2, -1, 3, -4};
    private static final int[] PExtInv = {-1, -1, -1, -5, 1, 0, -4, 3};

    public static void add(int[] r02, int[] r12, int[] r22) {
        if (Nat128.add(r02, r12, r22) != 0 || ((r22[3] >>> 1) >= 2147483646 && Nat128.gte(r22, P))) {
            addPInvTo(r22);
        }
    }

    public static void addExt(int[] r02, int[] r12, int[] r22) {
        if (Nat256.add(r02, r12, r22) != 0 || ((r22[7] >>> 1) >= 2147483646 && Nat256.gte(r22, PExt))) {
            int[] r03 = PExtInv;
            Nat.addTo(r03.length, r03, r22);
        }
    }

    public static void addOne(int[] r12, int[] r22) {
        if (Nat.inc(4, r12, r22) != 0 || ((r22[3] >>> 1) >= 2147483646 && Nat128.gte(r22, P))) {
            addPInvTo(r22);
        }
    }

    private static void addPInvTo(int[] r82) {
        long j10 = (r82[0] & 4294967295L) + 1;
        r82[0] = (int) j10;
        long j11 = j10 >> 32;
        if (j11 != 0) {
            long j12 = j11 + (r82[1] & 4294967295L);
            r82[1] = (int) j12;
            long j13 = (j12 >> 32) + (r82[2] & 4294967295L);
            r82[2] = (int) j13;
            j11 = j13 >> 32;
        }
        r82[3] = (int) ((4294967295L & r82[3]) + 2 + j11);
    }

    public static int[] fromBigInteger(BigInteger bigInteger) {
        int[] r22 = Nat128.fromBigInteger(bigInteger);
        if ((r22[3] >>> 1) >= 2147483646) {
            int[] r02 = P;
            if (Nat128.gte(r22, r02)) {
                Nat128.subFrom(r02, r22);
            }
        }
        return r22;
    }

    public static void half(int[] r32, int[] r42) {
        if ((r32[0] & 1) == 0) {
            Nat.shiftDownBit(4, r32, 0, r42);
        } else {
            Nat.shiftDownBit(4, r42, Nat128.add(r32, P, r42));
        }
    }

    public static void inv(int[] r12, int[] r22) {
        Mod.checkedModOddInverse(P, r12, r22);
    }

    public static int isZero(int[] r32) {
        int r12 = 0;
        for (int r02 = 0; r02 < 4; r02++) {
            r12 |= r32[r02];
        }
        return (((r12 >>> 1) | (r12 & 1)) - 1) >> 31;
    }

    public static void multiply(int[] r12, int[] r22, int[] r32) {
        int[] r02 = Nat128.createExt();
        Nat128.mul(r12, r22, r02);
        reduce(r02, r32);
    }

    public static void multiplyAddToExt(int[] r02, int[] r12, int[] r22) {
        if (Nat128.mulAddTo(r02, r12, r22) != 0 || ((r22[7] >>> 1) >= 2147483646 && Nat256.gte(r22, PExt))) {
            int[] r03 = PExtInv;
            Nat.addTo(r03.length, r03, r22);
        }
    }

    public static void negate(int[] r12, int[] r22) {
        if (isZero(r12) == 0) {
            Nat128.sub(P, r12, r22);
        } else {
            int[] r13 = P;
            Nat128.sub(r13, r13, r22);
        }
    }

    public static void random(SecureRandom secureRandom, int[] r42) {
        byte[] bArr = new byte[16];
        do {
            secureRandom.nextBytes(bArr);
            Pack.littleEndianToInt(bArr, 0, r42, 0, 4);
        } while (Nat.lessThan(4, r42, P) == 0);
    }

    public static void randomMult(SecureRandom secureRandom, int[] r22) {
        do {
            random(secureRandom, r22);
        } while (isZero(r22) != 0);
    }

    public static void reduce(int[] r22, int[] r23) {
        long j10 = r22[7] & 4294967295L;
        long j11 = (r22[3] & 4294967295L) + j10;
        long j12 = (r22[6] & 4294967295L) + (j10 << 1);
        long j13 = (r22[2] & 4294967295L) + j12;
        long j14 = (r22[5] & 4294967295L) + (j12 << 1);
        long j15 = (r22[1] & 4294967295L) + j14;
        long j16 = (r22[4] & 4294967295L) + (j14 << 1);
        long j17 = (r22[0] & 4294967295L) + j16;
        r23[0] = (int) j17;
        long j18 = j15 + (j17 >>> 32);
        r23[1] = (int) j18;
        long j19 = j13 + (j18 >>> 32);
        r23[2] = (int) j19;
        long j20 = j11 + (j16 << 1) + (j19 >>> 32);
        r23[3] = (int) j20;
        reduce32((int) (j20 >>> 32), r23);
    }

    public static void reduce32(int r11, int[] r12) {
        while (r11 != 0) {
            long j10 = r11 & 4294967295L;
            long j11 = (r12[0] & 4294967295L) + j10;
            r12[0] = (int) j11;
            long j12 = j11 >> 32;
            if (j12 != 0) {
                long j13 = j12 + (r12[1] & 4294967295L);
                r12[1] = (int) j13;
                long j14 = (j13 >> 32) + (r12[2] & 4294967295L);
                r12[2] = (int) j14;
                j12 = j14 >> 32;
            }
            long j15 = (4294967295L & r12[3]) + (j10 << 1) + j12;
            r12[3] = (int) j15;
            r11 = (int) (j15 >> 32);
        }
        if ((r12[3] >>> 1) < 2147483646 || !Nat128.gte(r12, P)) {
            return;
        }
        addPInvTo(r12);
    }

    public static void square(int[] r12, int[] r22) {
        int[] r02 = Nat128.createExt();
        Nat128.square(r12, r02);
        reduce(r02, r22);
    }

    public static void squareN(int[] r12, int r22, int[] r32) {
        int[] r02 = Nat128.createExt();
        Nat128.square(r12, r02);
        while (true) {
            reduce(r02, r32);
            r22--;
            if (r22 <= 0) {
                return;
            } else {
                Nat128.square(r32, r02);
            }
        }
    }

    private static void subPInvFrom(int[] r82) {
        long j10 = (r82[0] & 4294967295L) - 1;
        r82[0] = (int) j10;
        long j11 = j10 >> 32;
        if (j11 != 0) {
            long j12 = j11 + (r82[1] & 4294967295L);
            r82[1] = (int) j12;
            long j13 = (j12 >> 32) + (r82[2] & 4294967295L);
            r82[2] = (int) j13;
            j11 = j13 >> 32;
        }
        r82[3] = (int) (((4294967295L & r82[3]) - 2) + j11);
    }

    public static void subtract(int[] r02, int[] r12, int[] r22) {
        if (Nat128.sub(r02, r12, r22) != 0) {
            subPInvFrom(r22);
        }
    }

    public static void subtractExt(int[] r12, int[] r22, int[] r32) {
        if (Nat.sub(10, r12, r22, r32) != 0) {
            int[] r13 = PExtInv;
            Nat.subFrom(r13.length, r13, r32);
        }
    }

    public static void twice(int[] r22, int[] r32) {
        if (Nat.shiftUpBit(4, r22, 0, r32) != 0 || ((r32[3] >>> 1) >= 2147483646 && Nat128.gte(r32, P))) {
            addPInvTo(r32);
        }
    }
}
