package org.jmrtd.protocol;

import androidx.browser.browseractions.a;
import androidx.browser.browseractions.b;
import androidx.camera.camera2.internal.c;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.InvalidParameterException;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.Provider;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.interfaces.ECPrivateKey;
import java.security.interfaces.ECPublicKey;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.ECFieldFp;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPoint;
import java.security.spec.ECPublicKeySpec;
import java.security.spec.EllipticCurve;
import java.security.spec.KeySpec;
import java.util.Arrays;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.crypto.Cipher;
import javax.crypto.KeyAgreement;
import javax.crypto.Mac;
import javax.crypto.SecretKey;
import javax.crypto.interfaces.DHPrivateKey;
import javax.crypto.interfaces.DHPublicKey;
import javax.crypto.spec.DHParameterSpec;
import javax.crypto.spec.DHPublicKeySpec;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import net.sf.scuba.smartcards.CardServiceException;
import net.sf.scuba.smartcards.ISO7816;
import net.sf.scuba.smartcards.ISOFileInfo;
import net.sf.scuba.tlv.TLVInputStream;
import net.sf.scuba.tlv.TLVOutputStream;
import net.sf.scuba.tlv.TLVUtil;
import net.sf.scuba.util.Hex;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.pqc.jcajce.spec.McElieceCCA2KeyGenParameterSpec;
import org.jmrtd.APDULevelPACECapable;
import org.jmrtd.AccessKeySpec;
import org.jmrtd.BACKeySpec;
import org.jmrtd.CardServiceProtocolException;
import org.jmrtd.PACEKeySpec;
import org.jmrtd.Util;
import org.jmrtd.cbeff.ISO781611;
import org.jmrtd.lds.CVCAFile;
import org.jmrtd.lds.PACEInfo;

/* loaded from: classes2.dex */
public class PACEProtocol {
    private int maxTranceiveLengthForProtocol;
    private int maxTranceiveLengthForSecureMessaging;
    private Random random;
    private APDULevelPACECapable service;
    private boolean shouldCheckMAC;
    private SecureMessagingWrapper wrapper;
    private static final Logger LOGGER = Logger.getLogger("org.jmrtd");
    private static final Provider BC_PROVIDER = Util.getBouncyCastleProvider();
    private static final byte[] IV_FOR_PACE_CAM_DECRYPTION = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};
    private static final byte[] C0_LENGTH_128 = {-90, 104, -119, ISO7816.INS_PSO, 124, 65, -29, ISO7816.INS_GET_DATA, 115, -97, 64, ISO7816.INS_READ_BINARY, 87, ISO7816.INS_LOAD_KEY_FILE, 89, 4};
    private static final byte[] C1_LENGTH_128 = {-92, -31, 54, -84, 114, 95, 115, ISOFileInfo.SECURITY_ATTR_EXP, 1, -63, -10, 2, 23, -63, -120, -83};
    private static final byte[] C0_LENGTH_256 = {-44, 99, ISO7816.INS_UPDATE_BINARY, 82, ISO7816.INS_DECREASE_STAMPED, 18, 78, -9, -119, ISO7816.INS_MANAGE_CHANNEL, 84, -104, 109, ISO7816.INS_GET_DATA, 10, 23, 78, 40, -33, 117, ISOFileInfo.SECURITY_ATTR_COMPACT, -70, ISOFileInfo.A0, 63, ISO7816.INS_CHANGE_CHV, 6, 22, 65, 77, 90, 22, 118};
    private static final byte[] C1_LENGTH_256 = {84, -67, 114, 85, -16, -86, -8, 49, -66, -61, CVCAFile.CAR_TAG, 63, -49, 57, ISO7816.INS_UPDATE_BINARY, -101, 108, -65, 6, 102, 119, ISO7816.INS_WRITE_BINARY, -6, -82, 90, -83, -39, -99, -8, -27, 53, 23};

    /* renamed from: org.jmrtd.protocol.PACEProtocol$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$jmrtd$lds$PACEInfo$MappingType;

        static {
            int[] r02 = new int[PACEInfo.MappingType.values().length];
            $SwitchMap$org$jmrtd$lds$PACEInfo$MappingType = r02;
            try {
                r02[PACEInfo.MappingType.CAM.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$jmrtd$lds$PACEInfo$MappingType[PACEInfo.MappingType.GM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$jmrtd$lds$PACEInfo$MappingType[PACEInfo.MappingType.IM.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public PACEProtocol(APDULevelPACECapable aPDULevelPACECapable, SecureMessagingWrapper secureMessagingWrapper, int r32, int r42, boolean z10) {
        this.service = aPDULevelPACECapable;
        this.wrapper = secureMessagingWrapper;
        this.maxTranceiveLengthForProtocol = r32;
        this.maxTranceiveLengthForSecureMessaging = r42;
        this.shouldCheckMAC = z10;
        this.random = new SecureRandom();
    }

    @Deprecated
    public PACEProtocol(APDULevelPACECapable aPDULevelPACECapable, SecureMessagingWrapper secureMessagingWrapper, int r92, boolean z10) {
        this(aPDULevelPACECapable, secureMessagingWrapper, 256, r92, z10);
    }

    private void checkConsistency(String str, String str2, String str3, int r82, AlgorithmParameterSpec algorithmParameterSpec) {
        if (str == null) {
            throw new IllegalArgumentException("Unknown agreement algorithm");
        }
        if (!"ECDH".equalsIgnoreCase(str) && !"DH".equalsIgnoreCase(str)) {
            throw new IllegalArgumentException(a.a("Unsupported agreement algorithm, expected \"ECDH\" or \"DH\", found \"", str, "\""));
        }
        if (str2 == null) {
            throw new IllegalArgumentException("Unknown cipher algorithm");
        }
        if (!"DESede".equalsIgnoreCase(str2) && !"AES".equalsIgnoreCase(str2)) {
            throw new IllegalArgumentException(a.a("Unsupported cipher algorithm, expected \"DESede\" or \"AES\", found \"", str2, "\""));
        }
        if (!McElieceCCA2KeyGenParameterSpec.SHA1.equalsIgnoreCase(str3) && !"SHA1".equalsIgnoreCase(str3) && !"SHA-256".equalsIgnoreCase(str3) && !"SHA256".equalsIgnoreCase(str3)) {
            throw new IllegalArgumentException(a.a("Unsupported cipher algorithm, expected \"SHA-1\" or \"SHA-256\", found \"", str3, "\""));
        }
        if (r82 != 128 && r82 != 192 && r82 != 256) {
            throw new IllegalArgumentException(android.support.v4.media.a.d("Unsupported key length, expected 128, 192, or 256, found ", r82));
        }
        if ("ECDH".equalsIgnoreCase(str) && !(algorithmParameterSpec instanceof ECParameterSpec)) {
            StringBuilder sbL = android.support.v4.media.a.l("Expected ECParameterSpec for agreement algorithm \"", str, "\", found ");
            sbL.append(algorithmParameterSpec.getClass().getCanonicalName());
            throw new IllegalArgumentException(sbL.toString());
        }
        if (!"DH".equalsIgnoreCase(str) || (algorithmParameterSpec instanceof DHParameterSpec)) {
            return;
        }
        StringBuilder sbL2 = android.support.v4.media.a.l("Expected DHParameterSpec for agreement algorithm \"", str, "\", found ");
        sbL2.append(algorithmParameterSpec.getClass().getCanonicalName());
        throw new IllegalArgumentException(sbL2.toString());
    }

    public static byte[] computeKeySeedForPACE(String str) throws GeneralSecurityException {
        return Util.computeKeySeed(str, McElieceCCA2KeyGenParameterSpec.SHA1, false);
    }

    private static byte[] computeKeySeedForPACE(String str, String str2, String str3) throws GeneralSecurityException {
        return Util.computeKeySeed(str, str2, str3, McElieceCCA2KeyGenParameterSpec.SHA1, false);
    }

    public static byte[] computeKeySeedForPACE(AccessKeySpec accessKeySpec) throws GeneralSecurityException {
        if (accessKeySpec == null) {
            throw new IllegalArgumentException("Access key cannot be null");
        }
        if (!(accessKeySpec instanceof BACKeySpec)) {
            if (accessKeySpec instanceof PACEKeySpec) {
                return ((PACEKeySpec) accessKeySpec).getKey();
            }
            LOGGER.warning("JMRTD doesn't recognize this type of access key, best effort key derivation!");
            return accessKeySpec.getKey();
        }
        BACKeySpec bACKeySpec = (BACKeySpec) accessKeySpec;
        String documentNumber = bACKeySpec.getDocumentNumber();
        String dateOfBirth = bACKeySpec.getDateOfBirth();
        String dateOfExpiry = bACKeySpec.getDateOfExpiry();
        if (dateOfBirth == null || dateOfBirth.length() != 6) {
            throw new IllegalArgumentException(b.e("Wrong date format used for date of birth. Expected yyMMdd, found ", dateOfBirth));
        }
        if (dateOfExpiry == null || dateOfExpiry.length() != 6) {
            throw new IllegalArgumentException(b.e("Wrong date format used for date of expiry. Expected yyMMdd, found ", dateOfExpiry));
        }
        if (documentNumber != null) {
            return computeKeySeedForPACE(fixDocumentNumber(documentNumber), dateOfBirth, dateOfExpiry);
        }
        throw new IllegalArgumentException(b.e("Wrong document number. Found ", documentNumber));
    }

    public static PublicKey decodePublicKeyFromSmartCard(byte[] bArr, AlgorithmParameterSpec algorithmParameterSpec) {
        if (algorithmParameterSpec == null) {
            throw new IllegalArgumentException("Params cannot be null");
        }
        try {
            if (algorithmParameterSpec instanceof ECParameterSpec) {
                return Util.getPublicKey("EC", new ECPublicKeySpec(Util.os2ECPoint(bArr), (ECParameterSpec) algorithmParameterSpec));
            }
            if (algorithmParameterSpec instanceof DHParameterSpec) {
                DHParameterSpec dHParameterSpec = (DHParameterSpec) algorithmParameterSpec;
                return Util.getPublicKey("DH", new DHPublicKeySpec(Util.os2i(bArr), dHParameterSpec.getP(), dHParameterSpec.getG()));
            }
            throw new IllegalArgumentException("Expected ECParameterSpec or DHParameterSpec, found " + algorithmParameterSpec.getClass().getCanonicalName());
        } catch (GeneralSecurityException e10) {
            LOGGER.log(Level.WARNING, "Exception", (Throwable) e10);
            throw new IllegalArgumentException(e10);
        }
    }

    public static SecretKey deriveStaticPACEKey(AccessKeySpec accessKeySpec, String str) throws GeneralSecurityException {
        return Util.deriveKey(computeKeySeedForPACE(accessKeySpec), PACEInfo.toCipherAlgorithm(str), PACEInfo.toKeyLength(str), null, 3, accessKeySpec instanceof PACEKeySpec ? ((PACEKeySpec) accessKeySpec).getKeyReference() : (byte) 0);
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0136  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private org.jmrtd.protocol.PACEResult doPACE(org.jmrtd.AccessKeySpec r29, javax.crypto.SecretKey r30, java.lang.String r31, java.security.spec.AlgorithmParameterSpec r32, java.math.BigInteger r33) throws java.lang.IllegalStateException, javax.crypto.BadPaddingException, javax.crypto.NoSuchPaddingException, java.security.NoSuchAlgorithmException, java.security.InvalidKeyException, net.sf.scuba.smartcards.CardServiceException, java.security.InvalidAlgorithmParameterException {
        /*
            Method dump skipped, instructions count: 382
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jmrtd.protocol.PACEProtocol.doPACE(org.jmrtd.AccessKeySpec, javax.crypto.SecretKey, java.lang.String, java.security.spec.AlgorithmParameterSpec, java.math.BigInteger):org.jmrtd.protocol.PACEResult");
    }

    public static byte[] encodePublicKeyDataObject(String str, PublicKey publicKey) throws InvalidKeyException {
        return encodePublicKeyDataObject(str, publicKey, true);
    }

    public static byte[] encodePublicKeyDataObject(String str, PublicKey publicKey, boolean z10) throws InvalidKeyException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        TLVOutputStream tLVOutputStream = new TLVOutputStream(byteArrayOutputStream);
        try {
            try {
                tLVOutputStream.writeTag(32585);
                if (publicKey instanceof DHPublicKey) {
                    DHPublicKey dHPublicKey = (DHPublicKey) publicKey;
                    DHParameterSpec params = dHPublicKey.getParams();
                    BigInteger p10 = params.getP();
                    int l5 = params.getL();
                    BigInteger g9 = params.getG();
                    BigInteger y10 = dHPublicKey.getY();
                    tLVOutputStream.write(new ASN1ObjectIdentifier(str).getEncoded());
                    if (!z10) {
                        tLVOutputStream.writeTag(129);
                        tLVOutputStream.writeValue(Util.i2os(p10));
                        tLVOutputStream.writeTag(ISO781611.BIOMETRIC_SUBTYPE_TAG);
                        tLVOutputStream.writeValue(Util.i2os(BigInteger.valueOf(l5)));
                        tLVOutputStream.writeTag(ISO781611.CREATION_DATE_AND_TIME_TAG);
                        tLVOutputStream.writeValue(Util.i2os(g9));
                    }
                    tLVOutputStream.writeTag(132);
                    tLVOutputStream.writeValue(Util.i2os(y10));
                } else {
                    if (!(publicKey instanceof ECPublicKey)) {
                        throw new InvalidKeyException("Unsupported public key: " + publicKey.getClass().getCanonicalName());
                    }
                    ECPublicKey eCPublicKey = (ECPublicKey) publicKey;
                    ECParameterSpec params2 = eCPublicKey.getParams();
                    BigInteger prime = Util.getPrime(params2);
                    EllipticCurve curve = params2.getCurve();
                    BigInteger a10 = curve.getA();
                    BigInteger b10 = curve.getB();
                    ECPoint generator = params2.getGenerator();
                    BigInteger order = params2.getOrder();
                    int cofactor = params2.getCofactor();
                    ECPoint w = eCPublicKey.getW();
                    tLVOutputStream.write(new ASN1ObjectIdentifier(str).getEncoded());
                    if (!z10) {
                        tLVOutputStream.writeTag(129);
                        tLVOutputStream.writeValue(Util.i2os(prime));
                        tLVOutputStream.writeTag(ISO781611.BIOMETRIC_SUBTYPE_TAG);
                        tLVOutputStream.writeValue(Util.i2os(a10));
                        tLVOutputStream.writeTag(ISO781611.CREATION_DATE_AND_TIME_TAG);
                        tLVOutputStream.writeValue(Util.i2os(b10));
                        BigInteger affineX = generator.getAffineX();
                        BigInteger affineY = generator.getAffineY();
                        tLVOutputStream.writeTag(132);
                        tLVOutputStream.write(Util.i2os(affineX));
                        tLVOutputStream.write(Util.i2os(affineY));
                        tLVOutputStream.writeValueEnd();
                        tLVOutputStream.writeTag(133);
                        tLVOutputStream.writeValue(Util.i2os(order));
                    }
                    tLVOutputStream.writeTag(ISO781611.CREATOR_OF_BIOMETRIC_REFERENCE_DATA);
                    tLVOutputStream.writeValue(Util.ecPoint2OS(w, params2.getCurve().getField().getFieldSize()));
                    if (!z10) {
                        tLVOutputStream.writeTag(135);
                        tLVOutputStream.writeValue(Util.i2os(BigInteger.valueOf(cofactor)));
                    }
                }
                tLVOutputStream.writeValueEnd();
                tLVOutputStream.flush();
                try {
                    tLVOutputStream.close();
                } catch (IOException e10) {
                    LOGGER.log(Level.FINE, "Error closing stream", (Throwable) e10);
                }
                return byteArrayOutputStream.toByteArray();
            } catch (IOException e11) {
                LOGGER.log(Level.WARNING, "Exception", (Throwable) e11);
                throw new IllegalStateException("Error in encoding public key");
            }
        } catch (Throwable th2) {
            try {
                tLVOutputStream.close();
                throw th2;
            } catch (IOException e12) {
                LOGGER.log(Level.FINE, "Error closing stream", (Throwable) e12);
                throw th2;
            }
        }
    }

    public static byte[] encodePublicKeyForSmartCard(PublicKey publicKey) throws IOException, InvalidKeyException {
        if (publicKey == null) {
            throw new IllegalArgumentException("Cannot encode null public key");
        }
        if (!(publicKey instanceof ECPublicKey)) {
            if (publicKey instanceof DHPublicKey) {
                return Util.i2os(((DHPublicKey) publicKey).getY());
            }
            throw new InvalidKeyException("Unsupported public key: " + publicKey.getClass().getCanonicalName());
        }
        ECPublicKey eCPublicKey = (ECPublicKey) publicKey;
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byteArrayOutputStream.write(Util.ecPoint2OS(eCPublicKey.getW(), eCPublicKey.getParams().getCurve().getField().getFieldSize()));
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            byteArrayOutputStream.close();
            return byteArray;
        } catch (IOException e10) {
            throw new IllegalStateException("Internal error writing to memory", e10);
        }
    }

    private static String fixDocumentNumber(String str) {
        StringBuilder sb2 = new StringBuilder(str.replace('<', ' ').trim().replace(' ', '<'));
        while (sb2.length() < 9) {
            sb2.append('<');
        }
        return sb2.toString();
    }

    private static byte[] generateAuthenticationToken(String str, Mac mac, PublicKey publicKey) throws IllegalStateException, GeneralSecurityException {
        byte[] bArrDoFinal = mac.doFinal(encodePublicKeyDataObject(str, publicKey));
        byte[] bArr = new byte[8];
        System.arraycopy(bArrDoFinal, 0, bArr, 0, 8);
        return bArr;
    }

    public static byte[] generateAuthenticationToken(String str, SecretKey secretKey, PublicKey publicKey) throws GeneralSecurityException {
        return generateAuthenticationToken(str, Util.getMac(inferMACAlgorithmFromCipherAlgorithm(PACEInfo.toCipherAlgorithm(str)), secretKey), publicKey);
    }

    public static ECPoint icartPointEncode(BigInteger bigInteger, ECParameterSpec eCParameterSpec) {
        BigInteger prime = Util.getPrime(eCParameterSpec);
        if (!BigInteger.valueOf(3L).equals(prime.mod(BigInteger.valueOf(4L)))) {
            throw new InvalidParameterException("Cannot encode point because p != 3 (mod 4)");
        }
        int cofactor = eCParameterSpec.getCofactor();
        BigInteger a10 = eCParameterSpec.getCurve().getA();
        BigInteger b10 = eCParameterSpec.getCurve().getB();
        BigInteger bigIntegerMod = bigInteger.modPow(BigInteger.valueOf(2L), prime).negate().mod(prime);
        BigInteger bigIntegerMod2 = bigIntegerMod.add(bigIntegerMod.modPow(BigInteger.valueOf(2L), prime)).mod(prime);
        BigInteger bigInteger2 = BigInteger.ONE;
        BigInteger bigIntegerMod3 = b10.negate().multiply(bigInteger2.add(bigIntegerMod2)).multiply(a10.multiply(bigIntegerMod2).modPow(prime.subtract(bigInteger2).subtract(bigInteger2), prime)).mod(prime);
        BigInteger bigIntegerMod4 = bigIntegerMod.multiply(bigIntegerMod3).mod(prime);
        BigInteger bigIntegerMod5 = bigIntegerMod3.modPow(BigInteger.valueOf(3L), prime).add(a10.multiply(bigIntegerMod3)).add(b10).mod(prime);
        BigInteger bigIntegerMod6 = bigInteger.modPow(BigInteger.valueOf(3L), prime).multiply(bigIntegerMod5).mod(prime);
        BigInteger bigIntegerModPow = bigIntegerMod5.modPow(prime.subtract(bigInteger2).subtract(prime.add(bigInteger2).multiply(BigInteger.valueOf(4L).modInverse(prime)).mod(prime)), prime);
        ECPoint eCPoint = bigIntegerModPow.modPow(BigInteger.valueOf(2L), prime).multiply(bigIntegerMod5).mod(prime).equals(bigInteger2) ? new ECPoint(bigIntegerMod3, bigIntegerModPow.multiply(bigIntegerMod5).mod(prime)) : new ECPoint(bigIntegerMod4, bigIntegerModPow.multiply(bigIntegerMod6).mod(prime));
        if (cofactor == 1) {
            return Util.normalize(eCPoint, eCParameterSpec);
        }
        org.bouncycastle.math.ec.ECPoint bouncyCastleECPoint = Util.toBouncyCastleECPoint(eCPoint, eCParameterSpec);
        bouncyCastleECPoint.multiply(BigInteger.valueOf(cofactor));
        return Util.fromBouncyCastleECPoint(bouncyCastleECPoint);
    }

    private static String inferMACAlgorithmFromCipherAlgorithm(String str) throws InvalidAlgorithmParameterException {
        if (str == null) {
            throw new IllegalArgumentException("Cannot infer MAC algorithm from cipher algorithm null");
        }
        if (str.startsWith("DESede")) {
            return "ISO9797ALG3WITHISO7816-4PADDING";
        }
        if (str.startsWith("AES")) {
            return "AESCMAC";
        }
        throw new InvalidAlgorithmParameterException(a.a("Cannot infer MAC algorithm from cipher algorithm \"", str, "\""));
    }

    private static boolean keysAreEqual(PublicKey publicKey, PublicKey publicKey2) {
        try {
            return publicKey.equals(publicKey2);
        } catch (RuntimeException e10) {
            LOGGER.log(Level.WARNING, "Exception during public key equals", (Throwable) e10);
            return false;
        }
    }

    public static DHParameterSpec mapNonceGMWithDH(byte[] bArr, BigInteger bigInteger, DHParameterSpec dHParameterSpec) {
        BigInteger p10 = dHParameterSpec.getP();
        return new DHParameterSpec(p10, dHParameterSpec.getG().modPow(Util.os2i(bArr), p10).multiply(bigInteger).mod(p10), dHParameterSpec.getL());
    }

    public static ECParameterSpec mapNonceGMWithECDH(byte[] bArr, ECPoint eCPoint, ECParameterSpec eCParameterSpec) {
        ECPoint generator = eCParameterSpec.getGenerator();
        EllipticCurve curve = eCParameterSpec.getCurve();
        BigInteger a10 = curve.getA();
        BigInteger b10 = curve.getB();
        BigInteger p10 = ((ECFieldFp) curve.getField()).getP();
        BigInteger order = eCParameterSpec.getOrder();
        int cofactor = eCParameterSpec.getCofactor();
        ECPoint eCPointAdd = Util.add(Util.multiply(Util.os2i(bArr), generator, eCParameterSpec), eCPoint, eCParameterSpec);
        if (!Util.toBouncyCastleECPoint(eCPointAdd, eCParameterSpec).isValid()) {
            LOGGER.info("ephemeralGenerator is not a valid point");
        }
        return new ECParameterSpec(new EllipticCurve(new ECFieldFp(p10), a10, b10), eCPointAdd, order, cofactor);
    }

    public static AlgorithmParameterSpec mapNonceIMWithDH(byte[] bArr, byte[] bArr2, String str, DHParameterSpec dHParameterSpec) throws GeneralSecurityException {
        BigInteger g9 = dHParameterSpec.getG();
        if (g9 != null) {
            BigInteger bigInteger = BigInteger.ONE;
            if (!g9.equals(bigInteger)) {
                BigInteger p10 = dHParameterSpec.getP();
                return new DHParameterSpec(p10, Util.os2i(pseudoRandomFunction(bArr, bArr2, p10, str)).modPow(p10.subtract(bigInteger).divide(dHParameterSpec instanceof PACEInfo.DHCParameterSpec ? ((PACEInfo.DHCParameterSpec) dHParameterSpec).getQ() : bigInteger), p10), dHParameterSpec.getL());
            }
        }
        throw new IllegalArgumentException("Invalid generator: " + g9);
    }

    public static AlgorithmParameterSpec mapNonceIMWithECDH(byte[] bArr, byte[] bArr2, String str, ECParameterSpec eCParameterSpec) throws GeneralSecurityException {
        BigInteger prime = Util.getPrime(eCParameterSpec);
        BigInteger order = eCParameterSpec.getOrder();
        int cofactor = eCParameterSpec.getCofactor();
        BigInteger a10 = eCParameterSpec.getCurve().getA();
        BigInteger b10 = eCParameterSpec.getCurve().getB();
        return new ECParameterSpec(new EllipticCurve(new ECFieldFp(prime), a10, b10), icartPointEncode(Util.os2i(pseudoRandomFunction(bArr, bArr2, prime, str)), eCParameterSpec), order, cofactor);
    }

    public static byte[] pseudoRandomFunction(byte[] bArr, byte[] bArr2, BigInteger bigInteger, String str) throws GeneralSecurityException, IOException {
        byte[] bArr3;
        byte[] bArr4;
        if (bArr == null || bArr2 == null) {
            throw new IllegalArgumentException("Null nonce");
        }
        int length = bArr.length * 8;
        int length2 = bArr2.length * 8;
        if (length == 128) {
            bArr3 = C0_LENGTH_128;
            bArr4 = C1_LENGTH_128;
        } else {
            if (length != 192 && length != 256) {
                throw new IllegalArgumentException(androidx.appcompat.graphics.drawable.a.f("Unknown length ", length, ", was expecting 128, 192, or 256"));
            }
            bArr3 = C0_LENGTH_256;
            bArr4 = C1_LENGTH_256;
        }
        StringBuilder sbE = androidx.constraintlayout.core.a.e(str);
        sbE.append(str.endsWith("/CBC/NoPadding") ? "" : "/CBC/NoPadding");
        Cipher cipher = Cipher.getInstance(sbE.toString());
        IvParameterSpec ivParameterSpec = new IvParameterSpec(new byte[cipher.getBlockSize()]);
        cipher.init(1, new SecretKeySpec(bArr2, str), ivParameterSpec);
        byte[] bArrDoFinal = cipher.doFinal(bArr);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        for (int r92 = 0; r92 * length < bigInteger.bitLength() + 64; r92++) {
            try {
                try {
                    cipher.init(1, new SecretKeySpec(bArrDoFinal, 0, length2 / 8, str), ivParameterSpec);
                    bArrDoFinal = cipher.doFinal(bArr3);
                    byteArrayOutputStream.write(cipher.doFinal(bArr4));
                } catch (Exception e10) {
                    LOGGER.log(Level.WARNING, "Could not write to stream", (Throwable) e10);
                    byte[] bArrI2os = Util.i2os(Util.os2i(byteArrayOutputStream.toByteArray()).mod(bigInteger));
                    try {
                        byteArrayOutputStream.close();
                    } catch (IOException e11) {
                        LOGGER.log(Level.FINE, "Could not close stream", (Throwable) e11);
                    }
                    return bArrI2os;
                }
            } finally {
                try {
                    byteArrayOutputStream.close();
                } catch (IOException e12) {
                    LOGGER.log(Level.FINE, "Could not close stream", (Throwable) e12);
                }
            }
        }
        return Util.i2os(Util.os2i(byteArrayOutputStream.toByteArray()).mod(bigInteger));
    }

    public static PublicKey updateParameterSpec(PublicKey publicKey, PrivateKey privateKey) throws GeneralSecurityException {
        KeyFactory keyFactory;
        KeySpec eCPublicKeySpec;
        String algorithm = publicKey.getAlgorithm();
        String algorithm2 = privateKey.getAlgorithm();
        if ("EC".equals(algorithm) || "ECDH".equals(algorithm)) {
            if (!"EC".equals(algorithm2) && !"ECDH".equals(algorithm2)) {
                throw new NoSuchAlgorithmException(c.g("Unsupported key type public: ", algorithm, ", private: ", algorithm2));
            }
            keyFactory = KeyFactory.getInstance("EC", BC_PROVIDER);
            eCPublicKeySpec = new ECPublicKeySpec(((ECPublicKey) publicKey).getW(), ((ECPrivateKey) privateKey).getParams());
        } else {
            if (!"DH".equals(algorithm)) {
                throw new NoSuchAlgorithmException(c.g("Unsupported key type public: ", algorithm, ", private: ", algorithm2));
            }
            if (!"DH".equals(algorithm2)) {
                throw new NoSuchAlgorithmException(c.g("Unsupported key type public: ", algorithm, ", private: ", algorithm2));
            }
            keyFactory = KeyFactory.getInstance("DH");
            DHParameterSpec params = ((DHPrivateKey) privateKey).getParams();
            eCPublicKeySpec = new DHPublicKeySpec(((DHPublicKey) publicKey).getY(), params.getP(), params.getG());
        }
        return keyFactory.generatePublic(eCPublicKeySpec);
    }

    public PACEResult doPACE(AccessKeySpec accessKeySpec, String str, AlgorithmParameterSpec algorithmParameterSpec, BigInteger bigInteger) throws CardServiceException {
        try {
            return doPACE(accessKeySpec, deriveStaticPACEKey(accessKeySpec, str), str, algorithmParameterSpec, bigInteger);
        } catch (GeneralSecurityException e10) {
            throw new CardServiceProtocolException("PCD side error in key derivation step", 0, e10);
        }
    }

    public byte[] doPACEStep1(SecretKey secretKey, Cipher cipher) throws CardServiceProtocolException, InvalidKeyException, InvalidAlgorithmParameterException {
        try {
            byte[] bArrUnwrapDO = TLVUtil.unwrapDO(128, this.service.sendGeneralAuthenticate(this.wrapper, new byte[0], 256, false));
            cipher.init(2, secretKey, new IvParameterSpec(new byte[cipher.getBlockSize()]));
            return cipher.doFinal(bArrUnwrapDO);
        } catch (GeneralSecurityException e10) {
            throw new CardServiceProtocolException("PCD side exception in tranceiving nonce step", 1, e10);
        } catch (CardServiceException e11) {
            throw new CardServiceProtocolException("PICC side exception in tranceiving nonce step", 1, e11);
        }
    }

    public PACEMappingResult doPACEStep2(PACEInfo.MappingType mappingType, String str, AlgorithmParameterSpec algorithmParameterSpec, byte[] bArr, Cipher cipher) throws CardServiceProtocolException {
        int r02 = AnonymousClass1.$SwitchMap$org$jmrtd$lds$PACEInfo$MappingType[mappingType.ordinal()];
        if (r02 == 1 || r02 == 2) {
            return doPACEStep2GM(str, algorithmParameterSpec, bArr);
        }
        if (r02 == 3) {
            return doPACEStep2IM(str, algorithmParameterSpec, bArr, cipher);
        }
        throw new CardServiceProtocolException("Unsupported mapping type " + mappingType, 2);
    }

    public PACEGMMappingResult doPACEStep2GM(String str, AlgorithmParameterSpec algorithmParameterSpec, byte[] bArr) throws IllegalStateException, NoSuchAlgorithmException, CardServiceProtocolException, InvalidKeyException, InvalidAlgorithmParameterException {
        try {
            KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance(str, BC_PROVIDER);
            keyPairGenerator.initialize(algorithmParameterSpec);
            KeyPair keyPairGenerateKeyPair = keyPairGenerator.generateKeyPair();
            PublicKey publicKey = keyPairGenerateKeyPair.getPublic();
            PrivateKey privateKey = keyPairGenerateKeyPair.getPrivate();
            PublicKey publicKeyDecodePublicKeyFromSmartCard = decodePublicKeyFromSmartCard(TLVUtil.unwrapDO(ISO781611.BIOMETRIC_SUBTYPE_TAG, this.service.sendGeneralAuthenticate(this.wrapper, TLVUtil.wrapDO(129, encodePublicKeyForSmartCard(publicKey)), this.maxTranceiveLengthForProtocol, false)), algorithmParameterSpec);
            if ("ECDH".equals(str)) {
                PACEGMWithECDHAgreement pACEGMWithECDHAgreement = new PACEGMWithECDHAgreement();
                pACEGMWithECDHAgreement.init(privateKey);
                ECPoint eCPointDoPhase = pACEGMWithECDHAgreement.doPhase(publicKeyDecodePublicKeyFromSmartCard);
                return new PACEGMWithECDHMappingResult(algorithmParameterSpec, bArr, publicKeyDecodePublicKeyFromSmartCard, keyPairGenerateKeyPair, eCPointDoPhase, mapNonceGMWithECDH(bArr, eCPointDoPhase, (ECParameterSpec) algorithmParameterSpec));
            }
            if ("DH".equals(str)) {
                KeyAgreement keyAgreement = KeyAgreement.getInstance(str);
                keyAgreement.init(privateKey);
                keyAgreement.doPhase(publicKeyDecodePublicKeyFromSmartCard, true);
                byte[] bArrGenerateSecret = keyAgreement.generateSecret();
                return new PACEGMWithDHMappingResult(algorithmParameterSpec, bArr, publicKeyDecodePublicKeyFromSmartCard, keyPairGenerateKeyPair, bArrGenerateSecret, mapNonceGMWithDH(bArr, Util.os2i(bArrGenerateSecret), (DHParameterSpec) algorithmParameterSpec));
            }
            throw new IllegalArgumentException("Unsupported parameters for mapping nonce, expected \"ECDH\" / ECParameterSpec or \"DH\" / DHParameterSpec, found \"" + str + "\" /" + algorithmParameterSpec.getClass().getCanonicalName());
        } catch (CardServiceException e10) {
            throw new CardServiceProtocolException("PICC side exception in mapping nonce step", 2, e10);
        } catch (Exception e11) {
            throw new CardServiceProtocolException("PCD side error in mapping nonce step", 2, e11);
        }
    }

    public PACEIMMappingResult doPACEStep2IM(String str, AlgorithmParameterSpec algorithmParameterSpec, byte[] bArr, Cipher cipher) throws CardServiceProtocolException, IOException {
        try {
            byte[] bArr2 = new byte[bArr.length];
            this.random.nextBytes(bArr2);
            this.service.sendGeneralAuthenticate(this.wrapper, TLVUtil.wrapDO(129, bArr2), this.maxTranceiveLengthForProtocol, false);
            if ("ECDH".equals(str)) {
                return new PACEIMMappingResult(algorithmParameterSpec, bArr, bArr2, mapNonceIMWithECDH(bArr, bArr2, cipher.getAlgorithm(), (ECParameterSpec) algorithmParameterSpec));
            }
            if ("DH".equals(str)) {
                return new PACEIMMappingResult(algorithmParameterSpec, bArr, bArr2, mapNonceIMWithDH(bArr, bArr2, cipher.getAlgorithm(), (DHParameterSpec) algorithmParameterSpec));
            }
            throw new IllegalArgumentException("Unsupported parameters for mapping nonce, expected \"ECDH\" / ECParameterSpec or \"DH\" / DHParameterSpec, found \"" + str + "\" /" + algorithmParameterSpec.getClass().getCanonicalName());
        } catch (GeneralSecurityException e10) {
            throw new CardServiceProtocolException("PCD side error in mapping nonce step", 2, e10);
        } catch (CardServiceException e11) {
            throw new CardServiceProtocolException("PICC side exception in mapping nonce step", 2, e11);
        }
    }

    public PublicKey doPACEStep3ExchangePublicKeys(PublicKey publicKey, AlgorithmParameterSpec algorithmParameterSpec) throws CardServiceProtocolException {
        try {
            PublicKey publicKeyDecodePublicKeyFromSmartCard = decodePublicKeyFromSmartCard(TLVUtil.unwrapDO(132, this.service.sendGeneralAuthenticate(this.wrapper, TLVUtil.wrapDO(ISO781611.CREATION_DATE_AND_TIME_TAG, encodePublicKeyForSmartCard(publicKey)), this.maxTranceiveLengthForProtocol, false)), algorithmParameterSpec);
            if (keysAreEqual(publicKey, publicKeyDecodePublicKeyFromSmartCard)) {
                throw new CardServiceProtocolException("PCD's public key and PICC's public key are the same in key agreement step!", 3);
            }
            return publicKeyDecodePublicKeyFromSmartCard;
        } catch (CardServiceException e10) {
            throw new CardServiceProtocolException("PICC side exception in key agreement step", 3, e10);
        } catch (Exception e11) {
            throw new CardServiceProtocolException("PCD side exception in key agreement step", 3, e11);
        }
    }

    public KeyPair doPACEStep3GenerateKeyPair(String str, AlgorithmParameterSpec algorithmParameterSpec) throws NoSuchAlgorithmException, CardServiceProtocolException, InvalidAlgorithmParameterException {
        try {
            KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance(str, BC_PROVIDER);
            keyPairGenerator.initialize(algorithmParameterSpec);
            return keyPairGenerator.generateKeyPair();
        } catch (GeneralSecurityException e10) {
            throw new CardServiceProtocolException("PCD side error during generation of PCD key pair", 3, e10);
        }
    }

    public byte[] doPACEStep3KeyAgreement(String str, PrivateKey privateKey, PublicKey publicKey) throws IllegalStateException, NoSuchAlgorithmException, CardServiceProtocolException, InvalidKeyException {
        try {
            KeyAgreement keyAgreement = KeyAgreement.getInstance(str, BC_PROVIDER);
            keyAgreement.init(privateKey);
            keyAgreement.doPhase(updateParameterSpec(publicKey, privateKey), true);
            return keyAgreement.generateSecret();
        } catch (Exception e10) {
            throw new CardServiceProtocolException("PCD side error during key agreement", 3, e10);
        }
    }

    public byte[] doPACEStep4(String str, PACEInfo.MappingType mappingType, KeyPair keyPair, PublicKey publicKey, SecretKey secretKey) throws CardServiceException {
        TLVInputStream tLVInputStream;
        Logger logger;
        Level level;
        byte[] value;
        byte[] bArrGenerateAuthenticationToken;
        try {
            try {
                tLVInputStream = new TLVInputStream(new ByteArrayInputStream(this.service.sendGeneralAuthenticate(this.wrapper, TLVUtil.wrapDO(133, generateAuthenticationToken(str, secretKey, publicKey)), 256, true)));
                try {
                    int tag = tLVInputStream.readTag();
                    if (tag != 134) {
                        LOGGER.warning("Was expecting tag 0x86, found: " + Integer.toHexString(tag));
                    }
                    tLVInputStream.readLength();
                    value = tLVInputStream.readValue();
                    bArrGenerateAuthenticationToken = generateAuthenticationToken(str, secretKey, keyPair.getPublic());
                } catch (IOException e10) {
                    LOGGER.log(Level.WARNING, "Could not parse step 4 response", (Throwable) e10);
                    try {
                        tLVInputStream.close();
                        return null;
                    } catch (IOException e11) {
                        e = e11;
                        logger = LOGGER;
                        level = Level.FINE;
                        logger.log(level, "Exception closing stream", (Throwable) e);
                        return null;
                    }
                }
            } finally {
                try {
                    tLVInputStream.close();
                } catch (IOException e12) {
                    LOGGER.log(Level.FINE, "Exception closing stream", (Throwable) e12);
                }
            }
        } catch (Exception e13) {
            throw new CardServiceProtocolException("PCD side exception in authentication token generation step", 4, e13);
        }
        if (!Arrays.equals(bArrGenerateAuthenticationToken, value)) {
            throw new GeneralSecurityException("PICC authentication token mismatch, expectedPICCToken = " + Hex.bytesToHexString(bArrGenerateAuthenticationToken) + ", piccToken = " + Hex.bytesToHexString(value));
        }
        if (mappingType != PACEInfo.MappingType.CAM) {
            try {
                tLVInputStream.close();
                return null;
            } catch (IOException e14) {
                e = e14;
                logger = LOGGER;
                level = Level.FINE;
                logger.log(level, "Exception closing stream", (Throwable) e);
                return null;
            }
        }
        int tag2 = tLVInputStream.readTag();
        if (tag2 != 138) {
            LOGGER.warning("Was expecting tag 0x8A, found: " + Integer.toHexString(tag2));
        }
        tLVInputStream.readLength();
        return tLVInputStream.readValue();
        throw new CardServiceProtocolException("PCD side exception in authentication token generation step", 4, e13);
    }
}
