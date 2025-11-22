package org.bouncycastle.crypto.engines;

import java.math.BigInteger;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicePurpose;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.constraints.ConstraintUtils;
import org.bouncycastle.crypto.constraints.DefaultServiceProperties;
import org.bouncycastle.crypto.params.ParametersWithRandom;
import org.bouncycastle.crypto.params.RSAKeyParameters;
import org.bouncycastle.crypto.params.RSAPrivateCrtKeyParameters;
import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
class RSACoreEngine {
    private boolean forEncryption;
    private RSAKeyParameters key;

    private CryptoServicePurpose getPurpose(boolean z10, boolean z11) {
        return z10 && z11 ? CryptoServicePurpose.SIGNING : !z10 && z11 ? CryptoServicePurpose.ENCRYPTION : (z10 || z11) ? false : true ? CryptoServicePurpose.VERIFYING : CryptoServicePurpose.DECRYPTION;
    }

    public BigInteger convertInput(byte[] bArr, int r6, int r72) {
        if (r72 > getInputBlockSize() + 1) {
            throw new DataLengthException("input too large for RSA cipher.");
        }
        if (r72 == getInputBlockSize() + 1 && !this.forEncryption) {
            throw new DataLengthException("input too large for RSA cipher.");
        }
        if (r6 != 0 || r72 != bArr.length) {
            byte[] bArr2 = new byte[r72];
            System.arraycopy(bArr, r6, bArr2, 0, r72);
            bArr = bArr2;
        }
        BigInteger bigInteger = new BigInteger(1, bArr);
        if (bigInteger.compareTo(this.key.getModulus()) < 0) {
            return bigInteger;
        }
        throw new DataLengthException("input too large for RSA cipher.");
    }

    public byte[] convertOutput(BigInteger bigInteger) {
        byte[] bArr;
        byte[] byteArray = bigInteger.toByteArray();
        if (!this.forEncryption) {
            if (byteArray[0] == 0) {
                int length = byteArray.length - 1;
                bArr = new byte[length];
                System.arraycopy(byteArray, 1, bArr, 0, length);
            } else {
                int length2 = byteArray.length;
                bArr = new byte[length2];
                System.arraycopy(byteArray, 0, bArr, 0, length2);
            }
            Arrays.fill(byteArray, (byte) 0);
            return bArr;
        }
        if (byteArray[0] == 0 && byteArray.length > getOutputBlockSize()) {
            int length3 = byteArray.length - 1;
            byte[] bArr2 = new byte[length3];
            System.arraycopy(byteArray, 1, bArr2, 0, length3);
            return bArr2;
        }
        if (byteArray.length >= getOutputBlockSize()) {
            return byteArray;
        }
        int outputBlockSize = getOutputBlockSize();
        byte[] bArr3 = new byte[outputBlockSize];
        System.arraycopy(byteArray, 0, bArr3, outputBlockSize - byteArray.length, byteArray.length);
        return bArr3;
    }

    public int getInputBlockSize() {
        int r02 = (this.key.getModulus().bitLength() + 7) / 8;
        return this.forEncryption ? r02 - 1 : r02;
    }

    public int getOutputBlockSize() {
        int r02 = (this.key.getModulus().bitLength() + 7) / 8;
        return this.forEncryption ? r02 : r02 - 1;
    }

    public void init(boolean z10, CipherParameters cipherParameters) {
        if (cipherParameters instanceof ParametersWithRandom) {
            cipherParameters = ((ParametersWithRandom) cipherParameters).getParameters();
        }
        this.forEncryption = z10;
        RSAKeyParameters rSAKeyParameters = (RSAKeyParameters) cipherParameters;
        this.key = rSAKeyParameters;
        CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties("RSA", ConstraintUtils.bitsOfSecurityFor(rSAKeyParameters.getModulus()), this.key, getPurpose(this.key.isPrivate(), z10)));
    }

    public BigInteger processBlock(BigInteger bigInteger) {
        RSAPrivateCrtKeyParameters rSAPrivateCrtKeyParameters;
        BigInteger publicExponent;
        RSAKeyParameters rSAKeyParameters = this.key;
        if (!(rSAKeyParameters instanceof RSAPrivateCrtKeyParameters) || (publicExponent = (rSAPrivateCrtKeyParameters = (RSAPrivateCrtKeyParameters) rSAKeyParameters).getPublicExponent()) == null) {
            return bigInteger.modPow(this.key.getExponent(), this.key.getModulus());
        }
        BigInteger p10 = rSAPrivateCrtKeyParameters.getP();
        BigInteger q10 = rSAPrivateCrtKeyParameters.getQ();
        BigInteger dp = rSAPrivateCrtKeyParameters.getDP();
        BigInteger dq = rSAPrivateCrtKeyParameters.getDQ();
        BigInteger qInv = rSAPrivateCrtKeyParameters.getQInv();
        BigInteger bigIntegerModPow = bigInteger.remainder(p10).modPow(dp, p10);
        BigInteger bigIntegerModPow2 = bigInteger.remainder(q10).modPow(dq, q10);
        BigInteger bigIntegerAdd = bigIntegerModPow.subtract(bigIntegerModPow2).multiply(qInv).mod(p10).multiply(q10).add(bigIntegerModPow2);
        if (bigIntegerAdd.modPow(publicExponent, rSAPrivateCrtKeyParameters.getModulus()).equals(bigInteger)) {
            return bigIntegerAdd;
        }
        throw new IllegalStateException("RSA engine faulty decryption/signing detected");
    }
}
