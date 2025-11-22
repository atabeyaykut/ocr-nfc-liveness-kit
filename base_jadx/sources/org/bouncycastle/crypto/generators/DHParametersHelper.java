package org.bouncycastle.crypto.generators;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.math.ec.WNafUtil;
import org.bouncycastle.util.BigIntegers;

/* loaded from: classes2.dex */
class DHParametersHelper {
    private static final BigInteger ONE = BigInteger.valueOf(1);
    private static final BigInteger TWO = BigInteger.valueOf(2);

    public static BigInteger[] generateSafePrimes(int r6, int r72, SecureRandom secureRandom) throws IllegalArgumentException {
        int r02 = r6 - 1;
        int r62 = r6 >>> 2;
        while (true) {
            BigInteger bigIntegerCreateRandomPrime = BigIntegers.createRandomPrime(r02, 2, secureRandom);
            BigInteger bigIntegerAdd = bigIntegerCreateRandomPrime.shiftLeft(1).add(ONE);
            if (bigIntegerAdd.isProbablePrime(r72) && (r72 <= 2 || bigIntegerCreateRandomPrime.isProbablePrime(r72 - 2))) {
                if (WNafUtil.getNafWeight(bigIntegerAdd) >= r62) {
                    return new BigInteger[]{bigIntegerAdd, bigIntegerCreateRandomPrime};
                }
            }
        }
    }

    public static BigInteger selectGenerator(BigInteger bigInteger, BigInteger bigInteger2, SecureRandom secureRandom) {
        BigInteger bigIntegerModPow;
        BigInteger bigIntegerSubtract = bigInteger.subtract(TWO);
        do {
            BigInteger bigInteger3 = TWO;
            bigIntegerModPow = BigIntegers.createRandomInRange(bigInteger3, bigIntegerSubtract, secureRandom).modPow(bigInteger3, bigInteger);
        } while (bigIntegerModPow.equals(ONE));
        return bigIntegerModPow;
    }
}
