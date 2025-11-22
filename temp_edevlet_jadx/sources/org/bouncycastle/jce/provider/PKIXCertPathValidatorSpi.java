package org.bouncycastle.jce.provider;

import java.security.InvalidAlgorithmParameterException;
import java.security.PublicKey;
import java.security.cert.CertPath;
import java.security.cert.CertPathParameters;
import java.security.cert.CertPathValidatorException;
import java.security.cert.CertPathValidatorResult;
import java.security.cert.CertPathValidatorSpi;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateNotYetValidException;
import java.security.cert.PKIXCertPathChecker;
import java.security.cert.PKIXCertPathValidatorResult;
import java.security.cert.PKIXParameters;
import java.security.cert.TrustAnchor;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.bouncycastle.asn1.x500.X500Name;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.asn1.x509.Extension;
import org.bouncycastle.asn1.x509.TBSCertificate;
import org.bouncycastle.jcajce.PKIXExtendedBuilderParameters;
import org.bouncycastle.jcajce.PKIXExtendedParameters;
import org.bouncycastle.jcajce.interfaces.BCX509Certificate;
import org.bouncycastle.jcajce.util.BCJcaJceHelper;
import org.bouncycastle.jcajce.util.JcaJceHelper;
import org.bouncycastle.jce.exception.ExtCertPathValidatorException;
import org.bouncycastle.x509.ExtendedPKIXParameters;

/* loaded from: classes2.dex */
public class PKIXCertPathValidatorSpi extends CertPathValidatorSpi {
    private final JcaJceHelper helper;
    private final boolean isForCRLCheck;

    public PKIXCertPathValidatorSpi() {
        this(false);
    }

    public PKIXCertPathValidatorSpi(boolean z10) {
        this.helper = new BCJcaJceHelper();
        this.isForCRLCheck = z10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void checkCertificate(X509Certificate x509Certificate) throws AnnotatedException {
        if (x509Certificate instanceof BCX509Certificate) {
            try {
            } catch (RuntimeException e10) {
                e = e10;
            }
            if (((BCX509Certificate) x509Certificate).getTBSCertificateNative() != null) {
                return;
            }
            e = null;
            throw new AnnotatedException("unable to process TBSCertificate", e);
        }
        try {
            TBSCertificate.getInstance(x509Certificate.getTBSCertificate());
        } catch (IllegalArgumentException e11) {
            throw new AnnotatedException(e11.getMessage());
        } catch (CertificateEncodingException e12) {
            throw new AnnotatedException("unable to process TBSCertificate", e12);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v8, types: [org.bouncycastle.asn1.x509.AlgorithmIdentifier] */
    @Override // java.security.cert.CertPathValidatorSpi
    public CertPathValidatorResult engineValidate(CertPath certPath, CertPathParameters certPathParameters) throws CertificateNotYetValidException, CertPathValidatorException, CertificateExpiredException, InvalidAlgorithmParameterException {
        PKIXExtendedParameters baseParameters;
        List<? extends Certificate> list;
        int r15;
        X500Name ca2;
        PublicKey cAPublicKey;
        HashSet hashSet;
        int r42;
        ArrayList[] arrayListArr;
        List list2;
        int r52;
        HashSet hashSet2;
        if (certPathParameters instanceof PKIXParameters) {
            PKIXExtendedParameters.Builder builder = new PKIXExtendedParameters.Builder((PKIXParameters) certPathParameters);
            if (certPathParameters instanceof ExtendedPKIXParameters) {
                ExtendedPKIXParameters extendedPKIXParameters = (ExtendedPKIXParameters) certPathParameters;
                builder.setUseDeltasEnabled(extendedPKIXParameters.isUseDeltasEnabled());
                builder.setValidityModel(extendedPKIXParameters.getValidityModel());
            }
            baseParameters = builder.build();
        } else if (certPathParameters instanceof PKIXExtendedBuilderParameters) {
            baseParameters = ((PKIXExtendedBuilderParameters) certPathParameters).getBaseParameters();
        } else {
            if (!(certPathParameters instanceof PKIXExtendedParameters)) {
                throw new InvalidAlgorithmParameterException("Parameters must be a " + PKIXParameters.class.getName() + " instance.");
            }
            baseParameters = (PKIXExtendedParameters) certPathParameters;
        }
        if (baseParameters.getTrustAnchors() == null) {
            throw new InvalidAlgorithmParameterException("trustAnchors is null, this is not allowed for certification path validation.");
        }
        List<? extends Certificate> certificates = certPath.getCertificates();
        int size = certificates.size();
        int algorithmIdentifier = -1;
        if (certificates.isEmpty()) {
            throw new CertPathValidatorException("Certification path is empty.", null, certPath, -1);
        }
        Date validityDate = CertPathValidatorUtilities.getValidityDate(baseParameters, new Date());
        Set initialPolicies = baseParameters.getInitialPolicies();
        try {
            TrustAnchor trustAnchorFindTrustAnchor = CertPathValidatorUtilities.findTrustAnchor((X509Certificate) certificates.get(certificates.size() - 1), baseParameters.getTrustAnchors(), baseParameters.getSigProvider());
            if (trustAnchorFindTrustAnchor == null) {
                list = certificates;
                r15 = 1;
                try {
                    throw new CertPathValidatorException("Trust anchor for certification path not found.", null, certPath, -1);
                } catch (AnnotatedException e10) {
                    e = e10;
                    throw new CertPathValidatorException(e.getMessage(), e.getUnderlyingException(), certPath, list.size() - r15);
                }
            }
            checkCertificate(trustAnchorFindTrustAnchor.getTrustedCert());
            PKIXExtendedParameters pKIXExtendedParametersBuild = new PKIXExtendedParameters.Builder(baseParameters).setTrustAnchor(trustAnchorFindTrustAnchor).build();
            int r22 = size + 1;
            ArrayList[] arrayListArr2 = new ArrayList[r22];
            for (int r43 = 0; r43 < r22; r43++) {
                arrayListArr2[r43] = new ArrayList();
            }
            HashSet hashSet3 = new HashSet();
            hashSet3.add(RFC3280CertPathUtilities.ANY_POLICY);
            PKIXPolicyNode pKIXPolicyNode = new PKIXPolicyNode(new ArrayList(), 0, hashSet3, null, new HashSet(), RFC3280CertPathUtilities.ANY_POLICY, false);
            arrayListArr2[0].add(pKIXPolicyNode);
            PKIXNameConstraintValidator pKIXNameConstraintValidator = new PKIXNameConstraintValidator();
            HashSet hashSet4 = new HashSet();
            int r44 = pKIXExtendedParametersBuild.isExplicitPolicyRequired() ? 0 : r22;
            int r18 = pKIXExtendedParametersBuild.isAnyPolicyInhibited() ? 0 : r22;
            if (pKIXExtendedParametersBuild.isPolicyMappingInhibited()) {
                r22 = 0;
            }
            X509Certificate trustedCert = trustAnchorFindTrustAnchor.getTrustedCert();
            try {
                if (trustedCert != null) {
                    ca2 = PrincipalUtils.getSubjectPrincipal(trustedCert);
                    cAPublicKey = trustedCert.getPublicKey();
                } else {
                    ca2 = PrincipalUtils.getCA(trustAnchorFindTrustAnchor);
                    cAPublicKey = trustAnchorFindTrustAnchor.getCAPublicKey();
                }
                try {
                    algorithmIdentifier = CertPathValidatorUtilities.getAlgorithmIdentifier(cAPublicKey);
                    algorithmIdentifier.getAlgorithm();
                    algorithmIdentifier.getParameters();
                    if (pKIXExtendedParametersBuild.getTargetConstraints() != null && !pKIXExtendedParametersBuild.getTargetConstraints().match((Certificate) certificates.get(0))) {
                        throw new ExtCertPathValidatorException("Target certificate in certification path does not match targetConstraints.", null, certPath, 0);
                    }
                    List certPathCheckers = pKIXExtendedParametersBuild.getCertPathCheckers();
                    Iterator it = certPathCheckers.iterator();
                    while (it.hasNext()) {
                        ((PKIXCertPathChecker) it.next()).init(false);
                    }
                    ProvCrlRevocationChecker provCrlRevocationChecker = pKIXExtendedParametersBuild.isRevocationEnabled() ? new ProvCrlRevocationChecker(this.helper) : null;
                    TrustAnchor trustAnchor = trustAnchorFindTrustAnchor;
                    int r25 = size;
                    X509Certificate x509Certificate = null;
                    int r53 = r22;
                    int r23 = r18;
                    PKIXPolicyNode pKIXPolicyNode2 = pKIXPolicyNode;
                    int r36 = r44;
                    int size2 = certificates.size() - 1;
                    int r32 = r36;
                    while (size2 >= 0) {
                        int r92 = size - size2;
                        int r26 = size;
                        X509Certificate x509Certificate2 = (X509Certificate) certificates.get(size2);
                        boolean z10 = size2 == certificates.size() + (-1);
                        try {
                            checkCertificate(x509Certificate2);
                            int r72 = r23;
                            List<? extends Certificate> list3 = certificates;
                            int r12 = r32;
                            int r29 = size2;
                            Date date = validityDate;
                            Date date2 = validityDate;
                            int r152 = r53;
                            ProvCrlRevocationChecker provCrlRevocationChecker2 = provCrlRevocationChecker;
                            ProvCrlRevocationChecker provCrlRevocationChecker3 = provCrlRevocationChecker;
                            PKIXNameConstraintValidator pKIXNameConstraintValidator2 = pKIXNameConstraintValidator;
                            ArrayList[] arrayListArr3 = arrayListArr2;
                            boolean z11 = z10;
                            TrustAnchor trustAnchor2 = trustAnchor;
                            PKIXExtendedParameters pKIXExtendedParameters = pKIXExtendedParametersBuild;
                            List list4 = certPathCheckers;
                            RFC3280CertPathUtilities.processCertA(certPath, pKIXExtendedParametersBuild, date, provCrlRevocationChecker2, r29, cAPublicKey, z11, ca2, trustedCert);
                            RFC3280CertPathUtilities.processCertBC(certPath, r29, pKIXNameConstraintValidator2, this.isForCRLCheck);
                            PKIXPolicyNode pKIXPolicyNodeProcessCertE = RFC3280CertPathUtilities.processCertE(certPath, r29, RFC3280CertPathUtilities.processCertD(certPath, r29, hashSet4, pKIXPolicyNode2, arrayListArr3, r72, this.isForCRLCheck));
                            RFC3280CertPathUtilities.processCertF(certPath, r29, pKIXPolicyNodeProcessCertE, r12);
                            if (r92 == r26) {
                                r42 = r152;
                                arrayListArr = arrayListArr3;
                                list2 = list4;
                                pKIXPolicyNode2 = pKIXPolicyNodeProcessCertE;
                                r23 = r72;
                                r25 = r25;
                                r52 = r12;
                            } else if (x509Certificate2 == null || x509Certificate2.getVersion() != 1) {
                                RFC3280CertPathUtilities.prepareNextCertA(certPath, r29);
                                arrayListArr = arrayListArr3;
                                PKIXPolicyNode pKIXPolicyNodePrepareCertB = RFC3280CertPathUtilities.prepareCertB(certPath, r29, arrayListArr, pKIXPolicyNodeProcessCertE, r152);
                                RFC3280CertPathUtilities.prepareNextCertG(certPath, r29, pKIXNameConstraintValidator2);
                                int r54 = RFC3280CertPathUtilities.prepareNextCertH1(certPath, r29, r12);
                                int r45 = RFC3280CertPathUtilities.prepareNextCertH2(certPath, r29, r152);
                                int r6 = RFC3280CertPathUtilities.prepareNextCertH3(certPath, r29, r72);
                                r52 = RFC3280CertPathUtilities.prepareNextCertI1(certPath, r29, r54);
                                r42 = RFC3280CertPathUtilities.prepareNextCertI2(certPath, r29, r45);
                                int r62 = RFC3280CertPathUtilities.prepareNextCertJ(certPath, r29, r6);
                                RFC3280CertPathUtilities.prepareNextCertK(certPath, r29);
                                r25 = RFC3280CertPathUtilities.prepareNextCertM(certPath, r29, RFC3280CertPathUtilities.prepareNextCertL(certPath, r29, r25));
                                RFC3280CertPathUtilities.prepareNextCertN(certPath, r29);
                                Set<String> criticalExtensionOIDs = x509Certificate2.getCriticalExtensionOIDs();
                                if (criticalExtensionOIDs != null) {
                                    hashSet2 = new HashSet(criticalExtensionOIDs);
                                    hashSet2.remove(RFC3280CertPathUtilities.KEY_USAGE);
                                    hashSet2.remove(RFC3280CertPathUtilities.CERTIFICATE_POLICIES);
                                    hashSet2.remove(RFC3280CertPathUtilities.POLICY_MAPPINGS);
                                    hashSet2.remove(RFC3280CertPathUtilities.INHIBIT_ANY_POLICY);
                                    hashSet2.remove(RFC3280CertPathUtilities.ISSUING_DISTRIBUTION_POINT);
                                    hashSet2.remove(RFC3280CertPathUtilities.DELTA_CRL_INDICATOR);
                                    hashSet2.remove(RFC3280CertPathUtilities.POLICY_CONSTRAINTS);
                                    hashSet2.remove(RFC3280CertPathUtilities.BASIC_CONSTRAINTS);
                                    hashSet2.remove(RFC3280CertPathUtilities.SUBJECT_ALTERNATIVE_NAME);
                                    hashSet2.remove(RFC3280CertPathUtilities.NAME_CONSTRAINTS);
                                } else {
                                    hashSet2 = new HashSet();
                                }
                                list2 = list4;
                                RFC3280CertPathUtilities.prepareNextCertO(certPath, r29, hashSet2, list2);
                                X500Name subjectPrincipal = PrincipalUtils.getSubjectPrincipal(x509Certificate2);
                                try {
                                    PublicKey nextWorkingKey = CertPathValidatorUtilities.getNextWorkingKey(certPath.getCertificates(), r29, this.helper);
                                    AlgorithmIdentifier algorithmIdentifier2 = CertPathValidatorUtilities.getAlgorithmIdentifier(nextWorkingKey);
                                    algorithmIdentifier2.getAlgorithm();
                                    algorithmIdentifier2.getParameters();
                                    pKIXPolicyNode2 = pKIXPolicyNodePrepareCertB;
                                    r23 = r62;
                                    ca2 = subjectPrincipal;
                                    cAPublicKey = nextWorkingKey;
                                    trustedCert = x509Certificate2;
                                } catch (CertPathValidatorException e11) {
                                    throw new CertPathValidatorException("Next working key could not be retrieved.", e11, certPath, r29);
                                }
                            } else {
                                if (r92 != 1 || !x509Certificate2.equals(trustAnchor2.getTrustedCert())) {
                                    throw new CertPathValidatorException("Version 1 certificates can't be used as CA ones.", null, certPath, r29);
                                }
                                r42 = r152;
                                arrayListArr = arrayListArr3;
                                list2 = list4;
                                pKIXPolicyNode2 = pKIXPolicyNodeProcessCertE;
                                r23 = r72;
                                r25 = r25;
                                r52 = r12;
                            }
                            arrayListArr2 = arrayListArr;
                            certPathCheckers = list2;
                            x509Certificate = x509Certificate2;
                            certificates = list3;
                            validityDate = date2;
                            pKIXExtendedParametersBuild = pKIXExtendedParameters;
                            size = r26;
                            r32 = r52;
                            trustAnchor = trustAnchor2;
                            r53 = r42;
                            size2 = r29 - 1;
                            pKIXNameConstraintValidator = pKIXNameConstraintValidator2;
                            provCrlRevocationChecker = provCrlRevocationChecker3;
                        } catch (AnnotatedException e12) {
                            throw new CertPathValidatorException(e12.getMessage(), e12.getUnderlyingException(), certPath, size2);
                        }
                    }
                    TrustAnchor trustAnchor3 = trustAnchor;
                    PKIXExtendedParameters pKIXExtendedParameters2 = pKIXExtendedParametersBuild;
                    ArrayList[] arrayListArr4 = arrayListArr2;
                    List list5 = certPathCheckers;
                    int r10 = size2;
                    int r55 = r10 + 1;
                    int r122 = RFC3280CertPathUtilities.wrapupCertB(certPath, r55, RFC3280CertPathUtilities.wrapupCertA(r32, x509Certificate));
                    Set<String> criticalExtensionOIDs2 = x509Certificate.getCriticalExtensionOIDs();
                    if (criticalExtensionOIDs2 != null) {
                        hashSet = new HashSet(criticalExtensionOIDs2);
                        hashSet.remove(RFC3280CertPathUtilities.KEY_USAGE);
                        hashSet.remove(RFC3280CertPathUtilities.CERTIFICATE_POLICIES);
                        hashSet.remove(RFC3280CertPathUtilities.POLICY_MAPPINGS);
                        hashSet.remove(RFC3280CertPathUtilities.INHIBIT_ANY_POLICY);
                        hashSet.remove(RFC3280CertPathUtilities.ISSUING_DISTRIBUTION_POINT);
                        hashSet.remove(RFC3280CertPathUtilities.DELTA_CRL_INDICATOR);
                        hashSet.remove(RFC3280CertPathUtilities.POLICY_CONSTRAINTS);
                        hashSet.remove(RFC3280CertPathUtilities.BASIC_CONSTRAINTS);
                        hashSet.remove(RFC3280CertPathUtilities.SUBJECT_ALTERNATIVE_NAME);
                        hashSet.remove(RFC3280CertPathUtilities.NAME_CONSTRAINTS);
                        hashSet.remove(RFC3280CertPathUtilities.CRL_DISTRIBUTION_POINTS);
                        hashSet.remove(Extension.extendedKeyUsage.getId());
                    } else {
                        hashSet = new HashSet();
                    }
                    RFC3280CertPathUtilities.wrapupCertF(certPath, r55, list5, hashSet);
                    PKIXPolicyNode pKIXPolicyNodeWrapupCertG = RFC3280CertPathUtilities.wrapupCertG(certPath, pKIXExtendedParameters2, initialPolicies, r55, arrayListArr4, pKIXPolicyNode2, hashSet4);
                    if (r122 > 0 || pKIXPolicyNodeWrapupCertG != null) {
                        return new PKIXCertPathValidatorResult(trustAnchor3, pKIXPolicyNodeWrapupCertG, x509Certificate.getPublicKey());
                    }
                    throw new CertPathValidatorException("Path processing failed on policy.", null, certPath, r10);
                } catch (CertPathValidatorException e13) {
                    throw new ExtCertPathValidatorException("Algorithm identifier of public key of trust anchor could not be read.", e13, certPath, -1);
                }
            } catch (RuntimeException e14) {
                throw new ExtCertPathValidatorException("Subject of trust anchor could not be (re)encoded.", e14, certPath, algorithmIdentifier);
            }
        } catch (AnnotatedException e15) {
            e = e15;
            list = certificates;
            r15 = 1;
        }
    }
}
