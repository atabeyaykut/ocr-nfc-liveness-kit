package org.jmrtd.cert;

import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SignatureException;
import java.util.Date;
import org.ejbca.cvc.AccessRightEnum;
import org.ejbca.cvc.AuthorizationRoleEnum;
import org.ejbca.cvc.CAReferenceField;
import org.ejbca.cvc.CertificateGenerator;
import org.ejbca.cvc.HolderReferenceField;
import org.ejbca.cvc.exception.ConstructionException;
import org.jmrtd.cert.CVCAuthorizationTemplate;

/* loaded from: classes2.dex */
public class CVCertificateBuilder {

    /* renamed from: org.jmrtd.cert.CVCertificateBuilder$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$jmrtd$cert$CVCAuthorizationTemplate$Permission;
        static final /* synthetic */ int[] $SwitchMap$org$jmrtd$cert$CVCAuthorizationTemplate$Role;

        static {
            int[] r02 = new int[CVCAuthorizationTemplate.Permission.values().length];
            $SwitchMap$org$jmrtd$cert$CVCAuthorizationTemplate$Permission = r02;
            try {
                r02[CVCAuthorizationTemplate.Permission.READ_ACCESS_NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$jmrtd$cert$CVCAuthorizationTemplate$Permission[CVCAuthorizationTemplate.Permission.READ_ACCESS_DG3.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$jmrtd$cert$CVCAuthorizationTemplate$Permission[CVCAuthorizationTemplate.Permission.READ_ACCESS_DG4.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$jmrtd$cert$CVCAuthorizationTemplate$Permission[CVCAuthorizationTemplate.Permission.READ_ACCESS_DG3_AND_DG4.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] r42 = new int[CVCAuthorizationTemplate.Role.values().length];
            $SwitchMap$org$jmrtd$cert$CVCAuthorizationTemplate$Role = r42;
            try {
                r42[CVCAuthorizationTemplate.Role.CVCA.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$jmrtd$cert$CVCAuthorizationTemplate$Role[CVCAuthorizationTemplate.Role.DV_D.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$org$jmrtd$cert$CVCAuthorizationTemplate$Role[CVCAuthorizationTemplate.Role.DV_F.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$org$jmrtd$cert$CVCAuthorizationTemplate$Role[CVCAuthorizationTemplate.Role.IS.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    private CVCertificateBuilder() {
    }

    public static CardVerifiableCertificate createCertificate(PublicKey publicKey, PrivateKey privateKey, String str, CVCPrincipal cVCPrincipal, CVCPrincipal cVCPrincipal2, CVCAuthorizationTemplate cVCAuthorizationTemplate, Date date, Date date2, String str2) throws ConstructionException, NoSuchAlgorithmException, SignatureException, IOException, InvalidKeyException, NoSuchProviderException {
        return new CardVerifiableCertificate(CertificateGenerator.createCertificate(publicKey, privateKey, str, new CAReferenceField(cVCPrincipal.getCountry().toAlpha2Code(), cVCPrincipal.getMnemonic(), cVCPrincipal.getSeqNumber()), new HolderReferenceField(cVCPrincipal2.getCountry().toAlpha2Code(), cVCPrincipal2.getMnemonic(), cVCPrincipal2.getSeqNumber()), getRole(cVCAuthorizationTemplate.getRole()), getAccessRight(cVCAuthorizationTemplate.getAccessRight()), date, date2, str2));
    }

    private static AccessRightEnum getAccessRight(CVCAuthorizationTemplate.Permission permission) {
        int r02 = AnonymousClass1.$SwitchMap$org$jmrtd$cert$CVCAuthorizationTemplate$Permission[permission.ordinal()];
        if (r02 == 1) {
            return AccessRightEnum.READ_ACCESS_NONE;
        }
        if (r02 == 2) {
            return AccessRightEnum.READ_ACCESS_DG3;
        }
        if (r02 == 3) {
            return AccessRightEnum.READ_ACCESS_DG4;
        }
        if (r02 == 4) {
            return AccessRightEnum.READ_ACCESS_DG3_AND_DG4;
        }
        throw new NumberFormatException("Cannot decode access right " + permission);
    }

    private static AuthorizationRoleEnum getRole(CVCAuthorizationTemplate.Role role) {
        int r02 = AnonymousClass1.$SwitchMap$org$jmrtd$cert$CVCAuthorizationTemplate$Role[role.ordinal()];
        if (r02 == 1) {
            return AuthorizationRoleEnum.CVCA;
        }
        if (r02 == 2) {
            return AuthorizationRoleEnum.DV_D;
        }
        if (r02 == 3) {
            return AuthorizationRoleEnum.DV_F;
        }
        if (r02 == 4) {
            return AuthorizationRoleEnum.IS;
        }
        throw new NumberFormatException("Cannot decode role " + role);
    }
}
