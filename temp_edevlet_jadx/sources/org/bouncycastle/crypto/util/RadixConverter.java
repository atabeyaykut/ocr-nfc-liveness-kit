package org.bouncycastle.crypto.util;

import java.math.BigInteger;
import org.bouncycastle.crypto.hpke.HPKE;
import org.bouncycastle.util.BigIntegers;

/* loaded from: classes2.dex */
public class RadixConverter {
    private static final int DEFAULT_POWERS_TO_CACHE = 10;
    private static final double LOG_LONG_MAX_VALUE = Math.log(9.223372036854776E18d);
    private final int digitsGroupLength;
    private final BigInteger[] digitsGroupSpacePowers;
    private final BigInteger digitsGroupSpaceSize;
    private final int radix;

    public RadixConverter(int r22) {
        this(r22, 10);
    }

    public RadixConverter(int r52, int r6) {
        this.radix = r52;
        int r02 = (int) Math.floor(LOG_LONG_MAX_VALUE / Math.log(r52));
        this.digitsGroupLength = r02;
        BigInteger bigIntegerPow = BigInteger.valueOf(r52).pow(r02);
        this.digitsGroupSpaceSize = bigIntegerPow;
        this.digitsGroupSpacePowers = precomputeDigitsGroupPowers(r6, bigIntegerPow);
    }

    private long fromEncoding(int r52, int r6, short[] sArr) {
        long j10 = 0;
        while (r52 < r6) {
            j10 = (j10 * this.radix) + (sArr[r52] & HPKE.aead_EXPORT_ONLY);
            r52++;
        }
        return j10;
    }

    private BigInteger[] precomputeDigitsGroupPowers(int r42, BigInteger bigInteger) {
        BigInteger[] bigIntegerArr = new BigInteger[r42];
        BigInteger bigIntegerMultiply = bigInteger;
        for (int r12 = 0; r12 < r42; r12++) {
            bigIntegerArr[r12] = bigIntegerMultiply;
            bigIntegerMultiply = bigIntegerMultiply.multiply(bigInteger);
        }
        return bigIntegerArr;
    }

    private int toEncoding(long j10, int r92, short[] sArr) {
        int r22;
        for (int r12 = 0; r12 < this.digitsGroupLength && r92 >= 0; r12++) {
            if (j10 == 0) {
                r22 = r92 - 1;
                sArr[r92] = 0;
            } else {
                r22 = r92 - 1;
                int r32 = this.radix;
                sArr[r92] = (short) (j10 % r32);
                j10 /= r32;
            }
            r92 = r22;
        }
        if (j10 == 0) {
            return r92;
        }
        throw new IllegalStateException("Failed to convert decimal number");
    }

    public BigInteger fromEncoding(short[] sArr) {
        BigInteger bigIntegerMultiply = BigIntegers.ONE;
        int length = sArr.length;
        int r22 = length - this.digitsGroupLength;
        BigInteger bigIntegerAdd = null;
        int r52 = 0;
        while (true) {
            int r6 = this.digitsGroupLength;
            if (r22 <= (-r6)) {
                return bigIntegerAdd;
            }
            if (r22 < 0) {
                r6 += r22;
                r22 = 0;
            }
            BigInteger bigIntegerValueOf = BigInteger.valueOf(fromEncoding(r22, Math.min(r6 + r22, length), sArr));
            if (r52 == 0) {
                bigIntegerAdd = bigIntegerValueOf;
            } else {
                BigInteger[] bigIntegerArr = this.digitsGroupSpacePowers;
                bigIntegerMultiply = r52 <= bigIntegerArr.length ? bigIntegerArr[r52 - 1] : bigIntegerMultiply.multiply(this.digitsGroupSpaceSize);
                bigIntegerAdd = bigIntegerAdd.add(bigIntegerValueOf.multiply(bigIntegerMultiply));
            }
            r52++;
            r22 -= this.digitsGroupLength;
        }
    }

    public int getDigitsGroupLength() {
        return this.digitsGroupLength;
    }

    public int getRadix() {
        return this.radix;
    }

    public void toEncoding(BigInteger bigInteger, int r6, short[] sArr) {
        if (bigInteger.signum() < 0) {
            throw new IllegalArgumentException();
        }
        int encoding = r6 - 1;
        do {
            if (bigInteger.equals(BigInteger.ZERO)) {
                sArr[encoding] = 0;
                encoding--;
            } else {
                BigInteger[] bigIntegerArrDivideAndRemainder = bigInteger.divideAndRemainder(this.digitsGroupSpaceSize);
                BigInteger bigInteger2 = bigIntegerArrDivideAndRemainder[0];
                encoding = toEncoding(bigIntegerArrDivideAndRemainder[1].longValue(), encoding, sArr);
                bigInteger = bigInteger2;
            }
        } while (encoding >= 0);
        if (bigInteger.signum() != 0) {
            throw new IllegalArgumentException();
        }
    }
}
