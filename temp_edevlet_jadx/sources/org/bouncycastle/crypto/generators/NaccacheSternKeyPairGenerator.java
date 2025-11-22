package org.bouncycastle.crypto.generators;

import androidx.appcompat.widget.v;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.io.PrintStream;
import java.math.BigInteger;
import java.security.SecureRandom;
import java.util.Vector;
import net.sf.scuba.smartcards.ISO7816;
import org.bouncycastle.asn1.eac.CertificateBody;
import org.bouncycastle.crypto.AsymmetricCipherKeyPair;
import org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator;
import org.bouncycastle.crypto.CryptoServicePurpose;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.KeyGenerationParameters;
import org.bouncycastle.crypto.constraints.ConstraintUtils;
import org.bouncycastle.crypto.constraints.DefaultServiceProperties;
import org.bouncycastle.crypto.params.AsymmetricKeyParameter;
import org.bouncycastle.crypto.params.NaccacheSternKeyGenerationParameters;
import org.bouncycastle.crypto.params.NaccacheSternKeyParameters;
import org.bouncycastle.crypto.params.NaccacheSternPrivateKeyParameters;
import org.bouncycastle.math.Primes;
import org.bouncycastle.util.BigIntegers;
import org.jmrtd.PassportService;
import org.jmrtd.cbeff.ISO781611;

/* loaded from: classes2.dex */
public class NaccacheSternKeyPairGenerator implements AsymmetricCipherKeyPairGenerator {
    private NaccacheSternKeyGenerationParameters param;
    private static int[] smallPrimes = {3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113, CertificateBody.profileType, ISO781611.CREATION_DATE_AND_TIME_TAG, 137, 139, 149, ISO7816.TAG_SM_EXPECTED_LENGTH, 157, 163, 167, 173, 179, 181, 191, 193, 197, 199, Primes.SMALL_FACTOR_LIMIT, PassportService.DEFAULT_MAX_BLOCKSIZE, 227, 229, 233, 239, 241, 251, 257, 263, 269, 271, 277, 281, 283, 293, 307, 311, 313, TypedValues.AttributesType.TYPE_EASING, 331, 337, 347, 349, 353, 359, 367, 373, 379, 383, 389, 397, TypedValues.CycleType.TYPE_CURVE_FIT, 409, 419, TypedValues.CycleType.TYPE_WAVE_SHAPE, 431, 433, 439, 443, 449, 457, 461, 463, 467, 479, 487, 491, 499, TypedValues.PositionType.TYPE_PERCENT_WIDTH, 509, 521, 523, 541, 547, 557};
    private static final BigInteger ONE = BigInteger.valueOf(1);

    private static Vector findFirstPrimes(int r42) {
        Vector vector = new Vector(r42);
        for (int r12 = 0; r12 != r42; r12++) {
            vector.addElement(BigInteger.valueOf(smallPrimes[r12]));
        }
        return vector;
    }

    private static BigInteger generatePrime(int r22, int r32, SecureRandom secureRandom) throws IllegalArgumentException {
        BigInteger bigIntegerCreateRandomPrime;
        do {
            bigIntegerCreateRandomPrime = BigIntegers.createRandomPrime(r22, r32, secureRandom);
        } while (bigIntegerCreateRandomPrime.bitLength() != r22);
        return bigIntegerCreateRandomPrime;
    }

    private static int getInt(SecureRandom secureRandom, int r52) {
        int r02;
        int r22;
        if (((-r52) & r52) == r52) {
            return (int) ((r52 * (secureRandom.nextInt() & Integer.MAX_VALUE)) >> 31);
        }
        do {
            r02 = secureRandom.nextInt() & Integer.MAX_VALUE;
            r22 = r02 % r52;
        } while ((r52 - 1) + (r02 - r22) < 0);
        return r22;
    }

    private static Vector permuteList(Vector vector, SecureRandom secureRandom) {
        Vector vector2 = new Vector();
        Vector vector3 = new Vector();
        for (int r32 = 0; r32 < vector.size(); r32++) {
            vector3.addElement(vector.elementAt(r32));
        }
        vector2.addElement(vector3.elementAt(0));
        while (true) {
            vector3.removeElementAt(0);
            if (vector3.size() == 0) {
                return vector2;
            }
            vector2.insertElementAt(vector3.elementAt(0), getInt(secureRandom, vector2.size() + 1));
        }
    }

    @Override // org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator
    public AsymmetricCipherKeyPair generateKeyPair() throws IllegalArgumentException {
        BigInteger bigIntegerGeneratePrime;
        BigInteger bigIntegerAdd;
        BigInteger bigIntegerGeneratePrime2;
        BigInteger bigInteger;
        BigInteger bigInteger2;
        BigInteger bigIntegerAdd2;
        BigInteger bigInteger3;
        BigInteger bigIntegerMultiply;
        BigInteger bigInteger4;
        BigInteger bigInteger5;
        BigInteger bigInteger6;
        BigInteger bigInteger7;
        BigInteger bigIntegerMod;
        int r25;
        boolean z10;
        BigInteger bigInteger8;
        int r21;
        BigInteger bigInteger9;
        BigInteger bigInteger10;
        BigInteger bigInteger11;
        BigInteger bigInteger12;
        PrintStream printStream;
        StringBuilder sb2;
        long j10;
        BigInteger bigIntegerCreateRandomPrime;
        SecureRandom secureRandom;
        SecureRandom secureRandom2;
        int r252;
        BigInteger bigInteger13;
        BigInteger bigInteger14;
        int r82;
        int strength = this.param.getStrength();
        SecureRandom random = this.param.getRandom();
        int certainty = this.param.getCertainty();
        boolean zIsDebug = this.param.isDebug();
        if (zIsDebug) {
            System.out.println("Fetching first " + this.param.getCntSmallPrimes() + " primes.");
        }
        Vector vectorPermuteList = permuteList(findFirstPrimes(this.param.getCntSmallPrimes()), random);
        BigInteger bigIntegerMultiply2 = ONE;
        BigInteger bigIntegerMultiply3 = bigIntegerMultiply2;
        for (int r6 = 0; r6 < vectorPermuteList.size() / 2; r6++) {
            bigIntegerMultiply3 = bigIntegerMultiply3.multiply((BigInteger) vectorPermuteList.elementAt(r6));
        }
        for (int size = vectorPermuteList.size() / 2; size < vectorPermuteList.size(); size++) {
            bigIntegerMultiply2 = bigIntegerMultiply2.multiply((BigInteger) vectorPermuteList.elementAt(size));
        }
        BigInteger bigIntegerMultiply4 = bigIntegerMultiply3.multiply(bigIntegerMultiply2);
        int r83 = (((strength - bigIntegerMultiply4.bitLength()) - 48) / 2) + 1;
        BigInteger bigIntegerGeneratePrime3 = generatePrime(r83, certainty, random);
        BigInteger bigIntegerGeneratePrime4 = generatePrime(r83, certainty, random);
        if (zIsDebug) {
            System.out.println("generating p and q");
        }
        BigInteger bigIntegerShiftLeft = bigIntegerGeneratePrime3.multiply(bigIntegerMultiply3).shiftLeft(1);
        BigInteger bigIntegerShiftLeft2 = bigIntegerGeneratePrime4.multiply(bigIntegerMultiply2).shiftLeft(1);
        long j11 = 0;
        while (true) {
            j11++;
            bigIntegerGeneratePrime = generatePrime(24, certainty, random);
            bigIntegerAdd = bigIntegerGeneratePrime.multiply(bigIntegerShiftLeft).add(ONE);
            if (bigIntegerAdd.isProbablePrime(certainty)) {
                while (true) {
                    do {
                        bigIntegerGeneratePrime2 = generatePrime(24, certainty, random);
                    } while (bigIntegerGeneratePrime.equals(bigIntegerGeneratePrime2));
                    BigInteger bigIntegerMultiply5 = bigIntegerGeneratePrime2.multiply(bigIntegerShiftLeft2);
                    bigInteger = bigIntegerShiftLeft2;
                    bigInteger2 = ONE;
                    bigIntegerAdd2 = bigIntegerMultiply5.add(bigInteger2);
                    if (bigIntegerAdd2.isProbablePrime(certainty)) {
                        break;
                    }
                    bigIntegerShiftLeft2 = bigInteger;
                    bigIntegerGeneratePrime4 = bigIntegerGeneratePrime4;
                    strength = strength;
                }
                bigInteger3 = bigIntegerShiftLeft;
                if (BigIntegers.modOddIsCoprime(bigIntegerGeneratePrime.multiply(bigIntegerGeneratePrime2), bigIntegerMultiply4)) {
                    bigIntegerMultiply = bigIntegerAdd.multiply(bigIntegerAdd2);
                    bigInteger4 = bigIntegerGeneratePrime4;
                    if (bigIntegerMultiply.bitLength() >= strength) {
                        break;
                    }
                    int r212 = strength;
                    secureRandom2 = random;
                    r252 = certainty;
                    bigInteger13 = bigIntegerGeneratePrime3;
                    bigInteger14 = bigInteger4;
                    if (zIsDebug) {
                        PrintStream printStream2 = System.out;
                        r82 = r212;
                        StringBuilder sbE = v.e("key size too small. Should be ", r82, " but is actually ");
                        sbE.append(bigIntegerAdd.multiply(bigIntegerAdd2).bitLength());
                        printStream2.println(sbE.toString());
                    } else {
                        r82 = r212;
                    }
                    bigIntegerGeneratePrime3 = bigInteger13;
                    bigIntegerShiftLeft2 = bigInteger;
                    bigIntegerShiftLeft = bigInteger3;
                    random = secureRandom2;
                    certainty = r252;
                    int r26 = r82;
                    bigIntegerGeneratePrime4 = bigInteger14;
                    strength = r26;
                } else {
                    secureRandom2 = random;
                    r252 = certainty;
                }
            } else {
                secureRandom2 = random;
                r252 = certainty;
                bigInteger = bigIntegerShiftLeft2;
                bigInteger3 = bigIntegerShiftLeft;
            }
            bigInteger13 = bigIntegerGeneratePrime3;
            BigInteger bigInteger15 = bigIntegerGeneratePrime4;
            r82 = strength;
            bigInteger14 = bigInteger15;
            bigIntegerGeneratePrime3 = bigInteger13;
            bigIntegerShiftLeft2 = bigInteger;
            bigIntegerShiftLeft = bigInteger3;
            random = secureRandom2;
            certainty = r252;
            int r262 = r82;
            bigIntegerGeneratePrime4 = bigInteger14;
            strength = r262;
        }
        if (zIsDebug) {
            bigInteger6 = bigIntegerGeneratePrime3;
            bigInteger5 = bigIntegerGeneratePrime2;
            System.out.println("needed " + j11 + " tries to generate p and q.");
        } else {
            bigInteger5 = bigIntegerGeneratePrime2;
            bigInteger6 = bigIntegerGeneratePrime3;
        }
        BigInteger bigIntegerMultiply6 = bigIntegerAdd.subtract(bigInteger2).multiply(bigIntegerAdd2.subtract(bigInteger2));
        if (zIsDebug) {
            System.out.println("generating g");
        }
        long j12 = 0;
        while (true) {
            Vector vector = new Vector();
            int r52 = 0;
            bigInteger7 = bigIntegerAdd2;
            while (r52 != vectorPermuteList.size()) {
                BigInteger bigIntegerDivide = bigIntegerMultiply6.divide((BigInteger) vectorPermuteList.elementAt(r52));
                while (true) {
                    j10 = j12 + 1;
                    bigIntegerCreateRandomPrime = BigIntegers.createRandomPrime(strength, certainty, random);
                    secureRandom = random;
                    if (bigIntegerCreateRandomPrime.modPow(bigIntegerDivide, bigIntegerMultiply).equals(ONE)) {
                        j12 = j10;
                        random = secureRandom;
                    }
                }
                vector.addElement(bigIntegerCreateRandomPrime);
                r52++;
                j12 = j10;
                random = secureRandom;
            }
            SecureRandom secureRandom3 = random;
            bigIntegerMod = ONE;
            int r53 = 0;
            while (r53 < vectorPermuteList.size()) {
                bigIntegerMod = bigIntegerMod.multiply(((BigInteger) vector.elementAt(r53)).modPow(bigIntegerMultiply4.divide((BigInteger) vectorPermuteList.elementAt(r53)), bigIntegerMultiply)).mod(bigIntegerMultiply);
                r53++;
                vector = vector;
            }
            int r02 = 0;
            while (true) {
                if (r02 >= vectorPermuteList.size()) {
                    r25 = certainty;
                    z10 = false;
                    break;
                }
                if (bigIntegerMod.modPow(bigIntegerMultiply6.divide((BigInteger) vectorPermuteList.elementAt(r02)), bigIntegerMultiply).equals(ONE)) {
                    if (zIsDebug) {
                        r25 = certainty;
                        System.out.println("g has order phi(n)/" + vectorPermuteList.elementAt(r02) + "\n g: " + bigIntegerMod);
                    } else {
                        r25 = certainty;
                    }
                    z10 = true;
                } else {
                    r02++;
                }
            }
            if (!z10) {
                BigInteger bigIntegerModPow = bigIntegerMod.modPow(bigIntegerMultiply6.divide(BigInteger.valueOf(4L)), bigIntegerMultiply);
                BigInteger bigInteger16 = ONE;
                if (bigIntegerModPow.equals(bigInteger16)) {
                    if (zIsDebug) {
                        printStream = System.out;
                        sb2 = new StringBuilder("g has order phi(n)/4\n g:");
                        sb2.append(bigIntegerMod);
                        printStream.println(sb2.toString());
                    }
                    bigInteger8 = bigInteger5;
                    bigInteger10 = bigInteger6;
                    r21 = strength;
                    bigInteger9 = bigIntegerMultiply6;
                    bigInteger11 = bigInteger4;
                } else if (!bigIntegerMod.modPow(bigIntegerMultiply6.divide(bigIntegerGeneratePrime), bigIntegerMultiply).equals(bigInteger16)) {
                    bigInteger8 = bigInteger5;
                    if (!bigIntegerMod.modPow(bigIntegerMultiply6.divide(bigInteger8), bigIntegerMultiply).equals(bigInteger16)) {
                        bigInteger10 = bigInteger6;
                        if (!bigIntegerMod.modPow(bigIntegerMultiply6.divide(bigInteger10), bigIntegerMultiply).equals(bigInteger16)) {
                            r21 = strength;
                            bigInteger11 = bigInteger4;
                            if (!bigIntegerMod.modPow(bigIntegerMultiply6.divide(bigInteger11), bigIntegerMultiply).equals(bigInteger16)) {
                                break;
                            }
                            if (zIsDebug) {
                                bigInteger9 = bigIntegerMultiply6;
                                System.out.println("g has order phi(n)/b\n g: " + bigIntegerMod);
                            } else {
                                bigInteger9 = bigIntegerMultiply6;
                            }
                        } else {
                            if (zIsDebug) {
                                r21 = strength;
                                System.out.println("g has order phi(n)/a\n g: " + bigIntegerMod);
                            } else {
                                r21 = strength;
                            }
                            bigInteger9 = bigIntegerMultiply6;
                            bigInteger11 = bigInteger4;
                        }
                    } else {
                        if (zIsDebug) {
                            System.out.println("g has order phi(n)/q'\n g: " + bigIntegerMod);
                        }
                        bigInteger10 = bigInteger6;
                        r21 = strength;
                        bigInteger9 = bigIntegerMultiply6;
                        bigInteger11 = bigInteger4;
                    }
                } else {
                    if (zIsDebug) {
                        printStream = System.out;
                        sb2 = new StringBuilder("g has order phi(n)/p'\n g: ");
                        sb2.append(bigIntegerMod);
                        printStream.println(sb2.toString());
                    }
                    bigInteger8 = bigInteger5;
                    bigInteger10 = bigInteger6;
                    r21 = strength;
                    bigInteger9 = bigIntegerMultiply6;
                    bigInteger11 = bigInteger4;
                }
            } else {
                bigInteger8 = bigInteger5;
                bigInteger10 = bigInteger6;
                r21 = strength;
                bigInteger9 = bigIntegerMultiply6;
                bigInteger11 = bigInteger4;
            }
            bigInteger5 = bigInteger8;
            bigInteger4 = bigInteger11;
            bigIntegerMultiply6 = bigInteger9;
            strength = r21;
            bigIntegerAdd2 = bigInteger7;
            random = secureRandom3;
            certainty = r25;
            bigInteger6 = bigInteger10;
        }
        BigInteger bigInteger17 = bigIntegerMultiply6;
        if (zIsDebug) {
            System.out.println("needed " + j12 + " tries to generate g");
            System.out.println();
            System.out.println("found new NaccacheStern cipher variables:");
            System.out.println("smallPrimes: " + vectorPermuteList);
            System.out.println("sigma:...... " + bigIntegerMultiply4 + " (" + bigIntegerMultiply4.bitLength() + " bits)");
            PrintStream printStream3 = System.out;
            StringBuilder sb3 = new StringBuilder("a:.......... ");
            sb3.append(bigInteger10);
            printStream3.println(sb3.toString());
            System.out.println("b:.......... " + bigInteger11);
            System.out.println("p':......... " + bigIntegerGeneratePrime);
            System.out.println("q':......... " + bigInteger8);
            System.out.println("p:.......... " + bigIntegerAdd);
            System.out.println("q:.......... " + bigInteger7);
            System.out.println("n:.......... " + bigIntegerMultiply);
            PrintStream printStream4 = System.out;
            StringBuilder sb4 = new StringBuilder("phi(n):..... ");
            bigInteger12 = bigInteger17;
            sb4.append(bigInteger12);
            printStream4.println(sb4.toString());
            System.out.println("g:.......... " + bigIntegerMod);
            System.out.println();
        } else {
            bigInteger12 = bigInteger17;
        }
        return new AsymmetricCipherKeyPair((AsymmetricKeyParameter) new NaccacheSternKeyParameters(false, bigIntegerMod, bigIntegerMultiply, bigIntegerMultiply4.bitLength()), (AsymmetricKeyParameter) new NaccacheSternPrivateKeyParameters(bigIntegerMod, bigIntegerMultiply, bigIntegerMultiply4.bitLength(), vectorPermuteList, bigInteger12));
    }

    @Override // org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator
    public void init(KeyGenerationParameters keyGenerationParameters) {
        this.param = (NaccacheSternKeyGenerationParameters) keyGenerationParameters;
        CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties("NaccacheStern KeyGen", ConstraintUtils.bitsOfSecurityForFF(keyGenerationParameters.getStrength()), keyGenerationParameters, CryptoServicePurpose.KEYGEN));
    }
}
