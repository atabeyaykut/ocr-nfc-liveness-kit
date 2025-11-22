package org.bouncycastle.math.raw;

import java.math.BigInteger;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
public abstract class Nat448 {
    public static void copy64(long[] jArr, int r42, long[] jArr2, int r6) {
        jArr2[r6 + 0] = jArr[r42 + 0];
        jArr2[r6 + 1] = jArr[r42 + 1];
        jArr2[r6 + 2] = jArr[r42 + 2];
        jArr2[r6 + 3] = jArr[r42 + 3];
        jArr2[r6 + 4] = jArr[r42 + 4];
        jArr2[r6 + 5] = jArr[r42 + 5];
        jArr2[r6 + 6] = jArr[r42 + 6];
    }

    public static void copy64(long[] jArr, long[] jArr2) {
        jArr2[0] = jArr[0];
        jArr2[1] = jArr[1];
        jArr2[2] = jArr[2];
        jArr2[3] = jArr[3];
        jArr2[4] = jArr[4];
        jArr2[5] = jArr[5];
        jArr2[6] = jArr[6];
    }

    public static long[] create64() {
        return new long[7];
    }

    public static long[] createExt64() {
        return new long[14];
    }

    public static boolean eq64(long[] jArr, long[] jArr2) {
        for (int r02 = 6; r02 >= 0; r02--) {
            if (jArr[r02] != jArr2[r02]) {
                return false;
            }
        }
        return true;
    }

    public static long[] fromBigInteger64(BigInteger bigInteger) {
        if (bigInteger.signum() < 0 || bigInteger.bitLength() > 448) {
            throw new IllegalArgumentException();
        }
        long[] jArrCreate64 = create64();
        for (int r12 = 0; r12 < 7; r12++) {
            jArrCreate64[r12] = bigInteger.longValue();
            bigInteger = bigInteger.shiftRight(64);
        }
        return jArrCreate64;
    }

    public static boolean isOne64(long[] jArr) {
        if (jArr[0] != 1) {
            return false;
        }
        for (int r22 = 1; r22 < 7; r22++) {
            if (jArr[r22] != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean isZero64(long[] jArr) {
        for (int r12 = 0; r12 < 7; r12++) {
            if (jArr[r12] != 0) {
                return false;
            }
        }
        return true;
    }

    public static void mul(int[] r13, int[] r14, int[] r15) {
        Nat224.mul(r13, r14, r15);
        Nat224.mul(r13, 7, r14, 7, r15, 14);
        int r22 = Nat224.addToEachOther(r15, 7, r15, 14);
        int r42 = Nat224.addTo(r15, 21, r15, 14, Nat224.addTo(r15, 0, r15, 7, 0) + r22) + r22;
        int[] r23 = Nat224.create();
        int[] r12 = Nat224.create();
        boolean z10 = Nat224.diff(r13, 7, r13, 0, r23, 0) != Nat224.diff(r14, 7, r14, 0, r12, 0);
        int[] r142 = Nat224.createExt();
        Nat224.mul(r23, r12, r142);
        Nat.addWordAt(28, r42 + (z10 ? Nat.addTo(14, r142, 0, r15, 7) : Nat.subFrom(14, r142, 0, r15, 7)), r15, 21);
    }

    public static void square(int[] r12, int[] r13) {
        Nat224.square(r12, r13);
        Nat224.square(r12, 7, r13, 14);
        int r22 = Nat224.addToEachOther(r13, 7, r13, 14);
        int r42 = Nat224.addTo(r13, 21, r13, 14, Nat224.addTo(r13, 0, r13, 7, 0) + r22) + r22;
        int[] r23 = Nat224.create();
        Nat224.diff(r12, 7, r12, 0, r23, 0);
        int[] r122 = Nat224.createExt();
        Nat224.square(r23, r122);
        Nat.addWordAt(28, Nat.subFrom(14, r122, 0, r13, 7) + r42, r13, 21);
    }

    public static BigInteger toBigInteger64(long[] jArr) {
        byte[] bArr = new byte[56];
        for (int r12 = 0; r12 < 7; r12++) {
            long j10 = jArr[r12];
            if (j10 != 0) {
                Pack.longToBigEndian(j10, bArr, (6 - r12) << 3);
            }
        }
        return new BigInteger(1, bArr);
    }
}
