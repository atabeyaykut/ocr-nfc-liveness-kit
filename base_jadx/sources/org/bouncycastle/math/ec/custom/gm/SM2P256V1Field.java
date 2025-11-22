package org.bouncycastle.math.ec.custom.gm;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.math.raw.Mod;
import org.bouncycastle.math.raw.Nat;
import org.bouncycastle.math.raw.Nat256;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
public class SM2P256V1Field {
    private static final long M = 4294967295L;
    private static final int P7s1 = Integer.MAX_VALUE;
    private static final int PExt15s1 = Integer.MAX_VALUE;
    static final int[] P = {-1, -1, 0, -1, -1, -1, -1, -2};
    private static final int[] PExt = {1, 0, -2, 1, 1, -2, 0, 2, -2, -3, 3, -2, -1, -1, 0, -2};

    public static void add(int[] r02, int[] r12, int[] r22) {
        if (Nat256.add(r02, r12, r22) != 0 || ((r22[7] >>> 1) >= Integer.MAX_VALUE && Nat256.gte(r22, P))) {
            addPInvTo(r22);
        }
    }

    public static void addExt(int[] r12, int[] r22, int[] r32) {
        if (Nat.add(16, r12, r22, r32) != 0 || ((r32[15] >>> 1) >= Integer.MAX_VALUE && Nat.gte(16, r32, PExt))) {
            Nat.subFrom(16, PExt, r32);
        }
    }

    public static void addOne(int[] r12, int[] r22) {
        if (Nat.inc(8, r12, r22) != 0 || ((r22[7] >>> 1) >= Integer.MAX_VALUE && Nat256.gte(r22, P))) {
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
        long j13 = ((r12[2] & 4294967295L) - 1) + j11;
        r12[2] = (int) j13;
        long j14 = (r12[3] & 4294967295L) + 1 + (j13 >> 32);
        r12[3] = (int) j14;
        long j15 = j14 >> 32;
        if (j15 != 0) {
            long j16 = j15 + (r12[4] & 4294967295L);
            r12[4] = (int) j16;
            long j17 = (j16 >> 32) + (r12[5] & 4294967295L);
            r12[5] = (int) j17;
            long j18 = (j17 >> 32) + (r12[6] & 4294967295L);
            r12[6] = (int) j18;
            j15 = j18 >> 32;
        }
        r12[7] = (int) ((4294967295L & r12[7]) + 1 + j15);
    }

    public static int[] fromBigInteger(BigInteger bigInteger) {
        int[] r22 = Nat256.fromBigInteger(bigInteger);
        if ((r22[7] >>> 1) >= Integer.MAX_VALUE) {
            int[] r02 = P;
            if (Nat256.gte(r22, r02)) {
                Nat256.subFrom(r02, r22);
            }
        }
        return r22;
    }

    public static void half(int[] r32, int[] r42) {
        if ((r32[0] & 1) == 0) {
            Nat.shiftDownBit(8, r32, 0, r42);
        } else {
            Nat.shiftDownBit(8, r42, Nat256.add(r32, P, r42));
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

    public static void multiplyAddToExt(int[] r12, int[] r22, int[] r32) {
        if (Nat256.mulAddTo(r12, r22, r32) != 0 || ((r32[15] >>> 1) >= Integer.MAX_VALUE && Nat.gte(16, r32, PExt))) {
            Nat.subFrom(16, PExt, r32);
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

    public static void random(SecureRandom secureRandom, int[] r42) {
        byte[] bArr = new byte[32];
        do {
            secureRandom.nextBytes(bArr);
            Pack.littleEndianToInt(bArr, 0, r42, 0, 8);
        } while (Nat.lessThan(8, r42, P) == 0);
    }

    public static void randomMult(SecureRandom secureRandom, int[] r22) {
        do {
            random(secureRandom, r22);
        } while (isZero(r22) != 0);
    }

    public static void reduce(int[] r34, int[] r35) {
        long j10 = r34[8] & 4294967295L;
        long j11 = r34[9] & 4294967295L;
        long j12 = r34[10] & 4294967295L;
        long j13 = r34[11] & 4294967295L;
        long j14 = r34[12] & 4294967295L;
        long j15 = r34[13] & 4294967295L;
        long j16 = r34[14] & 4294967295L;
        long j17 = r34[15] & 4294967295L;
        long j18 = j12 + j13;
        long j19 = j15 + j16;
        long j20 = j19 + (j17 << 1);
        long j21 = j10 + j11 + j19;
        long j22 = j18 + j14 + j17 + j21;
        long j23 = (r34[0] & 4294967295L) + j22 + j15 + j16 + j17 + 0;
        r35[0] = (int) j23;
        long j24 = (((r34[1] & 4294967295L) + j22) - j10) + j16 + j17 + (j23 >> 32);
        r35[1] = (int) j24;
        long j25 = ((r34[2] & 4294967295L) - j21) + (j24 >> 32);
        r35[2] = (int) j25;
        long j26 = ((((r34[3] & 4294967295L) + j22) - j11) - j12) + j15 + (j25 >> 32);
        r35[3] = (int) j26;
        long j27 = ((((r34[4] & 4294967295L) + j22) - j18) - j10) + j16 + (j26 >> 32);
        r35[4] = (int) j27;
        long j28 = (r34[5] & 4294967295L) + j20 + j12 + (j27 >> 32);
        r35[5] = (int) j28;
        long j29 = (r34[6] & 4294967295L) + j13 + j16 + j17 + (j28 >> 32);
        r35[6] = (int) j29;
        long j30 = (4294967295L & r34[7]) + j22 + j20 + j14 + (j29 >> 32);
        r35[7] = (int) j30;
        reduce32((int) (j30 >> 32), r35);
    }

    public static void reduce32(int r13, int[] r14) {
        long j10;
        if (r13 != 0) {
            long j11 = r13 & 4294967295L;
            long j12 = (r14[0] & 4294967295L) + j11 + 0;
            r14[0] = (int) j12;
            long j13 = j12 >> 32;
            if (j13 != 0) {
                long j14 = j13 + (r14[1] & 4294967295L);
                r14[1] = (int) j14;
                j13 = j14 >> 32;
            }
            long j15 = ((r14[2] & 4294967295L) - j11) + j13;
            r14[2] = (int) j15;
            long j16 = (r14[3] & 4294967295L) + j11 + (j15 >> 32);
            r14[3] = (int) j16;
            long j17 = j16 >> 32;
            if (j17 != 0) {
                long j18 = j17 + (r14[4] & 4294967295L);
                r14[4] = (int) j18;
                long j19 = (j18 >> 32) + (r14[5] & 4294967295L);
                r14[5] = (int) j19;
                long j20 = (j19 >> 32) + (r14[6] & 4294967295L);
                r14[6] = (int) j20;
                j17 = j20 >> 32;
            }
            long j21 = (4294967295L & r14[7]) + j11 + j17;
            r14[7] = (int) j21;
            j10 = j21 >> 32;
        } else {
            j10 = 0;
        }
        if (j10 != 0 || ((r14[7] >>> 1) >= Integer.MAX_VALUE && Nat256.gte(r14, P))) {
            addPInvTo(r14);
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

    private static void subPInvFrom(int[] r12) {
        long j10 = (r12[0] & 4294967295L) - 1;
        r12[0] = (int) j10;
        long j11 = j10 >> 32;
        if (j11 != 0) {
            long j12 = j11 + (r12[1] & 4294967295L);
            r12[1] = (int) j12;
            j11 = j12 >> 32;
        }
        long j13 = (r12[2] & 4294967295L) + 1 + j11;
        r12[2] = (int) j13;
        long j14 = ((r12[3] & 4294967295L) - 1) + (j13 >> 32);
        r12[3] = (int) j14;
        long j15 = j14 >> 32;
        if (j15 != 0) {
            long j16 = j15 + (r12[4] & 4294967295L);
            r12[4] = (int) j16;
            long j17 = (j16 >> 32) + (r12[5] & 4294967295L);
            r12[5] = (int) j17;
            long j18 = (j17 >> 32) + (r12[6] & 4294967295L);
            r12[6] = (int) j18;
            j15 = j18 >> 32;
        }
        r12[7] = (int) (((4294967295L & r12[7]) - 1) + j15);
    }

    public static void subtract(int[] r02, int[] r12, int[] r22) {
        if (Nat256.sub(r02, r12, r22) != 0) {
            subPInvFrom(r22);
        }
    }

    public static void subtractExt(int[] r12, int[] r22, int[] r32) {
        if (Nat.sub(16, r12, r22, r32) != 0) {
            Nat.addTo(16, PExt, r32);
        }
    }

    public static void twice(int[] r22, int[] r32) {
        if (Nat.shiftUpBit(8, r22, 0, r32) != 0 || ((r32[7] >>> 1) >= Integer.MAX_VALUE && Nat256.gte(r32, P))) {
            addPInvTo(r32);
        }
    }
}
