package org.bouncycastle.math.ec.custom.sec;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.math.raw.Mod;
import org.bouncycastle.math.raw.Nat;
import org.bouncycastle.math.raw.Nat224;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
public class SecP224K1Field {
    private static final int P6 = -1;
    private static final int PExt13 = -1;
    private static final int PInv33 = 6803;
    static final int[] P = {-6803, -2, -1, -1, -1, -1, -1};
    private static final int[] PExt = {46280809, 13606, 1, 0, 0, 0, 0, -13606, -3, -1, -1, -1, -1, -1};
    private static final int[] PExtInv = {-46280809, -13607, -2, -1, -1, -1, -1, 13605, 2};

    public static void add(int[] r02, int[] r12, int[] r22) {
        if (Nat224.add(r02, r12, r22) != 0 || (r22[6] == -1 && Nat224.gte(r22, P))) {
            Nat.add33To(7, PInv33, r22);
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

    public static void addOne(int[] r22, int[] r32) {
        if (Nat.inc(7, r22, r32) != 0 || (r32[6] == -1 && Nat224.gte(r32, P))) {
            Nat.add33To(7, PInv33, r32);
        }
    }

    public static int[] fromBigInteger(BigInteger bigInteger) {
        int[] r22 = Nat224.fromBigInteger(bigInteger);
        if (r22[6] == -1 && Nat224.gte(r22, P)) {
            Nat.add33To(7, PInv33, r22);
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

    public static void reduce(int[] r72, int[] r82) {
        if (Nat224.mul33DWordAdd(PInv33, Nat224.mul33Add(PInv33, r72, 7, r72, 0, r82, 0), r82, 0) != 0 || (r82[6] == -1 && Nat224.gte(r82, P))) {
            Nat.add33To(7, PInv33, r82);
        }
    }

    public static void reduce32(int r22, int[] r32) {
        if ((r22 == 0 || Nat224.mul33WordAdd(PInv33, r22, r32, 0) == 0) && !(r32[6] == -1 && Nat224.gte(r32, P))) {
            return;
        }
        Nat.add33To(7, PInv33, r32);
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

    public static void subtract(int[] r02, int[] r12, int[] r22) {
        if (Nat224.sub(r02, r12, r22) != 0) {
            Nat.sub33From(7, PInv33, r22);
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
            Nat.add33To(7, PInv33, r32);
        }
    }
}
