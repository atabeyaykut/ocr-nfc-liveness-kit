package org.ejbca.cvc;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.cert.CertificateException;
import org.bouncycastle.jce.provider.BouncyCastleProvider;
import org.ejbca.cvc.exception.ConstructionException;
import org.ejbca.cvc.util.BCECUtil;

/* loaded from: classes2.dex */
public class CVCAuthenticatedRequest extends AbstractSequence implements Signable {
    private static CVCTagEnum[] allowedFields = {CVCTagEnum.CV_CERTIFICATE, CVCTagEnum.CA_REFERENCE, CVCTagEnum.SIGNATURE};
    private static final long serialVersionUID = 1;

    public CVCAuthenticatedRequest() {
        super(CVCTagEnum.REQ_AUTHENTICATION);
    }

    public CVCAuthenticatedRequest(CVCertificate cVCertificate, CAReferenceField cAReferenceField) throws ConstructionException {
        this();
        addSubfield(cVCertificate);
        addSubfield(cAReferenceField);
    }

    @Override // org.ejbca.cvc.AbstractSequence
    public CVCTagEnum[] getAllowedFields() {
        return allowedFields;
    }

    public CAReferenceField getAuthorityReference() throws NoSuchFieldException {
        return (CAReferenceField) getSubfield(CVCTagEnum.CA_REFERENCE);
    }

    public CVCertificate getRequest() throws NoSuchFieldException {
        return (CVCertificate) getSubfield(CVCTagEnum.CV_CERTIFICATE);
    }

    public byte[] getSignature() throws NoSuchFieldException {
        return ((ByteField) getSubfield(CVCTagEnum.SIGNATURE)).getData();
    }

    @Override // org.ejbca.cvc.Signable
    public byte[] getTBS() throws ConstructionException, IOException {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            getRequest().encode(dataOutputStream);
            getAuthorityReference().encode(dataOutputStream);
            dataOutputStream.close();
            return byteArrayOutputStream.toByteArray();
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
        return getAsText("", true);
    }

    public void verify(PublicKey publicKey) throws NoSuchAlgorithmException, SignatureException, InvalidKeyException, CertificateException, NoSuchProviderException {
        try {
            String algorithmName = AlgorithmUtil.getAlgorithmName(publicKey instanceof CVCPublicKey ? ((CVCPublicKey) publicKey).getObjectIdentifier() : getRequest().getCertificateBody().getPublicKey().getObjectIdentifier());
            Signature signature = Signature.getInstance(algorithmName, BouncyCastleProvider.PROVIDER_NAME);
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
