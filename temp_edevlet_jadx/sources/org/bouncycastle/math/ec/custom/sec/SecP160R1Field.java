package org.bouncycastle.math.ec.custom.sec;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.math.raw.Mod;
import org.bouncycastle.math.raw.Nat;
import org.bouncycastle.math.raw.Nat160;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
public class SecP160R1Field {
    private static final long M = 4294967295L;
    private static final int P4 = -1;
    private static final int PExt9 = -1;
    private static final int PInv = -2147483647;
    static final int[] P = {Integer.MAX_VALUE, -1, -1, -1, -1};
    private static final int[] PExt = {1, 1073741825, 0, 0, 0, -2, -2, -1, -1, -1};
    private static final int[] PExtInv = {-1, -1073741826, -1, -1, -1, 1, 1};

    public static void add(int[] r02, int[] r12, int[] r22) {
        if (Nat160.add(r02, r12, r22) != 0 || (r22[4] == -1 && Nat160.gte(r22, P))) {
            Nat.addWordTo(5, PInv, r22);
        }
    }

    public static void addExt(int[] r12, int[] r22, int[] r32) {
        if (Nat.add(10, r12, r22, r32) != 0 || (r32[9] == -1 && Nat.gte(10, r32, PExt))) {
            int[] r13 = PExtInv;
            if (Nat.addTo(r13.length, r13, r32) != 0) {
                Nat.incAt(10, r32, r13.length);
            }
        }
    }

    public static void addOne(int[] r22, int[] r32) {
        if (Nat.inc(5, r22, r32) != 0 || (r32[4] == -1 && Nat160.gte(r32, P))) {
            Nat.addWordTo(5, PInv, r32);
        }
    }

    public static int[] fromBigInteger(BigInteger bigInteger) {
        int[] r22 = Nat160.fromBigInteger(bigInteger);
        if (r22[4] == -1) {
            int[] r02 = P;
            if (Nat160.gte(r22, r02)) {
                Nat160.subFrom(r02, r22);
            }
        }
        return r22;
    }

    public static void half(int[] r32, int[] r42) {
        if ((r32[0] & 1) == 0) {
            Nat.shiftDownBit(5, r32, 0, r42);
        } else {
            Nat.shiftDownBit(5, r42, Nat160.add(r32, P, r42));
        }
    }

    public static void inv(int[] r12, int[] r22) {
        Mod.checkedModOddInverse(P, r12, r22);
    }

    public static int isZero(int[] r32) {
        int r12 = 0;
        for (int r02 = 0; r02 < 5; r02++) {
            r12 |= r32[r02];
        }
        return (((r12 >>> 1) | (r12 & 1)) - 1) >> 31;
    }

    public static void multiply(int[] r12, int[] r22, int[] r32) {
        int[] r02 = Nat160.createExt();
        Nat160.mul(r12, r22, r02);
        reduce(r02, r32);
    }

    public static void multiplyAddToExt(int[] r12, int[] r22, int[] r32) {
        if (Nat160.mulAddTo(r12, r22, r32) != 0 || (r32[9] == -1 && Nat.gte(10, r32, PExt))) {
            int[] r13 = PExtInv;
            if (Nat.addTo(r13.length, r13, r32) != 0) {
                Nat.incAt(10, r32, r13.length);
            }
        }
    }

    public static void negate(int[] r12, int[] r22) {
        if (isZero(r12) == 0) {
            Nat160.sub(P, r12, r22);
        } else {
            int[] r13 = P;
            Nat160.sub(r13, r13, r22);
        }
    }

    public static void random(SecureRandom secureRandom, int[] r42) {
        byte[] bArr = new byte[20];
        do {
            secureRandom.nextBytes(bArr);
            Pack.littleEndianToInt(bArr, 0, r42, 0, 5);
        } while (Nat.lessThan(5, r42, P) == 0);
    }

    public static void randomMult(SecureRandom secureRandom, int[] r22) {
        do {
            random(secureRandom, r22);
        } while (isZero(r22) != 0);
    }

    public static void reduce(int[] r17, int[] r18) {
        long j10 = r17[5] & 4294967295L;
        long j11 = r17[6] & 4294967295L;
        long j12 = r17[7] & 4294967295L;
        long j13 = r17[8] & 4294967295L;
        long j14 = r17[9] & 4294967295L;
        long j15 = (r17[0] & 4294967295L) + j10 + (j10 << 31) + 0;
        r18[0] = (int) j15;
        long j16 = (r17[1] & 4294967295L) + j11 + (j11 << 31) + (j15 >>> 32);
        r18[1] = (int) j16;
        long j17 = (r17[2] & 4294967295L) + j12 + (j12 << 31) + (j16 >>> 32);
        r18[2] = (int) j17;
        long j18 = (r17[3] & 4294967295L) + j13 + (j13 << 31) + (j17 >>> 32);
        r18[3] = (int) j18;
        long j19 = (4294967295L & r17[4]) + j14 + (j14 << 31) + (j18 >>> 32);
        r18[4] = (int) j19;
        reduce32((int) (j19 >>> 32), r18);
    }

    public static void reduce32(int r22, int[] r32) {
        if ((r22 == 0 || Nat160.mulWordsAdd(PInv, r22, r32, 0) == 0) && !(r32[4] == -1 && Nat160.gte(r32, P))) {
            return;
        }
        Nat.addWordTo(5, PInv, r32);
    }

    public static void square(int[] r12, int[] r22) {
        int[] r02 = Nat160.createExt();
        Nat160.square(r12, r02);
        reduce(r02, r22);
    }

    public static void squareN(int[] r12, int r22, int[] r32) {
        int[] r02 = Nat160.createExt();
        Nat160.square(r12, r02);
        while (true) {
            reduce(r02, r32);
            r22--;
            if (r22 <= 0) {
                return;
            } else {
                Nat160.square(r32, r02);
            }
        }
    }

    public static void subtract(int[] r02, int[] r12, int[] r22) {
        if (Nat160.sub(r02, r12, r22) != 0) {
            Nat.subWordFrom(5, PInv, r22);
        }
    }

    public static void subtractExt(int[] r12, int[] r22, int[] r32) {
        if (Nat.sub(10, r12, r22, r32) != 0) {
            int[] r13 = PExtInv;
            if (Nat.subFrom(r13.length, r13, r32) != 0) {
                Nat.decAt(10, r32, r13.length);
            }
        }
    }

    public static void twice(int[] r22, int[] r32) {
        if (Nat.shiftUpBit(5, r22, 0, r32) != 0 || (r32[4] == -1 && Nat160.gte(r32, P))) {
            Nat.addWordTo(5, PInv, r32);
        }
    }
}
