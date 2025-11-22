package org.bouncycastle.pqc.legacy.crypto.mceliece;

import java.math.BigInteger;
import org.bouncycastle.pqc.legacy.math.linearalgebra.BigIntUtils;
import org.bouncycastle.pqc.legacy.math.linearalgebra.GF2Vector;
import org.bouncycastle.pqc.legacy.math.linearalgebra.IntegerFunctions;

/* loaded from: classes2.dex */
final class Conversions {
    private static final BigInteger ZERO = BigInteger.valueOf(0);
    private static final BigInteger ONE = BigInteger.valueOf(1);

    private Conversions() {
    }

    public static byte[] decode(int r72, int r82, GF2Vector gF2Vector) {
        if (gF2Vector.getLength() != r72 || gF2Vector.getHammingWeight() != r82) {
            throw new IllegalArgumentException("vector has wrong length or hamming weight");
        }
        int[] vecArray = gF2Vector.getVecArray();
        BigInteger bigIntegerBinomial = IntegerFunctions.binomial(r72, r82);
        BigInteger bigIntegerAdd = ZERO;
        int r32 = r72;
        for (int r22 = 0; r22 < r72; r22++) {
            bigIntegerBinomial = bigIntegerBinomial.multiply(BigInteger.valueOf(r32 - r82)).divide(BigInteger.valueOf(r32));
            r32--;
            if ((vecArray[r22 >> 5] & (1 << (r22 & 31))) != 0) {
                bigIntegerAdd = bigIntegerAdd.add(bigIntegerBinomial);
                r82--;
                bigIntegerBinomial = r32 == r82 ? ONE : bigIntegerBinomial.multiply(BigInteger.valueOf(r82 + 1)).divide(BigInteger.valueOf(r32 - r82));
            }
        }
        return BigIntUtils.toMinimalByteArray(bigIntegerAdd);
    }

    public static GF2Vector encode(int r6, int r72, byte[] bArr) {
        if (r6 < r72) {
            throw new IllegalArgumentException("n < t");
        }
        BigInteger bigIntegerBinomial = IntegerFunctions.binomial(r6, r72);
        BigInteger bigInteger = new BigInteger(1, bArr);
        if (bigInteger.compareTo(bigIntegerBinomial) >= 0) {
            throw new IllegalArgumentException("Encoded number too large.");
        }
        GF2Vector gF2Vector = new GF2Vector(r6);
        int r32 = r6;
        for (int r22 = 0; r22 < r6; r22++) {
            bigIntegerBinomial = bigIntegerBinomial.multiply(BigInteger.valueOf(r32 - r72)).divide(BigInteger.valueOf(r32));
            r32--;
            if (bigIntegerBinomial.compareTo(bigInteger) <= 0) {
                gF2Vector.setBit(r22);
                bigInteger = bigInteger.subtract(bigIntegerBinomial);
                r72--;
                bigIntegerBinomial = r32 == r72 ? ONE : bigIntegerBinomial.multiply(BigInteger.valueOf(r72 + 1)).divide(BigInteger.valueOf(r32 - r72));
            }
        }
        return gF2Vector;
    }

    public static byte[] signConversion(int r10, int r11, byte[] bArr) {
        if (r10 < r11) {
            throw new IllegalArgumentException("n < t");
        }
        BigInteger bigIntegerBinomial = IntegerFunctions.binomial(r10, r11);
        int r12 = bigIntegerBinomial.bitLength() - 1;
        int r32 = r12 >> 3;
        int r13 = r12 & 7;
        int r42 = 8;
        if (r13 == 0) {
            r32--;
            r13 = 8;
        }
        int r52 = r10 >> 3;
        int r6 = r10 & 7;
        if (r6 == 0) {
            r52--;
        } else {
            r42 = r6;
        }
        int r62 = r52 + 1;
        byte[] bArr2 = new byte[r62];
        if (bArr.length < r62) {
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            for (int length = bArr.length; length < r62; length++) {
                bArr2[length] = 0;
            }
        } else {
            System.arraycopy(bArr, 0, bArr2, 0, r52);
            bArr2[r52] = (byte) (bArr[r52] & ((1 << r42) - 1));
        }
        BigInteger bigIntegerAdd = ZERO;
        int r53 = r10;
        for (int r43 = 0; r43 < r10; r43++) {
            bigIntegerBinomial = bigIntegerBinomial.multiply(new BigInteger(Integer.toString(r53 - r11))).divide(new BigInteger(Integer.toString(r53)));
            r53--;
            if (((byte) (bArr2[r43 >>> 3] & (1 << (r43 & 7)))) != 0) {
                bigIntegerAdd = bigIntegerAdd.add(bigIntegerBinomial);
                r11--;
                bigIntegerBinomial = r53 == r11 ? ONE : bigIntegerBinomial.multiply(new BigInteger(Integer.toString(r11 + 1))).divide(new BigInteger(Integer.toString(r53 - r11)));
            }
        }
        int r102 = r32 + 1;
        byte[] bArr3 = new byte[r102];
        byte[] byteArray = bigIntegerAdd.toByteArray();
        if (byteArray.length < r102) {
            System.arraycopy(byteArray, 0, bArr3, 0, byteArray.length);
            for (int length2 = byteArray.length; length2 < r102; length2++) {
                bArr3[length2] = 0;
            }
        } else {
            System.arraycopy(byteArray, 0, bArr3, 0, r32);
            bArr3[r32] = (byte) (((1 << r13) - 1) & byteArray[r32]);
        }
        return bArr3;
    }
}
