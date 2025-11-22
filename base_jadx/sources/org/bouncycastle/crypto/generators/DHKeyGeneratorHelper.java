package org.bouncycastle.crypto.generators;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.crypto.params.DHParameters;
import org.bouncycastle.math.ec.WNafUtil;
import org.bouncycastle.util.BigIntegers;

/* loaded from: classes2.dex */
class DHKeyGeneratorHelper {
    static final DHKeyGeneratorHelper INSTANCE = new DHKeyGeneratorHelper();
    private static final BigInteger ONE = BigInteger.valueOf(1);
    private static final BigInteger TWO = BigInteger.valueOf(2);

    private DHKeyGeneratorHelper() {
    }

    public BigInteger calculatePrivate(DHParameters dHParameters, SecureRandom secureRandom) {
        BigInteger bigIntegerCreateRandomInRange;
        BigInteger bit;
        int l5 = dHParameters.getL();
        if (l5 != 0) {
            int r12 = l5 >>> 2;
            do {
                bit = BigIntegers.createRandomBigInteger(l5, secureRandom).setBit(l5 - 1);
            } while (WNafUtil.getNafWeight(bit) < r12);
            return bit;
        }
        BigInteger bigInteger = TWO;
        int m10 = dHParameters.getM();
        BigInteger bigIntegerShiftLeft = m10 != 0 ? ONE.shiftLeft(m10 - 1) : bigInteger;
        BigInteger q10 = dHParameters.getQ();
        if (q10 == null) {
            q10 = dHParameters.getP();
        }
        BigInteger bigIntegerSubtract = q10.subtract(bigInteger);
        int r02 = bigIntegerSubtract.bitLength() >>> 2;
        do {
            bigIntegerCreateRandomInRange = BigIntegers.createRandomInRange(bigIntegerShiftLeft, bigIntegerSubtract, secureRandom);
        } while (WNafUtil.getNafWeight(bigIntegerCreateRandomInRange) < r02);
        return bigIntegerCreateRandomInRange;
    }

    public BigInteger calculatePublic(DHParameters dHParameters, BigInteger bigInteger) {
        return dHParameters.getG().modPow(bigInteger, dHParameters.getP());
    }
}
