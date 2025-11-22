package org.bouncycastle.x509;

import android.support.v4.media.a;
import androidx.browser.browseractions.b;
import androidx.core.os.EnvironmentCompat;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.KeyFactory;
import java.security.PublicKey;
import java.security.cert.CRLException;
import java.security.cert.CertPathValidatorException;
import java.security.cert.CertStore;
import java.security.cert.CertStoreException;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.PKIXParameters;
import java.security.cert.PolicyQualifierInfo;
import java.security.cert.X509CRL;
import java.security.cert.X509CRLEntry;
import java.security.cert.X509Certificate;
import java.security.interfaces.DSAParams;
import java.security.interfaces.DSAPublicKey;
import java.security.spec.DSAPublicKeySpec;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import javax.security.auth.x500.X500Principal;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1Enumerated;
import org.bouncycastle.asn1.ASN1InputStream;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1OutputStream;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.asn1.x509.Extension;
import org.bouncycastle.asn1.x509.IssuingDistributionPoint;
import org.bouncycastle.asn1.x509.SubjectPublicKeyInfo;
import org.bouncycastle.asn1.x509.X509Extension;
import org.bouncycastle.jcajce.PKIXCertStoreSelector;
import org.bouncycastle.jcajce.provider.asymmetric.x509.CertificateFactory;
import org.bouncycastle.jce.exception.ExtCertPathValidatorException;
import org.bouncycastle.jce.provider.AnnotatedException;
import org.bouncycastle.jce.provider.BouncyCastleProvider;
import org.bouncycastle.jce.provider.PKIXPolicyNode;
import org.bouncycastle.util.Encodable;
import org.bouncycastle.util.Store;
import org.bouncycastle.util.StoreException;

/* loaded from: classes2.dex */
class CertPathValidatorUtilities {
    protected static final String ANY_POLICY = "2.5.29.32.0";
    protected static final int CRL_SIGN = 6;
    protected static final int KEY_CERT_SIGN = 5;
    protected static final String CERTIFICATE_POLICIES = Extension.certificatePolicies.getId();
    protected static final String BASIC_CONSTRAINTS = Extension.basicConstraints.getId();
    protected static final String POLICY_MAPPINGS = Extension.policyMappings.getId();
    protected static final String SUBJECT_ALTERNATIVE_NAME = Extension.subjectAlternativeName.getId();
    protected static final String NAME_CONSTRAINTS = Extension.nameConstraints.getId();
    protected static final String KEY_USAGE = Extension.keyUsage.getId();
    protected static final String INHIBIT_ANY_POLICY = Extension.inhibitAnyPolicy.getId();
    protected static final String ISSUING_DISTRIBUTION_POINT = Extension.issuingDistributionPoint.getId();
    protected static final String DELTA_CRL_INDICATOR = Extension.deltaCRLIndicator.getId();
    protected static final String POLICY_CONSTRAINTS = Extension.policyConstraints.getId();
    protected static final String CRL_NUMBER = Extension.cRLNumber.getId();
    protected static final String[] crlReasons = {"unspecified", "keyCompromise", "cACompromise", "affiliationChanged", "superseded", "cessationOfOperation", "certificateHold", EnvironmentCompat.MEDIA_UNKNOWN, "removeFromCRL", "privilegeWithdrawn", "aACompromise"};

    public static Collection findCertificates(PKIXCertStoreSelector pKIXCertStoreSelector, List list) throws AnnotatedException {
        HashSet hashSet = new HashSet();
        for (Object obj : list) {
            if (obj instanceof Store) {
                try {
                    hashSet.addAll(((Store) obj).getMatches(pKIXCertStoreSelector));
                } catch (StoreException e10) {
                    throw new AnnotatedException("Problem while picking certificates from X.509 store.", e10);
                }
            } else {
                try {
                    hashSet.addAll(PKIXCertStoreSelector.getCertificates(pKIXCertStoreSelector, (CertStore) obj));
                } catch (CertStoreException e11) {
                    throw new AnnotatedException("Problem while picking certificates from certificate store.", e11);
                }
            }
        }
        return hashSet;
    }

    public static Collection findCertificates(X509AttributeCertStoreSelector x509AttributeCertStoreSelector, List list) throws AnnotatedException {
        HashSet hashSet = new HashSet();
        for (Object obj : list) {
            if (obj instanceof X509Store) {
                try {
                    hashSet.addAll(((X509Store) obj).getMatches(x509AttributeCertStoreSelector));
                } catch (StoreException e10) {
                    throw new AnnotatedException("Problem while picking certificates from X.509 store.", e10);
                }
            }
        }
        return hashSet;
    }

    public static Collection findCertificates(X509CertStoreSelector x509CertStoreSelector, List list) throws AnnotatedException {
        HashSet hashSet = new HashSet();
        CertificateFactory certificateFactory = new CertificateFactory();
        for (Object obj : list) {
            if (obj instanceof Store) {
                try {
                    for (Object objEngineGenerateCertificate : ((Store) obj).getMatches(x509CertStoreSelector)) {
                        if (objEngineGenerateCertificate instanceof Encodable) {
                            objEngineGenerateCertificate = certificateFactory.engineGenerateCertificate(new ByteArrayInputStream(((Encodable) objEngineGenerateCertificate).getEncoded()));
                        } else if (!(objEngineGenerateCertificate instanceof Certificate)) {
                            throw new AnnotatedException("Unknown object found in certificate store.");
                        }
                        hashSet.add(objEngineGenerateCertificate);
                    }
                } catch (IOException e10) {
                    throw new AnnotatedException("Problem while extracting certificates from X.509 store.", e10);
                } catch (CertificateException e11) {
                    throw new AnnotatedException("Problem while extracting certificates from X.509 store.", e11);
                } catch (StoreException e12) {
                    throw new AnnotatedException("Problem while picking certificates from X.509 store.", e12);
                }
            } else {
                try {
                    hashSet.addAll(((CertStore) obj).getCertificates(x509CertStoreSelector));
                } catch (CertStoreException e13) {
                    throw new AnnotatedException("Problem while picking certificates from certificate store.", e13);
                }
            }
        }
        return hashSet;
    }

    public static AlgorithmIdentifier getAlgorithmIdentifier(PublicKey publicKey) throws CertPathValidatorException {
        try {
            return SubjectPublicKeyInfo.getInstance(new ASN1InputStream(publicKey.getEncoded()).readObject()).getAlgorithmId();
        } catch (Exception e10) {
            throw new ExtCertPathValidatorException("Subject public key cannot be decoded.", e10);
        }
    }

    public static void getCertStatus(Date date, X509CRL x509crl, Object obj, CertStatus certStatus) throws AnnotatedException {
        X509CRLEntry revokedCertificate;
        ASN1Enumerated aSN1Enumerated;
        try {
            if (isIndirectCRL(x509crl)) {
                revokedCertificate = x509crl.getRevokedCertificate(getSerialNumber(obj));
                if (revokedCertificate == null) {
                    return;
                }
                X500Principal certificateIssuer = revokedCertificate.getCertificateIssuer();
                if (certificateIssuer == null) {
                    certificateIssuer = getIssuerPrincipal(x509crl);
                }
                if (!getEncodedIssuerPrincipal(obj).equals(certificateIssuer)) {
                    return;
                }
            } else if (!getEncodedIssuerPrincipal(obj).equals(getIssuerPrincipal(x509crl)) || (revokedCertificate = x509crl.getRevokedCertificate(getSerialNumber(obj))) == null) {
                return;
            }
            if (revokedCertificate.hasExtensions()) {
                try {
                    aSN1Enumerated = ASN1Enumerated.getInstance(getExtensionValue(revokedCertificate, X509Extension.reasonCode.getId()));
                } catch (Exception e10) {
                    throw new AnnotatedException("Reason code CRL entry extension could not be decoded.", e10);
                }
            } else {
                aSN1Enumerated = null;
            }
            int r6 = aSN1Enumerated == null ? 0 : aSN1Enumerated.intValueExact();
            if (date.getTime() >= revokedCertificate.getRevocationDate().getTime() || r6 == 0 || r6 == 1 || r6 == 2 || r6 == 10) {
                certStatus.setCertStatus(r6);
                certStatus.setRevocationDate(revokedCertificate.getRevocationDate());
            }
        } catch (CRLException e11) {
            throw new AnnotatedException("Failed check for indirect CRL.", e11);
        }
    }

    public static X500Principal getEncodedIssuerPrincipal(Object obj) {
        return obj instanceof X509Certificate ? ((X509Certificate) obj).getIssuerX500Principal() : (X500Principal) ((X509AttributeCertificate) obj).getIssuer().getPrincipals()[0];
    }

    public static ASN1Primitive getExtensionValue(java.security.cert.X509Extension x509Extension, String str) throws AnnotatedException {
        byte[] extensionValue = x509Extension.getExtensionValue(str);
        if (extensionValue == null) {
            return null;
        }
        return getObject(str, extensionValue);
    }

    public static X500Principal getIssuerPrincipal(X509CRL x509crl) {
        return x509crl.getIssuerX500Principal();
    }

    public static PublicKey getNextWorkingKey(List list, int r52) throws CertPathValidatorException {
        DSAPublicKey dSAPublicKey;
        PublicKey publicKey = ((Certificate) list.get(r52)).getPublicKey();
        if (!(publicKey instanceof DSAPublicKey)) {
            return publicKey;
        }
        DSAPublicKey dSAPublicKey2 = (DSAPublicKey) publicKey;
        if (dSAPublicKey2.getParams() != null) {
            return dSAPublicKey2;
        }
        do {
            r52++;
            if (r52 >= list.size()) {
                throw new CertPathValidatorException("DSA parameters cannot be inherited from previous certificate.");
            }
            PublicKey publicKey2 = ((X509Certificate) list.get(r52)).getPublicKey();
            if (!(publicKey2 instanceof DSAPublicKey)) {
                throw new CertPathValidatorException("DSA parameters cannot be inherited from previous certificate.");
            }
            dSAPublicKey = (DSAPublicKey) publicKey2;
        } while (dSAPublicKey.getParams() == null);
        DSAParams params = dSAPublicKey.getParams();
        try {
            return KeyFactory.getInstance("DSA", BouncyCastleProvider.PROVIDER_NAME).generatePublic(new DSAPublicKeySpec(dSAPublicKey2.getY(), params.getP(), params.getQ(), params.getG()));
        } catch (Exception e10) {
            throw new RuntimeException(e10.getMessage());
        }
    }

    private static ASN1Primitive getObject(String str, byte[] bArr) throws AnnotatedException {
        try {
            return new ASN1InputStream(((ASN1OctetString) new ASN1InputStream(bArr).readObject()).getOctets()).readObject();
        } catch (Exception e10) {
            throw new AnnotatedException(b.e("exception processing extension ", str), e10);
        }
    }

    public static final Set getQualifierSet(ASN1Sequence aSN1Sequence) throws CertPathValidatorException {
        HashSet hashSet = new HashSet();
        if (aSN1Sequence == null) {
            return hashSet;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ASN1OutputStream aSN1OutputStreamCreate = ASN1OutputStream.create(byteArrayOutputStream);
        Enumeration objects = aSN1Sequence.getObjects();
        while (objects.hasMoreElements()) {
            try {
                aSN1OutputStreamCreate.writeObject((ASN1Encodable) objects.nextElement());
                hashSet.add(new PolicyQualifierInfo(byteArrayOutputStream.toByteArray()));
                byteArrayOutputStream.reset();
            } catch (IOException e10) {
                throw new ExtCertPathValidatorException("Policy qualifier info cannot be decoded.", e10);
            }
        }
        return hashSet;
    }

    private static BigInteger getSerialNumber(Object obj) {
        return obj instanceof X509Certificate ? ((X509Certificate) obj).getSerialNumber() : ((X509AttributeCertificate) obj).getSerialNumber();
    }

    public static X500Principal getSubjectPrincipal(X509Certificate x509Certificate) {
        return x509Certificate.getSubjectX500Principal();
    }

    public static Date getValidityDate(PKIXParameters pKIXParameters, Date date) {
        Date date2 = pKIXParameters.getDate();
        return date2 == null ? date : date2;
    }

    public static boolean isAnyPolicy(Set set) {
        return set == null || set.contains("2.5.29.32.0") || set.isEmpty();
    }

    public static boolean isIndirectCRL(X509CRL x509crl) throws CRLException {
        try {
            byte[] extensionValue = x509crl.getExtensionValue(Extension.issuingDistributionPoint.getId());
            if (extensionValue != null) {
                if (IssuingDistributionPoint.getInstance(ASN1OctetString.getInstance(extensionValue).getOctets()).isIndirectCRL()) {
                    return true;
                }
            }
            return false;
        } catch (Exception e10) {
            throw new CRLException(a.e("Exception reading IssuingDistributionPoint: ", e10));
        }
    }

    public static boolean isSelfIssued(X509Certificate x509Certificate) {
        return x509Certificate.getSubjectDN().equals(x509Certificate.getIssuerDN());
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x008f, code lost:
    
        r7 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0094, code lost:
    
        if (r15.getCriticalExtensionOIDs() == null) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0096, code lost:
    
        r8 = r15.getCriticalExtensionOIDs().contains(org.bouncycastle.x509.CertPathValidatorUtilities.CERTIFICATE_POLICIES);
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00a2, code lost:
    
        r8 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00a3, code lost:
    
        r9 = (org.bouncycastle.jce.provider.PKIXPolicyNode) r3.getParent();
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00b2, code lost:
    
        if ("2.5.29.32.0".equals(r9.getValidPolicy()) == false) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00b4, code lost:
    
        r10 = new org.bouncycastle.jce.provider.PKIXPolicyNode(new java.util.ArrayList(), r11, (java.util.Set) r14.get(r13), r9, r7, r13, r8);
        r9.addChild(r10);
        r12[r11].add(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:?, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void prepareNextCertB1(int r11, java.util.List[] r12, java.lang.String r13, java.util.Map r14, java.security.cert.X509Certificate r15) throws org.bouncycastle.jce.provider.AnnotatedException, java.security.cert.CertPathValidatorException {
        /*
            r2 = r12[r11]
            java.util.Iterator r2 = r2.iterator()
        L6:
            boolean r3 = r2.hasNext()
            r4 = 0
            if (r3 == 0) goto L28
            java.lang.Object r3 = r2.next()
            org.bouncycastle.jce.provider.PKIXPolicyNode r3 = (org.bouncycastle.jce.provider.PKIXPolicyNode) r3
            java.lang.String r5 = r3.getValidPolicy()
            boolean r5 = r5.equals(r13)
            if (r5 == 0) goto L6
            java.lang.Object r2 = r14.get(r13)
            java.util.Set r2 = (java.util.Set) r2
            r3.setExpectedPolicies(r2)
            r2 = 1
            goto L29
        L28:
            r2 = 0
        L29:
            if (r2 != 0) goto Ldc
            r2 = r12[r11]
            java.util.Iterator r2 = r2.iterator()
        L31:
            boolean r3 = r2.hasNext()
            if (r3 == 0) goto Ldc
            java.lang.Object r3 = r2.next()
            org.bouncycastle.jce.provider.PKIXPolicyNode r3 = (org.bouncycastle.jce.provider.PKIXPolicyNode) r3
            java.lang.String r5 = r3.getValidPolicy()
            java.lang.String r6 = "2.5.29.32.0"
            boolean r5 = r6.equals(r5)
            if (r5 == 0) goto L31
            java.lang.String r2 = org.bouncycastle.x509.CertPathValidatorUtilities.CERTIFICATE_POLICIES     // Catch: java.lang.Exception -> Ld3
            org.bouncycastle.asn1.ASN1Primitive r2 = getExtensionValue(r15, r2)     // Catch: java.lang.Exception -> Ld3
            org.bouncycastle.asn1.ASN1Sequence r2 = org.bouncycastle.asn1.ASN1Sequence.getInstance(r2)     // Catch: java.lang.Exception -> Ld3
            java.util.Enumeration r2 = r2.getObjects()
        L57:
            boolean r7 = r2.hasMoreElements()
            if (r7 == 0) goto L8e
            java.lang.Object r7 = r2.nextElement()     // Catch: java.lang.Exception -> L85
            org.bouncycastle.asn1.x509.PolicyInformation r7 = org.bouncycastle.asn1.x509.PolicyInformation.getInstance(r7)     // Catch: java.lang.Exception -> L85
            org.bouncycastle.asn1.ASN1ObjectIdentifier r8 = r7.getPolicyIdentifier()
            java.lang.String r8 = r8.getId()
            boolean r8 = r6.equals(r8)
            if (r8 == 0) goto L57
            org.bouncycastle.asn1.ASN1Sequence r2 = r7.getPolicyQualifiers()     // Catch: java.security.cert.CertPathValidatorException -> L7c
            java.util.Set r2 = getQualifierSet(r2)     // Catch: java.security.cert.CertPathValidatorException -> L7c
            goto L8f
        L7c:
            r0 = move-exception
            org.bouncycastle.jce.exception.ExtCertPathValidatorException r1 = new org.bouncycastle.jce.exception.ExtCertPathValidatorException
            java.lang.String r2 = "Policy qualifier info set could not be built."
            r1.<init>(r2, r0)
            throw r1
        L85:
            r0 = move-exception
            org.bouncycastle.jce.provider.AnnotatedException r1 = new org.bouncycastle.jce.provider.AnnotatedException
            java.lang.String r2 = "Policy information cannot be decoded."
            r1.<init>(r2, r0)
            throw r1
        L8e:
            r2 = 0
        L8f:
            r7 = r2
            java.util.Set r2 = r15.getCriticalExtensionOIDs()
            if (r2 == 0) goto La2
            java.util.Set r2 = r15.getCriticalExtensionOIDs()
            java.lang.String r4 = org.bouncycastle.x509.CertPathValidatorUtilities.CERTIFICATE_POLICIES
            boolean r2 = r2.contains(r4)
            r8 = r2
            goto La3
        La2:
            r8 = 0
        La3:
            java.security.cert.PolicyNode r2 = r3.getParent()
            r9 = r2
            org.bouncycastle.jce.provider.PKIXPolicyNode r9 = (org.bouncycastle.jce.provider.PKIXPolicyNode) r9
            java.lang.String r2 = r9.getValidPolicy()
            boolean r2 = r6.equals(r2)
            if (r2 == 0) goto Ldc
            org.bouncycastle.jce.provider.PKIXPolicyNode r10 = new org.bouncycastle.jce.provider.PKIXPolicyNode
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            java.lang.Object r1 = r14.get(r13)
            r4 = r1
            java.util.Set r4 = (java.util.Set) r4
            r1 = r10
            r3 = r11
            r5 = r9
            r6 = r7
            r7 = r13
            r1.<init>(r2, r3, r4, r5, r6, r7, r8)
            r9.addChild(r10)
            r0 = r12[r11]
            r0.add(r10)
            goto Ldc
        Ld3:
            r0 = move-exception
            org.bouncycastle.jce.provider.AnnotatedException r1 = new org.bouncycastle.jce.provider.AnnotatedException
            java.lang.String r2 = "Certificate policies cannot be decoded."
            r1.<init>(r2, r0)
            throw r1
        Ldc:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.x509.CertPathValidatorUtilities.prepareNextCertB1(int, java.util.List[], java.lang.String, java.util.Map, java.security.cert.X509Certificate):void");
    }

    public static PKIXPolicyNode prepareNextCertB2(int r6, List[] listArr, String str, PKIXPolicyNode pKIXPolicyNode) {
        int r32;
        Iterator it = listArr[r6].iterator();
        while (it.hasNext()) {
            PKIXPolicyNode pKIXPolicyNode2 = (PKIXPolicyNode) it.next();
            if (pKIXPolicyNode2.getValidPolicy().equals(str)) {
                ((PKIXPolicyNode) pKIXPolicyNode2.getParent()).removeChild(pKIXPolicyNode2);
                it.remove();
                for (int r12 = r6 - 1; r12 >= 0; r12--) {
                    List list = listArr[r12];
                    while (r32 < list.size()) {
                        PKIXPolicyNode pKIXPolicyNode3 = (PKIXPolicyNode) list.get(r32);
                        r32 = (pKIXPolicyNode3.hasChildren() || (pKIXPolicyNode = removePolicyNode(pKIXPolicyNode, listArr, pKIXPolicyNode3)) != null) ? r32 + 1 : 0;
                    }
                }
            }
        }
        return pKIXPolicyNode;
    }

    public static boolean processCertD1i(int r12, List[] listArr, ASN1ObjectIdentifier aSN1ObjectIdentifier, Set set) {
        List list = listArr[r12 - 1];
        for (int r22 = 0; r22 < list.size(); r22++) {
            PKIXPolicyNode pKIXPolicyNode = (PKIXPolicyNode) list.get(r22);
            if (pKIXPolicyNode.getExpectedPolicies().contains(aSN1ObjectIdentifier.getId())) {
                HashSet hashSet = new HashSet();
                hashSet.add(aSN1ObjectIdentifier.getId());
                PKIXPolicyNode pKIXPolicyNode2 = new PKIXPolicyNode(new ArrayList(), r12, hashSet, pKIXPolicyNode, set, aSN1ObjectIdentifier.getId(), false);
                pKIXPolicyNode.addChild(pKIXPolicyNode2);
                listArr[r12].add(pKIXPolicyNode2);
                return true;
            }
        }
        return false;
    }

    public static void processCertD1ii(int r11, List[] listArr, ASN1ObjectIdentifier aSN1ObjectIdentifier, Set set) {
        List list = listArr[r11 - 1];
        for (int r12 = 0; r12 < list.size(); r12++) {
            PKIXPolicyNode pKIXPolicyNode = (PKIXPolicyNode) list.get(r12);
            if ("2.5.29.32.0".equals(pKIXPolicyNode.getValidPolicy())) {
                HashSet hashSet = new HashSet();
                hashSet.add(aSN1ObjectIdentifier.getId());
                PKIXPolicyNode pKIXPolicyNode2 = new PKIXPolicyNode(new ArrayList(), r11, hashSet, pKIXPolicyNode, set, aSN1ObjectIdentifier.getId(), false);
                pKIXPolicyNode.addChild(pKIXPolicyNode2);
                listArr[r11].add(pKIXPolicyNode2);
                return;
            }
        }
    }

    public static PKIXPolicyNode removePolicyNode(PKIXPolicyNode pKIXPolicyNode, List[] listArr, PKIXPolicyNode pKIXPolicyNode2) {
        PKIXPolicyNode pKIXPolicyNode3 = (PKIXPolicyNode) pKIXPolicyNode2.getParent();
        if (pKIXPolicyNode == null) {
            return null;
        }
        if (pKIXPolicyNode3 != null) {
            pKIXPolicyNode3.removeChild(pKIXPolicyNode2);
            removePolicyNodeRecurse(listArr, pKIXPolicyNode2);
            return pKIXPolicyNode;
        }
        for (int r22 = 0; r22 < listArr.length; r22++) {
            listArr[r22] = new ArrayList();
        }
        return null;
    }

    private static void removePolicyNodeRecurse(List[] listArr, PKIXPolicyNode pKIXPolicyNode) {
        listArr[pKIXPolicyNode.getDepth()].remove(pKIXPolicyNode);
        if (pKIXPolicyNode.hasChildren()) {
            Iterator children = pKIXPolicyNode.getChildren();
            while (children.hasNext()) {
                removePolicyNodeRecurse(listArr, (PKIXPolicyNode) children.next());
            }
        }
    }

    public static void verifyX509Certificate(X509Certificate x509Certificate, PublicKey publicKey, String str) throws GeneralSecurityException {
        if (str == null) {
            x509Certificate.verify(publicKey);
        } else {
            x509Certificate.verify(publicKey, str);
        }
    }
}
