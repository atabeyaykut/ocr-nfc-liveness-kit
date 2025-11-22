package org.ejbca.cvc;

import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.cert.CertificateException;
import org.ejbca.cvc.exception.ConstructionException;
import org.ejbca.cvc.util.BCECUtil;

/* loaded from: classes2.dex */
public class CVCertificate extends AbstractSequence implements Signable {
    private static CVCTagEnum[] allowedFields = {CVCTagEnum.CERTIFICATE_BODY, CVCTagEnum.SIGNATURE};
    private static final long serialVersionUID = 1;

    public CVCertificate() {
        super(CVCTagEnum.CV_CERTIFICATE);
    }

    public CVCertificate(CVCertificateBody cVCertificateBody) throws ConstructionException {
        this();
        if (cVCertificateBody == null) {
            throw new IllegalArgumentException("body is null");
        }
        addSubfield(cVCertificateBody);
    }

    @Override // org.ejbca.cvc.AbstractSequence
    public CVCTagEnum[] getAllowedFields() {
        return allowedFields;
    }

    public CVCertificateBody getCertificateBody() throws NoSuchFieldException {
        return (CVCertificateBody) getSubfield(CVCTagEnum.CERTIFICATE_BODY);
    }

    public byte[] getSignature() throws NoSuchFieldException {
        return ((ByteField) getSubfield(CVCTagEnum.SIGNATURE)).getData();
    }

    @Override // org.ejbca.cvc.Signable
    public byte[] getTBS() throws ConstructionException {
        try {
            return getCertificateBody().getDEREncoded();
        } catch (IOException e10) {
            throw new ConstructionException(e10);
        } catch (NoSuchFieldException e11) {
            throw new ConstructionException(e11);
        }
    }

    public void setSignature(byte[] bArr) throws ConstructionException {
        addSubfield(new ByteField(CVCTagEnum.SIGNATURE, bArr));
    }

    public String toString() {
        return getAsText("");
    }

    public void verify(PublicKey publicKey, String str) throws NoSuchAlgorithmException, SignatureException, InvalidKeyException, CertificateException, NoSuchProviderException {
        try {
            String algorithmName = AlgorithmUtil.getAlgorithmName((publicKey instanceof CVCPublicKey ? (CVCPublicKey) publicKey : getCertificateBody().getPublicKey()).getObjectIdentifier());
            Signature signature = Signature.getInstance(algorithmName, str);
            signature.initVerify(publicKey);
            signature.update(getTBS());
            if (signature.verify(BCECUtil.convertCVCSigToX962(algorithmName, getSignature()))) {
            } else {
                throw new SignatureException("Signature verification failed!");
            }
        } catch (NoSuchFieldException e10) {
            throw new CertificateException("CV-Certificate is corrupt", e10);
        } catch (ConstructionException e11) {
            throw new CertificateException("CV-Certificate is corrupt", e11);
        }
    }
}
