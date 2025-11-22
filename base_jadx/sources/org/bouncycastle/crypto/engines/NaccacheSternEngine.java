package org.bouncycastle.crypto.engines;

import java.math.BigInteger;
import java.util.Vector;
import org.bouncycastle.crypto.AsymmetricBlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.constraints.ConstraintUtils;
import org.bouncycastle.crypto.constraints.DefaultServiceProperties;
import org.bouncycastle.crypto.params.NaccacheSternKeyParameters;
import org.bouncycastle.crypto.params.NaccacheSternPrivateKeyParameters;
import org.bouncycastle.crypto.params.ParametersWithRandom;
import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
public class NaccacheSternEngine implements AsymmetricBlockCipher {
    private boolean forEncryption;
    private NaccacheSternKeyParameters key;
    private static BigInteger ZERO = BigInteger.valueOf(0);
    private static BigInteger ONE = BigInteger.valueOf(1);
    private Vector[] lookup = null;
    private boolean debug = false;

    private static BigInteger chineseRemainder(Vector vector, Vector vector2) {
        BigInteger bigIntegerAdd = ZERO;
        BigInteger bigIntegerMultiply = ONE;
        for (int r32 = 0; r32 < vector2.size(); r32++) {
            bigIntegerMultiply = bigIntegerMultiply.multiply((BigInteger) vector2.elementAt(r32));
        }
        for (int r22 = 0; r22 < vector2.size(); r22++) {
            BigInteger bigInteger = (BigInteger) vector2.elementAt(r22);
            BigInteger bigIntegerDivide = bigIntegerMultiply.divide(bigInteger);
            bigIntegerAdd = bigIntegerAdd.add(bigIntegerDivide.multiply(bigIntegerDivide.modInverse(bigInteger)).multiply((BigInteger) vector.elementAt(r22)));
        }
        return bigIntegerAdd.mod(bigIntegerMultiply);
    }

    public byte[] addCryptedBlocks(byte[] bArr, byte[] bArr2) throws InvalidCipherTextException {
        if (this.forEncryption) {
            if (bArr.length > getOutputBlockSize() || bArr2.length > getOutputBlockSize()) {
                throw new InvalidCipherTextException("BlockLength too large for simple addition.\n");
            }
        } else if (bArr.length > getInputBlockSize() || bArr2.length > getInputBlockSize()) {
            throw new InvalidCipherTextException("BlockLength too large for simple addition.\n");
        }
        BigInteger bigInteger = new BigInteger(1, bArr);
        BigInteger bigInteger2 = new BigInteger(1, bArr2);
        BigInteger bigIntegerMod = bigInteger.multiply(bigInteger2).mod(this.key.getModulus());
        if (this.debug) {
            System.out.println("c(m1) as BigInteger:....... " + bigInteger);
            System.out.println("c(m2) as BigInteger:....... " + bigInteger2);
            System.out.println("c(m1)*c(m2)%n = c(m1+m2)%n: " + bigIntegerMod);
        }
        byte[] byteArray = this.key.getModulus().toByteArray();
        Arrays.fill(byteArray, (byte) 0);
        System.arraycopy(bigIntegerMod.toByteArray(), 0, byteArray, byteArray.length - bigIntegerMod.toByteArray().length, bigIntegerMod.toByteArray().length);
        return byteArray;
    }

    public byte[] encrypt(BigInteger bigInteger) {
        byte[] byteArray = this.key.getModulus().toByteArray();
        Arrays.fill(byteArray, (byte) 0);
        byte[] byteArray2 = this.key.getG().modPow(bigInteger, this.key.getModulus()).toByteArray();
        System.arraycopy(byteArray2, 0, byteArray, byteArray.length - byteArray2.length, byteArray2.length);
        if (this.debug) {
            System.out.println("Encrypted value is:  " + new BigInteger(byteArray));
        }
        return byteArray;
    }

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public int getInputBlockSize() {
        return this.forEncryption ? ((this.key.getLowerSigmaBound() + 7) / 8) - 1 : this.key.getModulus().toByteArray().length;
    }

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public int getOutputBlockSize() {
        return this.forEncryption ? this.key.getModulus().toByteArray().length : ((this.key.getLowerSigmaBound() + 7) / 8) - 1;
    }

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public void init(boolean z10, CipherParameters cipherParameters) {
        this.forEncryption = z10;
        if (cipherParameters instanceof ParametersWithRandom) {
            cipherParameters = ((ParametersWithRandom) cipherParameters).getParameters();
        }
        this.key = (NaccacheSternKeyParameters) cipherParameters;
        if (!this.forEncryption) {
            if (this.debug) {
                System.out.println("Constructing lookup Array");
            }
            NaccacheSternPrivateKeyParameters naccacheSternPrivateKeyParameters = (NaccacheSternPrivateKeyParameters) this.key;
            Vector smallPrimes = naccacheSternPrivateKeyParameters.getSmallPrimes();
            this.lookup = new Vector[smallPrimes.size()];
            for (int r22 = 0; r22 < smallPrimes.size(); r22++) {
                BigInteger bigInteger = (BigInteger) smallPrimes.elementAt(r22);
                int r42 = bigInteger.intValue();
                this.lookup[r22] = new Vector();
                this.lookup[r22].addElement(ONE);
                if (this.debug) {
                    System.out.println("Constructing lookup ArrayList for " + r42);
                }
                BigInteger bigIntegerAdd = ZERO;
                for (int r6 = 1; r6 < r42; r6++) {
                    bigIntegerAdd = bigIntegerAdd.add(naccacheSternPrivateKeyParameters.getPhi_n());
                    this.lookup[r22].addElement(naccacheSternPrivateKeyParameters.getG().modPow(bigIntegerAdd.divide(bigInteger), naccacheSternPrivateKeyParameters.getModulus()));
                }
            }
        }
        CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties("NaccacheStern", ConstraintUtils.bitsOfSecurityFor(this.key.getModulus()), cipherParameters, Utils.getPurpose(z10)));
    }

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public byte[] processBlock(byte[] bArr, int r92, int r10) throws InvalidCipherTextException {
        if (this.key == null) {
            throw new IllegalStateException("NaccacheStern engine not initialised");
        }
        if (r10 > getInputBlockSize() + 1) {
            throw new DataLengthException("input too large for Naccache-Stern cipher.\n");
        }
        if (!this.forEncryption && r10 < getInputBlockSize()) {
            throw new InvalidCipherTextException("BlockLength does not match modulus for Naccache-Stern cipher.\n");
        }
        if (r92 != 0 || r10 != bArr.length) {
            byte[] bArr2 = new byte[r10];
            System.arraycopy(bArr, r92, bArr2, 0, r10);
            bArr = bArr2;
        }
        BigInteger bigInteger = new BigInteger(1, bArr);
        if (this.debug) {
            System.out.println("input as BigInteger: " + bigInteger);
        }
        if (this.forEncryption) {
            return encrypt(bigInteger);
        }
        Vector vector = new Vector();
        NaccacheSternPrivateKeyParameters naccacheSternPrivateKeyParameters = (NaccacheSternPrivateKeyParameters) this.key;
        Vector smallPrimes = naccacheSternPrivateKeyParameters.getSmallPrimes();
        for (int r22 = 0; r22 < smallPrimes.size(); r22++) {
            BigInteger bigIntegerModPow = bigInteger.modPow(naccacheSternPrivateKeyParameters.getPhi_n().divide((BigInteger) smallPrimes.elementAt(r22)), naccacheSternPrivateKeyParameters.getModulus());
            Vector vector2 = this.lookup[r22];
            if (vector2.size() != ((BigInteger) smallPrimes.elementAt(r22)).intValue()) {
                if (this.debug) {
                    System.out.println("Prime is " + smallPrimes.elementAt(r22) + ", lookup table has size " + vector2.size());
                }
                throw new InvalidCipherTextException("Error in lookup Array for " + ((BigInteger) smallPrimes.elementAt(r22)).intValue() + ": Size mismatch. Expected ArrayList with length " + ((BigInteger) smallPrimes.elementAt(r22)).intValue() + " but found ArrayList of length " + this.lookup[r22].size());
            }
            int r42 = vector2.indexOf(bigIntegerModPow);
            if (r42 == -1) {
                if (this.debug) {
                    System.out.println("Actual prime is " + smallPrimes.elementAt(r22));
                    System.out.println("Decrypted value is " + bigIntegerModPow);
                    System.out.println("LookupList for " + smallPrimes.elementAt(r22) + " with size " + this.lookup[r22].size() + " is: ");
                    for (int r02 = 0; r02 < this.lookup[r22].size(); r02++) {
                        System.out.println(this.lookup[r22].elementAt(r02));
                    }
                }
                throw new InvalidCipherTextException("Lookup failed");
            }
            vector.addElement(BigInteger.valueOf(r42));
        }
        return chineseRemainder(vector, smallPrimes).toByteArray();
    }

    public byte[] processData(byte[] bArr) throws InvalidCipherTextException {
        byte[] bArrProcessBlock;
        if (this.debug) {
            System.out.println();
        }
        if (bArr.length <= getInputBlockSize()) {
            if (this.debug) {
                System.out.println("data size is less then input block size, processing directly");
            }
            return processBlock(bArr, 0, bArr.length);
        }
        int inputBlockSize = getInputBlockSize();
        int outputBlockSize = getOutputBlockSize();
        if (this.debug) {
            System.out.println("Input blocksize is:  " + inputBlockSize + " bytes");
            System.out.println("Output blocksize is: " + outputBlockSize + " bytes");
            System.out.println("Data has length:.... " + bArr.length + " bytes");
        }
        byte[] bArr2 = new byte[((bArr.length / inputBlockSize) + 1) * outputBlockSize];
        int length = 0;
        int length2 = 0;
        while (length < bArr.length) {
            int r6 = length + inputBlockSize;
            if (r6 < bArr.length) {
                bArrProcessBlock = processBlock(bArr, length, inputBlockSize);
                length = r6;
            } else {
                bArrProcessBlock = processBlock(bArr, length, bArr.length - length);
                length = (bArr.length - length) + length;
            }
            if (this.debug) {
                System.out.println("new datapos is " + length);
            }
            if (bArrProcessBlock == null) {
                if (this.debug) {
                    System.out.println("cipher returned null");
                }
                throw new InvalidCipherTextException("cipher returned null");
            }
            System.arraycopy(bArrProcessBlock, 0, bArr2, length2, bArrProcessBlock.length);
            length2 += bArrProcessBlock.length;
        }
        byte[] bArr3 = new byte[length2];
        System.arraycopy(bArr2, 0, bArr3, 0, length2);
        if (this.debug) {
            System.out.println("returning " + length2 + " bytes");
        }
        return bArr3;
    }

    public void setDebug(boolean z10) {
        this.debug = z10;
    }
}
