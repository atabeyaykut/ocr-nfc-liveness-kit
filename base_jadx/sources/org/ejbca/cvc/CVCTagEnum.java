package org.ejbca.cvc;

import org.jmrtd.cbeff.ISO781611;

/* loaded from: classes2.dex */
public enum CVCTagEnum {
    CV_CERTIFICATE(32545, true),
    CERTIFICATE_BODY(32590, true),
    PROFILE_IDENTIFIER(24361),
    PUBLIC_KEY(32585, true),
    HOLDER_REFERENCE(24352),
    HOLDER_AUTH_TEMPLATE(32588, true),
    EFFECTIVE_DATE(24357),
    EXPIRATION_DATE(24356),
    SIGNATURE(24375),
    OID(6),
    CA_REFERENCE(66),
    REQ_AUTHENTICATION(103, true),
    ROLE_AND_ACCESS_RIGHTS(83),
    MODULUS(129),
    EXPONENT(ISO781611.BIOMETRIC_SUBTYPE_TAG),
    COEFFICIENT_A(ISO781611.BIOMETRIC_SUBTYPE_TAG),
    COEFFICIENT_B(ISO781611.CREATION_DATE_AND_TIME_TAG),
    BASE_POINT_G(132),
    BASE_POINT_R_ORDER(133),
    PUBLIC_POINT_Y(ISO781611.CREATOR_OF_BIOMETRIC_REFERENCE_DATA),
    COFACTOR_F(135),
    CERTIFICATE_EXTENSIONS(101, true),
    DISCRETIONARY_DATA_TEMPLATE(115, true),
    ARBITRARY_DATA(83);

    private boolean isSequence;
    private int value;

    CVCTagEnum(int r42) {
        this(r42, false);
    }

    CVCTagEnum(int r32, boolean z10) {
        this.value = r32;
        this.isSequence = z10;
    }

    public int getValue() {
        return this.value;
    }

    public boolean isSequence() {
        return this.isSequence;
    }
}
