package org.bouncycastle.crypto.generators;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.crypto.digests.SHA256Digest;
import org.bouncycastle.crypto.params.CramerShoupParameters;
import org.bouncycastle.crypto.params.DHParameters;
import org.bouncycastle.util.BigIntegers;

/* loaded from: classes2.dex */
public class CramerShoupParametersGenerator {
    private static final BigInteger ONE = BigInteger.valueOf(1);
    private int certainty;
    private SecureRandom random;
    private int size;

    public static class ParametersHelper {
        private static final BigInteger TWO = BigInteger.valueOf(2);

        private ParametersHelper() {
        }

        public static BigInteger[] generateSafePrimes(int r52, int r6, SecureRandom secureRandom) throws IllegalArgumentException {
            BigInteger bigIntegerCreateRandomPrime;
            BigInteger bigIntegerAdd;
            int r53 = r52 - 1;
            while (true) {
                bigIntegerCreateRandomPrime = BigIntegers.createRandomPrime(r53, 2, secureRandom);
                bigIntegerAdd = bigIntegerCreateRandomPrime.shiftLeft(1).add(CramerShoupParametersGenerator.ONE);
                if (bigIntegerAdd.isProbablePrime(r6) && (r6 <= 2 || bigIntegerCreateRandomPrime.isProbablePrime(r6))) {
                    break;
                }
            }
            return new BigInteger[]{bigIntegerAdd, bigIntegerCreateRandomPrime};
        }

        public static BigInteger selectGenerator(BigInteger bigInteger, SecureRandom secureRandom) {
            BigInteger bigIntegerModPow;
            BigInteger bigIntegerSubtract = bigInteger.subtract(TWO);
            do {
                BigInteger bigInteger2 = TWO;
                bigIntegerModPow = BigIntegers.createRandomInRange(bigInteger2, bigIntegerSubtract, secureRandom).modPow(bigInteger2, bigInteger);
            } while (bigIntegerModPow.equals(CramerShoupParametersGenerator.ONE));
            return bigIntegerModPow;
        }
    }

    public CramerShoupParameters generateParameters() {
        BigInteger bigIntegerSelectGenerator;
        BigInteger bigInteger = ParametersHelper.generateSafePrimes(this.size, this.certainty, this.random)[1];
        BigInteger bigIntegerSelectGenerator2 = ParametersHelper.selectGenerator(bigInteger, this.random);
        do {
            bigIntegerSelectGenerator = ParametersHelper.selectGenerator(bigInteger, this.random);
        } while (bigIntegerSelectGenerator2.equals(bigIntegerSelectGenerator));
        return new CramerShoupParameters(bigInteger, bigIntegerSelectGenerator2, bigIntegerSelectGenerator, SHA256Digest.newInstance());
    }

    public CramerShoupParameters generateParameters(DHParameters dHParameters) {
        BigInteger bigIntegerSelectGenerator;
        BigInteger p10 = dHParameters.getP();
        BigInteger g9 = dHParameters.getG();
        do {
            bigIntegerSelectGenerator = ParametersHelper.selectGenerator(p10, this.random);
        } while (g9.equals(bigIntegerSelectGenerator));
        return new CramerShoupParameters(p10, g9, bigIntegerSelectGenerator, SHA256Digest.newInstance());
    }

    public void init(int r12, int r22, SecureRandom secureRandom) {
        this.size = r12;
        this.certainty = r22;
        this.random = secureRandom;
    }
}
