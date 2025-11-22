package org.bouncycastle.math.ec.custom.sec;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.math.raw.Mod;
import org.bouncycastle.math.raw.Nat;
import org.bouncycastle.math.raw.Nat512;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
public class SecP521R1Field {
    static final int[] P = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 511};
    private static final int P16 = 511;

    public static void add(int[] r22, int[] r32, int[] r42) {
        int r12 = Nat.add(16, r22, r32, r42) + r22[16] + r32[16];
        if (r12 > 511 || (r12 == 511 && Nat.eq(16, r42, P))) {
            r12 = (Nat.inc(16, r42) + r12) & 511;
        }
        r42[16] = r12;
    }

    public static void addOne(int[] r32, int[] r42) {
        int r12 = Nat.inc(16, r32, r42) + r32[16];
        if (r12 > 511 || (r12 == 511 && Nat.eq(16, r42, P))) {
            r12 = (Nat.inc(16, r42) + r12) & 511;
        }
        r42[16] = r12;
    }

    public static int[] fromBigInteger(BigInteger bigInteger) {
        int[] r22 = Nat.fromBigInteger(521, bigInteger);
        if (Nat.eq(17, r22, P)) {
            Nat.zero(17, r22);
        }
        return r22;
    }

    public static void half(int[] r22, int[] r32) {
        int r12 = r22[16];
        r32[16] = (Nat.shiftDownBit(16, r22, r12, r32) >>> 23) | (r12 >>> 1);
    }

    public static void implMultiply(int[] r92, int[] r10, int[] r11) {
        Nat512.mul(r92, r10, r11);
        int r82 = r92[16];
        int r02 = r10[16];
        r11[32] = (r82 * r02) + Nat.mul31BothAdd(16, r82, r10, r02, r92, r11, 16);
    }

    public static void implSquare(int[] r72, int[] r82) {
        Nat512.square(r72, r82);
        int r02 = r72[16];
        r82[32] = (r02 * r02) + Nat.mulWordAddTo(16, r02 << 1, r72, 0, r82, 16);
    }

    public static void inv(int[] r12, int[] r22) {
        Mod.checkedModOddInverse(P, r12, r22);
    }

    public static int isZero(int[] r32) {
        int r12 = 0;
        for (int r02 = 0; r02 < 17; r02++) {
            r12 |= r32[r02];
        }
        return (((r12 >>> 1) | (r12 & 1)) - 1) >> 31;
    }

    public static void multiply(int[] r12, int[] r22, int[] r32) {
        int[] r02 = Nat.create(33);
        implMultiply(r12, r22, r02);
        reduce(r02, r32);
    }

    public static void multiply(int[] r02, int[] r12, int[] r22, int[] r32) {
        implMultiply(r02, r12, r32);
        reduce(r32, r22);
    }

    public static void negate(int[] r22, int[] r32) {
        if (isZero(r22) == 0) {
            Nat.sub(17, P, r22, r32);
        } else {
            int[] r23 = P;
            Nat.sub(17, r23, r23, r32);
        }
    }

    public static void random(SecureRandom secureRandom, int[] r52) {
        byte[] bArr = new byte[68];
        do {
            secureRandom.nextBytes(bArr);
            Pack.littleEndianToInt(bArr, 0, r52, 0, 17);
            r52[16] = r52[16] & 511;
        } while (Nat.lessThan(17, r52, P) == 0);
    }

    public static void randomMult(SecureRandom secureRandom, int[] r22) {
        do {
            random(secureRandom, r22);
        } while (isZero(r22) != 0);
    }

    public static void reduce(int[] r82, int[] r92) {
        int r02 = r82[32];
        int r83 = Nat.addTo(16, r82, r92) + (Nat.shiftDownBits(16, r82, 16, 9, r02, r92, 0) >>> 23) + (r02 >>> 9);
        if (r83 > 511 || (r83 == 511 && Nat.eq(16, r92, P))) {
            r83 = (Nat.inc(16, r92) + r83) & 511;
        }
        r92[16] = r83;
    }

    public static void reduce23(int[] r42) {
        int r12 = r42[16];
        int r22 = Nat.addWordTo(16, r12 >>> 9, r42) + (r12 & 511);
        if (r22 > 511 || (r22 == 511 && Nat.eq(16, r42, P))) {
            r22 = (Nat.inc(16, r42) + r22) & 511;
        }
        r42[16] = r22;
    }

    public static void square(int[] r12, int[] r22) {
        int[] r02 = Nat.create(33);
        implSquare(r12, r02);
        reduce(r02, r22);
    }

    public static void square(int[] r02, int[] r12, int[] r22) {
        implSquare(r02, r22);
        reduce(r22, r12);
    }

    public static void squareN(int[] r12, int r22, int[] r32) {
        int[] r02 = Nat.create(33);
        implSquare(r12, r02);
        while (true) {
            reduce(r02, r32);
            r22--;
            if (r22 <= 0) {
                return;
            } else {
                implSquare(r32, r02);
            }
        }
    }

    public static void squareN(int[] r02, int r12, int[] r22, int[] r32) {
        implSquare(r02, r32);
        while (true) {
            reduce(r32, r22);
            r12--;
            if (r12 <= 0) {
                return;
            } else {
                implSquare(r22, r32);
            }
        }
    }

    public static void subtract(int[] r22, int[] r32, int[] r42) {
        int r12 = (Nat.sub(16, r22, r32, r42) + r22[16]) - r32[16];
        if (r12 < 0) {
            r12 = (Nat.dec(16, r42) + r12) & 511;
        }
        r42[16] = r12;
    }

    public static void twice(int[] r32, int[] r42) {
        int r12 = r32[16];
        r42[16] = (Nat.shiftUpBit(16, r32, r12 << 23, r42) | (r12 << 1)) & 511;
    }
}
