package org.bouncycastle.math.ec.custom.djb;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.math.raw.Mod;
import org.bouncycastle.math.raw.Nat;
import org.bouncycastle.math.raw.Nat256;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
public class Curve25519Field {
    private static final long M = 4294967295L;
    private static final int P7 = Integer.MAX_VALUE;
    private static final int PInv = 19;
    static final int[] P = {-19, -1, -1, -1, -1, -1, -1, Integer.MAX_VALUE};
    private static final int[] PExt = {361, 0, 0, 0, 0, 0, 0, 0, -19, -1, -1, -1, -1, -1, -1, 1073741823};

    public static void add(int[] r02, int[] r12, int[] r22) {
        Nat256.add(r02, r12, r22);
        if (Nat256.gte(r22, P)) {
            subPFrom(r22);
        }
    }

    public static void addExt(int[] r12, int[] r22, int[] r32) {
        Nat.add(16, r12, r22, r32);
        if (Nat.gte(16, r32, PExt)) {
            subPExtFrom(r32);
        }
    }

    public static void addOne(int[] r12, int[] r22) {
        Nat.inc(8, r12, r22);
        if (Nat256.gte(r22, P)) {
            subPFrom(r22);
        }
    }

    private static int addPExtTo(int[] r14) {
        int[] r52 = PExt;
        long j10 = (r14[0] & 4294967295L) + (r52[0] & 4294967295L);
        r14[0] = (int) j10;
        long jIncAt = j10 >> 32;
        if (jIncAt != 0) {
            jIncAt = Nat.incAt(8, r14, 1);
        }
        long j11 = ((r14[8] & 4294967295L) - 19) + jIncAt;
        r14[8] = (int) j11;
        long jDecAt = j11 >> 32;
        if (jDecAt != 0) {
            jDecAt = Nat.decAt(15, r14, 9);
        }
        long j12 = (r14[15] & 4294967295L) + (4294967295L & (r52[15] + 1)) + jDecAt;
        r14[15] = (int) j12;
        return (int) (j12 >> 32);
    }

    private static int addPTo(int[] r92) {
        long j10 = (r92[0] & 4294967295L) - 19;
        r92[0] = (int) j10;
        long jDecAt = j10 >> 32;
        if (jDecAt != 0) {
            jDecAt = Nat.decAt(7, r92, 1);
        }
        long j11 = (4294967295L & r92[7]) + 2147483648L + jDecAt;
        r92[7] = (int) j11;
        return (int) (j11 >> 32);
    }

    public static int[] fromBigInteger(BigInteger bigInteger) {
        int[] r22 = Nat256.fromBigInteger(bigInteger);
        while (true) {
            int[] r02 = P;
            if (!Nat256.gte(r22, r02)) {
                return r22;
            }
            Nat256.subFrom(r02, r22);
        }
    }

    public static void half(int[] r32, int[] r42) {
        if ((r32[0] & 1) == 0) {
            Nat.shiftDownBit(8, r32, 0, r42);
        } else {
            Nat256.add(r32, P, r42);
            Nat.shiftDownBit(8, r42, 0);
        }
    }

    public static void inv(int[] r12, int[] r22) {
        Mod.checkedModOddInverse(P, r12, r22);
    }

    public static int isZero(int[] r32) {
        int r12 = 0;
        for (int r02 = 0; r02 < 8; r02++) {
            r12 |= r32[r02];
        }
        return (((r12 >>> 1) | (r12 & 1)) - 1) >> 31;
    }

    public static void multiply(int[] r12, int[] r22, int[] r32) {
        int[] r02 = Nat256.createExt();
        Nat256.mul(r12, r22, r02);
        reduce(r02, r32);
    }

    public static void multiplyAddToExt(int[] r02, int[] r12, int[] r22) {
        Nat256.mulAddTo(r02, r12, r22);
        if (Nat.gte(16, r22, PExt)) {
            subPExtFrom(r22);
        }
    }

    public static void negate(int[] r12, int[] r22) {
        if (isZero(r12) == 0) {
            Nat256.sub(P, r12, r22);
        } else {
            int[] r13 = P;
            Nat256.sub(r13, r13, r22);
        }
    }

    public static void random(SecureRandom secureRandom, int[] r6) {
        byte[] bArr = new byte[32];
        do {
            secureRandom.nextBytes(bArr);
            Pack.littleEndianToInt(bArr, 0, r6, 0, 8);
            r6[7] = r6[7] & Integer.MAX_VALUE;
        } while (Nat.lessThan(8, r6, P) == 0);
    }

    public static void randomMult(SecureRandom secureRandom, int[] r22) {
        do {
            random(secureRandom, r22);
        } while (isZero(r22) != 0);
    }

    public static void reduce(int[] r82, int[] r92) {
        int r72 = r82[7];
        Nat.shiftUpBit(8, r82, 8, r72, r92, 0);
        int r83 = Nat256.mulByWordAddTo(19, r82, r92) << 1;
        int r22 = r92[7];
        r92[7] = Nat.addWordTo(7, (((r22 >>> 31) - (r72 >>> 31)) + r83) * 19, r92) + (Integer.MAX_VALUE & r22);
        if (Nat256.gte(r92, P)) {
            subPFrom(r92);
        }
    }

    public static void reduce27(int r32, int[] r42) {
        int r12 = r42[7];
        r42[7] = Nat.addWordTo(7, ((r32 << 1) | (r12 >>> 31)) * 19, r42) + (r12 & Integer.MAX_VALUE);
        if (Nat256.gte(r42, P)) {
            subPFrom(r42);
        }
    }

    public static void square(int[] r12, int[] r22) {
        int[] r02 = Nat256.createExt();
        Nat256.square(r12, r02);
        reduce(r02, r22);
    }

    public static void squareN(int[] r12, int r22, int[] r32) {
        int[] r02 = Nat256.createExt();
        Nat256.square(r12, r02);
        while (true) {
            reduce(r02, r32);
            r22--;
            if (r22 <= 0) {
                return;
            } else {
                Nat256.square(r32, r02);
            }
        }
    }

    private static int subPExtFrom(int[] r14) {
        int[] r52 = PExt;
        long j10 = (r14[0] & 4294967295L) - (r52[0] & 4294967295L);
        r14[0] = (int) j10;
        long jDecAt = j10 >> 32;
        if (jDecAt != 0) {
            jDecAt = Nat.decAt(8, r14, 1);
        }
        long j11 = (r14[8] & 4294967295L) + 19 + jDecAt;
        r14[8] = (int) j11;
        long jIncAt = j11 >> 32;
        if (jIncAt != 0) {
            jIncAt = Nat.incAt(15, r14, 9);
        }
        long j12 = ((r14[15] & 4294967295L) - (4294967295L & (r52[15] + 1))) + jIncAt;
        r14[15] = (int) j12;
        return (int) (j12 >> 32);
    }

    private static int subPFrom(int[] r92) {
        long j10 = (r92[0] & 4294967295L) + 19;
        r92[0] = (int) j10;
        long jIncAt = j10 >> 32;
        if (jIncAt != 0) {
            jIncAt = Nat.incAt(7, r92, 1);
        }
        long j11 = ((4294967295L & r92[7]) - 2147483648L) + jIncAt;
        r92[7] = (int) j11;
        return (int) (j11 >> 32);
    }

    public static void subtract(int[] r02, int[] r12, int[] r22) {
        if (Nat256.sub(r02, r12, r22) != 0) {
            addPTo(r22);
        }
    }

    public static void subtractExt(int[] r12, int[] r22, int[] r32) {
        if (Nat.sub(16, r12, r22, r32) != 0) {
            addPExtTo(r32);
        }
    }

    public static void twice(int[] r22, int[] r32) {
        Nat.shiftUpBit(8, r22, 0, r32);
        if (Nat256.gte(r32, P)) {
            subPFrom(r32);
        }
    }
}
