package org.jmrtd.protocol;

import java.io.Serializable;
import java.security.KeyPair;
import java.security.PublicKey;
import org.jmrtd.AccessKeySpec;
import org.jmrtd.Util;
import org.jmrtd.lds.PACEInfo;

/* loaded from: classes2.dex */
public class PACEResult implements Serializable {
    private static final long serialVersionUID = -6819675856205885052L;
    private String agreementAlg;
    private String cipherAlg;
    private String digestAlg;
    private int keyLength;
    private PACEMappingResult mappingResult;
    private PACEInfo.MappingType mappingType;
    private AccessKeySpec paceKey;
    private KeyPair pcdKeyPair;
    private PublicKey piccPublicKey;
    private SecureMessagingWrapper wrapper;

    public PACEResult(AccessKeySpec accessKeySpec, PACEInfo.MappingType mappingType, String str, String str2, String str3, int r6, PACEMappingResult pACEMappingResult, KeyPair keyPair, PublicKey publicKey, SecureMessagingWrapper secureMessagingWrapper) {
        this.paceKey = accessKeySpec;
        this.mappingType = mappingType;
        this.agreementAlg = str;
        this.cipherAlg = str2;
        this.digestAlg = str3;
        this.keyLength = r6;
        this.mappingResult = pACEMappingResult;
        this.pcdKeyPair = keyPair;
        this.piccPublicKey = publicKey;
        this.wrapper = secureMessagingWrapper;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        PACEResult pACEResult = (PACEResult) obj;
        AccessKeySpec accessKeySpec = this.paceKey;
        if (accessKeySpec == null) {
            if (pACEResult.paceKey != null) {
                return false;
            }
        } else if (!accessKeySpec.equals(pACEResult.paceKey)) {
            return false;
        }
        String str = this.agreementAlg;
        if (str == null) {
            if (pACEResult.agreementAlg != null) {
                return false;
            }
        } else if (!str.equals(pACEResult.agreementAlg)) {
            return false;
        }
        String str2 = this.cipherAlg;
        if (str2 == null) {
            if (pACEResult.cipherAlg != null) {
                return false;
            }
        } else if (!str2.equals(pACEResult.cipherAlg)) {
            return false;
        }
        String str3 = this.digestAlg;
        if (str3 == null) {
            if (pACEResult.digestAlg != null) {
                return false;
            }
        } else if (!str3.equals(pACEResult.digestAlg)) {
            return false;
        }
        PACEMappingResult pACEMappingResult = this.mappingResult;
        if (pACEMappingResult == null) {
            if (pACEResult.mappingResult != null) {
                return false;
            }
        } else if (!pACEMappingResult.equals(pACEResult.mappingResult)) {
            return false;
        }
        if (this.keyLength != pACEResult.keyLength || this.mappingType != pACEResult.mappingType) {
            return false;
        }
        KeyPair keyPair = this.pcdKeyPair;
        if (keyPair == null) {
            if (pACEResult.pcdKeyPair != null) {
                return false;
            }
        } else if (!keyPair.equals(pACEResult.pcdKeyPair)) {
            return false;
        }
        PublicKey publicKey = this.piccPublicKey;
        if (publicKey == null) {
            if (pACEResult.piccPublicKey != null) {
                return false;
            }
        } else if (!publicKey.equals(pACEResult.piccPublicKey)) {
            return false;
        }
        SecureMessagingWrapper secureMessagingWrapper = this.wrapper;
        SecureMessagingWrapper secureMessagingWrapper2 = pACEResult.wrapper;
        if (secureMessagingWrapper == null) {
            if (secureMessagingWrapper2 != null) {
                return false;
            }
        } else if (!secureMessagingWrapper.equals(secureMessagingWrapper2)) {
            return false;
        }
        return true;
    }

    public String getAgreementAlg() {
        return this.agreementAlg;
    }

    public String getCipherAlg() {
        return this.cipherAlg;
    }

    public String getDigestAlg() {
        return this.digestAlg;
    }

    public int getKeyLength() {
        return this.keyLength;
    }

    public PACEMappingResult getMappingResult() {
        return this.mappingResult;
    }

    public PACEInfo.MappingType getMappingType() {
        return this.mappingType;
    }

    public AccessKeySpec getPACEKey() {
        return this.paceKey;
    }

    public KeyPair getPCDKeyPair() {
        return this.pcdKeyPair;
    }

    public PublicKey getPICCPublicKey() {
        return this.piccPublicKey;
    }

    public SecureMessagingWrapper getWrapper() {
        return this.wrapper;
    }

    public int hashCode() {
        AccessKeySpec accessKeySpec = this.paceKey;
        int r22 = (21901 + (accessKeySpec == null ? 0 : accessKeySpec.hashCode())) * 1991;
        String str = this.agreementAlg;
        int r23 = (r22 + (str == null ? 0 : str.hashCode())) * 1991;
        String str2 = this.cipherAlg;
        int r24 = (r23 + (str2 == null ? 0 : str2.hashCode())) * 1991;
        String str3 = this.digestAlg;
        int r25 = (r24 + (str3 == null ? 0 : str3.hashCode())) * 1991;
        PACEMappingResult pACEMappingResult = this.mappingResult;
        int r26 = (((r25 + (pACEMappingResult == null ? 0 : pACEMappingResult.hashCode())) * 1991) + this.keyLength) * 1991;
        PACEInfo.MappingType mappingType = this.mappingType;
        int r27 = (r26 + (mappingType == null ? 0 : mappingType.hashCode())) * 1991;
        KeyPair keyPair = this.pcdKeyPair;
        int r28 = (r27 + (keyPair == null ? 0 : keyPair.hashCode())) * 1991;
        PublicKey publicKey = this.piccPublicKey;
        int r29 = (r28 + (publicKey == null ? 0 : publicKey.hashCode())) * 1991;
        SecureMessagingWrapper secureMessagingWrapper = this.wrapper;
        return r29 + (secureMessagingWrapper != null ? secureMessagingWrapper.hashCode() : 0);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("PACEResult [paceKey: ");
        sb2.append(this.paceKey);
        sb2.append(", mappingType: ");
        sb2.append(this.mappingType);
        sb2.append(", agreementAlg: " + this.agreementAlg);
        sb2.append(", cipherAlg: " + this.cipherAlg);
        sb2.append(", digestAlg: " + this.digestAlg);
        sb2.append(", keyLength: " + this.keyLength);
        sb2.append(", mappingResult: " + this.mappingResult);
        sb2.append(", piccPublicKey: " + Util.getDetailedPublicKeyAlgorithm(this.piccPublicKey));
        sb2.append(", pcdPrivateKey: " + Util.getDetailedPrivateKeyAlgorithm(this.pcdKeyPair.getPrivate()));
        sb2.append(", pcdPublicKey: " + Util.getDetailedPublicKeyAlgorithm(this.pcdKeyPair.getPublic()));
        return sb2.toString();
    }
}
