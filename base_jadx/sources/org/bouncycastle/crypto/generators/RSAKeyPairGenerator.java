package org.bouncycastle.crypto.generators;

import java.math.BigInteger;
import org.bouncycastle.crypto.AsymmetricCipherKeyPair;
import org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator;
import org.bouncycastle.crypto.CryptoServicePurpose;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.KeyGenerationParameters;
import org.bouncycastle.crypto.constraints.ConstraintUtils;
import org.bouncycastle.crypto.constraints.DefaultServiceProperties;
import org.bouncycastle.crypto.params.AsymmetricKeyParameter;
import org.bouncycastle.crypto.params.RSAKeyGenerationParameters;
import org.bouncycastle.crypto.params.RSAKeyParameters;
import org.bouncycastle.crypto.params.RSAPrivateCrtKeyParameters;
import org.bouncycastle.math.Primes;
import org.bouncycastle.math.ec.WNafUtil;
import org.bouncycastle.util.BigIntegers;

/* loaded from: classes2.dex */
public class RSAKeyPairGenerator implements AsymmetricCipherKeyPairGenerator {
    private static final BigInteger ONE = BigInteger.valueOf(1);
    private RSAKeyGenerationParameters param;

    private static int getNumberOfIterations(int r42, int r52) {
        if (r42 >= 1536) {
            if (r52 <= 100) {
                return 3;
            }
            if (r52 <= 128) {
                return 4;
            }
            return 4 + (((r52 - 128) + 1) / 2);
        }
        if (r42 >= 1024) {
            if (r52 <= 100) {
                return 4;
            }
            if (r52 <= 112) {
                return 5;
            }
            return (((r52 - 112) + 1) / 2) + 5;
        }
        if (r42 < 512) {
            if (r52 <= 80) {
                return 40;
            }
            return 40 + (((r52 - 80) + 1) / 2);
        }
        if (r52 <= 80) {
            return 5;
        }
        if (r52 <= 100) {
            return 7;
        }
        return 7 + (((r52 - 100) + 1) / 2);
    }

    public BigInteger chooseRandomPrime(int r52, BigInteger bigInteger, BigInteger bigInteger2) throws IllegalArgumentException {
        for (int r02 = 0; r02 != r52 * 5; r02++) {
            BigInteger bigIntegerCreateRandomPrime = BigIntegers.createRandomPrime(r52, 1, this.param.getRandom());
            BigInteger bigIntegerMod = bigIntegerCreateRandomPrime.mod(bigInteger);
            BigInteger bigInteger3 = ONE;
            if (!bigIntegerMod.equals(bigInteger3) && bigIntegerCreateRandomPrime.multiply(bigIntegerCreateRandomPrime).compareTo(bigInteger2) >= 0 && isProbablePrime(bigIntegerCreateRandomPrime) && bigInteger.gcd(bigIntegerCreateRandomPrime.subtract(bigInteger3)).equals(bigInteger3)) {
                return bigIntegerCreateRandomPrime;
            }
        }
        throw new IllegalStateException("unable to generate prime number for RSA key");
    }

    @Override // org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator
    public AsymmetricCipherKeyPair generateKeyPair() throws IllegalArgumentException {
        BigInteger bigIntegerChooseRandomPrime;
        BigInteger bigIntegerChooseRandomPrime2;
        BigInteger bigIntegerMultiply;
        BigInteger bigInteger;
        RSAKeyPairGenerator rSAKeyPairGenerator = this;
        int strength = rSAKeyPairGenerator.param.getStrength();
        int r22 = (strength + 1) / 2;
        int r32 = strength - r22;
        int r42 = strength / 2;
        int r52 = r42 - 100;
        int r6 = strength / 3;
        if (r52 < r6) {
            r52 = r6;
        }
        int r62 = strength >> 2;
        BigInteger bigIntegerPow = BigInteger.valueOf(2L).pow(r42);
        BigInteger bigInteger2 = ONE;
        BigInteger bigIntegerShiftLeft = bigInteger2.shiftLeft(strength - 1);
        BigInteger bigIntegerShiftLeft2 = bigInteger2.shiftLeft(r52);
        AsymmetricCipherKeyPair asymmetricCipherKeyPair = null;
        boolean z10 = false;
        while (!z10) {
            BigInteger publicExponent = rSAKeyPairGenerator.param.getPublicExponent();
            do {
                bigIntegerChooseRandomPrime = rSAKeyPairGenerator.chooseRandomPrime(r22, publicExponent, bigIntegerShiftLeft);
                while (true) {
                    bigIntegerChooseRandomPrime2 = rSAKeyPairGenerator.chooseRandomPrime(r32, publicExponent, bigIntegerShiftLeft);
                    BigInteger bigIntegerAbs = bigIntegerChooseRandomPrime2.subtract(bigIntegerChooseRandomPrime).abs();
                    if (bigIntegerAbs.bitLength() >= r52 && bigIntegerAbs.compareTo(bigIntegerShiftLeft2) > 0) {
                        bigIntegerMultiply = bigIntegerChooseRandomPrime.multiply(bigIntegerChooseRandomPrime2);
                        if (bigIntegerMultiply.bitLength() == strength) {
                            break;
                        }
                        bigIntegerChooseRandomPrime = bigIntegerChooseRandomPrime.max(bigIntegerChooseRandomPrime2);
                    } else {
                        rSAKeyPairGenerator = this;
                        strength = strength;
                    }
                }
            } while (WNafUtil.getNafWeight(bigIntegerMultiply) < r62);
            if (bigIntegerChooseRandomPrime.compareTo(bigIntegerChooseRandomPrime2) < 0) {
                bigInteger = bigIntegerChooseRandomPrime;
                bigIntegerChooseRandomPrime = bigIntegerChooseRandomPrime2;
            } else {
                bigInteger = bigIntegerChooseRandomPrime2;
            }
            BigInteger bigInteger3 = ONE;
            BigInteger bigIntegerSubtract = bigIntegerChooseRandomPrime.subtract(bigInteger3);
            BigInteger bigIntegerSubtract2 = bigInteger.subtract(bigInteger3);
            int r23 = strength;
            BigInteger bigIntegerModInverse = publicExponent.modInverse(bigIntegerSubtract.divide(bigIntegerSubtract.gcd(bigIntegerSubtract2)).multiply(bigIntegerSubtract2));
            if (bigIntegerModInverse.compareTo(bigIntegerPow) > 0) {
                asymmetricCipherKeyPair = new AsymmetricCipherKeyPair((AsymmetricKeyParameter) new RSAKeyParameters(false, bigIntegerMultiply, publicExponent, true), (AsymmetricKeyParameter) new RSAPrivateCrtKeyParameters(bigIntegerMultiply, publicExponent, bigIntegerModInverse, bigIntegerChooseRandomPrime, bigInteger, bigIntegerModInverse.remainder(bigIntegerSubtract), bigIntegerModInverse.remainder(bigIntegerSubtract2), BigIntegers.modOddInverse(bigIntegerChooseRandomPrime, bigInteger), true));
                z10 = true;
            }
            rSAKeyPairGenerator = this;
            strength = r23;
        }
        return asymmetricCipherKeyPair;
    }

    @Override // org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator
    public void init(KeyGenerationParameters keyGenerationParameters) {
        this.param = (RSAKeyGenerationParameters) keyGenerationParameters;
        CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties("RSAKeyGen", ConstraintUtils.bitsOfSecurityForFF(keyGenerationParameters.getStrength()), null, CryptoServicePurpose.KEYGEN));
    }

    public boolean isProbablePrime(BigInteger bigInteger) {
        return !Primes.hasAnySmallFactors(bigInteger) && Primes.isMRProbablePrime(bigInteger, this.param.getRandom(), getNumberOfIterations(bigInteger.bitLength(), this.param.getCertainty()));
    }
}
