package org.bouncycastle.crypto.tls;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.crypto.CryptoServicePurpose;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.constraints.ConstraintUtils;
import org.bouncycastle.crypto.constraints.DefaultServiceProperties;
import org.bouncycastle.crypto.params.RSAKeyParameters;
import org.bouncycastle.crypto.params.RSAPrivateCrtKeyParameters;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.BigIntegers;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
public abstract class TlsRsaKeyExchange {
    private static final BigInteger ONE = BigInteger.valueOf(1);
    public static final int PRE_MASTER_SECRET_LENGTH = 48;

    private TlsRsaKeyExchange() {
    }

    private static int caddTo(int r32, int r42, byte[] bArr, byte[] bArr2) {
        int r43 = r42 & 255;
        int r02 = 0;
        for (int r33 = r32 - 1; r33 >= 0; r33--) {
            int r12 = (bArr2[r33] & 255) + (bArr[r33] & r43) + r02;
            bArr2[r33] = (byte) r12;
            r02 = r12 >>> 8;
        }
        return r02;
    }

    private static int checkPkcs1Encoding2(byte[] bArr, int r42, int r52) {
        int r02 = (r42 - r52) - 10;
        int length = bArr.length - r42;
        int length2 = (bArr.length - 1) - r52;
        for (int r53 = 0; r53 < length; r53++) {
            r02 |= -(bArr[r53] & 255);
        }
        int r54 = -((bArr[length] & 255) ^ 2);
        while (true) {
            r54 |= r02;
            length++;
            if (length >= length2) {
                return ((-(bArr[length2] & 255)) | r54) >> 31;
            }
            r02 = (bArr[length] & 255) - 1;
        }
    }

    private static BigInteger convertInput(BigInteger bigInteger, byte[] bArr, int r22, int r32) {
        BigInteger bigIntegerFromUnsignedByteArray = BigIntegers.fromUnsignedByteArray(bArr, r22, r32);
        if (bigIntegerFromUnsignedByteArray.compareTo(bigInteger) < 0) {
            return bigIntegerFromUnsignedByteArray;
        }
        throw new DataLengthException("input too large for RSA cipher.");
    }

    public static byte[] decryptPreMasterSecret(byte[] bArr, int r82, int r92, RSAKeyParameters rSAKeyParameters, int r11, SecureRandom secureRandom) {
        if (bArr == null || r92 < 1 || r92 > getInputLimit(rSAKeyParameters) || r82 < 0 || r82 > bArr.length - r92) {
            throw new IllegalArgumentException("input not a valid EncryptedPreMasterSecret");
        }
        if (!rSAKeyParameters.isPrivate()) {
            throw new IllegalArgumentException("'privateKey' must be an RSA private key");
        }
        BigInteger modulus = rSAKeyParameters.getModulus();
        int r22 = modulus.bitLength();
        if (r22 < 512) {
            throw new IllegalArgumentException("'privateKey' must be at least 512 bits");
        }
        CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties("RSA", ConstraintUtils.bitsOfSecurityFor(modulus), rSAKeyParameters, CryptoServicePurpose.DECRYPTION));
        if ((r11 & 65535) != r11) {
            throw new IllegalArgumentException("'protocolVersion' must be a 16 bit value");
        }
        SecureRandom secureRandom2 = CryptoServicesRegistrar.getSecureRandom(secureRandom);
        byte[] bArr2 = new byte[48];
        secureRandom2.nextBytes(bArr2);
        try {
            byte[] bArrRsaBlinded = rsaBlinded(rSAKeyParameters, convertInput(modulus, bArr, r82, r92), secureRandom2);
            int length = bArrRsaBlinded.length - 48;
            int r93 = checkPkcs1Encoding2(bArrRsaBlinded, (r22 - 1) / 8, 48) | ((-((Pack.bigEndianToShort(bArrRsaBlinded, length) ^ r11) & 65535)) >> 31);
            for (int r112 = 0; r112 < 48; r112++) {
                bArr2[r112] = (byte) ((bArr2[r112] & r93) | (bArrRsaBlinded[length + r112] & (~r93)));
            }
            Arrays.fill(bArrRsaBlinded, (byte) 0);
        } catch (Exception unused) {
        }
        return bArr2;
    }

    public static int getInputLimit(RSAKeyParameters rSAKeyParameters) {
        return (rSAKeyParameters.getModulus().bitLength() + 7) / 8;
    }

    private static BigInteger rsa(RSAKeyParameters rSAKeyParameters, BigInteger bigInteger) {
        return bigInteger.modPow(rSAKeyParameters.getExponent(), rSAKeyParameters.getModulus());
    }

    private static byte[] rsaBlinded(RSAKeyParameters rSAKeyParameters, BigInteger bigInteger, SecureRandom secureRandom) {
        RSAPrivateCrtKeyParameters rSAPrivateCrtKeyParameters;
        BigInteger publicExponent;
        BigInteger modulus = rSAKeyParameters.getModulus();
        int r12 = (modulus.bitLength() / 8) + 1;
        if (!(rSAKeyParameters instanceof RSAPrivateCrtKeyParameters) || (publicExponent = (rSAPrivateCrtKeyParameters = (RSAPrivateCrtKeyParameters) rSAKeyParameters).getPublicExponent()) == null) {
            return toBytes(rsa(rSAKeyParameters, bigInteger), r12);
        }
        BigInteger bigInteger2 = ONE;
        BigInteger bigIntegerCreateRandomInRange = BigIntegers.createRandomInRange(bigInteger2, modulus.subtract(bigInteger2), secureRandom);
        BigInteger bigIntegerModPow = bigIntegerCreateRandomInRange.modPow(publicExponent, modulus);
        BigInteger bigIntegerModOddInverse = BigIntegers.modOddInverse(modulus, bigIntegerCreateRandomInRange);
        BigInteger bigIntegerRsaCrt = rsaCrt(rSAPrivateCrtKeyParameters, bigIntegerModPow.multiply(bigInteger).mod(modulus));
        BigInteger bigIntegerMod = bigIntegerModOddInverse.add(bigInteger2).multiply(bigIntegerRsaCrt).mod(modulus);
        byte[] bytes = toBytes(bigIntegerRsaCrt, r12);
        byte[] bytes2 = toBytes(modulus, r12);
        byte[] bytes3 = toBytes(bigIntegerMod, r12);
        caddTo(r12, subFrom(r12, bytes, bytes3), bytes2, bytes3);
        return bytes3;
    }

    private static BigInteger rsaCrt(RSAPrivateCrtKeyParameters rSAPrivateCrtKeyParameters, BigInteger bigInteger) {
        BigInteger publicExponent = rSAPrivateCrtKeyParameters.getPublicExponent();
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

    private static int subFrom(int r32, byte[] bArr, byte[] bArr2) {
        int r02 = 0;
        for (int r33 = r32 - 1; r33 >= 0; r33--) {
            int r12 = ((bArr2[r33] & 255) - (bArr[r33] & 255)) + r02;
            bArr2[r33] = (byte) r12;
            r02 = r12 >> 8;
        }
        return r02;
    }

    private static byte[] toBytes(BigInteger bigInteger, int r42) {
        byte[] byteArray = bigInteger.toByteArray();
        byte[] bArr = new byte[r42];
        System.arraycopy(byteArray, 0, bArr, r42 - byteArray.length, byteArray.length);
        return bArr;
    }
}
