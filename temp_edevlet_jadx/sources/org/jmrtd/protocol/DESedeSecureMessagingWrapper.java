package org.jmrtd.protocol;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.crypto.SecretKey;
import javax.crypto.spec.IvParameterSpec;

/* loaded from: classes2.dex */
public class DESedeSecureMessagingWrapper extends SecureMessagingWrapper {
    private static final Logger LOGGER = Logger.getLogger("org.jmrtd");
    public static final IvParameterSpec ZERO_IV_PARAM_SPEC = new IvParameterSpec(new byte[]{0, 0, 0, 0, 0, 0, 0, 0});
    private static final long serialVersionUID = -2859033943345961793L;

    public DESedeSecureMessagingWrapper(SecretKey secretKey, SecretKey secretKey2) throws GeneralSecurityException {
        this(secretKey, secretKey2, true);
    }

    public DESedeSecureMessagingWrapper(SecretKey secretKey, SecretKey secretKey2, int r12, boolean z10, long j10) throws GeneralSecurityException {
        super(secretKey, secretKey2, "DESede/CBC/NoPadding", "ISO9797Alg3Mac", r12, z10, j10);
    }

    public DESedeSecureMessagingWrapper(SecretKey secretKey, SecretKey secretKey2, long j10) throws GeneralSecurityException {
        this(secretKey, secretKey2, 256, true, j10);
    }

    public DESedeSecureMessagingWrapper(SecretKey secretKey, SecretKey secretKey2, boolean z10) throws GeneralSecurityException {
        this(secretKey, secretKey2, 256, z10, 0L);
    }

    public DESedeSecureMessagingWrapper(DESedeSecureMessagingWrapper dESedeSecureMessagingWrapper) throws GeneralSecurityException {
        this(dESedeSecureMessagingWrapper.getEncryptionKey(), dESedeSecureMessagingWrapper.getMACKey(), dESedeSecureMessagingWrapper.getMaxTranceiveLength(), dESedeSecureMessagingWrapper.shouldCheckMAC(), dESedeSecureMessagingWrapper.getSendSequenceCounter());
    }

    @Override // org.jmrtd.protocol.SecureMessagingWrapper
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return super.equals(obj);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v2, types: [byte[]] */
    @Override // org.jmrtd.protocol.SecureMessagingWrapper
    public byte[] getEncodedSendSequenceCounter() throws IOException {
        String byteArray = "Error closing stream";
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            try {
                try {
                    new DataOutputStream(byteArrayOutputStream).writeLong(getSendSequenceCounter());
                    byteArrayOutputStream.close();
                } catch (Throwable th2) {
                    try {
                        byteArrayOutputStream.close();
                    } catch (IOException e10) {
                        LOGGER.log(Level.FINE, byteArray, e10);
                    }
                    throw th2;
                }
            } catch (IOException e11) {
                LOGGER.log(Level.FINE, "Error writing to stream", (Throwable) e11);
                byteArrayOutputStream.close();
            }
        } catch (IOException e12) {
            LOGGER.log(Level.FINE, "Error closing stream", (Throwable) e12);
        }
        byteArray = byteArrayOutputStream.toByteArray();
        return byteArray;
    }

    @Override // org.jmrtd.protocol.SecureMessagingWrapper
    public IvParameterSpec getIV() {
        return ZERO_IV_PARAM_SPEC;
    }

    @Override // org.jmrtd.protocol.SecureMessagingWrapper
    public int getPadLength() {
        return 8;
    }

    @Override // net.sf.scuba.smartcards.APDUWrapper
    public String getType() {
        return "DESede";
    }

    @Override // org.jmrtd.protocol.SecureMessagingWrapper
    public int hashCode() {
        return (super.hashCode() * 31) + 13;
    }

    @Override // org.jmrtd.protocol.SecureMessagingWrapper
    public String toString() {
        return "DESedeSecureMessagingWrapper [ssc: " + getSendSequenceCounter() + ", kEnc: " + getEncryptionKey() + ", kMac: " + getMACKey() + ", shouldCheckMAC: " + shouldCheckMAC() + ", maxTranceiveLength: " + getMaxTranceiveLength() + "]";
    }
}
