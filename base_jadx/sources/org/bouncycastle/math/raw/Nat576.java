package org.bouncycastle.math.raw;

import java.math.BigInteger;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
public abstract class Nat576 {
    public static void copy64(long[] jArr, int r42, long[] jArr2, int r6) {
        jArr2[r6 + 0] = jArr[r42 + 0];
        jArr2[r6 + 1] = jArr[r42 + 1];
        jArr2[r6 + 2] = jArr[r42 + 2];
        jArr2[r6 + 3] = jArr[r42 + 3];
        jArr2[r6 + 4] = jArr[r42 + 4];
        jArr2[r6 + 5] = jArr[r42 + 5];
        jArr2[r6 + 6] = jArr[r42 + 6];
        jArr2[r6 + 7] = jArr[r42 + 7];
        jArr2[r6 + 8] = jArr[r42 + 8];
    }

    public static void copy64(long[] jArr, long[] jArr2) {
        jArr2[0] = jArr[0];
        jArr2[1] = jArr[1];
        jArr2[2] = jArr[2];
        jArr2[3] = jArr[3];
        jArr2[4] = jArr[4];
        jArr2[5] = jArr[5];
        jArr2[6] = jArr[6];
        jArr2[7] = jArr[7];
        jArr2[8] = jArr[8];
    }

    public static long[] create64() {
        return new long[9];
    }

    public static long[] createExt64() {
        return new long[18];
    }

    public static boolean eq64(long[] jArr, long[] jArr2) {
        for (int r02 = 8; r02 >= 0; r02--) {
            if (jArr[r02] != jArr2[r02]) {
                return false;
            }
        }
        return true;
    }

    public static long[] fromBigInteger64(BigInteger bigInteger) {
        if (bigInteger.signum() < 0 || bigInteger.bitLength() > 576) {
            throw new IllegalArgumentException();
        }
        long[] jArrCreate64 = create64();
        for (int r12 = 0; r12 < 9; r12++) {
            jArrCreate64[r12] = bigInteger.longValue();
            bigInteger = bigInteger.shiftRight(64);
        }
        return jArrCreate64;
    }

    public static boolean isOne64(long[] jArr) {
        if (jArr[0] != 1) {
            return false;
        }
        for (int r22 = 1; r22 < 9; r22++) {
            if (jArr[r22] != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean isZero64(long[] jArr) {
        for (int r12 = 0; r12 < 9; r12++) {
            if (jArr[r12] != 0) {
                return false;
            }
        }
        return true;
    }

    public static BigInteger toBigInteger64(long[] jArr) {
        byte[] bArr = new byte[72];
        for (int r12 = 0; r12 < 9; r12++) {
            long j10 = jArr[r12];
            if (j10 != 0) {
                Pack.longToBigEndian(j10, bArr, (8 - r12) << 3);
            }
        }
        return new BigInteger(1, bArr);
    }
}
