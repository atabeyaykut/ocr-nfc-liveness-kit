```
package org.jmrtd.protocol;

import net.sf.scuba.smartcards.APDUWrapper;
import net.sf.scuba.smartcards.CardService;
import net.sf.scuba.smartcards.CardServiceException;
import net.sf.scuba.smartcards.CommandAPDU;
import org.jmrtd.APDULevelEACTACapable;

/* loaded from: classes2.dex */
public class EACTAAPDUSender implements APDULevelEACTACapable {
    private SecureMessagingAPDUSender secureMessagingSender;

    public EACTAAPDUSender(CardService cardService) {
        this.secureMessagingSender = new SecureMessagingAPDUSender(cardService);
    }

    @Override // org.jmrtd.APDULevelEACTACapable
    public synchronized byte[] sendGetChallenge(APDUWrapper aPDUWrapper) throws CardServiceException {
        return this.secureMessagingSender.transmit(aPDUWrapper, new CommandAPDU(0, -124, 0, 0, 8)).getData();
    }

    @Override // org.jmrtd.APDULevelEACTACapable
    public synchronized void sendMSESetATExtAuth(APDUWrapper aPDUWrapper, byte[] bArr) throws CardServiceException {
        short sw = (short) this.secureMessagingSender.transmit(aPDUWrapper, new CommandAPDU(0, 34, 129, 164, bArr)).getSW();
        if (sw != -28672) {
            throw new CardServiceException("Sending MSE AT failed", sw);
        }
    }

    @Override // org.jmrtd.APDULevelEACTACapable
    public synchronized void sendMSESetDST(APDUWrapper aPDUWrapper, byte[] bArr) throws CardServiceException {
        short sw = (short) this.secureMessagingSender.transmit(aPDUWrapper, new CommandAPDU(0, 34, 129, 182, bArr)).getSW();
        if (sw != -28672) {
            throw new CardServiceException("Sending MSE Set DST failed", sw);
        }
    }

    @Override // org.jmrtd.APDULevelEACTACapable
    public synchronized void sendMutualAuthenticate(APDUWrapper aPDUWrapper, byte[] bArr) throws CardServiceException {
        short sw = (short) this.secureMessagingSender.transmit(aPDUWrapper, new CommandAPDU(0, -126, 0, 0, bArr)).getSW();
        if (sw != -28672) {
            throw new CardServiceException("Sending External Authenticate failed.", sw);
        }
    }

    @Override // org.jmrtd.APDULevelEACTACapable
    public synchronized void sendPSOExtendedLengthMode(APDUWrapper aPDUWrapper, byte[] bArr, byte[] bArr2) throws CardServiceException {
        byte[] bArr3 = new byte[bArr.length + bArr2.length];
        System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
        System.arraycopy(bArr2, 0, bArr3, bArr.length, bArr2.length);
        short sw = (short) this.secureMessagingSender.transmit(aPDUWrapper, new CommandAPDU(0, 42, 0, 190, bArr3)).getSW();
        if (sw != -28672) {
            throw new CardServiceException("Sending PSO failed", sw);
        }
    }
}
```

```
package org.jmrtd;

import net.sf.scuba.smartcards.APDUWrapper;
import net.sf.scuba.smartcards.CardServiceException;

/* loaded from: classes2.dex */
public interface APDULevelEACTACapable {
    byte[] sendGetChallenge(APDUWrapper aPDUWrapper) throws CardServiceException;

    void sendMSESetATExtAuth(APDUWrapper aPDUWrapper, byte[] bArr) throws CardServiceException;

    void sendMSESetDST(APDUWrapper aPDUWrapper, byte[] bArr) throws CardServiceException;

    void sendMutualAuthenticate(APDUWrapper aPDUWrapper, byte[] bArr) throws CardServiceException;

    void sendPSOExtendedLengthMode(APDUWrapper aPDUWrapper, byte[] bArr, byte[] bArr2) throws CardServiceException;
}
```

```
package org.jmrtd.protocol;

import androidx.browser.browseractions.b;
import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.Provider;
import java.security.PublicKey;
import java.security.Signature;
import java.security.interfaces.ECPublicKey;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.crypto.interfaces.DHPublicKey;
import net.sf.scuba.smartcards.CardServiceException;
import net.sf.scuba.tlv.TLVOutputStream;
import net.sf.scuba.tlv.TLVUtil;
import org.bouncycastle.i18n.LocalizedMessage;
import org.bouncycastle.jce.interfaces.ECPrivateKey;
import org.bouncycastle.pqc.jcajce.spec.McElieceCCA2KeyGenParameterSpec;
import org.jmrtd.APDULevelEACTACapable;
import org.jmrtd.CardServiceProtocolException;
import org.jmrtd.Util;
import org.jmrtd.cbeff.ISO781611;
import org.jmrtd.cert.CVCAuthorizationTemplate;
import org.jmrtd.cert.CVCPrincipal;
import org.jmrtd.cert.CardVerifiableCertificate;
import org.jmrtd.lds.icao.MRZInfo;

/* loaded from: classes2.dex */
public class EACTAProtocol {
    private static final int TAG_CVCERTIFICATE_SIGNATURE = 24375;
    private APDULevelEACTACapable service;
    private SecureMessagingWrapper wrapper;
    private static final Logger LOGGER = Logger.getLogger("org.jmrtd.protocol");
    private static final Provider BC_PROVIDER = Util.getBouncyCastleProvider();

    public EACTAProtocol(APDULevelEACTACapable aPDULevelEACTACapable, SecureMessagingWrapper secureMessagingWrapper) {
        this.service = aPDULevelEACTACapable;
        this.wrapper = secureMessagingWrapper;
    }

    public static byte[] deriveIdentifier(String str) {
        if (str == null) {
            return null;
        }
        int length = str.length();
        byte[] bArr = new byte[length + 1];
        try {
            System.arraycopy(str.getBytes(LocalizedMessage.DEFAULT_ENCODING), 0, bArr, 0, length);
            bArr[length] = (byte) MRZInfo.checkDigit(str);
            return bArr;
        } catch (UnsupportedEncodingException e10) {
            throw new IllegalStateException("Unsupported encoding", e10);
        }
    }

    public static byte[] deriveIdentifier(PublicKey publicKey) throws NoSuchAlgorithmException {
        if (publicKey == null) {
            return null;
        }
        String algorithm = publicKey.getAlgorithm();
        if ("DH".equals(algorithm) || (publicKey instanceof DHPublicKey)) {
            return MessageDigest.getInstance(McElieceCCA2KeyGenParameterSpec.SHA1).digest(Util.i2os(((DHPublicKey) publicKey).getY()));
        }
        if (!"ECDH".equals(algorithm) && !(publicKey instanceof ECPublicKey)) {
            throw new NoSuchAlgorithmException(b.e("Unsupported agreement algorithm ", algorithm));
        }
        return Util.alignKeyDataToSize(Util.i2os(((org.bouncycastle.jce.interfaces.ECPublicKey) publicKey).getQ().getAffineXCoord().toBigInteger()), (int) Math.ceil(r5.getParameters().getCurve().getFieldSize() / 8.0d));
    }

    public synchronized EACTAResult doEACTA(CVCPrincipal cVCPrincipal, List<CardVerifiableCertificate> list, PrivateKey privateKey, String str, EACCAResult eACCAResult, String str2) throws CardServiceException {
        return doTA(cVCPrincipal, list, privateKey, str, eACCAResult, deriveIdentifier(str2));
    }

    public synchronized EACTAResult doTA(CVCPrincipal cVCPrincipal, List<CardVerifiableCertificate> list, PrivateKey privateKey, String str, EACCAResult eACCAResult, PACEResult pACEResult) throws CardServiceException {
        try {
        } catch (NoSuchAlgorithmException e10) {
            throw new CardServiceException("No such algorithm", e10);
        }
        return doTA(cVCPrincipal, list, privateKey, str, eACCAResult, deriveIdentifier(pACEResult.getPICCPublicKey()));
    }

    public synchronized EACTAResult doTA(CVCPrincipal cVCPrincipal, List<CardVerifiableCertificate> list, PrivateKey privateKey, String str, EACCAResult eACCAResult, byte[] bArr) throws CardServiceException {
        byte[] bArrSendGetChallenge;
        if (list != null) {
            try {
                if (!list.isEmpty()) {
                    if (eACCAResult == null) {
                        throw new IllegalArgumentException("Could not get EAC-CA key hash");
                    }
                    byte[] keyHash = eACCAResult.getKeyHash();
                    if (keyHash == null) {
                        throw new IllegalArgumentException("Could nnot get EAC-CA key hash");
                    }
                    CardVerifiableCertificate cardVerifiableCertificate = list.get(0);
                    if (CVCAuthorizationTemplate.Role.CVCA.equals(cardVerifiableCertificate.getAuthorizationTemplate().getRole())) {
                        CVCPrincipal holderReference = cardVerifiableCertificate.getHolderReference();
                        if (cVCPrincipal != null && !cVCPrincipal.equals(holderReference)) {
                            throw new CardServiceException("First certificate holds wrong authority, found \"" + holderReference.getName() + "\", expected \"" + cVCPrincipal.getName() + "\"");
                        }
                        if (cVCPrincipal == null) {
                            cVCPrincipal = holderReference;
                        }
                        list.remove(0);
                    }
                    CVCPrincipal authorityReference = cardVerifiableCertificate.getAuthorityReference();
                    if (cVCPrincipal != null && !cVCPrincipal.equals(authorityReference)) {
                        throw new CardServiceException("First certificate not signed by expected CA, found " + authorityReference.getName() + ", expected " + cVCPrincipal.getName());
                    }
                    if (cVCPrincipal == null) {
                        cVCPrincipal = authorityReference;
                    }
                    CardVerifiableCertificate cardVerifiableCertificate2 = list.get(list.size() - 1);
                    CVCAuthorizationTemplate.Role role = cardVerifiableCertificate2.getAuthorizationTemplate().getRole();
                    if (!CVCAuthorizationTemplate.Role.IS.equals(role)) {
                        throw new CardServiceException("Last certificate in chain (" + cardVerifiableCertificate2.getHolderReference().getName() + ") does not have role IS, but has role " + role);
                    }
                    for (CardVerifiableCertificate cardVerifiableCertificate3 : list) {
                        try {
                            this.service.sendMSESetDST(this.wrapper, TLVUtil.wrapDO(ISO781611.CREATION_DATE_AND_TIME_TAG, cardVerifiableCertificate3.getAuthorityReference().getName().getBytes(LocalizedMessage.DEFAULT_ENCODING)));
                            try {
                                byte[] certBodyData = cardVerifiableCertificate3.getCertBodyData();
                                byte[] signature = cardVerifiableCertificate3.getSignature();
                                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                                TLVOutputStream tLVOutputStream = new TLVOutputStream(byteArrayOutputStream);
                                tLVOutputStream.writeTag(TAG_CVCERTIFICATE_SIGNATURE);
                                tLVOutputStream.writeValue(signature);
                                tLVOutputStream.close();
                                this.service.sendPSOExtendedLengthMode(this.wrapper, certBodyData, byteArrayOutputStream.toByteArray());
                            } catch (Exception e10) {
                                throw new CardServiceProtocolException("Exception", 2, e10);
                            }
                        } catch (Exception e11) {
                            throw new CardServiceProtocolException("Exception in MSE:SetDST", 1, e11);
                        }
                    }
                    if (privateKey == null) {
                        throw new CardServiceException("No terminal key");
                    }
                    try {
                        this.service.sendMSESetATExtAuth(this.wrapper, TLVUtil.wrapDO(ISO781611.CREATION_DATE_AND_TIME_TAG, cardVerifiableCertificate2.getHolderReference().getName().getBytes(LocalizedMessage.DEFAULT_ENCODING)));
                        try {
                            bArrSendGetChallenge = this.service.sendGetChallenge(this.wrapper);
                            try {
                                ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                                byteArrayOutputStream2.write(bArr);
                                byteArrayOutputStream2.write(bArrSendGetChallenge);
                                byteArrayOutputStream2.write(keyHash);
                                byteArrayOutputStream2.close();
                                byte[] byteArray = byteArrayOutputStream2.toByteArray();
                                String sigAlgName = cardVerifiableCertificate2.getSigAlgName();
                                if (sigAlgName == null) {
                                    throw new IllegalStateException("Could not determine signature algorithm for terminal certificate " + cardVerifiableCertificate2.getHolderReference().getName());
                                }
                                Signature signature2 = Signature.getInstance(sigAlgName, BC_PROVIDER);
                                signature2.initSign(privateKey);
                                signature2.update(byteArray);
                                byte[] bArrSign = signature2.sign();
                                if (sigAlgName.toUpperCase().endsWith("ECDSA")) {
                                    bArrSign = Util.getRawECDSASignature(bArrSign, (int) Math.ceil(((ECPrivateKey) privateKey).getParameters().getCurve().getFieldSize() / 8.0d));
                                }
                                this.service.sendMutualAuthenticate(this.wrapper, bArrSign);
                            } catch (Exception e12) {
                                LOGGER.log(Level.WARNING, "Exception", (Throwable) e12);
                                throw new CardServiceProtocolException("Exception in External Authenticate", 5, e12);
                            }
                        } catch (Exception e13) {
                            throw new CardServiceProtocolException("Exception in Get Challenge", 4, e13);
                        }
                    } catch (Exception e14) {
                        throw new CardServiceProtocolException("Exception in MSE Set AT", 3, e14);
                    }
                }
            } catch (CardServiceException e15) {
                throw e15;
            } catch (Exception e16) {
                throw new CardServiceException("Unexpected exception", e16);
            }
        }
        throw new IllegalArgumentException("Need at least 1 certificate to perform TA, found: " + list);
        return new EACTAResult(eACCAResult, cVCPrincipal, list, privateKey, null, bArrSendGetChallenge);
    }
}
```


```
package org.jmrtd.protocol;

import net.sf.scuba.smartcards.APDUWrapper;
import net.sf.scuba.smartcards.CardService;
import net.sf.scuba.smartcards.CardServiceException;
import net.sf.scuba.smartcards.CommandAPDU;
import org.jmrtd.APDULevelEACTACapable;

/* loaded from: classes2.dex */
public class EACTAAPDUSender implements APDULevelEACTACapable {
    private SecureMessagingAPDUSender secureMessagingSender;

    public EACTAAPDUSender(CardService cardService) {
        this.secureMessagingSender = new SecureMessagingAPDUSender(cardService);
    }

    @Override // org.jmrtd.APDULevelEACTACapable
    public synchronized byte[] sendGetChallenge(APDUWrapper aPDUWrapper) throws CardServiceException {
        return this.secureMessagingSender.transmit(aPDUWrapper, new CommandAPDU(0, -124, 0, 0, 8)).getData();
    }

    @Override // org.jmrtd.APDULevelEACTACapable
    public synchronized void sendMSESetATExtAuth(APDUWrapper aPDUWrapper, byte[] bArr) throws CardServiceException {
        short sw = (short) this.secureMessagingSender.transmit(aPDUWrapper, new CommandAPDU(0, 34, 129, 164, bArr)).getSW();
        if (sw != -28672) {
            throw new CardServiceException("Sending MSE AT failed", sw);
        }
    }

    @Override // org.jmrtd.APDULevelEACTACapable
    public synchronized void sendMSESetDST(APDUWrapper aPDUWrapper, byte[] bArr) throws CardServiceException {
        short sw = (short) this.secureMessagingSender.transmit(aPDUWrapper, new CommandAPDU(0, 34, 129, 182, bArr)).getSW();
        if (sw != -28672) {
            throw new CardServiceException("Sending MSE Set DST failed", sw);
        }
    }

    @Override // org.jmrtd.APDULevelEACTACapable
    public synchronized void sendMutualAuthenticate(APDUWrapper aPDUWrapper, byte[] bArr) throws CardServiceException {
        short sw = (short) this.secureMessagingSender.transmit(aPDUWrapper, new CommandAPDU(0, -126, 0, 0, bArr)).getSW();
        if (sw != -28672) {
            throw new CardServiceException("Sending External Authenticate failed.", sw);
        }
    }

    @Override // org.jmrtd.APDULevelEACTACapable
    public synchronized void sendPSOExtendedLengthMode(APDUWrapper aPDUWrapper, byte[] bArr, byte[] bArr2) throws CardServiceException {
        byte[] bArr3 = new byte[bArr.length + bArr2.length];
        System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
        System.arraycopy(bArr2, 0, bArr3, bArr.length, bArr2.length);
        short sw = (short) this.secureMessagingSender.transmit(aPDUWrapper, new CommandAPDU(0, 42, 0, 190, bArr3)).getSW();
        if (sw != -28672) {
            throw new CardServiceException("Sending PSO failed", sw);
        }
    }
}
```


```
package org.jmrtd.protocol;

import net.sf.scuba.smartcards.APDUWrapper;
import net.sf.scuba.smartcards.CardService;
import net.sf.scuba.smartcards.CardServiceException;
import net.sf.scuba.smartcards.CommandAPDU;
import org.jmrtd.APDULevelEACTACapable;

/* loaded from: classes2.dex */
public class EACTAAPDUSender implements APDULevelEACTACapable {
    private SecureMessagingAPDUSender secureMessagingSender;

    public EACTAAPDUSender(CardService cardService) {
        this.secureMessagingSender = new SecureMessagingAPDUSender(cardService);
    }

    @Override // org.jmrtd.APDULevelEACTACapable
    public synchronized byte[] sendGetChallenge(APDUWrapper aPDUWrapper) throws CardServiceException {
        return this.secureMessagingSender.transmit(aPDUWrapper, new CommandAPDU(0, -124, 0, 0, 8)).getData();
    }

    @Override // org.jmrtd.APDULevelEACTACapable
    public synchronized void sendMSESetATExtAuth(APDUWrapper aPDUWrapper, byte[] bArr) throws CardServiceException {
        short sw = (short) this.secureMessagingSender.transmit(aPDUWrapper, new CommandAPDU(0, 34, 129, 164, bArr)).getSW();
        if (sw != -28672) {
            throw new CardServiceException("Sending MSE AT failed", sw);
        }
    }

    @Override // org.jmrtd.APDULevelEACTACapable
    public synchronized void sendMSESetDST(APDUWrapper aPDUWrapper, byte[] bArr) throws CardServiceException {
        short sw = (short) this.secureMessagingSender.transmit(aPDUWrapper, new CommandAPDU(0, 34, 129, 182, bArr)).getSW();
        if (sw != -28672) {
            throw new CardServiceException("Sending MSE Set DST failed", sw);
        }
    }

    @Override // org.jmrtd.APDULevelEACTACapable
    public synchronized void sendMutualAuthenticate(APDUWrapper aPDUWrapper, byte[] bArr) throws CardServiceException {
        short sw = (short) this.secureMessagingSender.transmit(aPDUWrapper, new CommandAPDU(0, -126, 0, 0, bArr)).getSW();
        if (sw != -28672) {
            throw new CardServiceException("Sending External Authenticate failed.", sw);
        }
    }

    @Override // org.jmrtd.APDULevelEACTACapable
    public synchronized void sendPSOExtendedLengthMode(APDUWrapper aPDUWrapper, byte[] bArr, byte[] bArr2) throws CardServiceException {
        byte[] bArr3 = new byte[bArr.length + bArr2.length];
        System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
        System.arraycopy(bArr2, 0, bArr3, bArr.length, bArr2.length);
        short sw = (short) this.secureMessagingSender.transmit(aPDUWrapper, new CommandAPDU(0, 42, 0, 190, bArr3)).getSW();
        if (sw != -28672) {
            throw new CardServiceException("Sending PSO failed", sw);
        }
    }
}
```


```
package org.jmrtd.protocol;

import androidx.browser.browseractions.b;
import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.Provider;
import java.security.PublicKey;
import java.security.Signature;
import java.security.interfaces.ECPublicKey;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.crypto.interfaces.DHPublicKey;
import net.sf.scuba.smartcards.CardServiceException;
import net.sf.scuba.tlv.TLVOutputStream;
import net.sf.scuba.tlv.TLVUtil;
import org.bouncycastle.i18n.LocalizedMessage;
import org.bouncycastle.jce.interfaces.ECPrivateKey;
import org.bouncycastle.pqc.jcajce.spec.McElieceCCA2KeyGenParameterSpec;
import org.jmrtd.APDULevelEACTACapable;
import org.jmrtd.CardServiceProtocolException;
import org.jmrtd.Util;
import org.jmrtd.cbeff.ISO781611;
import org.jmrtd.cert.CVCAuthorizationTemplate;
import org.jmrtd.cert.CVCPrincipal;
import org.jmrtd.cert.CardVerifiableCertificate;
import org.jmrtd.lds.icao.MRZInfo;

/* loaded from: classes2.dex */
public class EACTAProtocol {
    private static final int TAG_CVCERTIFICATE_SIGNATURE = 24375;
    private APDULevelEACTACapable service;
    private SecureMessagingWrapper wrapper;
    private static final Logger LOGGER = Logger.getLogger("org.jmrtd.protocol");
    private static final Provider BC_PROVIDER = Util.getBouncyCastleProvider();

    public EACTAProtocol(APDULevelEACTACapable aPDULevelEACTACapable, SecureMessagingWrapper secureMessagingWrapper) {
        this.service = aPDULevelEACTACapable;
        this.wrapper = secureMessagingWrapper;
    }

    public static byte[] deriveIdentifier(String str) {
        if (str == null) {
            return null;
        }
        int length = str.length();
        byte[] bArr = new byte[length + 1];
        try {
            System.arraycopy(str.getBytes(LocalizedMessage.DEFAULT_ENCODING), 0, bArr, 0, length);
            bArr[length] = (byte) MRZInfo.checkDigit(str);
            return bArr;
        } catch (UnsupportedEncodingException e10) {
            throw new IllegalStateException("Unsupported encoding", e10);
        }
    }

    public static byte[] deriveIdentifier(PublicKey publicKey) throws NoSuchAlgorithmException {
        if (publicKey == null) {
            return null;
        }
        String algorithm = publicKey.getAlgorithm();
        if ("DH".equals(algorithm) || (publicKey instanceof DHPublicKey)) {
            return MessageDigest.getInstance(McElieceCCA2KeyGenParameterSpec.SHA1).digest(Util.i2os(((DHPublicKey) publicKey).getY()));
        }
        if (!"ECDH".equals(algorithm) && !(publicKey instanceof ECPublicKey)) {
            throw new NoSuchAlgorithmException(b.e("Unsupported agreement algorithm ", algorithm));
        }
        return Util.alignKeyDataToSize(Util.i2os(((org.bouncycastle.jce.interfaces.ECPublicKey) publicKey).getQ().getAffineXCoord().toBigInteger()), (int) Math.ceil(r5.getParameters().getCurve().getFieldSize() / 8.0d));
    }

    public synchronized EACTAResult doEACTA(CVCPrincipal cVCPrincipal, List<CardVerifiableCertificate> list, PrivateKey privateKey, String str, EACCAResult eACCAResult, String str2) throws CardServiceException {
        return doTA(cVCPrincipal, list, privateKey, str, eACCAResult, deriveIdentifier(str2));
    }

    public synchronized EACTAResult doTA(CVCPrincipal cVCPrincipal, List<CardVerifiableCertificate> list, PrivateKey privateKey, String str, EACCAResult eACCAResult, PACEResult pACEResult) throws CardServiceException {
        try {
        } catch (NoSuchAlgorithmException e10) {
            throw new CardServiceException("No such algorithm", e10);
        }
        return doTA(cVCPrincipal, list, privateKey, str, eACCAResult, deriveIdentifier(pACEResult.getPICCPublicKey()));
    }

    public synchronized EACTAResult doTA(CVCPrincipal cVCPrincipal, List<CardVerifiableCertificate> list, PrivateKey privateKey, String str, EACCAResult eACCAResult, byte[] bArr) throws CardServiceException {
        byte[] bArrSendGetChallenge;
        if (list != null) {
            try {
                if (!list.isEmpty()) {
                    if (eACCAResult == null) {
                        throw new IllegalArgumentException("Could not get EAC-CA key hash");
                    }
                    byte[] keyHash = eACCAResult.getKeyHash();
                    if (keyHash == null) {
                        throw new IllegalArgumentException("Could nnot get EAC-CA key hash");
                    }
                    CardVerifiableCertificate cardVerifiableCertificate = list.get(0);
                    if (CVCAuthorizationTemplate.Role.CVCA.equals(cardVerifiableCertificate.getAuthorizationTemplate().getRole())) {
                        CVCPrincipal holderReference = cardVerifiableCertificate.getHolderReference();
                        if (cVCPrincipal != null && !cVCPrincipal.equals(holderReference)) {
                            throw new CardServiceException("First certificate holds wrong authority, found \"" + holderReference.getName() + "\", expected \"" + cVCPrincipal.getName() + "\"");
                        }
                        if (cVCPrincipal == null) {
                            cVCPrincipal = holderReference;
                        }
                        list.remove(0);
                    }
                    CVCPrincipal authorityReference = cardVerifiableCertificate.getAuthorityReference();
                    if (cVCPrincipal != null && !cVCPrincipal.equals(authorityReference)) {
                        throw new CardServiceException("First certificate not signed by expected CA, found " + authorityReference.getName() + ", expected " + cVCPrincipal.getName());
                    }
                    if (cVCPrincipal == null) {
                        cVCPrincipal = authorityReference;
                    }
                    CardVerifiableCertificate cardVerifiableCertificate2 = list.get(list.size() - 1);
                    CVCAuthorizationTemplate.Role role = cardVerifiableCertificate2.getAuthorizationTemplate().getRole();
                    if (!CVCAuthorizationTemplate.Role.IS.equals(role)) {
                        throw new CardServiceException("Last certificate in chain (" + cardVerifiableCertificate2.getHolderReference().getName() + ") does not have role IS, but has role " + role);
                    }
                    for (CardVerifiableCertificate cardVerifiableCertificate3 : list) {
                        try {
                            this.service.sendMSESetDST(this.wrapper, TLVUtil.wrapDO(ISO781611.CREATION_DATE_AND_TIME_TAG, cardVerifiableCertificate3.getAuthorityReference().getName().getBytes(LocalizedMessage.DEFAULT_ENCODING)));
                            try {
                                byte[] certBodyData = cardVerifiableCertificate3.getCertBodyData();
                                byte[] signature = cardVerifiableCertificate3.getSignature();
                                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                                TLVOutputStream tLVOutputStream = new TLVOutputStream(byteArrayOutputStream);
                                tLVOutputStream.writeTag(TAG_CVCERTIFICATE_SIGNATURE);
                                tLVOutputStream.writeValue(signature);
                                tLVOutputStream.close();
                                this.service.sendPSOExtendedLengthMode(this.wrapper, certBodyData, byteArrayOutputStream.toByteArray());
                            } catch (Exception e10) {
                                throw new CardServiceProtocolException("Exception", 2, e10);
                            }
                        } catch (Exception e11) {
                            throw new CardServiceProtocolException("Exception in MSE:SetDST", 1, e11);
                        }
                    }
                    if (privateKey == null) {
                        throw new CardServiceException("No terminal key");
                    }
                    try {
                        this.service.sendMSESetATExtAuth(this.wrapper, TLVUtil.wrapDO(ISO781611.CREATION_DATE_AND_TIME_TAG, cardVerifiableCertificate2.getHolderReference().getName().getBytes(LocalizedMessage.DEFAULT_ENCODING)));
                        try {
                            bArrSendGetChallenge = this.service.sendGetChallenge(this.wrapper);
                            try {
                                ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                                byteArrayOutputStream2.write(bArr);
                                byteArrayOutputStream2.write(bArrSendGetChallenge);
                                byteArrayOutputStream2.write(keyHash);
                                byteArrayOutputStream2.close();
                                byte[] byteArray = byteArrayOutputStream2.toByteArray();
                                String sigAlgName = cardVerifiableCertificate2.getSigAlgName();
                                if (sigAlgName == null) {
                                    throw new IllegalStateException("Could not determine signature algorithm for terminal certificate " + cardVerifiableCertificate2.getHolderReference().getName());
                                }
                                Signature signature2 = Signature.getInstance(sigAlgName, BC_PROVIDER);
                                signature2.initSign(privateKey);
                                signature2.update(byteArray);
                                byte[] bArrSign = signature2.sign();
                                if (sigAlgName.toUpperCase().endsWith("ECDSA")) {
                                    bArrSign = Util.getRawECDSASignature(bArrSign, (int) Math.ceil(((ECPrivateKey) privateKey).getParameters().getCurve().getFieldSize() / 8.0d));
                                }
                                this.service.sendMutualAuthenticate(this.wrapper, bArrSign);
                            } catch (Exception e12) {
                                LOGGER.log(Level.WARNING, "Exception", (Throwable) e12);
                                throw new CardServiceProtocolException("Exception in External Authenticate", 5, e12);
                            }
                        } catch (Exception e13) {
                            throw new CardServiceProtocolException("Exception in Get Challenge", 4, e13);
                        }
                    } catch (Exception e14) {
                        throw new CardServiceProtocolException("Exception in MSE Set AT", 3, e14);
                    }
                }
            } catch (CardServiceException e15) {
                throw e15;
            } catch (Exception e16) {
                throw new CardServiceException("Unexpected exception", e16);
            }
        }
        throw new IllegalArgumentException("Need at least 1 certificate to perform TA, found: " + list);
        return new EACTAResult(eACCAResult, cVCPrincipal, list, privateKey, null, bArrSendGetChallenge);
    }
}
```


```
package org.jmrtd;

import net.sf.scuba.smartcards.APDUWrapper;
import net.sf.scuba.smartcards.CardServiceException;

/* loaded from: classes2.dex */
public interface APDULevelEACTACapable {
    byte[] sendGetChallenge(APDUWrapper aPDUWrapper) throws CardServiceException;

    void sendMSESetATExtAuth(APDUWrapper aPDUWrapper, byte[] bArr) throws CardServiceException;

    void sendMSESetDST(APDUWrapper aPDUWrapper, byte[] bArr) throws CardServiceException;

    void sendMutualAuthenticate(APDUWrapper aPDUWrapper, byte[] bArr) throws CardServiceException;

    void sendPSOExtendedLengthMode(APDUWrapper aPDUWrapper, byte[] bArr, byte[] bArr2) throws CardServiceException;
}
```


```
package org.jmrtd.protocol;

import net.sf.scuba.smartcards.APDUWrapper;
import net.sf.scuba.smartcards.CardService;
import net.sf.scuba.smartcards.CardServiceException;
import net.sf.scuba.smartcards.CommandAPDU;
import org.jmrtd.APDULevelEACTACapable;

/* loaded from: classes2.dex */
public class EACTAAPDUSender implements APDULevelEACTACapable {
    private SecureMessagingAPDUSender secureMessagingSender;

    public EACTAAPDUSender(CardService cardService) {
        this.secureMessagingSender = new SecureMessagingAPDUSender(cardService);
    }

    @Override // org.jmrtd.APDULevelEACTACapable
    public synchronized byte[] sendGetChallenge(APDUWrapper aPDUWrapper) throws CardServiceException {
        return this.secureMessagingSender.transmit(aPDUWrapper, new CommandAPDU(0, -124, 0, 0, 8)).getData();
    }

    @Override // org.jmrtd.APDULevelEACTACapable
    public synchronized void sendMSESetATExtAuth(APDUWrapper aPDUWrapper, byte[] bArr) throws CardServiceException {
        short sw = (short) this.secureMessagingSender.transmit(aPDUWrapper, new CommandAPDU(0, 34, 129, 164, bArr)).getSW();
        if (sw != -28672) {
            throw new CardServiceException("Sending MSE AT failed", sw);
        }
    }

    @Override // org.jmrtd.APDULevelEACTACapable
    public synchronized void sendMSESetDST(APDUWrapper aPDUWrapper, byte[] bArr) throws CardServiceException {
        short sw = (short) this.secureMessagingSender.transmit(aPDUWrapper, new CommandAPDU(0, 34, 129, 182, bArr)).getSW();
        if (sw != -28672) {
            throw new CardServiceException("Sending MSE Set DST failed", sw);
        }
    }

    @Override // org.jmrtd.APDULevelEACTACapable
    public synchronized void sendMutualAuthenticate(APDUWrapper aPDUWrapper, byte[] bArr) throws CardServiceException {
        short sw = (short) this.secureMessagingSender.transmit(aPDUWrapper, new CommandAPDU(0, -126, 0, 0, bArr)).getSW();
        if (sw != -28672) {
            throw new CardServiceException("Sending External Authenticate failed.", sw);
        }
    }

    @Override // org.jmrtd.APDULevelEACTACapable
    public synchronized void sendPSOExtendedLengthMode(APDUWrapper aPDUWrapper, byte[] bArr, byte[] bArr2) throws CardServiceException {
        byte[] bArr3 = new byte[bArr.length + bArr2.length];
        System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
        System.arraycopy(bArr2, 0, bArr3, bArr.length, bArr2.length);
        short sw = (short) this.secureMessagingSender.transmit(aPDUWrapper, new CommandAPDU(0, 42, 0, 190, bArr3)).getSW();
        if (sw != -28672) {
            throw new CardServiceException("Sending PSO failed", sw);
        }
    }
}
```


```
package org.jmrtd.protocol;

import androidx.browser.browseractions.b;
import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.Provider;
import java.security.PublicKey;
import java.security.Signature;
import java.security.interfaces.ECPublicKey;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.crypto.interfaces.DHPublicKey;
import net.sf.scuba.smartcards.CardServiceException;
import net.sf.scuba.tlv.TLVOutputStream;
import net.sf.scuba.tlv.TLVUtil;
import org.bouncycastle.i18n.LocalizedMessage;
import org.bouncycastle.jce.interfaces.ECPrivateKey;
import org.bouncycastle.pqc.jcajce.spec.McElieceCCA2KeyGenParameterSpec;
import org.jmrtd.APDULevelEACTACapable;
import org.jmrtd.CardServiceProtocolException;
import org.jmrtd.Util;
import org.jmrtd.cbeff.ISO781611;
import org.jmrtd.cert.CVCAuthorizationTemplate;
import org.jmrtd.cert.CVCPrincipal;
import org.jmrtd.cert.CardVerifiableCertificate;
import org.jmrtd.lds.icao.MRZInfo;

/* loaded from: classes2.dex */
public class EACTAProtocol {
    private static final int TAG_CVCERTIFICATE_SIGNATURE = 24375;
    private APDULevelEACTACapable service;
    private SecureMessagingWrapper wrapper;
    private static final Logger LOGGER = Logger.getLogger("org.jmrtd.protocol");
    private static final Provider BC_PROVIDER = Util.getBouncyCastleProvider();

    public EACTAProtocol(APDULevelEACTACapable aPDULevelEACTACapable, SecureMessagingWrapper secureMessagingWrapper) {
        this.service = aPDULevelEACTACapable;
        this.wrapper = secureMessagingWrapper;
    }

    public static byte[] deriveIdentifier(String str) {
        if (str == null) {
            return null;
        }
        int length = str.length();
        byte[] bArr = new byte[length + 1];
        try {
            System.arraycopy(str.getBytes(LocalizedMessage.DEFAULT_ENCODING), 0, bArr, 0, length);
            bArr[length] = (byte) MRZInfo.checkDigit(str);
            return bArr;
        } catch (UnsupportedEncodingException e10) {
            throw new IllegalStateException("Unsupported encoding", e10);
        }
    }

    public static byte[] deriveIdentifier(PublicKey publicKey) throws NoSuchAlgorithmException {
        if (publicKey == null) {
            return null;
        }
        String algorithm = publicKey.getAlgorithm();
        if ("DH".equals(algorithm) || (publicKey instanceof DHPublicKey)) {
            return MessageDigest.getInstance(McElieceCCA2KeyGenParameterSpec.SHA1).digest(Util.i2os(((DHPublicKey) publicKey).getY()));
        }
        if (!"ECDH".equals(algorithm) && !(publicKey instanceof ECPublicKey)) {
            throw new NoSuchAlgorithmException(b.e("Unsupported agreement algorithm ", algorithm));
        }
        return Util.alignKeyDataToSize(Util.i2os(((org.bouncycastle.jce.interfaces.ECPublicKey) publicKey).getQ().getAffineXCoord().toBigInteger()), (int) Math.ceil(r5.getParameters().getCurve().getFieldSize() / 8.0d));
    }

    public synchronized EACTAResult doEACTA(CVCPrincipal cVCPrincipal, List<CardVerifiableCertificate> list, PrivateKey privateKey, String str, EACCAResult eACCAResult, String str2) throws CardServiceException {
        return doTA(cVCPrincipal, list, privateKey, str, eACCAResult, deriveIdentifier(str2));
    }

    public synchronized EACTAResult doTA(CVCPrincipal cVCPrincipal, List<CardVerifiableCertificate> list, PrivateKey privateKey, String str, EACCAResult eACCAResult, PACEResult pACEResult) throws CardServiceException {
        try {
        } catch (NoSuchAlgorithmException e10) {
            throw new CardServiceException("No such algorithm", e10);
        }
        return doTA(cVCPrincipal, list, privateKey, str, eACCAResult, deriveIdentifier(pACEResult.getPICCPublicKey()));
    }

    public synchronized EACTAResult doTA(CVCPrincipal cVCPrincipal, List<CardVerifiableCertificate> list, PrivateKey privateKey, String str, EACCAResult eACCAResult, byte[] bArr) throws CardServiceException {
        byte[] bArrSendGetChallenge;
        if (list != null) {
            try {
                if (!list.isEmpty()) {
                    if (eACCAResult == null) {
                        throw new IllegalArgumentException("Could not get EAC-CA key hash");
                    }
                    byte[] keyHash = eACCAResult.getKeyHash();
                    if (keyHash == null) {
                        throw new IllegalArgumentException("Could nnot get EAC-CA key hash");
                    }
                    CardVerifiableCertificate cardVerifiableCertificate = list.get(0);
                    if (CVCAuthorizationTemplate.Role.CVCA.equals(cardVerifiableCertificate.getAuthorizationTemplate().getRole())) {
                        CVCPrincipal holderReference = cardVerifiableCertificate.getHolderReference();
                        if (cVCPrincipal != null && !cVCPrincipal.equals(holderReference)) {
                            throw new CardServiceException("First certificate holds wrong authority, found \"" + holderReference.getName() + "\", expected \"" + cVCPrincipal.getName() + "\"");
                        }
                        if (cVCPrincipal == null) {
                            cVCPrincipal = holderReference;
                        }
                        list.remove(0);
                    }
                    CVCPrincipal authorityReference = cardVerifiableCertificate.getAuthorityReference();
                    if (cVCPrincipal != null && !cVCPrincipal.equals(authorityReference)) {
                        throw new CardServiceException("First certificate not signed by expected CA, found " + authorityReference.getName() + ", expected " + cVCPrincipal.getName());
                    }
                    if (cVCPrincipal == null) {
                        cVCPrincipal = authorityReference;
                    }
                    CardVerifiableCertificate cardVerifiableCertificate2 = list.get(list.size() - 1);
                    CVCAuthorizationTemplate.Role role = cardVerifiableCertificate2.getAuthorizationTemplate().getRole();
                    if (!CVCAuthorizationTemplate.Role.IS.equals(role)) {
                        throw new CardServiceException("Last certificate in chain (" + cardVerifiableCertificate2.getHolderReference().getName() + ") does not have role IS, but has role " + role);
                    }
                    for (CardVerifiableCertificate cardVerifiableCertificate3 : list) {
                        try {
                            this.service.sendMSESetDST(this.wrapper, TLVUtil.wrapDO(ISO781611.CREATION_DATE_AND_TIME_TAG, cardVerifiableCertificate3.getAuthorityReference().getName().getBytes(LocalizedMessage.DEFAULT_ENCODING)));
                            try {
                                byte[] certBodyData = cardVerifiableCertificate3.getCertBodyData();
                                byte[] signature = cardVerifiableCertificate3.getSignature();
                                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                                TLVOutputStream tLVOutputStream = new TLVOutputStream(byteArrayOutputStream);
                                tLVOutputStream.writeTag(TAG_CVCERTIFICATE_SIGNATURE);
                                tLVOutputStream.writeValue(signature);
                                tLVOutputStream.close();
                                this.service.sendPSOExtendedLengthMode(this.wrapper, certBodyData, byteArrayOutputStream.toByteArray());
                            } catch (Exception e10) {
                                throw new CardServiceProtocolException("Exception", 2, e10);
                            }
                        } catch (Exception e11) {
                            throw new CardServiceProtocolException("Exception in MSE:SetDST", 1, e11);
                        }
                    }
                    if (privateKey == null) {
                        throw new CardServiceException("No terminal key");
                    }
                    try {
                        this.service.sendMSESetATExtAuth(this.wrapper, TLVUtil.wrapDO(ISO781611.CREATION_DATE_AND_TIME_TAG, cardVerifiableCertificate2.getHolderReference().getName().getBytes(LocalizedMessage.DEFAULT_ENCODING)));
                        try {
                            bArrSendGetChallenge = this.service.sendGetChallenge(this.wrapper);
                            try {
                                ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                                byteArrayOutputStream2.write(bArr);
                                byteArrayOutputStream2.write(bArrSendGetChallenge);
                                byteArrayOutputStream2.write(keyHash);
                                byteArrayOutputStream2.close();
                                byte[] byteArray = byteArrayOutputStream2.toByteArray();
                                String sigAlgName = cardVerifiableCertificate2.getSigAlgName();
                                if (sigAlgName == null) {
                                    throw new IllegalStateException("Could not determine signature algorithm for terminal certificate " + cardVerifiableCertificate2.getHolderReference().getName());
                                }
                                Signature signature2 = Signature.getInstance(sigAlgName, BC_PROVIDER);
                                signature2.initSign(privateKey);
                                signature2.update(byteArray);
                                byte[] bArrSign = signature2.sign();
                                if (sigAlgName.toUpperCase().endsWith("ECDSA")) {
                                    bArrSign = Util.getRawECDSASignature(bArrSign, (int) Math.ceil(((ECPrivateKey) privateKey).getParameters().getCurve().getFieldSize() / 8.0d));
                                }
                                this.service.sendMutualAuthenticate(this.wrapper, bArrSign);
                            } catch (Exception e12) {
                                LOGGER.log(Level.WARNING, "Exception", (Throwable) e12);
                                throw new CardServiceProtocolException("Exception in External Authenticate", 5, e12);
                            }
                        } catch (Exception e13) {
                            throw new CardServiceProtocolException("Exception in Get Challenge", 4, e13);
                        }
                    } catch (Exception e14) {
                        throw new CardServiceProtocolException("Exception in MSE Set AT", 3, e14);
                    }
                }
            } catch (CardServiceException e15) {
                throw e15;
            } catch (Exception e16) {
                throw new CardServiceException("Unexpected exception", e16);
            }
        }
        throw new IllegalArgumentException("Need at least 1 certificate to perform TA, found: " + list);
        return new EACTAResult(eACCAResult, cVCPrincipal, list, privateKey, null, bArrSendGetChallenge);
    }
}
```


```
package org.jmrtd.protocol;

import java.util.logging.Level;
import java.util.logging.Logger;
import net.sf.scuba.smartcards.APDUWrapper;
import net.sf.scuba.smartcards.CardService;
import net.sf.scuba.smartcards.CardServiceException;
import net.sf.scuba.smartcards.CommandAPDU;
import net.sf.scuba.smartcards.ResponseAPDU;
import net.sf.scuba.util.Hex;
import org.jmrtd.APDULevelAACapable;

/* loaded from: classes2.dex */
public class AAAPDUSender implements APDULevelAACapable {
    private static final Logger LOGGER = Logger.getLogger("org.jmrtd.protocol");
    private SecureMessagingAPDUSender secureMessagingSender;

    public AAAPDUSender(CardService cardService) {
        this.secureMessagingSender = new SecureMessagingAPDUSender(cardService);
    }

    @Override // org.jmrtd.APDULevelAACapable
    public synchronized byte[] sendInternalAuthenticate(APDUWrapper aPDUWrapper, int r14, byte[] bArr) throws CardServiceException {
        ResponseAPDU responseAPDUTransmit;
        int sw;
        short s7;
        if (bArr != null) {
            if (bArr.length == 8) {
                int r142 = r14 <= 1848 ? 256 : 65536;
                CommandAPDU commandAPDU = new CommandAPDU(0, -120, 0, 0, bArr, r142);
                byte[] data = null;
                try {
                    responseAPDUTransmit = this.secureMessagingSender.transmit(aPDUWrapper, commandAPDU);
                } catch (CardServiceException e10) {
                    e = e10;
                    responseAPDUTransmit = null;
                }
                try {
                    sw = responseAPDUTransmit.getSW();
                } catch (CardServiceException e11) {
                    e = e11;
                    LOGGER.log(Level.INFO, "Exception during transmission of command APDU = " + Hex.bytesToHexString(commandAPDU.getBytes()), (Throwable) e);
                    sw = e.getSW();
                    s7 = (short) sw;
                    if (s7 != -28672) {
                    }
                    if ((65280 & s7) == 24832) {
                    }
                    if (responseAPDUTransmit != null) {
                    }
                    throw new CardServiceException("Internal Authenticate failed", s7);
                }
                s7 = (short) sw;
                if (s7 != -28672 && responseAPDUTransmit != null) {
                    return responseAPDUTransmit.getData();
                }
                if ((65280 & s7) == 24832 || r142 != 256) {
                    if (responseAPDUTransmit != null || responseAPDUTransmit.getData() == null) {
                        throw new CardServiceException("Internal Authenticate failed", s7);
                    }
                    LOGGER.warning("Internal Authenticate may not have succeeded, got status word " + Integer.toHexString(65535 & s7));
                    return responseAPDUTransmit.getData();
                }
                byte[] data2 = responseAPDUTransmit == null ? null : responseAPDUTransmit.getData();
                ResponseAPDU responseAPDUTransmit2 = this.secureMessagingSender.transmit(aPDUWrapper, new CommandAPDU(0, -120, 0, 0, bArr, 65536));
                if (responseAPDUTransmit2 != null) {
                    data = responseAPDUTransmit2.getData();
                }
                if (data2 == null && data == null) {
                    throw new CardServiceException("Internal Authenticate failed", s7);
                }
                if (data2 != null && data == null) {
                    return data2;
                }
                if (data2 != null || data == null) {
                    return data2.length > data.length ? data2 : data;
                }
                return data;
            }
        }
        throw new IllegalArgumentException("rndIFD wrong length");
    }
}
```


```
package org.jmrtd.protocol;

import java.util.logging.Level;
import java.util.logging.Logger;
import net.sf.scuba.smartcards.APDUWrapper;
import net.sf.scuba.smartcards.CardService;
import net.sf.scuba.smartcards.CardServiceException;
import net.sf.scuba.smartcards.CommandAPDU;
import net.sf.scuba.smartcards.ResponseAPDU;
import net.sf.scuba.util.Hex;
import org.jmrtd.APDULevelAACapable;

/* loaded from: classes2.dex */
public class AAAPDUSender implements APDULevelAACapable {
    private static final Logger LOGGER = Logger.getLogger("org.jmrtd.protocol");
    private SecureMessagingAPDUSender secureMessagingSender;

    public AAAPDUSender(CardService cardService) {
        this.secureMessagingSender = new SecureMessagingAPDUSender(cardService);
    }

    @Override // org.jmrtd.APDULevelAACapable
    public synchronized byte[] sendInternalAuthenticate(APDUWrapper aPDUWrapper, int r14, byte[] bArr) throws CardServiceException {
        ResponseAPDU responseAPDUTransmit;
        int sw;
        short s7;
        if (bArr != null) {
            if (bArr.length == 8) {
                int r142 = r14 <= 1848 ? 256 : 65536;
                CommandAPDU commandAPDU = new CommandAPDU(0, -120, 0, 0, bArr, r142);
                byte[] data = null;
                try {
                    responseAPDUTransmit = this.secureMessagingSender.transmit(aPDUWrapper, commandAPDU);
                } catch (CardServiceException e10) {
                    e = e10;
                    responseAPDUTransmit = null;
                }
                try {
                    sw = responseAPDUTransmit.getSW();
                } catch (CardServiceException e11) {
                    e = e11;
                    LOGGER.log(Level.INFO, "Exception during transmission of command APDU = " + Hex.bytesToHexString(commandAPDU.getBytes()), (Throwable) e);
                    sw = e.getSW();
                    s7 = (short) sw;
                    if (s7 != -28672) {
                    }
                    if ((65280 & s7) == 24832) {
                    }
                    if (responseAPDUTransmit != null) {
                    }
                    throw new CardServiceException("Internal Authenticate failed", s7);
                }
                s7 = (short) sw;
                if (s7 != -28672 && responseAPDUTransmit != null) {
                    return responseAPDUTransmit.getData();
                }
                if ((65280 & s7) == 24832 || r142 != 256) {
                    if (responseAPDUTransmit != null || responseAPDUTransmit.getData() == null) {
                        throw new CardServiceException("Internal Authenticate failed", s7);
                    }
                    LOGGER.warning("Internal Authenticate may not have succeeded, got status word " + Integer.toHexString(65535 & s7));
                    return responseAPDUTransmit.getData();
                }
                byte[] data2 = responseAPDUTransmit == null ? null : responseAPDUTransmit.getData();
                ResponseAPDU responseAPDUTransmit2 = this.secureMessagingSender.transmit(aPDUWrapper, new CommandAPDU(0, -120, 0, 0, bArr, 65536));
                if (responseAPDUTransmit2 != null) {
                    data = responseAPDUTransmit2.getData();
                }
                if (data2 == null && data == null) {
                    throw new CardServiceException("Internal Authenticate failed", s7);
                }
                if (data2 != null && data == null) {
                    return data2;
                }
                if (data2 != null || data == null) {
                    return data2.length > data.length ? data2 : data;
                }
                return data;
            }
        }
        throw new IllegalArgumentException("rndIFD wrong length");
    }
}
```

```
package org.jmrtd.protocol;

import java.util.logging.Level;
import java.util.logging.Logger;
import net.sf.scuba.smartcards.APDUWrapper;
import net.sf.scuba.smartcards.CardService;
import net.sf.scuba.smartcards.CardServiceException;
import net.sf.scuba.smartcards.CommandAPDU;
import net.sf.scuba.smartcards.ResponseAPDU;
import net.sf.scuba.tlv.TLVUtil;
import org.jmrtd.APDULevelEACCACapable;

/* loaded from: classes2.dex */
public class EACCAAPDUSender implements APDULevelEACCACapable {
    private static final byte INS_BSI_GENERAL_AUTHENTICATE = -122;
    private static final Logger LOGGER = Logger.getLogger("org.jmrtd.protocol");
    private SecureMessagingAPDUSender secureMessagingSender;

    public EACCAAPDUSender(CardService cardService) {
        this.secureMessagingSender = new SecureMessagingAPDUSender(cardService);
    }

    public synchronized byte[] sendGeneralAuthenticate(APDUWrapper aPDUWrapper, byte[] bArr, int r14, boolean z10) throws CardServiceException {
        byte[] data;
        byte[] bArrWrapDO = TLVUtil.wrapDO(124, bArr);
        ResponseAPDU responseAPDUTransmit = this.secureMessagingSender.transmit(aPDUWrapper, new CommandAPDU(z10 ? 0 : 16, -122, 0, 0, bArrWrapDO, r14));
        short sw = (short) responseAPDUTransmit.getSW();
        if (sw == 26368) {
            responseAPDUTransmit = this.secureMessagingSender.transmit(aPDUWrapper, new CommandAPDU(z10 ? 0 : 16, -122, 0, 0, bArrWrapDO, 256));
        }
        if (sw != -28672) {
            throw new CardServiceException("Sending general authenticate failed", sw);
        }
        data = responseAPDUTransmit.getData();
        try {
            data = TLVUtil.unwrapDO(124, data);
        } catch (Exception e10) {
            LOGGER.log(Level.WARNING, "Could not unwrap response to GENERAL AUTHENTICATE", (Throwable) e10);
        }
        return data;
    }

    @Override // org.jmrtd.APDULevelEACCACapable
    public synchronized byte[] sendGeneralAuthenticate(APDUWrapper aPDUWrapper, byte[] bArr, boolean z10) throws CardServiceException {
        return sendGeneralAuthenticate(aPDUWrapper, bArr, 256, z10);
    }

    @Override // org.jmrtd.APDULevelEACCACapable
    public synchronized void sendMSEKAT(APDUWrapper aPDUWrapper, byte[] bArr, byte[] bArr2) throws CardServiceException {
        byte[] bArr3 = new byte[bArr.length + (bArr2 != null ? bArr2.length : 0)];
        System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
        if (bArr2 != null) {
            System.arraycopy(bArr2, 0, bArr3, bArr.length, bArr2.length);
        }
        short sw = (short) this.secureMessagingSender.transmit(aPDUWrapper, new CommandAPDU(0, 34, 65, 166, bArr3)).getSW();
        if (sw != -28672) {
            throw new CardServiceException("Sending MSE KAT failed", sw);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0066 A[Catch: all -> 0x0079, TRY_LEAVE, TryCatch #0 {, blocks: (B:5:0x0007, B:8:0x0010, B:9:0x0023, B:13:0x0037, B:23:0x0071, B:24:0x0078, B:17:0x0066, B:12:0x002e, B:14:0x004b), top: B:28:0x0007, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x006f A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0071 A[Catch: all -> 0x0079, TRY_ENTER, TryCatch #0 {, blocks: (B:5:0x0007, B:8:0x0010, B:9:0x0023, B:13:0x0037, B:23:0x0071, B:24:0x0078, B:17:0x0066, B:12:0x002e, B:14:0x004b), top: B:28:0x0007, inners: #1 }] */
    @Override // org.jmrtd.APDULevelEACCACapable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized void sendMSESetATIntAuth(net.sf.scuba.smartcards.APDUWrapper r7, java.lang.String r8, java.math.BigInteger r9) throws net.sf.scuba.smartcards.CardServiceException {
        /*
            r6 = this;
            monitor-enter(r6)
            r3 = 65
            r4 = 164(0xa4, float:2.3E-43)
            if (r9 == 0) goto L4b
            java.math.BigInteger r0 = java.math.BigInteger.ZERO     // Catch: java.lang.Throwable -> L79
            int r0 = r9.compareTo(r0)     // Catch: java.lang.Throwable -> L79
            if (r0 >= 0) goto L10
            goto L4b
        L10:
            byte[] r8 = org.jmrtd.Util.toOIDBytes(r8)     // Catch: java.lang.Throwable -> L79
            byte[] r9 = org.jmrtd.Util.i2os(r9)     // Catch: java.lang.Throwable -> L79
            r0 = 132(0x84, float:1.85E-43)
            byte[] r9 = net.sf.scuba.tlv.TLVUtil.wrapDO(r0, r9)     // Catch: java.lang.Throwable -> L79
            java.io.ByteArrayOutputStream r0 = new java.io.ByteArrayOutputStream     // Catch: java.lang.Throwable -> L79
            r0.<init>()     // Catch: java.lang.Throwable -> L79
            r0.write(r8)     // Catch: java.io.IOException -> L2d java.lang.Throwable -> L79
            r0.write(r9)     // Catch: java.io.IOException -> L2d java.lang.Throwable -> L79
            r0.close()     // Catch: java.io.IOException -> L2d java.lang.Throwable -> L79
            goto L37
        L2d:
            r8 = move-exception
            java.util.logging.Logger r9 = org.jmrtd.protocol.EACCAAPDUSender.LOGGER     // Catch: java.lang.Throwable -> L79
            java.util.logging.Level r1 = java.util.logging.Level.WARNING     // Catch: java.lang.Throwable -> L79
            java.lang.String r2 = "Exception"
            r9.log(r1, r2, r8)     // Catch: java.lang.Throwable -> L79
        L37:
            net.sf.scuba.smartcards.CommandAPDU r8 = new net.sf.scuba.smartcards.CommandAPDU     // Catch: java.lang.Throwable -> L79
            r1 = 0
            r2 = 34
            byte[] r5 = r0.toByteArray()     // Catch: java.lang.Throwable -> L79
            r0 = r8
            r0.<init>(r1, r2, r3, r4, r5)     // Catch: java.lang.Throwable -> L79
            org.jmrtd.protocol.SecureMessagingAPDUSender r9 = r6.secureMessagingSender     // Catch: java.lang.Throwable -> L79
            net.sf.scuba.smartcards.ResponseAPDU r7 = r9.transmit(r7, r8)     // Catch: java.lang.Throwable -> L79
            goto L62
        L4b:
            net.sf.scuba.smartcards.CommandAPDU r9 = new net.sf.scuba.smartcards.CommandAPDU     // Catch: java.lang.Throwable -> L79
            r1 = 0
            r2 = 34
            byte[] r5 = org.jmrtd.Util.toOIDBytes(r8)     // Catch: java.lang.Throwable -> L79
            r3 = 65
            r4 = 164(0xa4, float:2.3E-43)
            r0 = r9
            r0.<init>(r1, r2, r3, r4, r5)     // Catch: java.lang.Throwable -> L79
            org.jmrtd.protocol.SecureMessagingAPDUSender r8 = r6.secureMessagingSender     // Catch: java.lang.Throwable -> L79
            net.sf.scuba.smartcards.ResponseAPDU r7 = r8.transmit(r7, r9)     // Catch: java.lang.Throwable -> L79
        L62:
            if (r7 != 0) goto L66
            r7 = -1
            goto L6b
        L66:
            int r7 = r7.getSW()     // Catch: java.lang.Throwable -> L79
            short r7 = (short) r7
        L6b:
            r8 = -28672(0xffffffffffff9000, float:NaN)
            if (r7 != r8) goto L71
            monitor-exit(r6)
            return
        L71:
            net.sf.scuba.smartcards.CardServiceException r8 = new net.sf.scuba.smartcards.CardServiceException     // Catch: java.lang.Throwable -> L79
            java.lang.String r9 = "Sending MSE AT failed"
            r8.<init>(r9, r7)     // Catch: java.lang.Throwable -> L79
            throw r8     // Catch: java.lang.Throwable -> L79
        L79:
            r7 = move-exception
            monitor-exit(r6)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jmrtd.protocol.EACCAAPDUSender.sendMSESetATIntAuth(net.sf.scuba.smartcards.APDUWrapper, java.lang.String, java.math.BigInteger):void");
    }
}
```

```
package org.jmrtd.protocol;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import net.sf.scuba.smartcards.APDUWrapper;
import net.sf.scuba.smartcards.CardService;
import net.sf.scuba.smartcards.CardServiceException;
import net.sf.scuba.smartcards.CommandAPDU;
import net.sf.scuba.smartcards.ResponseAPDU;
import net.sf.scuba.tlv.TLVUtil;
import org.jmrtd.APDULevelPACECapable;
import org.jmrtd.Util;
import org.jmrtd.cbeff.ISO781611;

/* loaded from: classes2.dex */
public class PACEAPDUSender implements APDULevelPACECapable {
    public static final byte CAN_PACE_KEY_REFERENCE = 2;
    private static final byte INS_PACE_GENERAL_AUTHENTICATE = -122;
    private static final Logger LOGGER = Logger.getLogger("org.jmrtd.protocol");
    public static final byte MRZ_PACE_KEY_REFERENCE = 1;
    public static final byte NO_PACE_KEY_REFERENCE = 0;
    public static final byte PIN_PACE_KEY_REFERENCE = 3;
    public static final byte PUK_PACE_KEY_REFERENCE = 4;
    private SecureMessagingAPDUSender secureMessagingSender;

    public PACEAPDUSender(CardService cardService) {
        this.secureMessagingSender = new SecureMessagingAPDUSender(cardService);
    }

    @Override // org.jmrtd.APDULevelPACECapable
    public synchronized byte[] sendGeneralAuthenticate(APDUWrapper aPDUWrapper, byte[] bArr, int r11, boolean z10) throws CardServiceException {
        ResponseAPDU responseAPDUTransmit;
        responseAPDUTransmit = this.secureMessagingSender.transmit(aPDUWrapper, new CommandAPDU(z10 ? 0 : 16, -122, 0, 0, TLVUtil.wrapDO(124, bArr), r11));
        short sw = (short) responseAPDUTransmit.getSW();
        if (sw != -28672) {
            throw new CardServiceException("Sending general authenticate failed", sw);
        }
        return TLVUtil.unwrapDO(124, responseAPDUTransmit.getData());
    }

    @Override // org.jmrtd.APDULevelPACECapable
    public synchronized void sendMSESetATMutualAuth(APDUWrapper aPDUWrapper, String str, int r92, byte[] bArr) throws CardServiceException {
        try {
            if (str == null) {
                throw new IllegalArgumentException("OID cannot be null");
            }
            byte[] oIDBytes = Util.toOIDBytes(str);
            if (r92 != 1 && r92 != 2 && r92 != 3 && r92 != 4) {
                throw new IllegalArgumentException("Unsupported key type reference (MRZ, CAN, etc), found " + r92);
            }
            byte[] bArrWrapDO = TLVUtil.wrapDO(ISO781611.CREATION_DATE_AND_TIME_TAG, new byte[]{(byte) r92});
            if (bArr != null) {
                bArr = TLVUtil.wrapDO(132, bArr);
            }
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                byteArrayOutputStream.write(oIDBytes);
                byteArrayOutputStream.write(bArrWrapDO);
                if (bArr != null) {
                    byteArrayOutputStream.write(bArr);
                }
                short sw = (short) this.secureMessagingSender.transmit(aPDUWrapper, new CommandAPDU(0, 34, 193, 164, byteArrayOutputStream.toByteArray())).getSW();
                if (sw != -28672) {
                    throw new CardServiceException("Sending MSE AT failed", sw);
                }
            } catch (IOException e10) {
                LOGGER.log(Level.WARNING, "Error while copying data", (Throwable) e10);
                throw new IllegalStateException("Error while copying data");
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }
}
```

```
package org.jmrtd.protocol;

import net.sf.scuba.smartcards.APDUWrapper;
import net.sf.scuba.smartcards.CardService;
import net.sf.scuba.smartcards.CardServiceException;
import net.sf.scuba.smartcards.CommandAPDU;
import org.jmrtd.APDULevelEACTACapable;

/* loaded from: classes2.dex */
public class EACTAAPDUSender implements APDULevelEACTACapable {
    private SecureMessagingAPDUSender secureMessagingSender;

    public EACTAAPDUSender(CardService cardService) {
        this.secureMessagingSender = new SecureMessagingAPDUSender(cardService);
    }

    @Override // org.jmrtd.APDULevelEACTACapable
    public synchronized byte[] sendGetChallenge(APDUWrapper aPDUWrapper) throws CardServiceException {
        return this.secureMessagingSender.transmit(aPDUWrapper, new CommandAPDU(0, -124, 0, 0, 8)).getData();
    }

    @Override // org.jmrtd.APDULevelEACTACapable
    public synchronized void sendMSESetATExtAuth(APDUWrapper aPDUWrapper, byte[] bArr) throws CardServiceException {
        short sw = (short) this.secureMessagingSender.transmit(aPDUWrapper, new CommandAPDU(0, 34, 129, 164, bArr)).getSW();
        if (sw != -28672) {
            throw new CardServiceException("Sending MSE AT failed", sw);
        }
    }

    @Override // org.jmrtd.APDULevelEACTACapable
    public synchronized void sendMSESetDST(APDUWrapper aPDUWrapper, byte[] bArr) throws CardServiceException {
        short sw = (short) this.secureMessagingSender.transmit(aPDUWrapper, new CommandAPDU(0, 34, 129, 182, bArr)).getSW();
        if (sw != -28672) {
            throw new CardServiceException("Sending MSE Set DST failed", sw);
        }
    }

    @Override // org.jmrtd.APDULevelEACTACapable
    public synchronized void sendMutualAuthenticate(APDUWrapper aPDUWrapper, byte[] bArr) throws CardServiceException {
        short sw = (short) this.secureMessagingSender.transmit(aPDUWrapper, new CommandAPDU(0, -126, 0, 0, bArr)).getSW();
        if (sw != -28672) {
            throw new CardServiceException("Sending External Authenticate failed.", sw);
        }
    }

    @Override // org.jmrtd.APDULevelEACTACapable
    public synchronized void sendPSOExtendedLengthMode(APDUWrapper aPDUWrapper, byte[] bArr, byte[] bArr2) throws CardServiceException {
        byte[] bArr3 = new byte[bArr.length + bArr2.length];
        System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
        System.arraycopy(bArr2, 0, bArr3, bArr.length, bArr2.length);
        short sw = (short) this.secureMessagingSender.transmit(aPDUWrapper, new CommandAPDU(0, 42, 0, 190, bArr3)).getSW();
        if (sw != -28672) {
            throw new CardServiceException("Sending PSO failed", sw);
        }
    }
}
```

```
package org.jmrtd.protocol;

import androidx.browser.browseractions.b;
import java.util.Arrays;
import java.util.logging.Level;
import java.util.logging.Logger;
import net.sf.scuba.smartcards.APDUWrapper;
import net.sf.scuba.smartcards.CardService;
import net.sf.scuba.smartcards.CardServiceException;
import net.sf.scuba.smartcards.CommandAPDU;
import net.sf.scuba.smartcards.ISO7816;
import net.sf.scuba.smartcards.ResponseAPDU;
import net.sf.scuba.util.Hex;
import org.jmrtd.APDULevelReadBinaryCapable;

/* loaded from: classes2.dex */
public class ReadBinaryAPDUSender implements APDULevelReadBinaryCapable {
    private static final Logger LOGGER = Logger.getLogger("org.jmrtd.protocol");
    private SecureMessagingAPDUSender secureMessagingSender;
    private CardService service;

    public ReadBinaryAPDUSender(CardService cardService) {
        this.service = cardService;
        this.secureMessagingSender = new SecureMessagingAPDUSender(cardService);
    }

    private static void checkStatusWordAfterFileOperation(CommandAPDU commandAPDU, ResponseAPDU responseAPDU) throws CardServiceException {
        if (responseAPDU == null) {
            throw new CardServiceException("No response APDU");
        }
        byte[] data = responseAPDU.getData();
        short sw = (short) responseAPDU.getSW();
        String str = "CAPDU = " + Hex.bytesToHexString(commandAPDU.getBytes()) + ", RAPDU = " + Hex.bytesToHexString(responseAPDU.getBytes());
        if ((sw & ISO7816.SW_WRONG_LENGTH) == 26368 && (data == null || data.length == 0)) {
            throw new CardServiceException(b.e("Wrong length, ", str), sw);
        }
        if (sw != -28672) {
            if (sw == 25218) {
                if (data == null || data.length == 0) {
                    throw new CardServiceException(b.e("End of file, ", str), sw);
                }
            } else {
                if (sw != 27010) {
                    if (sw == 27266) {
                        throw new CardServiceException(b.e("File not found, ", str), sw);
                    }
                    if (sw != 27013 && sw != 27014) {
                        throw new CardServiceException(b.e("Error occured, ", str), sw);
                    }
                }
                throw new CardServiceException(b.e("Access to file denied, ", str), sw);
            }
        }
    }

    private static byte[] getResponseData(ResponseAPDU responseAPDU, boolean z10) throws CardServiceException {
        if (responseAPDU == null) {
            return null;
        }
        byte[] data = responseAPDU.getData();
        if (data == null) {
            throw new CardServiceException("Malformed read binary long response data");
        }
        if (!z10) {
            return data;
        }
        if (data[0] != 83) {
            throw new CardServiceException("Malformed read binary long response data");
        }
        int r12 = data[1];
        int r13 = (((byte) (r12 & 128)) == -128 ? (r12 & 15) + 1 : 1) + 1;
        int length = data.length - r13;
        byte[] bArr = new byte[length];
        System.arraycopy(data, r13, bArr, 0, length);
        return bArr;
    }

    @Override // org.jmrtd.APDULevelReadBinaryCapable
    public synchronized byte[] sendReadBinary(APDUWrapper aPDUWrapper, int r21, int r22, int r23, boolean z10, boolean z11) throws CardServiceException {
        CommandAPDU commandAPDU;
        int sw;
        int r82 = r23;
        synchronized (this) {
            ResponseAPDU responseAPDUTransmit = null;
            if (r82 == 0) {
                return null;
            }
            byte b10 = (byte) ((65280 & r22) >> 8);
            byte b11 = (byte) (r22 & 255);
            if (z11) {
                int r02 = r82 < 128 ? r82 + 2 : r82 < 256 ? r82 + 3 : r82;
                if (r02 > 256) {
                    r02 = 256;
                }
                commandAPDU = new CommandAPDU(0, -79, 0, 0, new byte[]{84, 2, b10, b11}, r02);
                r82 = r02;
            } else {
                commandAPDU = z10 ? new CommandAPDU(0, -80, (byte) r21, b11, r23) : new CommandAPDU(0, -80, b10, b11, r23);
            }
            try {
                responseAPDUTransmit = this.secureMessagingSender.transmit(aPDUWrapper, commandAPDU);
                sw = responseAPDUTransmit.getSW();
            } catch (CardServiceException e10) {
                if (this.service.isConnectionLost(e10)) {
                    throw e10;
                }
                LOGGER.log(Level.FINE, "Exception during READ BINARY", (Throwable) e10);
                sw = e10.getSW();
            }
            short s7 = (short) sw;
            byte[] responseData = getResponseData(responseAPDUTransmit, z11);
            if (responseData == null || responseData.length == 0) {
                LOGGER.warning("Empty response data: response APDU bytes = " + Arrays.toString(responseData) + ", le = " + r82 + ", sw = " + Integer.toHexString(s7));
            }
            checkStatusWordAfterFileOperation(commandAPDU, responseAPDUTransmit);
            return responseData;
        }
    }

    @Override // org.jmrtd.APDULevelReadBinaryCapable
    public synchronized void sendSelectApplet(APDUWrapper aPDUWrapper, byte[] bArr) throws CardServiceException {
        if (bArr == null) {
            throw new IllegalArgumentException("AID cannot be null");
        }
        CommandAPDU commandAPDU = new CommandAPDU(0, -92, 4, 12, bArr);
        checkStatusWordAfterFileOperation(commandAPDU, this.secureMessagingSender.transmit(aPDUWrapper, commandAPDU));
    }

    @Override // org.jmrtd.APDULevelReadBinaryCapable
    public synchronized void sendSelectFile(APDUWrapper aPDUWrapper, short s7) throws CardServiceException {
        CommandAPDU commandAPDU = new CommandAPDU(0, -92, 2, 12, new byte[]{(byte) ((s7 >> 8) & 255), (byte) (s7 & 255)}, 0);
        ResponseAPDU responseAPDUTransmit = this.secureMessagingSender.transmit(aPDUWrapper, commandAPDU);
        if (responseAPDUTransmit == null) {
            return;
        }
        checkStatusWordAfterFileOperation(commandAPDU, responseAPDUTransmit);
    }

    @Override // org.jmrtd.APDULevelReadBinaryCapable
    public synchronized void sendSelectMF() throws CardServiceException {
        CommandAPDU commandAPDU = new CommandAPDU(0, -92, 0, 12, new byte[]{63, 0});
        checkStatusWordAfterFileOperation(commandAPDU, this.secureMessagingSender.transmit(null, commandAPDU));
    }
}
```

```
package org.jmrtd.protocol;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import net.sf.scuba.smartcards.APDUEvent;
import net.sf.scuba.smartcards.APDUListener;
import net.sf.scuba.smartcards.APDUWrapper;
import net.sf.scuba.smartcards.CardService;
import net.sf.scuba.smartcards.CardServiceException;
import net.sf.scuba.smartcards.CommandAPDU;
import net.sf.scuba.smartcards.ISO7816;
import net.sf.scuba.smartcards.ResponseAPDU;
import net.sf.scuba.util.Hex;
import org.jmrtd.Util;
import org.jmrtd.WrappedAPDUEvent;

/* loaded from: classes2.dex */
public class SecureMessagingAPDUSender {
    private static final Logger LOGGER = Logger.getLogger("org.jmrtd.protocol");
    private int apduCount = 0;
    private CardService service;

    public SecureMessagingAPDUSender(CardService cardService) {
        this.service = cardService;
    }

    private byte[] continueSendingUsingResponseChaining(APDUWrapper aPDUWrapper, short s7, byte[] bArr) throws IOException, CardServiceException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            if ((65280 & s7) != 24832) {
                break;
            }
            try {
                try {
                    byteArrayOutputStream.write(bArr);
                    int r92 = s7 & 255;
                    if (r92 <= 0) {
                        break;
                    }
                    ResponseAPDU responseAPDUTransmit = transmit(aPDUWrapper, new CommandAPDU(0, -64, 0, 0, r92));
                    byte[] data = responseAPDUTransmit.getData();
                    s7 = (short) responseAPDUTransmit.getSW();
                    bArr = data;
                } catch (IOException e10) {
                    throw new CardServiceException("Could not write to stream", e10, s7);
                }
            } finally {
                try {
                    byteArrayOutputStream.close();
                } catch (IOException e11) {
                    LOGGER.log(Level.FINE, "Error closing stream", (Throwable) e11);
                }
            }
        }
        return byteArrayOutputStream.toByteArray();
    }

    private List<ResponseAPDU> sendUsingCommandChaining(CommandAPDU commandAPDU, int r14) throws CardServiceException {
        List<byte[]> listPartition = Util.partition(r14, commandAPDU.getData());
        ArrayList arrayList = new ArrayList(listPartition.size());
        int r32 = 0;
        for (byte[] bArr : listPartition) {
            r32++;
            boolean z10 = r32 >= listPartition.size();
            int cla = commandAPDU.getCLA();
            arrayList.add(this.service.transmit(new CommandAPDU(!z10 ? cla | 16 : cla, commandAPDU.getINS(), commandAPDU.getP1(), commandAPDU.getP2(), bArr, commandAPDU.getNe())));
        }
        return arrayList;
    }

    public void addAPDUListener(APDUListener aPDUListener) {
        this.service.addAPDUListener(aPDUListener);
    }

    public boolean isExtendedAPDULengthSupported() {
        return this.service.isExtendedAPDULengthSupported();
    }

    public void notifyExchangedAPDU(APDUEvent aPDUEvent) {
        Collection<APDUListener> aPDUListeners = this.service.getAPDUListeners();
        if (aPDUListeners == null || aPDUListeners.isEmpty()) {
            return;
        }
        Iterator<APDUListener> it = aPDUListeners.iterator();
        while (it.hasNext()) {
            it.next().exchangedAPDU(aPDUEvent);
        }
    }

    public void removeAPDUListener(APDUListener aPDUListener) {
        this.service.removeAPDUListener(aPDUListener);
    }

    public ResponseAPDU transmit(APDUWrapper aPDUWrapper, CommandAPDU commandAPDU) throws CardServiceException {
        CommandAPDU commandAPDUWrap = aPDUWrapper != null ? aPDUWrapper.wrap(commandAPDU) : commandAPDU;
        ResponseAPDU responseAPDUTransmit = this.service.transmit(commandAPDUWrap);
        short sw = (short) responseAPDUTransmit.getSW();
        if (aPDUWrapper == null) {
            int r52 = this.apduCount + 1;
            this.apduCount = r52;
            notifyExchangedAPDU(new APDUEvent(this, "PLAIN", r52, commandAPDUWrap, responseAPDUTransmit));
            return responseAPDUTransmit;
        }
        try {
            if ((sw & ISO7816.SW_WRONG_LENGTH) == 26368) {
                return responseAPDUTransmit;
            }
            try {
                if (responseAPDUTransmit.getBytes().length <= 2) {
                    throw new CardServiceException("Exception during transmission of wrapped APDU, C=" + Hex.bytesToHexString(commandAPDU.getBytes()), sw);
                }
                ResponseAPDU responseAPDUUnwrap = aPDUWrapper.unwrap(responseAPDUTransmit);
                String type = aPDUWrapper.getType();
                int r53 = this.apduCount + 1;
                this.apduCount = r53;
                notifyExchangedAPDU(new WrappedAPDUEvent(this, type, r53, commandAPDU, responseAPDUUnwrap, commandAPDUWrap, responseAPDUTransmit));
                return responseAPDUUnwrap;
            } catch (CardServiceException e10) {
                throw e10;
            } catch (Exception e11) {
                throw new CardServiceException("Exception during transmission of wrapped APDU, C=" + Hex.bytesToHexString(commandAPDU.getBytes()), e11, sw);
            }
        } finally {
            String type2 = aPDUWrapper.getType();
            int r54 = this.apduCount + 1;
            this.apduCount = r54;
            notifyExchangedAPDU(new WrappedAPDUEvent(this, type2, r54, commandAPDU, responseAPDUTransmit, commandAPDUWrap, responseAPDUTransmit));
        }
    }
}
```

```
package net.sf.scuba.smartcards;

import android.annotation.TargetApi;
import android.nfc.Tag;
import android.nfc.tech.IsoDep;
import android.nfc.tech.NfcA;
import android.nfc.tech.NfcB;
import java.io.IOException;

/* loaded from: classes2.dex */
public class IsoDepCardService extends CardService {
    private int apduCount = 0;
    private IsoDep isoDep;

    public IsoDepCardService(IsoDep isoDep) {
        this.isoDep = isoDep;
    }

    private boolean isDirectConnectionLost(Throwable th2) {
        if (!isISODepConnected()) {
            return true;
        }
        if (th2 == null) {
            return false;
        }
        if (th2.getClass().getName().contains("TagLostException")) {
            return true;
        }
        String message = th2.getMessage();
        if (message == null) {
            message = "";
        }
        if (message.toLowerCase().contains("tag was lost")) {
            return true;
        }
        return (th2 instanceof CardServiceException) && (message.toLowerCase().contains("not connected") || message.toLowerCase().contains("failed response"));
    }

    private boolean isISODepConnected() {
        try {
            return this.isoDep.isConnected();
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // net.sf.scuba.smartcards.CardService
    public void close() throws IOException {
        try {
            this.isoDep.close();
            this.state = 0;
        } catch (IOException unused) {
        }
    }

    @Override // net.sf.scuba.smartcards.CardService
    public byte[] getATR() {
        Tag tag;
        IsoDep isoDep = this.isoDep;
        if (isoDep == null || (tag = isoDep.getTag()) == null) {
            return null;
        }
        if (NfcA.get(tag) == null && NfcB.get(tag) != null) {
            return this.isoDep.getHiLayerResponse();
        }
        return this.isoDep.getHistoricalBytes();
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x001d, code lost:
    
        return false;
     */
    @Override // net.sf.scuba.smartcards.CardService
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean isConnectionLost(java.lang.Exception r4) {
        /*
            r3 = this;
            boolean r0 = r3.isDirectConnectionLost(r4)
            r1 = 1
            if (r0 == 0) goto L8
            return r1
        L8:
            r0 = 0
            if (r4 != 0) goto Lc
            return r0
        Lc:
            java.lang.Throwable r2 = r4.getCause()
            if (r2 == 0) goto L1d
            if (r4 == r2) goto L1d
            boolean r4 = r3.isDirectConnectionLost(r2)
            if (r4 == 0) goto L1b
            return r1
        L1b:
            r4 = r2
            goto Lc
        L1d:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: net.sf.scuba.smartcards.IsoDepCardService.isConnectionLost(java.lang.Exception):boolean");
    }

    @Override // net.sf.scuba.smartcards.CardService
    @TargetApi(16)
    public boolean isExtendedAPDULengthSupported() {
        return this.isoDep.isExtendedLengthApduSupported();
    }

    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r0v4 */
    @Override // net.sf.scuba.smartcards.CardService
    public boolean isOpen() {
        ?? r02 = this.isoDep.isConnected() ? 1 : 0;
        this.state = r02;
        return r02;
    }

    @Override // net.sf.scuba.smartcards.CardService
    public void open() throws IOException, CardServiceException {
        if (isOpen()) {
            return;
        }
        try {
            this.isoDep.connect();
            if (!this.isoDep.isConnected()) {
                throw new CardServiceException("Failed to connect");
            }
            this.state = 1;
        } catch (IOException e10) {
            throw new CardServiceException("Failed to connect", e10);
        }
    }

    @Override // net.sf.scuba.smartcards.CardService
    public ResponseAPDU transmit(CommandAPDU commandAPDU) throws IOException, CardServiceException {
        try {
            if (!this.isoDep.isConnected()) {
                throw new CardServiceException("Not connected");
            }
            byte[] bArrTransceive = this.isoDep.transceive(commandAPDU.getBytes());
            if (bArrTransceive == null || bArrTransceive.length < 2) {
                throw new CardServiceException("Failed response");
            }
            ResponseAPDU responseAPDU = new ResponseAPDU(bArrTransceive);
            int r6 = this.apduCount + 1;
            this.apduCount = r6;
            notifyExchangedAPDU(new APDUEvent(this, "ISODep", r6, commandAPDU, responseAPDU));
            return responseAPDU;
        } catch (CardServiceException e10) {
            throw e10;
        } catch (Exception e11) {
            throw new CardServiceException("Could not tranceive APDU", e11);
        }
    }
}
```

```
androidx.core.view.accessibility.AccessibilityNodeInfoCompat.isPassword():boolean
androidx.core.view.accessibility.AccessibilityNodeInfoCompat.setPassword(boolean):void
androidx.core.view.accessibility.AccessibilityRecordCompat.isPassword():boolean
androidx.core.view.accessibility.AccessibilityRecordCompat.setPassword(boolean):void
androidx.core.view.inputmethod.EditorInfoCompat.isPasswordInputType(int):boolean
androidx.navigation.ui.R.attr
androidx.navigation.ui.R.drawable
androidx.navigation.ui.R.integer
androidx.navigation.ui.R.string
androidx.navigation.ui.R.styleable
com.google.android.material.textfield.PasswordToggleEndIconDelegate
com.google.android.material.textfield.PasswordToggleEndIconDelegate.1
com.google.android.material.textfield.PasswordToggleEndIconDelegate.2
com.google.android.material.textfield.PasswordToggleEndIconDelegate.3
com.google.android.material.textfield.PasswordToggleEndIconDelegate.3.1
com.google.android.material.textfield.PasswordToggleEndIconDelegate.4
com.shockwave.pdfium.PdfPasswordException
org.bouncycastle.asn1.cms.PasswordRecipientInfo
org.bouncycastle.crypto.PasswordConverter
org.bouncycastle.crypto.PasswordConverter.1
org.bouncycastle.crypto.PasswordConverter.2
org.bouncycastle.crypto.PasswordConverter.3
org.bouncycastle.jcajce.BCLoadStoreParameter.<init>(java.io.InputStream, char[]):void
org.bouncycastle.jcajce.BCLoadStoreParameter.<init>(java.io.OutputStream, char[]):void
org.bouncycastle.jcajce.PKCS12StoreParameter.<init>(java.io.OutputStream, char[], boolean):void
org.bouncycastle.jcajce.provider.config.PKCS12StoreParameter.<init>(java.io.OutputStream, char[], boolean):void
org.bouncycastle.jcajce.provider.keystore.util.ParameterUtil
org.bouncycastle.jcajce.provider.keystore.util.ParameterUtil.extractPassword(java.security.KeyStore$LoadStoreParameter):char[]
org.bouncycastle.jce.provider.JDKPKCS12StoreParameter.setPassword(char[]):void
```

```
androidx.appcompat.widget.AlertDialogLayout.onLayout(boolean, int, int, int, int):void
androidx.appcompat.widget.LinearLayoutCompat.layoutVertical(int, int, int, int):void
androidx.customview.widget.FocusStrategy.findNextFocusInAbsoluteDirection(L, androidx.customview.widget.FocusStrategy$CollectionAdapter<L, T>, androidx.customview.widget.FocusStrategy$BoundsAdapter<T>, T, android.graphics.Rect, int):T
androidx.transition.SidePropagation.distance(android.view.View, int, int, int, int, int, int, int, int):int
c6.g.a():java.util.ArrayList
com.google.android.gms.internal.measurement.t4.a(android.content.Context, android.net.Uri):boolean
com.google.crypto.tink.shaded.protobuf.l.a.N(int):void
e1.r.<init>():void
ed.e.t():int
hc.d.b(java.util.ArrayList, cc.e0):cc.e0
l8.w.v(ed.f, java.lang.String):void
mc.i.u(java.lang.String):java.lang.Long
o0.c.a.a(java.lang.String[]):o0.c$a
org.bouncycastle.crypto.engines.DSTU7624Engine.init(boolean, org.bouncycastle.crypto.CipherParameters):void
org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine.<init>(int, boolean):void
org.bouncycastle.pqc.crypto.picnic.LowmcConstants.KMatrix(org.bouncycastle.pqc.crypto.picnic.PicnicEngine, int):org.bouncycastle.pqc.crypto.picnic.KMatricesWithPointer
org.bouncycastle.pqc.crypto.picnic.LowmcConstants.LMatrix(org.bouncycastle.pqc.crypto.picnic.PicnicEngine, int):org.bouncycastle.pqc.crypto.picnic.KMatricesWithPointer
org.bouncycastle.pqc.crypto.picnic.LowmcConstants.RConstant(org.bouncycastle.pqc.crypto.picnic.PicnicEngine, int):org.bouncycastle.pqc.crypto.picnic.KMatricesWithPointer
org.bouncycastle.pqc.legacy.math.linearalgebra.IntegerFunctions.nextProbablePrime(java.math.BigInteger, int):java.math.BigInteger
org.jmrtd.Util.deriveKey(byte[], java.lang.String, int, byte[], int, byte):javax.crypto.SecretKey
org.jmrtd.Util.unpad(byte[]):byte[]
org.jmrtd.protocol.EACCAAPDUSender.sendMSESetATIntAuth(net.sf.scuba.smartcards.APDUWrapper, java.lang.String, java.math.BigInteger):void
org.jmrtd.protocol.PACEProtocol.doPACEStep4(java.lang.String, org.jmrtd.lds.PACEInfo$MappingType, java.security.KeyPair, java.security.PublicKey, javax.crypto.SecretKey):byte[]
p5.a.c(byte[], int):java.security.spec.AlgorithmParameterSpec
q7.b.m(java.lang.String):void
yc.d.b.c(ed.h):void
za.a.a.invoke(cb.q):java.lang.Boolean

```

```
package net.sf.scuba.smartcards;

import java.io.Serializable;
import java.util.EventObject;

/* loaded from: classes2.dex */
public class APDUEvent extends EventObject {
    private static final long serialVersionUID = 7152351242541552732L;
    private CommandAPDU capdu;
    private ResponseAPDU rapdu;
    private int sequenceNumber;
    private Serializable type;

    public APDUEvent(Object obj, Serializable serializable, int r32, CommandAPDU commandAPDU, ResponseAPDU responseAPDU) {
        super(obj);
        this.type = serializable;
        this.sequenceNumber = r32;
        this.capdu = commandAPDU;
        this.rapdu = responseAPDU;
    }

    public CommandAPDU getCommandAPDU() {
        return this.capdu;
    }

    public ResponseAPDU getResponseAPDU() {
        return this.rapdu;
    }

    public int getSequenceNumber() {
        return this.sequenceNumber;
    }

    public Object getType() {
        return this.type;
    }
}
```

```
package net.sf.scuba.smartcards;

import java.util.EventListener;

/* loaded from: classes2.dex */
public interface APDUListener extends EventListener {
    void exchangedAPDU(APDUEvent aPDUEvent);
}
```

```
package net.sf.scuba.smartcards;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class CommandAPDU implements Serializable {
    private static final int MAX_APDU_SIZE = 65544;
    private static final long serialVersionUID = 398698301286670877L;
    private byte[] apdu;
    private transient int dataOffset;

    /* renamed from: nc, reason: collision with root package name */
    private transient int f10879nc;

    /* renamed from: ne, reason: collision with root package name */
    private transient int f10880ne;

    public CommandAPDU(int r10, int r11, int r12, int r13) {
        this(r10, r11, r12, r13, null, 0, 0, 0);
    }

    public CommandAPDU(int r10, int r11, int r12, int r13, int r14) {
        this(r10, r11, r12, r13, null, 0, 0, r14);
    }

    public CommandAPDU(int r10, int r11, int r12, int r13, byte[] bArr) {
        this(r10, r11, r12, r13, bArr, 0, arrayLength(bArr), 0);
    }

    public CommandAPDU(int r10, int r11, int r12, int r13, byte[] bArr, int r15) {
        this(r10, r11, r12, r13, bArr, 0, arrayLength(bArr), r15);
    }

    public CommandAPDU(int r10, int r11, int r12, int r13, byte[] bArr, int r15, int r16) {
        this(r10, r11, r12, r13, bArr, r15, r16, 0);
    }

    public CommandAPDU(int r14, int r15, int r16, int r17, byte[] bArr, int r19, int r20, int r21) {
        byte b10;
        checkArrayBounds(bArr, r19, r20);
        if (r20 > 65535) {
            throw new IllegalArgumentException("dataLength is too large");
        }
        if (r21 < 0) {
            throw new IllegalArgumentException("ne must not be negative");
        }
        if (r21 > 65536) {
            throw new IllegalArgumentException("ne is too large");
        }
        this.f10880ne = r21;
        this.f10879nc = r20;
        if (r20 == 0) {
            if (r21 == 0) {
                this.apdu = new byte[4];
                setHeader(r14, r15, r16, r17);
                return;
            }
            if (r21 <= 256) {
                b = r21 != 256 ? (byte) r21 : (byte) 0;
                this.apdu = new byte[5];
                setHeader(r14, r15, r16, r17);
                this.apdu[4] = b;
                return;
            }
            if (r21 == 65536) {
                b10 = 0;
            } else {
                b = (byte) (r21 >> 8);
                b10 = (byte) r21;
            }
            this.apdu = new byte[7];
            setHeader(r14, r15, r16, r17);
            byte[] bArr2 = this.apdu;
            bArr2[5] = b;
            bArr2[6] = b10;
            return;
        }
        if (r21 == 0) {
            if (r20 <= 255) {
                this.apdu = new byte[r20 + 5];
                setHeader(r14, r15, r16, r17);
                byte[] bArr3 = this.apdu;
                bArr3[4] = (byte) r20;
                this.dataOffset = 5;
                System.arraycopy(bArr, r19, bArr3, 5, r20);
                return;
            }
            this.apdu = new byte[r20 + 7];
            setHeader(r14, r15, r16, r17);
            byte[] bArr4 = this.apdu;
            bArr4[4] = 0;
            bArr4[5] = (byte) (r20 >> 8);
            bArr4[6] = (byte) r20;
            this.dataOffset = 7;
            System.arraycopy(bArr, r19, bArr4, 7, r20);
            return;
        }
        if (r20 <= 255 && r21 <= 256) {
            this.apdu = new byte[r20 + 6];
            setHeader(r14, r15, r16, r17);
            byte[] bArr5 = this.apdu;
            bArr5[4] = (byte) r20;
            this.dataOffset = 5;
            System.arraycopy(bArr, r19, bArr5, 5, r20);
            this.apdu[r1.length - 1] = r21 != 256 ? (byte) r21 : (byte) 0;
            return;
        }
        this.apdu = new byte[r20 + 9];
        setHeader(r14, r15, r16, r17);
        byte[] bArr6 = this.apdu;
        bArr6[4] = 0;
        bArr6[5] = (byte) (r20 >> 8);
        bArr6[6] = (byte) r20;
        this.dataOffset = 7;
        System.arraycopy(bArr, r19, bArr6, 7, r20);
        if (r21 != 65536) {
            byte[] bArr7 = this.apdu;
            int length = bArr7.length - 2;
            bArr7[length] = (byte) (r21 >> 8);
            bArr7[length + 1] = (byte) r21;
        }
    }

    public CommandAPDU(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[byteBuffer.remaining()];
        this.apdu = bArr;
        byteBuffer.get(bArr);
        parse();
    }

    public CommandAPDU(byte[] bArr) {
        this.apdu = (byte[]) bArr.clone();
        parse();
    }

    public CommandAPDU(byte[] bArr, int r42, int r52) {
        checkArrayBounds(bArr, r42, r52);
        byte[] bArr2 = new byte[r52];
        this.apdu = bArr2;
        System.arraycopy(bArr, r42, bArr2, 0, r52);
        parse();
    }

    private static int arrayLength(byte[] bArr) {
        if (bArr != null) {
            return bArr.length;
        }
        return 0;
    }

    private void checkArrayBounds(byte[] bArr, int r22, int r32) {
        if (r22 < 0 || r32 < 0) {
            throw new IllegalArgumentException("Offset and length must not be negative");
        }
        if (bArr != null) {
            if (r22 > bArr.length - r32) {
                throw new IllegalArgumentException("Offset plus length exceed array size");
            }
        } else if (r22 != 0 && r32 != 0) {
            throw new IllegalArgumentException("offset and length must be 0 if array is null");
        }
    }

    private void parse() {
        byte[] bArr = this.apdu;
        if (bArr.length < 4) {
            throw new IllegalArgumentException("apdu must be at least 4 bytes long");
        }
        if (bArr.length == 4) {
            return;
        }
        int r12 = bArr[4] & 255;
        if (bArr.length == 5) {
            if (r12 == 0) {
                r12 = 256;
            }
            this.f10880ne = r12;
            return;
        }
        if (r12 != 0) {
            if (bArr.length == r12 + 5) {
                this.f10879nc = r12;
                this.dataOffset = 5;
                return;
            } else {
                if (bArr.length == r12 + 6) {
                    this.f10879nc = r12;
                    this.dataOffset = 5;
                    int r02 = bArr[bArr.length - 1] & 255;
                    this.f10880ne = r02 != 0 ? r02 : 256;
                    return;
                }
                throw new IllegalArgumentException("Invalid APDU: length=" + this.apdu.length + ", b1=" + r12);
            }
        }
        if (bArr.length < 7) {
            throw new IllegalArgumentException("Invalid APDU: length=" + this.apdu.length + ", b1=" + r12);
        }
        int r32 = ((bArr[5] & 255) << 8) | (bArr[6] & 255);
        if (bArr.length == 7) {
            if (r32 == 0) {
                r32 = 65536;
            }
            this.f10880ne = r32;
            return;
        }
        if (r32 == 0) {
            throw new IllegalArgumentException("Invalid APDU: length=" + this.apdu.length + ", b1=" + r12 + ", b2||b3=" + r32);
        }
        if (bArr.length == r32 + 7) {
            this.f10879nc = r32;
            this.dataOffset = 7;
            return;
        }
        if (bArr.length == r32 + 9) {
            this.f10879nc = r32;
            this.dataOffset = 7;
            int length = bArr.length - 2;
            int r03 = (bArr[length + 1] & 255) | ((bArr[length] & 255) << 8);
            this.f10880ne = r03 != 0 ? r03 : 65536;
            return;
        }
        throw new IllegalArgumentException("Invalid APDU: length=" + this.apdu.length + ", b1=" + r12 + ", b2||b3=" + r32);
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        this.apdu = (byte[]) objectInputStream.readUnshared();
        parse();
    }

    private void setHeader(int r32, int r42, int r52, int r6) {
        byte[] bArr = this.apdu;
        bArr[0] = (byte) r32;
        bArr[1] = (byte) r42;
        bArr[2] = (byte) r52;
        bArr[3] = (byte) r6;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CommandAPDU) {
            return Arrays.equals(this.apdu, ((CommandAPDU) obj).apdu);
        }
        return false;
    }

    public byte[] getBytes() {
        return (byte[]) this.apdu.clone();
    }

    public int getCLA() {
        return this.apdu[0] & 255;
    }

    public byte[] getData() {
        int r02 = this.f10879nc;
        byte[] bArr = new byte[r02];
        System.arraycopy(this.apdu, this.dataOffset, bArr, 0, r02);
        return bArr;
    }

    public int getINS() {
        return this.apdu[1] & 255;
    }

    public int getNc() {
        return this.f10879nc;
    }

    public int getNe() {
        return this.f10880ne;
    }

    public int getP1() {
        return this.apdu[2] & 255;
    }

    public int getP2() {
        return this.apdu[3] & 255;
    }

    public int hashCode() {
        return Arrays.hashCode(this.apdu);
    }

    public String toString() {
        return "CommmandAPDU: " + this.apdu.length + " bytes, nc=" + this.f10879nc + ", ne=" + this.f10880ne;
    }
}
```

```
package net.sf.scuba.smartcards;

import android.annotation.TargetApi;
import android.nfc.Tag;
import android.nfc.tech.IsoDep;
import android.nfc.tech.NfcA;
import android.nfc.tech.NfcB;
import java.io.IOException;

/* loaded from: classes2.dex */
public class IsoDepCardService extends CardService {
    private int apduCount = 0;
    private IsoDep isoDep;

    public IsoDepCardService(IsoDep isoDep) {
        this.isoDep = isoDep;
    }

    private boolean isDirectConnectionLost(Throwable th2) {
        if (!isISODepConnected()) {
            return true;
        }
        if (th2 == null) {
            return false;
        }
        if (th2.getClass().getName().contains("TagLostException")) {
            return true;
        }
        String message = th2.getMessage();
        if (message == null) {
            message = "";
        }
        if (message.toLowerCase().contains("tag was lost")) {
            return true;
        }
        return (th2 instanceof CardServiceException) && (message.toLowerCase().contains("not connected") || message.toLowerCase().contains("failed response"));
    }

    private boolean isISODepConnected() {
        try {
            return this.isoDep.isConnected();
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // net.sf.scuba.smartcards.CardService
    public void close() throws IOException {
        try {
            this.isoDep.close();
            this.state = 0;
        } catch (IOException unused) {
        }
    }

    @Override // net.sf.scuba.smartcards.CardService
    public byte[] getATR() {
        Tag tag;
        IsoDep isoDep = this.isoDep;
        if (isoDep == null || (tag = isoDep.getTag()) == null) {
            return null;
        }
        if (NfcA.get(tag) == null && NfcB.get(tag) != null) {
            return this.isoDep.getHiLayerResponse();
        }
        return this.isoDep.getHistoricalBytes();
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x001d, code lost:
    
        return false;
     */
    @Override // net.sf.scuba.smartcards.CardService
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean isConnectionLost(java.lang.Exception r4) {
        /*
            r3 = this;
            boolean r0 = r3.isDirectConnectionLost(r4)
            r1 = 1
            if (r0 == 0) goto L8
            return r1
        L8:
            r0 = 0
            if (r4 != 0) goto Lc
            return r0
        Lc:
            java.lang.Throwable r2 = r4.getCause()
            if (r2 == 0) goto L1d
            if (r4 == r2) goto L1d
            boolean r4 = r3.isDirectConnectionLost(r2)
            if (r4 == 0) goto L1b
            return r1
        L1b:
            r4 = r2
            goto Lc
        L1d:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: net.sf.scuba.smartcards.IsoDepCardService.isConnectionLost(java.lang.Exception):boolean");
    }

    @Override // net.sf.scuba.smartcards.CardService
    @TargetApi(16)
    public boolean isExtendedAPDULengthSupported() {
        return this.isoDep.isExtendedLengthApduSupported();
    }

    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r0v4 */
    @Override // net.sf.scuba.smartcards.CardService
    public boolean isOpen() {
        ?? r02 = this.isoDep.isConnected() ? 1 : 0;
        this.state = r02;
        return r02;
    }

    @Override // net.sf.scuba.smartcards.CardService
    public void open() throws IOException, CardServiceException {
        if (isOpen()) {
            return;
        }
        try {
            this.isoDep.connect();
            if (!this.isoDep.isConnected()) {
                throw new CardServiceException("Failed to connect");
            }
            this.state = 1;
        } catch (IOException e10) {
            throw new CardServiceException("Failed to connect", e10);
        }
    }

    @Override // net.sf.scuba.smartcards.CardService
    public ResponseAPDU transmit(CommandAPDU commandAPDU) throws IOException, CardServiceException {
        try {
            if (!this.isoDep.isConnected()) {
                throw new CardServiceException("Not connected");
            }
            byte[] bArrTransceive = this.isoDep.transceive(commandAPDU.getBytes());
            if (bArrTransceive == null || bArrTransceive.length < 2) {
                throw new CardServiceException("Failed response");
            }
            ResponseAPDU responseAPDU = new ResponseAPDU(bArrTransceive);
            int r6 = this.apduCount + 1;
            this.apduCount = r6;
            notifyExchangedAPDU(new APDUEvent(this, "ISODep", r6, commandAPDU, responseAPDU));
            return responseAPDU;
        } catch (CardServiceException e10) {
            throw e10;
        } catch (Exception e11) {
            throw new CardServiceException("Could not tranceive APDU", e11);
        }
    }
}
```

```
package net.sf.scuba.smartcards;

/* loaded from: classes2.dex */
public class WrappingCardService extends CardService {
    private boolean enabled;
    private CardService service;
    private APDUWrapper wrapper;

    public WrappingCardService(CardService cardService, APDUWrapper aPDUWrapper) {
        this.service = cardService;
        this.wrapper = aPDUWrapper;
    }

    @Override // net.sf.scuba.smartcards.CardService
    public void close() {
        this.service.close();
    }

    public void disable() {
        this.enabled = false;
    }

    public void enable() {
        this.enabled = true;
    }

    @Override // net.sf.scuba.smartcards.CardService
    public byte[] getATR() throws CardServiceException {
        return this.service.getATR();
    }

    @Override // net.sf.scuba.smartcards.CardService
    public boolean isConnectionLost(Exception exc) {
        return this.service.isConnectionLost(exc);
    }

    public boolean isEnabled() {
        return this.enabled;
    }

    @Override // net.sf.scuba.smartcards.CardService
    public boolean isOpen() {
        return this.service.isOpen();
    }

    @Override // net.sf.scuba.smartcards.CardService
    public void open() throws CardServiceException {
        this.service.open();
    }

    @Override // net.sf.scuba.smartcards.CardService
    public ResponseAPDU transmit(CommandAPDU commandAPDU) throws CardServiceException {
        if (!isEnabled()) {
            return this.service.transmit(commandAPDU);
        }
        return this.wrapper.unwrap(this.service.transmit(this.wrapper.wrap(commandAPDU)));
    }
}
```

```
package org.jmrtd.protocol;

import ab.b;
import android.support.v4.media.a;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.Serializable;
import java.security.GeneralSecurityException;
import java.util.Arrays;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.crypto.Cipher;
import javax.crypto.Mac;
import javax.crypto.SecretKey;
import javax.crypto.spec.IvParameterSpec;
import net.sf.scuba.smartcards.APDUWrapper;
import net.sf.scuba.smartcards.CommandAPDU;
import net.sf.scuba.smartcards.ISO7816;
import net.sf.scuba.smartcards.ResponseAPDU;
import net.sf.scuba.tlv.TLVUtil;
import org.bouncycastle.asn1.eac.CertificateBody;
import org.jmrtd.Util;

/* loaded from: classes2.dex */
public abstract class SecureMessagingWrapper implements Serializable, APDUWrapper {
    private static final Logger LOGGER = Logger.getLogger("org.jmrtd.protocol");
    private static final long serialVersionUID = 4709645514566992414L;
    private transient Cipher cipher;
    private SecretKey ksEnc;
    private SecretKey ksMac;
    private transient Mac mac;
    private int maxTranceiveLength;
    private boolean shouldCheckMAC;
    private long ssc;

    public SecureMessagingWrapper(SecretKey secretKey, SecretKey secretKey2, String str, String str2, int r52, boolean z10, long j10) throws GeneralSecurityException {
        this.maxTranceiveLength = r52;
        this.shouldCheckMAC = z10;
        this.ksEnc = secretKey;
        this.ksMac = secretKey2;
        this.ssc = j10;
        this.cipher = Util.getCipher(str);
        this.mac = Util.getMac(str2);
    }

    private byte[] encodeLe(int r52) {
        return (r52 < 0 || r52 > 256) ? new byte[]{(byte) ((65280 & r52) >> 8), (byte) (r52 & 255)} : new byte[]{(byte) r52};
    }

    public static SecureMessagingWrapper getInstance(SecureMessagingWrapper secureMessagingWrapper) {
        try {
        } catch (GeneralSecurityException e10) {
            LOGGER.log(Level.WARNING, "Could not copy wrapper", (Throwable) e10);
        }
        if (secureMessagingWrapper instanceof DESedeSecureMessagingWrapper) {
            return new DESedeSecureMessagingWrapper((DESedeSecureMessagingWrapper) secureMessagingWrapper);
        }
        if (secureMessagingWrapper instanceof AESSecureMessagingWrapper) {
            return new AESSecureMessagingWrapper((AESSecureMessagingWrapper) secureMessagingWrapper);
        }
        LOGGER.warning("Not copying wrapper");
        return secureMessagingWrapper;
    }

    private byte[] readDO87(DataInputStream dataInputStream, boolean z10) throws GeneralSecurityException, IOException {
        int unsignedByte;
        int unsignedByte2 = dataInputStream.readUnsignedByte();
        if ((unsignedByte2 & 128) == 128) {
            int r02 = unsignedByte2 & CertificateBody.profileType;
            int unsignedByte3 = 0;
            for (int r32 = 0; r32 < r02; r32++) {
                unsignedByte3 = (unsignedByte3 << 8) | dataInputStream.readUnsignedByte();
            }
            if (!z10 && dataInputStream.readUnsignedByte() != 1) {
                throw new IllegalStateException("DO'87 expected 0x01 marker");
            }
            unsignedByte2 = unsignedByte3;
        } else if (!z10 && (unsignedByte = dataInputStream.readUnsignedByte()) != 1) {
            throw new IllegalStateException(b.c(unsignedByte & 255, new StringBuilder("DO'87 expected 0x01 marker, found ")));
        }
        if (!z10) {
            unsignedByte2--;
        }
        byte[] bArr = new byte[unsignedByte2];
        dataInputStream.readFully(bArr);
        return Util.unpad(this.cipher.doFinal(bArr));
    }

    private byte[] readDO8E(DataInputStream dataInputStream) throws IOException {
        int unsignedByte = dataInputStream.readUnsignedByte();
        if (unsignedByte != 8 && unsignedByte != 16) {
            throw new IllegalStateException(a.d("DO'8E wrong length for MAC: ", unsignedByte));
        }
        byte[] bArr = new byte[unsignedByte];
        dataInputStream.readFully(bArr);
        return bArr;
    }

    private short readDO99(DataInputStream dataInputStream) throws IOException {
        if (dataInputStream.readUnsignedByte() != 2) {
            throw new IllegalStateException("DO'99 wrong length");
        }
        byte b10 = dataInputStream.readByte();
        return (short) ((dataInputStream.readByte() & 255) | ((b10 & 255) << 8));
    }

    private ResponseAPDU unwrapResponseAPDU(ResponseAPDU responseAPDU) throws GeneralSecurityException, IOException {
        byte[] bytes = responseAPDU.getBytes();
        if (bytes == null || bytes.length < 2) {
            throw new IllegalArgumentException("Invalid response APDU");
        }
        this.cipher.init(2, this.ksEnc, getIV());
        byte[] do87 = new byte[0];
        DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(bytes));
        byte[] do8e = null;
        boolean z10 = false;
        short do99 = 0;
        while (!z10) {
            try {
                byte b10 = dataInputStream.readByte();
                if (b10 == -123) {
                    do87 = readDO87(dataInputStream, true);
                } else if (b10 == -121) {
                    do87 = readDO87(dataInputStream, false);
                } else if (b10 == -114) {
                    do8e = readDO8E(dataInputStream);
                    z10 = true;
                } else if (b10 != -103) {
                    LOGGER.warning("Unexpected tag " + Integer.toHexString(b10));
                } else {
                    do99 = readDO99(dataInputStream);
                }
            } catch (Throwable th2) {
                dataInputStream.close();
                throw th2;
            }
        }
        dataInputStream.close();
        if (shouldCheckMAC() && !checkMac(bytes, do8e)) {
            throw new IllegalStateException("Invalid MAC");
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byteArrayOutputStream.write(do87, 0, do87.length);
        byteArrayOutputStream.write((65280 & do99) >> 8);
        byteArrayOutputStream.write(do99 & 255);
        return new ResponseAPDU(byteArrayOutputStream.toByteArray());
    }

    private CommandAPDU wrapCommandAPDU(CommandAPDU commandAPDU) throws GeneralSecurityException, IOException {
        int cla = commandAPDU.getCLA();
        int r22 = commandAPDU.getINS();
        int p12 = commandAPDU.getP1();
        int p22 = commandAPDU.getP2();
        int nc2 = commandAPDU.getNc();
        int ne2 = commandAPDU.getNe();
        byte[] bArr = {(byte) (cla | 12), (byte) r22, (byte) p12, (byte) p22};
        byte[] bArrPad = Util.pad(bArr, getPadLength());
        boolean z10 = ((byte) commandAPDU.getINS()) == -79;
        byte[] byteArray = new byte[0];
        byte[] bArrWrapDO = new byte[0];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        if (ne2 > 0) {
            try {
                bArrWrapDO = TLVUtil.wrapDO(ISO7816.TAG_SM_EXPECTED_LENGTH, encodeLe(ne2));
            } finally {
            }
        }
        if (nc2 > 0) {
            byte[] bArrPad2 = Util.pad(commandAPDU.getData(), getPadLength());
            this.cipher.init(1, this.ksEnc, getIV());
            byte[] bArrDoFinal = this.cipher.doFinal(bArrPad2);
            byteArrayOutputStream.reset();
            byteArrayOutputStream.write(z10 ? -123 : -121);
            byteArrayOutputStream.write(TLVUtil.getLengthAsBytes(bArrDoFinal.length + (z10 ? 0 : 1)));
            if (!z10) {
                byteArrayOutputStream.write(1);
            }
            byteArrayOutputStream.write(bArrDoFinal, 0, bArrDoFinal.length);
            byteArray = byteArrayOutputStream.toByteArray();
        }
        byteArrayOutputStream.reset();
        byteArrayOutputStream.write(getEncodedSendSequenceCounter());
        byteArrayOutputStream.write(bArrPad);
        byteArrayOutputStream.write(byteArray);
        byteArrayOutputStream.write(bArrWrapDO);
        byte[] bArrPad3 = Util.pad(byteArrayOutputStream.toByteArray(), getPadLength());
        this.mac.init(this.ksMac);
        byte[] bArrDoFinal2 = this.mac.doFinal(bArrPad3);
        int length = bArrDoFinal2.length;
        if (length != 8) {
            length = 8;
        }
        byteArrayOutputStream.reset();
        byteArrayOutputStream.write(-114);
        byteArrayOutputStream.write(length);
        byteArrayOutputStream.write(bArrDoFinal2, 0, length);
        byte[] byteArray2 = byteArrayOutputStream.toByteArray();
        byteArrayOutputStream.reset();
        byteArrayOutputStream.write(byteArray);
        byteArrayOutputStream.write(bArrWrapDO);
        byteArrayOutputStream.write(byteArray2);
        try {
            byteArrayOutputStream.close();
        } catch (IOException e10) {
            LOGGER.log(Level.FINE, "Error closing stream", (Throwable) e10);
        }
        byte[] byteArray3 = byteArrayOutputStream.toByteArray();
        return (ne2 > 256 || byteArray3.length > 255) ? (ne2 > 256 || byteArray3.length > 255) ? new CommandAPDU(bArr[0], bArr[1], bArr[2], bArr[3], byteArray3, 65536) : new CommandAPDU(bArr[0], bArr[1], bArr[2], bArr[3], byteArray3, getMaxTranceiveLength()) : new CommandAPDU(bArr[0], bArr[1], bArr[2], bArr[3], byteArray3, 256);
    }

    public boolean checkMac(byte[] bArr, byte[] bArr2) throws IllegalStateException, GeneralSecurityException, IOException {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            dataOutputStream.write(getEncodedSendSequenceCounter());
            byte[] bArrPad = Util.pad(bArr, 0, ((bArr.length - 2) - 8) - 2, getPadLength());
            dataOutputStream.write(bArrPad, 0, bArrPad.length);
            dataOutputStream.flush();
            dataOutputStream.close();
            this.mac.init(this.ksMac);
            byte[] bArrDoFinal = this.mac.doFinal(byteArrayOutputStream.toByteArray());
            if (bArrDoFinal.length > 8 && bArr2.length == 8) {
                byte[] bArr3 = new byte[8];
                System.arraycopy(bArrDoFinal, 0, bArr3, 0, 8);
                bArrDoFinal = bArr3;
            }
            return Arrays.equals(bArr2, bArrDoFinal);
        } catch (IOException e10) {
            LOGGER.log(Level.WARNING, "Exception checking MAC", (Throwable) e10);
            return false;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        SecureMessagingWrapper secureMessagingWrapper = (SecureMessagingWrapper) obj;
        SecretKey secretKey = this.ksEnc;
        if (secretKey == null) {
            if (secureMessagingWrapper.ksEnc != null) {
                return false;
            }
        } else if (!secretKey.equals(secureMessagingWrapper.ksEnc)) {
            return false;
        }
        SecretKey secretKey2 = this.ksMac;
        if (secretKey2 == null) {
            if (secureMessagingWrapper.ksMac != null) {
                return false;
            }
        } else if (!secretKey2.equals(secureMessagingWrapper.ksMac)) {
            return false;
        }
        return this.maxTranceiveLength == secureMessagingWrapper.maxTranceiveLength && this.shouldCheckMAC == secureMessagingWrapper.shouldCheckMAC && this.ssc == secureMessagingWrapper.ssc;
    }

    public abstract byte[] getEncodedSendSequenceCounter();

    public SecretKey getEncryptionKey() {
        return this.ksEnc;
    }

    public abstract IvParameterSpec getIV() throws GeneralSecurityException;

    public SecretKey getMACKey() {
        return this.ksMac;
    }

    public int getMaxTranceiveLength() {
        return this.maxTranceiveLength;
    }

    public abstract int getPadLength();

    public long getSendSequenceCounter() {
        return this.ssc;
    }

    public int hashCode() {
        SecretKey secretKey = this.ksEnc;
        int r02 = ((secretKey == null ? 0 : secretKey.hashCode()) + 31) * 31;
        SecretKey secretKey2 = this.ksMac;
        int r03 = (((((r02 + (secretKey2 != null ? secretKey2.hashCode() : 0)) * 31) + this.maxTranceiveLength) * 31) + (this.shouldCheckMAC ? 1231 : 1237)) * 31;
        long j10 = this.ssc;
        return r03 + ((int) (j10 ^ (j10 >>> 32)));
    }

    public boolean shouldCheckMAC() {
        return this.shouldCheckMAC;
    }

    public String toString() {
        return "SecureMessagingWrapper [ssc: " + this.ssc + ", ksEnc: " + this.ksEnc + ", ksMac: " + this.ksMac + ", maxTranceiveLength: " + this.maxTranceiveLength + ", shouldCheckMAC: " + this.shouldCheckMAC + "]";
    }

    @Override // net.sf.scuba.smartcards.APDUWrapper
    public ResponseAPDU unwrap(ResponseAPDU responseAPDU) {
        this.ssc++;
        try {
            byte[] data = responseAPDU.getData();
            if (data != null && data.length > 0) {
                return unwrapResponseAPDU(responseAPDU);
            }
            throw new IllegalStateException("Card indicates SM error, SW = " + Integer.toHexString(responseAPDU.getSW() & 65535));
        } catch (IOException e10) {
            throw new IllegalStateException("Unexpected exception", e10);
        } catch (GeneralSecurityException e11) {
            throw new IllegalStateException("Unexpected exception", e11);
        }
    }

    @Override // net.sf.scuba.smartcards.APDUWrapper
    public CommandAPDU wrap(CommandAPDU commandAPDU) {
        this.ssc++;
        try {
            return wrapCommandAPDU(commandAPDU);
        } catch (IOException e10) {
            throw new IllegalStateException("Unexpected exception", e10);
        } catch (GeneralSecurityException e11) {
            throw new IllegalStateException("Unexpected exception", e11);
        }
    }
}
```

```
package net.sf.scuba.smartcards;

import android.annotation.TargetApi;
import android.nfc.Tag;
import android.nfc.tech.IsoDep;
import android.nfc.tech.NfcA;
import android.nfc.tech.NfcB;
import java.io.IOException;

/* loaded from: classes2.dex */
public class IsoDepCardService extends CardService {
    private int apduCount = 0;
    private IsoDep isoDep;

    public IsoDepCardService(IsoDep isoDep) {
        this.isoDep = isoDep;
    }

    private boolean isDirectConnectionLost(Throwable th2) {
        if (!isISODepConnected()) {
            return true;
        }
        if (th2 == null) {
            return false;
        }
        if (th2.getClass().getName().contains("TagLostException")) {
            return true;
        }
        String message = th2.getMessage();
        if (message == null) {
            message = "";
        }
        if (message.toLowerCase().contains("tag was lost")) {
            return true;
        }
        return (th2 instanceof CardServiceException) && (message.toLowerCase().contains("not connected") || message.toLowerCase().contains("failed response"));
    }

    private boolean isISODepConnected() {
        try {
            return this.isoDep.isConnected();
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // net.sf.scuba.smartcards.CardService
    public void close() throws IOException {
        try {
            this.isoDep.close();
            this.state = 0;
        } catch (IOException unused) {
        }
    }

    @Override // net.sf.scuba.smartcards.CardService
    public byte[] getATR() {
        Tag tag;
        IsoDep isoDep = this.isoDep;
        if (isoDep == null || (tag = isoDep.getTag()) == null) {
            return null;
        }
        if (NfcA.get(tag) == null && NfcB.get(tag) != null) {
            return this.isoDep.getHiLayerResponse();
        }
        return this.isoDep.getHistoricalBytes();
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x001d, code lost:
    
        return false;
     */
    @Override // net.sf.scuba.smartcards.CardService
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean isConnectionLost(java.lang.Exception r4) {
        /*
            r3 = this;
            boolean r0 = r3.isDirectConnectionLost(r4)
            r1 = 1
            if (r0 == 0) goto L8
            return r1
        L8:
            r0 = 0
            if (r4 != 0) goto Lc
            return r0
        Lc:
            java.lang.Throwable r2 = r4.getCause()
            if (r2 == 0) goto L1d
            if (r4 == r2) goto L1d
            boolean r4 = r3.isDirectConnectionLost(r2)
            if (r4 == 0) goto L1b
            return r1
        L1b:
            r4 = r2
            goto Lc
        L1d:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: net.sf.scuba.smartcards.IsoDepCardService.isConnectionLost(java.lang.Exception):boolean");
    }

    @Override // net.sf.scuba.smartcards.CardService
    @TargetApi(16)
    public boolean isExtendedAPDULengthSupported() {
        return this.isoDep.isExtendedLengthApduSupported();
    }

    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r0v4 */
    @Override // net.sf.scuba.smartcards.CardService
    public boolean isOpen() {
        ?? r02 = this.isoDep.isConnected() ? 1 : 0;
        this.state = r02;
        return r02;
    }

    @Override // net.sf.scuba.smartcards.CardService
    public void open() throws IOException, CardServiceException {
        if (isOpen()) {
            return;
        }
        try {
            this.isoDep.connect();
            if (!this.isoDep.isConnected()) {
                throw new CardServiceException("Failed to connect");
            }
            this.state = 1;
        } catch (IOException e10) {
            throw new CardServiceException("Failed to connect", e10);
        }
    }

    @Override // net.sf.scuba.smartcards.CardService
    public ResponseAPDU transmit(CommandAPDU commandAPDU) throws IOException, CardServiceException {
        try {
            if (!this.isoDep.isConnected()) {
                throw new CardServiceException("Not connected");
            }
            byte[] bArrTransceive = this.isoDep.transceive(commandAPDU.getBytes());
            if (bArrTransceive == null || bArrTransceive.length < 2) {
                throw new CardServiceException("Failed response");
            }
            ResponseAPDU responseAPDU = new ResponseAPDU(bArrTransceive);
            int r6 = this.apduCount + 1;
            this.apduCount = r6;
            notifyExchangedAPDU(new APDUEvent(this, "ISODep", r6, commandAPDU, responseAPDU));
            return responseAPDU;
        } catch (CardServiceException e10) {
            throw e10;
        } catch (Exception e11) {
            throw new CardServiceException("Could not tranceive APDU", e11);
        }
    }
}
```

```
package tr.gov.turkiye.edevlet.kapisi.verification;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.nfc.NfcAdapter;
import android.nfc.Tag;
import android.nfc.tech.IsoDep;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.app.AppCompatActivity;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.app.NotificationCompat;
import androidx.core.content.ContextCompat;
import c5.u;
import c5.v;
import c5.y;
import ff.d;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Locale;
import ke.d;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import kotlinx.coroutines.internal.m;
import l9.e;
import nc.a0;
import nc.e1;
import nc.j0;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.jmrtd.BACKey;
import org.jmrtd.BACKeySpec;
import p9.f;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.verification.databinding.ActivityCardReadBinding;

@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001:\u0002\b\tB\u0007¢\u0006\u0004\b\u0006\u0010\u0007J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0007¨\u0006\n"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity;", "Lu8/a;", "Ltr/gov/turkiye/edevlet/kapisi/data/nfc/IdScanOperation;", NotificationCompat.CATEGORY_EVENT, "Ll9/m;", "onEvent", "<init>", "()V", "a", "b", "ui-id-verification_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class CardReadActivity extends u8.a {

    /* renamed from: r, reason: collision with root package name */
    public static final /* synthetic */ int f17549r = 0;

    /* renamed from: b, reason: collision with root package name */
    public gf.b f17550b;

    /* renamed from: c, reason: collision with root package name */
    public final e f17551c = y.v(3, new c(this));

    /* renamed from: d, reason: collision with root package name */
    public final ff.b f17552d = new ff.b(this);

    /* renamed from: e, reason: collision with root package name */
    public String f17553e;
    public String f;

    /* renamed from: g, reason: collision with root package name */
    public String f17554g;

    /* renamed from: h, reason: collision with root package name */
    public String f17555h;

    /* renamed from: j, reason: collision with root package name */
    public String f17556j;

    /* renamed from: k, reason: collision with root package name */
    public String f17557k;

    /* renamed from: l, reason: collision with root package name */
    public String f17558l;

    /* renamed from: m, reason: collision with root package name */
    public String f17559m;

    /* renamed from: n, reason: collision with root package name */
    public v.e f17560n;

    /* renamed from: p, reason: collision with root package name */
    public ie.a f17561p;

    /* renamed from: q, reason: collision with root package name */
    public ie.b f17562q;

    public static final class a {
        public static final String a(String str) {
            int r02 = CardReadActivity.f17549r;
            if (str != null) {
                try {
                    Locale locale = Locale.US;
                    return new SimpleDateFormat("yyMMdd", locale).format(new SimpleDateFormat("dd.MM.yyyy", locale).parse(str));
                } catch (ParseException unused) {
                }
            }
            return null;
        }
    }

    public final class b implements a0 {

        /* renamed from: a, reason: collision with root package name */
        public final IsoDep f17563a;

        /* renamed from: b, reason: collision with root package name */
        public final BACKeySpec f17564b;

        /* renamed from: c, reason: collision with root package name */
        public final String f17565c;

        /* renamed from: d, reason: collision with root package name */
        public final String f17566d;

        /* renamed from: e, reason: collision with root package name */
        public final String f17567e;
        public String f;

        /* renamed from: g, reason: collision with root package name */
        public String f17568g;

        /* renamed from: h, reason: collision with root package name */
        public String f17569h;

        /* renamed from: j, reason: collision with root package name */
        public String f17570j;

        /* renamed from: k, reason: collision with root package name */
        public final String f17571k = "SHA1";

        /* renamed from: l, reason: collision with root package name */
        public final String f17572l = "SHA256WithRSA/ISO9796-2";

        /* renamed from: m, reason: collision with root package name */
        public final e1 f17573m = new e1(null);

        public b(IsoDep isoDep, BACKey bACKey, String str, String str2, String str3) {
            this.f17563a = isoDep;
            this.f17564b = bACKey;
            this.f17565c = str;
            this.f17566d = str2;
            this.f17567e = str3;
        }

        @Override // nc.a0
        public final f getCoroutineContext() {
            kotlinx.coroutines.scheduling.c cVar = j0.f10808a;
            return m.f9167a.plus(this.f17573m);
        }
    }

    public static final class c extends j implements x9.a<ActivityCardReadBinding> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ AppCompatActivity f17575a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(AppCompatActivity appCompatActivity) {
            super(0);
            this.f17575a = appCompatActivity;
        }

        @Override // x9.a
        public final ActivityCardReadBinding invoke() {
            LayoutInflater layoutInflater = this.f17575a.getLayoutInflater();
            h.e(layoutInflater, "layoutInflater");
            return ActivityCardReadBinding.inflate(layoutInflater);
        }
    }

    static {
        new a();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    public final void attachBaseContext(Context newBase) {
        h.f(newBase, "newBase");
        this.f17552d.getClass();
        applyOverrideConfiguration(ff.b.f(newBase));
        super.attachBaseContext(newBase);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Context getApplicationContext() {
        Context applicationContext = super.getApplicationContext();
        h.e(applicationContext, "super.getApplicationContext()");
        this.f17552d.getClass();
        return d.a(applicationContext);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public final Resources getResources() {
        Resources resources = super.getResources();
        h.e(resources, "super.getResources()");
        this.f17552d.b(resources);
        return resources;
    }

    @Override // androidx.view.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
        super.onBackPressed();
        finish();
    }

    @Override // u8.a, androidx.fragment.app.FragmentActivity, androidx.view.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        this.f17552d.d();
        super.onCreate(bundle);
        setContentView(s().f17606a);
        Bundle extras = getIntent().getExtras();
        h.c(extras);
        this.f17553e = extras.getString("uuid");
        this.f = extras.getString("token");
        this.f17554g = extras.getString("challenge");
        this.f17555h = extras.getString("serialNo");
        this.f17556j = extras.getString("birthDate");
        this.f17557k = extras.getString("validationDate");
        this.f17558l = extras.getString("phoneNumber");
        this.f17559m = extras.getString("countryCode");
        s().f17608c.setTitle(getString(R.string.toolbar_title));
        setSupportActionBar(s().f17608c);
        s().f17608c.setNavigationOnClickListener(new ie.d(18, this));
        Object systemService = getSystemService("layout_inflater");
        h.d(systemService, "null cannot be cast to non-null type android.view.LayoutInflater");
        View viewInflate = ((LayoutInflater) systemService).inflate(R.layout.read_card_dialog, (ViewGroup) null);
        h.e(viewInflate, "inflater.inflate(R.layout.read_card_dialog, null)");
        v.e eVar = new v.e(this);
        this.f17560n = eVar;
        u.n(eVar, viewInflate);
        v.e eVar2 = this.f17560n;
        if (eVar2 != null) {
            eVar2.b(false);
        }
        this.f17561p = new ie.a(new xh.c());
        this.f17562q = new ie.b(new xh.d());
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x009c  */
    @qd.i(sticky = true, threadMode = org.greenrobot.eventbus.ThreadMode.MAIN)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onEvent(tr.gov.turkiye.edevlet.kapisi.data.nfc.IdScanOperation r8) {
        /*
            Method dump skipped, instructions count: 277
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: tr.gov.turkiye.edevlet.kapisi.verification.CardReadActivity.onEvent(tr.gov.turkiye.edevlet.kapisi.data.nfc.IdScanOperation):void");
    }

    @Override // androidx.view.ComponentActivity, android.app.Activity
    public final void onNewIntent(Intent intent) {
        h.f(intent, "intent");
        super.onNewIntent(intent);
        if (h.a("android.nfc.action.TECH_DISCOVERED", intent.getAction())) {
            ie.a aVar = this.f17561p;
            if (aVar != null) {
                aVar.show(getSupportFragmentManager(), ie.a.class.getSimpleName());
            }
            Bundle extras = intent.getExtras();
            h.c(extras);
            Tag tag = (Tag) extras.getParcelable("android.nfc.extra.TAG");
            h.c(tag);
            String[] techList = tag.getTechList();
            h.e(techList, "tag!!.techList");
            if (!b8.f.T(Arrays.copyOf(techList, techList.length)).contains("android.nfc.tech.IsoDep")) {
                v.e eVar = this.f17560n;
                if (eVar != null) {
                    eVar.dismiss();
                    return;
                }
                return;
            }
            BACKey bACKey = new BACKey(this.f17555h, a.a(this.f17556j), a.a(this.f17557k));
            IsoDep isoDep = IsoDep.get(tag);
            isoDep.setTimeout(5000);
            b bVar = new b(isoDep, bACKey, this.f17553e, this.f, this.f17554g);
            v.C(bVar, null, 0, new tr.gov.turkiye.edevlet.kapisi.verification.b(bVar, null), 3);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        super.onPause();
        NfcAdapter defaultAdapter = NfcAdapter.getDefaultAdapter(this);
        if (defaultAdapter != null) {
            defaultAdapter.disableForegroundDispatch(this);
        }
        if (qd.b.b().e(this)) {
            qd.b.b().n(this);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        NfcAdapter defaultAdapter = NfcAdapter.getDefaultAdapter(this);
        if (defaultAdapter == null || !defaultAdapter.isEnabled()) {
            ((defaultAdapter == null || defaultAdapter.isEnabled()) ? new ie.c(new xh.b()) : new ie.e(new xh.a())).show(getSupportFragmentManager(), ie.e.class.getSimpleName());
        } else {
            Intent intent = new Intent(getApplicationContext(), (Class<?>) CardReadActivity.class);
            intent.setFlags(PKIFailureInfo.duplicateCertReq);
            defaultAdapter.enableForegroundDispatch(this, PendingIntent.getActivity(this, 0, intent, Build.VERSION.SDK_INT >= 31 ? 167772160 : 134217728), null, new String[][]{new String[]{"android.nfc.tech.IsoDep"}});
        }
        this.f17552d.e(this);
        if (qd.b.b().e(this)) {
            return;
        }
        qd.b.b().k(this);
    }

    public final ActivityCardReadBinding s() {
        return (ActivityCardReadBinding) this.f17551c.getValue();
    }

    public final void t(int r52, String str) {
        int r6;
        int r02;
        boolean zA = h.a(str, "success");
        int r12 = R.color.white;
        if (zA) {
            r6 = R.color.success_color;
            r02 = R.drawable.toast_success;
        } else if (h.a(str, "warning")) {
            r6 = R.color.warning_color;
            r12 = R.color.black;
            r02 = R.drawable.toast_warning;
        } else {
            r6 = R.color.error_color;
            r02 = R.drawable.toast_error;
        }
        int r22 = ke.d.f8929a;
        ConstraintLayout constraintLayout = s().f17607b;
        h.e(constraintLayout, "mIDScanActivityBinding.cardScanContainer");
        ke.d dVarD = d.a.d(constraintLayout, r52, r02, ContextCompat.getColor(this, r6), ContextCompat.getColor(this, r12));
        if (dVarD != null) {
            dVarD.show();
        }
    }
}
```
