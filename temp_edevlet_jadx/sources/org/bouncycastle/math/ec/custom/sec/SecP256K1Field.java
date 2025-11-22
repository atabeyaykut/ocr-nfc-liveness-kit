package org.bouncycastle.math.ec.custom.sec;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.math.raw.Mod;
import org.bouncycastle.math.raw.Nat;
import org.bouncycastle.math.raw.Nat256;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
public class SecP256K1Field {
    private static final int P7 = -1;
    private static final int PExt15 = -1;
    private static final int PInv33 = 977;
    static final int[] P = {-977, -2, -1, -1, -1, -1, -1, -1};
    private static final int[] PExt = {954529, 1954, 1, 0, 0, 0, 0, 0, -1954, -3, -1, -1, -1, -1, -1, -1};
    private static final int[] PExtInv = {-954529, -1955, -2, -1, -1, -1, -1, -1, 1953, 2};

    public static void add(int[] r02, int[] r12, int[] r22) {
        if (Nat256.add(r02, r12, r22) != 0 || (r22[7] == -1 && Nat256.gte(r22, P))) {
            Nat.add33To(8, PInv33, r22);
        }
    }

    public static void addExt(int[] r12, int[] r22, int[] r32) {
        if (Nat.add(16, r12, r22, r32) != 0 || (r32[15] == -1 && Nat.gte(16, r32, PExt))) {
            int[] r13 = PExtInv;
            if (Nat.addTo(r13.length, r13, r32) != 0) {
                Nat.incAt(16, r32, r13.length);
            }
        }
    }

    public static void addOne(int[] r22, int[] r32) {
        if (Nat.inc(8, r22, r32) != 0 || (r32[7] == -1 && Nat256.gte(r32, P))) {
            Nat.add33To(8, PInv33, r32);
        }
    }

    public static int[] fromBigInteger(BigInteger bigInteger) {
        int[] r22 = Nat256.fromBigInteger(bigInteger);
        if (r22[7] == -1) {
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

    public static void multiply(int[] r02, int[] r12, int[] r22, int[] r32) {
        Nat256.mul(r02, r12, r32);
        reduce(r32, r22);
    }

    public static void multiplyAddToExt(int[] r12, int[] r22, int[] r32) {
        if (Nat256.mulAddTo(r12, r22, r32) != 0 || (r32[15] == -1 && Nat.gte(16, r32, PExt))) {
            int[] r13 = PExtInv;
            if (Nat.addTo(r13.length, r13, r32) != 0) {
                Nat.incAt(16, r32, r13.length);
            }
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

    public static void reduce(int[] r72, int[] r82) {
        if (Nat256.mul33DWordAdd(PInv33, Nat256.mul33Add(PInv33, r72, 8, r72, 0, r82, 0), r82, 0) != 0 || (r82[7] == -1 && Nat256.gte(r82, P))) {
            Nat.add33To(8, PInv33, r82);
        }
    }

    public static void reduce32(int r22, int[] r32) {
        if ((r22 == 0 || Nat256.mul33WordAdd(PInv33, r22, r32, 0) == 0) && !(r32[7] == -1 && Nat256.gte(r32, P))) {
            return;
        }
        Nat.add33To(8, PInv33, r32);
    }

    public static void square(int[] r12, int[] r22) {
        int[] r02 = Nat256.createExt();
        Nat256.square(r12, r02);
        reduce(r02, r22);
    }

    public static void square(int[] r02, int[] r12, int[] r22) {
        Nat256.square(r02, r22);
        reduce(r22, r12);
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

    public static void squareN(int[] r02, int r12, int[] r22, int[] r32) {
        Nat256.square(r02, r32);
        while (true) {
            reduce(r32, r22);
            r12--;
            if (r12 <= 0) {
                return;
            } else {
                Nat256.square(r22, r32);
            }
        }
    }

    public static void subtract(int[] r02, int[] r12, int[] r22) {
        if (Nat256.sub(r02, r12, r22) != 0) {
            Nat.sub33From(8, PInv33, r22);
        }
    }

    public static void subtractExt(int[] r12, int[] r22, int[] r32) {
        if (Nat.sub(16, r12, r22, r32) != 0) {
            int[] r13 = PExtInv;
            if (Nat.subFrom(r13.length, r13, r32) != 0) {
                Nat.decAt(16, r32, r13.length);
            }
        }
    }

    public static void twice(int[] r22, int[] r32) {
        if (Nat.shiftUpBit(8, r22, 0, r32) != 0 || (r32[7] == -1 && Nat256.gte(r32, P))) {
            Nat.add33To(8, PInv33, r32);
        }
    }
}
