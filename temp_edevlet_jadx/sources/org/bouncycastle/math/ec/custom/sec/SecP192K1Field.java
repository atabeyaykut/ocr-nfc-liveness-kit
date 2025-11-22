package org.bouncycastle.math.ec.custom.sec;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.math.raw.Mod;
import org.bouncycastle.math.raw.Nat;
import org.bouncycastle.math.raw.Nat192;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
public class SecP192K1Field {
    private static final int P5 = -1;
    private static final int PExt11 = -1;
    private static final int PInv33 = 4553;
    static final int[] P = {-4553, -2, -1, -1, -1, -1};
    private static final int[] PExt = {20729809, 9106, 1, 0, 0, 0, -9106, -3, -1, -1, -1, -1};
    private static final int[] PExtInv = {-20729809, -9107, -2, -1, -1, -1, 9105, 2};

    public static void add(int[] r02, int[] r12, int[] r22) {
        if (Nat192.add(r02, r12, r22) != 0 || (r22[5] == -1 && Nat192.gte(r22, P))) {
            Nat.add33To(6, PInv33, r22);
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

    public static void addOne(int[] r22, int[] r32) {
        if (Nat.inc(6, r22, r32) != 0 || (r32[5] == -1 && Nat192.gte(r32, P))) {
            Nat.add33To(6, PInv33, r32);
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

    public static void reduce(int[] r72, int[] r82) {
        if (Nat192.mul33DWordAdd(PInv33, Nat192.mul33Add(PInv33, r72, 6, r72, 0, r82, 0), r82, 0) != 0 || (r82[5] == -1 && Nat192.gte(r82, P))) {
            Nat.add33To(6, PInv33, r82);
        }
    }

    public static void reduce32(int r22, int[] r32) {
        if ((r22 == 0 || Nat192.mul33WordAdd(PInv33, r22, r32, 0) == 0) && !(r32[5] == -1 && Nat192.gte(r32, P))) {
            return;
        }
        Nat.add33To(6, PInv33, r32);
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

    public static void subtract(int[] r02, int[] r12, int[] r22) {
        if (Nat192.sub(r02, r12, r22) != 0) {
            Nat.sub33From(6, PInv33, r22);
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
            Nat.add33To(6, PInv33, r32);
        }
    }
}
