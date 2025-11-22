package org.bouncycastle.crypto.generators;

import android.support.v4.media.a;
import java.math.BigInteger;
import java.security.SecureRandom;
import net.sf.scuba.smartcards.ISOFileInfo;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.digests.SHA1Digest;
import org.bouncycastle.crypto.params.DSAParameterGenerationParameters;
import org.bouncycastle.crypto.params.DSAParameters;
import org.bouncycastle.crypto.params.DSAValidationParameters;
import org.bouncycastle.crypto.util.DigestFactory;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.BigIntegers;
import org.bouncycastle.util.encoders.Hex;

/* loaded from: classes2.dex */
public class DSAParametersGenerator {
    private int L;
    private int N;
    private int certainty;
    private Digest digest;
    private int iterations;
    private SecureRandom random;
    private int usageIndex;
    private boolean use186_3;
    private static final BigInteger ZERO = BigInteger.valueOf(0);
    private static final BigInteger ONE = BigInteger.valueOf(1);
    private static final BigInteger TWO = BigInteger.valueOf(2);

    public DSAParametersGenerator() {
        this(DigestFactory.createSHA1());
    }

    public DSAParametersGenerator(Digest digest) {
        this.digest = digest;
    }

    private static BigInteger calculateGenerator_FIPS186_2(BigInteger bigInteger, BigInteger bigInteger2, SecureRandom secureRandom) {
        BigInteger bigIntegerModPow;
        BigInteger bigIntegerDivide = bigInteger.subtract(ONE).divide(bigInteger2);
        BigInteger bigIntegerSubtract = bigInteger.subtract(TWO);
        do {
            bigIntegerModPow = BigIntegers.createRandomInRange(TWO, bigIntegerSubtract, secureRandom).modPow(bigIntegerDivide, bigInteger);
        } while (bigIntegerModPow.bitLength() <= 1);
        return bigIntegerModPow;
    }

    private static BigInteger calculateGenerator_FIPS186_3_Unverifiable(BigInteger bigInteger, BigInteger bigInteger2, SecureRandom secureRandom) {
        return calculateGenerator_FIPS186_2(bigInteger, bigInteger2, secureRandom);
    }

    private static BigInteger calculateGenerator_FIPS186_3_Verifiable(Digest digest, BigInteger bigInteger, BigInteger bigInteger2, byte[] bArr, int r10) {
        BigInteger bigIntegerDivide = bigInteger.subtract(ONE).divide(bigInteger2);
        byte[] bArrDecodeStrict = Hex.decodeStrict("6767656E");
        int r12 = a.a(bArr.length, bArrDecodeStrict.length, 1, 2);
        byte[] bArr2 = new byte[r12];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        System.arraycopy(bArrDecodeStrict, 0, bArr2, bArr.length, bArrDecodeStrict.length);
        bArr2[r12 - 3] = (byte) r10;
        byte[] bArr3 = new byte[digest.getDigestSize()];
        for (int r102 = 1; r102 < 65536; r102++) {
            inc(bArr2);
            hash(digest, bArr2, bArr3, 0);
            BigInteger bigIntegerModPow = new BigInteger(1, bArr3).modPow(bigIntegerDivide, bigInteger);
            if (bigIntegerModPow.compareTo(TWO) >= 0) {
                return bigIntegerModPow;
            }
        }
        return null;
    }

    private DSAParameters generateParameters_FIPS186_2() {
        int r12 = 20;
        byte[] bArr = new byte[20];
        byte[] bArr2 = new byte[20];
        byte[] bArr3 = new byte[20];
        byte[] bArr4 = new byte[20];
        int r6 = this.L;
        int r72 = (r6 - 1) / 160;
        int r62 = r6 / 8;
        byte[] bArr5 = new byte[r62];
        if (!(this.digest instanceof SHA1Digest)) {
            throw new IllegalStateException("can only use SHA-1 for generating FIPS 186-2 parameters");
        }
        while (true) {
            this.random.nextBytes(bArr);
            hash(this.digest, bArr, bArr2, 0);
            System.arraycopy(bArr, 0, bArr3, 0, r12);
            inc(bArr3);
            hash(this.digest, bArr3, bArr3, 0);
            for (int r92 = 0; r92 != r12; r92++) {
                bArr4[r92] = (byte) (bArr2[r92] ^ bArr3[r92]);
            }
            bArr4[0] = (byte) (bArr4[0] | ISOFileInfo.DATA_BYTES1);
            bArr4[19] = (byte) (bArr4[19] | 1);
            BigInteger bigInteger = new BigInteger(1, bArr4);
            if (isProbablePrime(bigInteger)) {
                byte[] bArrClone = Arrays.clone(bArr);
                inc(bArrClone);
                int r13 = 0;
                while (r13 < 4096) {
                    for (int r14 = 1; r14 <= r72; r14++) {
                        inc(bArrClone);
                        hash(this.digest, bArrClone, bArr5, r62 - (r14 * 20));
                    }
                    int r15 = r62 - (r72 * 20);
                    inc(bArrClone);
                    hash(this.digest, bArrClone, bArr2, 0);
                    System.arraycopy(bArr2, 20 - r15, bArr5, 0, r15);
                    bArr5[0] = (byte) (bArr5[0] | ISOFileInfo.DATA_BYTES1);
                    BigInteger bigInteger2 = new BigInteger(1, bArr5);
                    BigInteger bigIntegerSubtract = bigInteger2.subtract(bigInteger2.mod(bigInteger.shiftLeft(1)).subtract(ONE));
                    if (bigIntegerSubtract.bitLength() == this.L && isProbablePrime(bigIntegerSubtract)) {
                        return new DSAParameters(bigIntegerSubtract, bigInteger, calculateGenerator_FIPS186_2(bigIntegerSubtract, bigInteger, this.random), new DSAValidationParameters(bArr, r13));
                    }
                    r13++;
                    r12 = 20;
                }
            }
        }
    }

    private DSAParameters generateParameters_FIPS186_3() {
        BigInteger bit;
        int r13;
        BigInteger bigIntegerSubtract;
        BigInteger bigIntegerCalculateGenerator_FIPS186_3_Verifiable;
        Digest digest = this.digest;
        int digestSize = digest.getDigestSize() * 8;
        byte[] bArr = new byte[this.N / 8];
        int r42 = this.L;
        int r52 = (r42 - 1) / digestSize;
        int r6 = (r42 - 1) % digestSize;
        int r43 = r42 / 8;
        byte[] bArr2 = new byte[r43];
        int digestSize2 = digest.getDigestSize();
        byte[] bArr3 = new byte[digestSize2];
        loop0: while (true) {
            this.random.nextBytes(bArr);
            int r82 = 0;
            hash(digest, bArr, bArr3, 0);
            bit = new BigInteger(1, bArr3).mod(ONE.shiftLeft(this.N - 1)).setBit(0).setBit(this.N - 1);
            if (isProbablePrime(bit)) {
                byte[] bArrClone = Arrays.clone(bArr);
                int r12 = this.L * 4;
                r13 = 0;
                while (r13 < r12) {
                    for (int r14 = 1; r14 <= r52; r14++) {
                        inc(bArrClone);
                        hash(digest, bArrClone, bArr2, r43 - (r14 * digestSize2));
                    }
                    int r142 = r43 - (r52 * digestSize2);
                    inc(bArrClone);
                    hash(digest, bArrClone, bArr3, r82);
                    System.arraycopy(bArr3, digestSize2 - r142, bArr2, r82, r142);
                    bArr2[r82] = (byte) (bArr2[r82] | ISOFileInfo.DATA_BYTES1);
                    BigInteger bigInteger = new BigInteger(1, bArr2);
                    bigIntegerSubtract = bigInteger.subtract(bigInteger.mod(bit.shiftLeft(1)).subtract(ONE));
                    if (bigIntegerSubtract.bitLength() == this.L && isProbablePrime(bigIntegerSubtract)) {
                        break loop0;
                    }
                    r13++;
                    r82 = 0;
                }
            }
        }
        int r22 = this.usageIndex;
        return (r22 < 0 || (bigIntegerCalculateGenerator_FIPS186_3_Verifiable = calculateGenerator_FIPS186_3_Verifiable(digest, bigIntegerSubtract, bit, bArr, r22)) == null) ? new DSAParameters(bigIntegerSubtract, bit, calculateGenerator_FIPS186_3_Unverifiable(bigIntegerSubtract, bit, this.random), new DSAValidationParameters(bArr, r13)) : new DSAParameters(bigIntegerSubtract, bit, bigIntegerCalculateGenerator_FIPS186_3_Verifiable, new DSAValidationParameters(bArr, r13, this.usageIndex));
    }

    private static int getDefaultN(int r12) {
        return r12 > 1024 ? 256 : 160;
    }

    private static int getMinimumIterations(int r12) {
        if (r12 <= 1024) {
            return 40;
        }
        return (((r12 - 1) / 1024) * 8) + 48;
    }

    private static void hash(Digest digest, byte[] bArr, byte[] bArr2, int r52) {
        digest.update(bArr, 0, bArr.length);
        digest.doFinal(bArr2, r52);
    }

    private static void inc(byte[] bArr) {
        for (int length = bArr.length - 1; length >= 0; length--) {
            byte b10 = (byte) ((bArr[length] + 1) & 255);
            bArr[length] = b10;
            if (b10 != 0) {
                return;
            }
        }
    }

    private boolean isProbablePrime(BigInteger bigInteger) {
        return bigInteger.isProbablePrime(this.certainty);
    }

    public DSAParameters generateParameters() {
        return this.use186_3 ? generateParameters_FIPS186_3() : generateParameters_FIPS186_2();
    }

    public void init(int r12, int r22, SecureRandom secureRandom) {
        this.L = r12;
        this.N = getDefaultN(r12);
        this.certainty = r22;
        this.iterations = Math.max(getMinimumIterations(this.L), (r22 + 1) / 2);
        this.random = secureRandom;
        this.use186_3 = false;
        this.usageIndex = -1;
    }

    public void init(DSAParameterGenerationParameters dSAParameterGenerationParameters) {
        int l5 = dSAParameterGenerationParameters.getL();
        int n10 = dSAParameterGenerationParameters.getN();
        if (l5 < 1024 || l5 > 3072 || l5 % 1024 != 0) {
            throw new IllegalArgumentException("L values must be between 1024 and 3072 and a multiple of 1024");
        }
        if (l5 == 1024 && n10 != 160) {
            throw new IllegalArgumentException("N must be 160 for L = 1024");
        }
        if (l5 == 2048 && n10 != 224 && n10 != 256) {
            throw new IllegalArgumentException("N must be 224 or 256 for L = 2048");
        }
        if (l5 == 3072 && n10 != 256) {
            throw new IllegalArgumentException("N must be 256 for L = 3072");
        }
        if (this.digest.getDigestSize() * 8 < n10) {
            throw new IllegalStateException("Digest output size too small for value of N");
        }
        this.L = l5;
        this.N = n10;
        this.certainty = dSAParameterGenerationParameters.getCertainty();
        this.iterations = Math.max(getMinimumIterations(l5), (this.certainty + 1) / 2);
        this.random = dSAParameterGenerationParameters.getRandom();
        this.use186_3 = true;
        this.usageIndex = dSAParameterGenerationParameters.getUsageIndex();
    }
}
