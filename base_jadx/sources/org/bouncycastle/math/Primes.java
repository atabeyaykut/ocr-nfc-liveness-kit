package org.bouncycastle.math;

import androidx.browser.browseractions.a;
import java.math.BigInteger;
import java.security.SecureRandom;
import net.sf.scuba.smartcards.ISO7816;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.asn1.eac.CertificateBody;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.BigIntegers;
import org.jmrtd.cbeff.ISO781611;

/* loaded from: classes2.dex */
public abstract class Primes {
    public static final int SMALL_FACTOR_LIMIT = 211;
    private static final BigInteger ONE = BigInteger.valueOf(1);
    private static final BigInteger TWO = BigInteger.valueOf(2);
    private static final BigInteger THREE = BigInteger.valueOf(3);

    public static class MROutput {
        private BigInteger factor;
        private boolean provablyComposite;

        private MROutput(boolean z10, BigInteger bigInteger) {
            this.provablyComposite = z10;
            this.factor = bigInteger;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static MROutput probablyPrime() {
            return new MROutput(false, null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static MROutput provablyCompositeNotPrimePower() {
            return new MROutput(true, null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static MROutput provablyCompositeWithFactor(BigInteger bigInteger) {
            return new MROutput(true, bigInteger);
        }

        public BigInteger getFactor() {
            return this.factor;
        }

        public boolean isNotPrimePower() {
            return this.provablyComposite && this.factor == null;
        }

        public boolean isProvablyComposite() {
            return this.provablyComposite;
        }
    }

    public static class STOutput {
        private BigInteger prime;
        private int primeGenCounter;
        private byte[] primeSeed;

        private STOutput(BigInteger bigInteger, byte[] bArr, int r32) {
            this.prime = bigInteger;
            this.primeSeed = bArr;
            this.primeGenCounter = r32;
        }

        public BigInteger getPrime() {
            return this.prime;
        }

        public int getPrimeGenCounter() {
            return this.primeGenCounter;
        }

        public byte[] getPrimeSeed() {
            return this.primeSeed;
        }
    }

    private static void checkCandidate(BigInteger bigInteger, String str) {
        if (bigInteger == null || bigInteger.signum() < 1 || bigInteger.bitLength() < 2) {
            throw new IllegalArgumentException(a.a("'", str, "' must be non-null and >= 2"));
        }
    }

    public static MROutput enhancedMRProbablePrimeTest(BigInteger bigInteger, SecureRandom secureRandom, int r13) {
        BigInteger bigIntegerModPow;
        boolean z10;
        checkCandidate(bigInteger, "candidate");
        if (secureRandom == null) {
            throw new IllegalArgumentException("'random' cannot be null");
        }
        if (r13 < 1) {
            throw new IllegalArgumentException("'iterations' must be > 0");
        }
        if (bigInteger.bitLength() == 2) {
            return MROutput.probablyPrime();
        }
        if (!bigInteger.testBit(0)) {
            return MROutput.provablyCompositeWithFactor(TWO);
        }
        BigInteger bigIntegerSubtract = bigInteger.subtract(ONE);
        BigInteger bigIntegerSubtract2 = bigInteger.subtract(TWO);
        int lowestSetBit = bigIntegerSubtract.getLowestSetBit();
        BigInteger bigIntegerShiftRight = bigIntegerSubtract.shiftRight(lowestSetBit);
        for (int r6 = 0; r6 < r13; r6++) {
            BigInteger bigIntegerCreateRandomInRange = BigIntegers.createRandomInRange(TWO, bigIntegerSubtract2, secureRandom);
            BigInteger bigIntegerGcd = bigIntegerCreateRandomInRange.gcd(bigInteger);
            BigInteger bigInteger2 = ONE;
            if (bigIntegerGcd.compareTo(bigInteger2) > 0) {
                return MROutput.provablyCompositeWithFactor(bigIntegerGcd);
            }
            BigInteger bigIntegerModPow2 = bigIntegerCreateRandomInRange.modPow(bigIntegerShiftRight, bigInteger);
            if (!bigIntegerModPow2.equals(bigInteger2) && !bigIntegerModPow2.equals(bigIntegerSubtract)) {
                int r82 = 1;
                while (true) {
                    if (r82 >= lowestSetBit) {
                        bigIntegerModPow = bigIntegerModPow2;
                        break;
                    }
                    bigIntegerModPow = bigIntegerModPow2.modPow(TWO, bigInteger);
                    if (bigIntegerModPow.equals(bigIntegerSubtract)) {
                        z10 = true;
                        break;
                    }
                    if (bigIntegerModPow.equals(ONE)) {
                        break;
                    }
                    r82++;
                    bigIntegerModPow2 = bigIntegerModPow;
                }
                z10 = false;
                if (!z10) {
                    BigInteger bigInteger3 = ONE;
                    if (!bigIntegerModPow.equals(bigInteger3)) {
                        bigIntegerModPow2 = bigIntegerModPow.modPow(TWO, bigInteger);
                        if (bigIntegerModPow2.equals(bigInteger3)) {
                            bigIntegerModPow2 = bigIntegerModPow;
                        }
                    }
                    BigInteger bigIntegerGcd2 = bigIntegerModPow2.subtract(bigInteger3).gcd(bigInteger);
                    return bigIntegerGcd2.compareTo(bigInteger3) > 0 ? MROutput.provablyCompositeWithFactor(bigIntegerGcd2) : MROutput.provablyCompositeNotPrimePower();
                }
            }
        }
        return MROutput.probablyPrime();
    }

    private static int extract32(byte[] bArr) {
        int r02 = Math.min(4, bArr.length);
        int r12 = 0;
        int r22 = 0;
        while (r12 < r02) {
            int r42 = r12 + 1;
            r22 |= (bArr[bArr.length - r42] & 255) << (r12 * 8);
            r12 = r42;
        }
        return r22;
    }

    public static STOutput generateSTRandomPrime(Digest digest, int r22, byte[] bArr) {
        if (digest == null) {
            throw new IllegalArgumentException("'hash' cannot be null");
        }
        if (r22 < 2) {
            throw new IllegalArgumentException("'length' must be >= 2");
        }
        if (bArr == null || bArr.length == 0) {
            throw new IllegalArgumentException("'inputSeed' cannot be null or empty");
        }
        return implSTRandomPrime(digest, r22, Arrays.clone(bArr));
    }

    public static boolean hasAnySmallFactors(BigInteger bigInteger) {
        checkCandidate(bigInteger, "candidate");
        return implHasAnySmallFactors(bigInteger);
    }

    private static void hash(Digest digest, byte[] bArr, byte[] bArr2, int r52) {
        digest.update(bArr, 0, bArr.length);
        digest.doFinal(bArr2, r52);
    }

    private static BigInteger hashGen(Digest digest, byte[] bArr, int r72) {
        int digestSize = digest.getDigestSize();
        int r12 = r72 * digestSize;
        byte[] bArr2 = new byte[r12];
        for (int r32 = 0; r32 < r72; r32++) {
            r12 -= digestSize;
            hash(digest, bArr, bArr2, r12);
            inc(bArr, 1);
        }
        return new BigInteger(1, bArr2);
    }

    private static boolean implHasAnySmallFactors(BigInteger bigInteger) {
        int r02 = bigInteger.mod(BigInteger.valueOf(223092870)).intValue();
        if (r02 % 2 != 0 && r02 % 3 != 0 && r02 % 5 != 0 && r02 % 7 != 0 && r02 % 11 != 0 && r02 % 13 != 0 && r02 % 17 != 0 && r02 % 19 != 0 && r02 % 23 != 0) {
            int r03 = bigInteger.mod(BigInteger.valueOf(58642669)).intValue();
            if (r03 % 29 != 0 && r03 % 31 != 0 && r03 % 37 != 0 && r03 % 41 != 0 && r03 % 43 != 0) {
                int r04 = bigInteger.mod(BigInteger.valueOf(600662303)).intValue();
                if (r04 % 47 != 0 && r04 % 53 != 0 && r04 % 59 != 0 && r04 % 61 != 0 && r04 % 67 != 0) {
                    int r05 = bigInteger.mod(BigInteger.valueOf(33984931)).intValue();
                    if (r05 % 71 != 0 && r05 % 73 != 0 && r05 % 79 != 0 && r05 % 83 != 0) {
                        int r06 = bigInteger.mod(BigInteger.valueOf(89809099)).intValue();
                        if (r06 % 89 != 0 && r06 % 97 != 0 && r06 % 101 != 0 && r06 % 103 != 0) {
                            int r07 = bigInteger.mod(BigInteger.valueOf(167375713)).intValue();
                            if (r07 % 107 != 0 && r07 % 109 != 0 && r07 % 113 != 0 && r07 % CertificateBody.profileType != 0) {
                                int r08 = bigInteger.mod(BigInteger.valueOf(371700317)).intValue();
                                if (r08 % ISO781611.CREATION_DATE_AND_TIME_TAG != 0 && r08 % 137 != 0 && r08 % 139 != 0 && r08 % 149 != 0) {
                                    int r09 = bigInteger.mod(BigInteger.valueOf(645328247)).intValue();
                                    if (r09 % ISO7816.TAG_SM_EXPECTED_LENGTH != 0 && r09 % 157 != 0 && r09 % 163 != 0 && r09 % 167 != 0) {
                                        int r010 = bigInteger.mod(BigInteger.valueOf(1070560157)).intValue();
                                        if (r010 % 173 != 0 && r010 % 179 != 0 && r010 % 181 != 0 && r010 % 191 != 0) {
                                            int r32 = bigInteger.mod(BigInteger.valueOf(1596463769)).intValue();
                                            if (r32 % 193 != 0 && r32 % 197 != 0 && r32 % 199 != 0 && r32 % SMALL_FACTOR_LIMIT != 0) {
                                                return false;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return true;
    }

    private static boolean implMRProbablePrimeToBase(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, int r6, BigInteger bigInteger4) {
        BigInteger bigIntegerModPow = bigInteger4.modPow(bigInteger3, bigInteger);
        if (bigIntegerModPow.equals(ONE) || bigIntegerModPow.equals(bigInteger2)) {
            return true;
        }
        for (int r72 = 1; r72 < r6; r72++) {
            bigIntegerModPow = bigIntegerModPow.modPow(TWO, bigInteger);
            if (bigIntegerModPow.equals(bigInteger2)) {
                return true;
            }
            if (bigIntegerModPow.equals(ONE)) {
                return false;
            }
        }
        return false;
    }

    private static STOutput implSTRandomPrime(Digest digest, int r17, byte[] bArr) {
        AnonymousClass1 anonymousClass1;
        int digestSize = digest.getDigestSize();
        AnonymousClass1 anonymousClass12 = null;
        int r82 = 1;
        if (r17 < 33) {
            byte[] bArr2 = new byte[digestSize];
            byte[] bArr3 = new byte[digestSize];
            int r92 = 0;
            do {
                hash(digest, bArr, bArr2, 0);
                inc(bArr, 1);
                hash(digest, bArr, bArr3, 0);
                inc(bArr, 1);
                r92++;
                long jExtract32 = (((extract32(bArr2) ^ extract32(bArr3)) & ((-1) >>> (32 - r17))) | (1 << (r17 - 1)) | 1) & BodyPartID.bodyIdMax;
                if (isPrime32(jExtract32)) {
                    return new STOutput(BigInteger.valueOf(jExtract32), bArr, r92);
                }
            } while (r92 <= r17 * 4);
            throw new IllegalStateException("Too many iterations in Shawe-Taylor Random_Prime Routine");
        }
        STOutput sTOutputImplSTRandomPrime = implSTRandomPrime(digest, (r17 + 3) / 2, bArr);
        BigInteger prime = sTOutputImplSTRandomPrime.getPrime();
        byte[] primeSeed = sTOutputImplSTRandomPrime.getPrimeSeed();
        int primeGenCounter = sTOutputImplSTRandomPrime.getPrimeGenCounter();
        int r10 = r17 - 1;
        int r32 = (r10 / (digestSize * 8)) + 1;
        BigInteger bigIntegerHashGen = hashGen(digest, primeSeed, r32);
        BigInteger bigInteger = ONE;
        BigInteger bit = bigIntegerHashGen.mod(bigInteger.shiftLeft(r10)).setBit(r10);
        BigInteger bigIntegerShiftLeft = prime.shiftLeft(1);
        BigInteger bigIntegerShiftLeft2 = bit.subtract(bigInteger).divide(bigIntegerShiftLeft).add(bigInteger).shiftLeft(1);
        BigInteger bigIntegerAdd = bigIntegerShiftLeft2.multiply(prime).add(bigInteger);
        int r14 = primeGenCounter;
        int r15 = 0;
        while (true) {
            if (bigIntegerAdd.bitLength() > r17) {
                BigInteger bigInteger2 = ONE;
                bigIntegerShiftLeft2 = bigInteger2.shiftLeft(r10).subtract(bigInteger2).divide(bigIntegerShiftLeft).add(bigInteger2).shiftLeft(r82);
                bigIntegerAdd = bigIntegerShiftLeft2.multiply(prime).add(bigInteger2);
            }
            r14 += r82;
            if (implHasAnySmallFactors(bigIntegerAdd)) {
                anonymousClass1 = anonymousClass12;
                inc(primeSeed, r32);
            } else {
                BigInteger bigIntegerAdd2 = hashGen(digest, primeSeed, r32).mod(bigIntegerAdd.subtract(THREE)).add(TWO);
                BigInteger bigIntegerAdd3 = bigIntegerShiftLeft2.add(BigInteger.valueOf(r15));
                BigInteger bigIntegerModPow = bigIntegerAdd2.modPow(bigIntegerAdd3, bigIntegerAdd);
                BigInteger bigInteger3 = ONE;
                if (bigIntegerAdd.gcd(bigIntegerModPow.subtract(bigInteger3)).equals(bigInteger3) && bigIntegerModPow.modPow(prime, bigIntegerAdd).equals(bigInteger3)) {
                    return new STOutput(bigIntegerAdd, primeSeed, r14);
                }
                anonymousClass1 = null;
                bigIntegerShiftLeft2 = bigIntegerAdd3;
                r15 = 0;
            }
            if (r14 >= (r17 * 4) + primeGenCounter) {
                throw new IllegalStateException("Too many iterations in Shawe-Taylor Random_Prime Routine");
            }
            r15 += 2;
            bigIntegerAdd = bigIntegerAdd.add(bigIntegerShiftLeft);
            anonymousClass12 = anonymousClass1;
            r82 = 1;
        }
    }

    private static void inc(byte[] bArr, int r32) {
        int length = bArr.length;
        while (r32 > 0) {
            length--;
            if (length < 0) {
                return;
            }
            int r33 = r32 + (bArr[length] & 255);
            bArr[length] = (byte) r33;
            r32 = r33 >>> 8;
        }
    }

    public static boolean isMRProbablePrime(BigInteger bigInteger, SecureRandom secureRandom, int r10) {
        checkCandidate(bigInteger, "candidate");
        if (secureRandom == null) {
            throw new IllegalArgumentException("'random' cannot be null");
        }
        if (r10 < 1) {
            throw new IllegalArgumentException("'iterations' must be > 0");
        }
        if (bigInteger.bitLength() == 2) {
            return true;
        }
        if (!bigInteger.testBit(0)) {
            return false;
        }
        BigInteger bigIntegerSubtract = bigInteger.subtract(ONE);
        BigInteger bigIntegerSubtract2 = bigInteger.subtract(TWO);
        int lowestSetBit = bigIntegerSubtract.getLowestSetBit();
        BigInteger bigIntegerShiftRight = bigIntegerSubtract.shiftRight(lowestSetBit);
        for (int r6 = 0; r6 < r10; r6++) {
            if (!implMRProbablePrimeToBase(bigInteger, bigIntegerSubtract, bigIntegerShiftRight, lowestSetBit, BigIntegers.createRandomInRange(TWO, bigIntegerSubtract2, secureRandom))) {
                return false;
            }
        }
        return true;
    }

    public static boolean isMRProbablePrimeToBase(BigInteger bigInteger, BigInteger bigInteger2) {
        checkCandidate(bigInteger, "candidate");
        checkCandidate(bigInteger2, "base");
        BigInteger bigInteger3 = ONE;
        if (bigInteger2.compareTo(bigInteger.subtract(bigInteger3)) >= 0) {
            throw new IllegalArgumentException("'base' must be < ('candidate' - 1)");
        }
        if (bigInteger.bitLength() == 2) {
            return true;
        }
        BigInteger bigIntegerSubtract = bigInteger.subtract(bigInteger3);
        int lowestSetBit = bigIntegerSubtract.getLowestSetBit();
        return implMRProbablePrimeToBase(bigInteger, bigIntegerSubtract, bigIntegerSubtract.shiftRight(lowestSetBit), lowestSetBit, bigInteger2);
    }

    private static boolean isPrime32(long j10) {
        if ((j10 >>> 32) != 0) {
            throw new IllegalArgumentException("Size limit exceeded");
        }
        if (j10 <= 5) {
            return j10 == 2 || j10 == 3 || j10 == 5;
        }
        if ((1 & j10) == 0 || j10 % 3 == 0 || j10 % 5 == 0) {
            return false;
        }
        long[] jArr = {1, 7, 11, 13, 17, 19, 23, 29};
        long j11 = 0;
        int r42 = 1;
        while (true) {
            if (r42 >= 8) {
                j11 += 30;
                if (j11 * j11 >= j10) {
                    return true;
                }
                r42 = 0;
            } else {
                if (j10 % (jArr[r42] + j11) == 0) {
                    return j10 < 30;
                }
                r42++;
            }
        }
    }
}
