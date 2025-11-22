package org.bouncycastle.crypto.engines;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.crypto.AsymmetricBlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.constraints.ConstraintUtils;
import org.bouncycastle.crypto.constraints.DefaultServiceProperties;
import org.bouncycastle.crypto.params.ElGamalKeyParameters;
import org.bouncycastle.crypto.params.ElGamalPrivateKeyParameters;
import org.bouncycastle.crypto.params.ElGamalPublicKeyParameters;
import org.bouncycastle.crypto.params.ParametersWithRandom;
import org.bouncycastle.util.BigIntegers;

/* loaded from: classes2.dex */
public class ElGamalEngine implements AsymmetricBlockCipher {
    private int bitSize;
    private boolean forEncryption;
    private ElGamalKeyParameters key;
    private SecureRandom random;
    private static final BigInteger ZERO = BigInteger.valueOf(0);
    private static final BigInteger ONE = BigInteger.valueOf(1);
    private static final BigInteger TWO = BigInteger.valueOf(2);

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public int getInputBlockSize() {
        return this.forEncryption ? (this.bitSize - 1) / 8 : ((this.bitSize + 7) / 8) * 2;
    }

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public int getOutputBlockSize() {
        return this.forEncryption ? ((this.bitSize + 7) / 8) * 2 : (this.bitSize - 1) / 8;
    }

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public void init(boolean z10, CipherParameters cipherParameters) {
        SecureRandom secureRandom;
        if (cipherParameters instanceof ParametersWithRandom) {
            ParametersWithRandom parametersWithRandom = (ParametersWithRandom) cipherParameters;
            this.key = (ElGamalKeyParameters) parametersWithRandom.getParameters();
            secureRandom = parametersWithRandom.getRandom();
        } else {
            this.key = (ElGamalKeyParameters) cipherParameters;
            secureRandom = CryptoServicesRegistrar.getSecureRandom();
        }
        this.random = secureRandom;
        this.forEncryption = z10;
        this.bitSize = this.key.getParameters().getP().bitLength();
        ElGamalKeyParameters elGamalKeyParameters = this.key;
        if (z10) {
            if (!(elGamalKeyParameters instanceof ElGamalPublicKeyParameters)) {
                throw new IllegalArgumentException("ElGamalPublicKeyParameters are required for encryption.");
            }
        } else if (!(elGamalKeyParameters instanceof ElGamalPrivateKeyParameters)) {
            throw new IllegalArgumentException("ElGamalPrivateKeyParameters are required for decryption.");
        }
        CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties("RSA", ConstraintUtils.bitsOfSecurityFor(this.key.getParameters().getP()), this.key, Utils.getPurpose(z10)));
    }

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public byte[] processBlock(byte[] bArr, int r82, int r92) {
        BigInteger bigIntegerCreateRandomBigInteger;
        if (this.key == null) {
            throw new IllegalStateException("ElGamal engine not initialised");
        }
        if (r92 > (this.forEncryption ? ((this.bitSize - 1) + 7) / 8 : getInputBlockSize())) {
            throw new DataLengthException("input too large for ElGamal cipher.\n");
        }
        BigInteger p10 = this.key.getParameters().getP();
        if (this.key instanceof ElGamalPrivateKeyParameters) {
            int r93 = r92 / 2;
            byte[] bArr2 = new byte[r93];
            byte[] bArr3 = new byte[r93];
            System.arraycopy(bArr, r82, bArr2, 0, r93);
            System.arraycopy(bArr, r82 + r93, bArr3, 0, r93);
            return BigIntegers.asUnsignedByteArray(new BigInteger(1, bArr2).modPow(p10.subtract(ONE).subtract(((ElGamalPrivateKeyParameters) this.key).getX()), p10).multiply(new BigInteger(1, bArr3)).mod(p10));
        }
        if (r82 != 0 || r92 != bArr.length) {
            byte[] bArr4 = new byte[r92];
            System.arraycopy(bArr, r82, bArr4, 0, r92);
            bArr = bArr4;
        }
        BigInteger bigInteger = new BigInteger(1, bArr);
        if (bigInteger.compareTo(p10) >= 0) {
            throw new DataLengthException("input too large for ElGamal cipher.\n");
        }
        ElGamalPublicKeyParameters elGamalPublicKeyParameters = (ElGamalPublicKeyParameters) this.key;
        int r94 = p10.bitLength();
        while (true) {
            bigIntegerCreateRandomBigInteger = BigIntegers.createRandomBigInteger(r94, this.random);
            if (!bigIntegerCreateRandomBigInteger.equals(ZERO) && bigIntegerCreateRandomBigInteger.compareTo(p10.subtract(TWO)) <= 0) {
                break;
            }
        }
        BigInteger bigIntegerModPow = this.key.getParameters().getG().modPow(bigIntegerCreateRandomBigInteger, p10);
        BigInteger bigIntegerMod = bigInteger.multiply(elGamalPublicKeyParameters.getY().modPow(bigIntegerCreateRandomBigInteger, p10)).mod(p10);
        byte[] byteArray = bigIntegerModPow.toByteArray();
        byte[] byteArray2 = bigIntegerMod.toByteArray();
        int outputBlockSize = getOutputBlockSize();
        byte[] bArr5 = new byte[outputBlockSize];
        int r32 = outputBlockSize / 2;
        if (byteArray.length > r32) {
            System.arraycopy(byteArray, 1, bArr5, r32 - (byteArray.length - 1), byteArray.length - 1);
        } else {
            System.arraycopy(byteArray, 0, bArr5, r32 - byteArray.length, byteArray.length);
        }
        if (byteArray2.length > r32) {
            System.arraycopy(byteArray2, 1, bArr5, outputBlockSize - (byteArray2.length - 1), byteArray2.length - 1);
        } else {
            System.arraycopy(byteArray2, 0, bArr5, outputBlockSize - byteArray2.length, byteArray2.length);
        }
        return bArr5;
    }
}
