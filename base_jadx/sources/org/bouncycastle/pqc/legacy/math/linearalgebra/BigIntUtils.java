package org.bouncycastle.pqc.legacy.math.linearalgebra;

import java.math.BigInteger;

/* loaded from: classes2.dex */
public final class BigIntUtils {
    private BigIntUtils() {
    }

    public static boolean equals(BigInteger[] bigIntegerArr, BigInteger[] bigIntegerArr2) {
        if (bigIntegerArr.length != bigIntegerArr2.length) {
            return false;
        }
        int r12 = 0;
        for (int r02 = 0; r02 < bigIntegerArr.length; r02++) {
            r12 |= bigIntegerArr[r02].compareTo(bigIntegerArr2[r02]);
        }
        return r12 == 0;
    }

    public static void fill(BigInteger[] bigIntegerArr, BigInteger bigInteger) {
        for (int length = bigIntegerArr.length - 1; length >= 0; length--) {
            bigIntegerArr[length] = bigInteger;
        }
    }

    public static BigInteger[] subArray(BigInteger[] bigIntegerArr, int r32, int r42) {
        int r43 = r42 - r32;
        BigInteger[] bigIntegerArr2 = new BigInteger[r43];
        System.arraycopy(bigIntegerArr, r32, bigIntegerArr2, 0, r43);
        return bigIntegerArr2;
    }

    public static int[] toIntArray(BigInteger[] bigIntegerArr) {
        int[] r02 = new int[bigIntegerArr.length];
        for (int r12 = 0; r12 < bigIntegerArr.length; r12++) {
            r02[r12] = bigIntegerArr[r12].intValue();
        }
        return r02;
    }

    public static int[] toIntArrayModQ(int r32, BigInteger[] bigIntegerArr) {
        BigInteger bigIntegerValueOf = BigInteger.valueOf(r32);
        int[] r02 = new int[bigIntegerArr.length];
        for (int r12 = 0; r12 < bigIntegerArr.length; r12++) {
            r02[r12] = bigIntegerArr[r12].mod(bigIntegerValueOf).intValue();
        }
        return r02;
    }

    public static byte[] toMinimalByteArray(BigInteger bigInteger) {
        byte[] byteArray = bigInteger.toByteArray();
        if (byteArray.length == 1 || (bigInteger.bitLength() & 7) != 0) {
            return byteArray;
        }
        int r42 = bigInteger.bitLength() >> 3;
        byte[] bArr = new byte[r42];
        System.arraycopy(byteArray, 1, bArr, 0, r42);
        return bArr;
    }
}
