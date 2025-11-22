package org.ejbca.cvc;

/* loaded from: classes2.dex */
public enum AccessRightSignTermEnum implements AccessRights {
    ACCESS_NONE(0),
    ACCESS_SIGN(1),
    ACCESS_QUALSIGN(2),
    ACCESS_SIGN_AND_QUALSIGN(3);

    private byte value;

    /* renamed from: org.ejbca.cvc.AccessRightSignTermEnum$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$ejbca$cvc$AccessRightSignTermEnum;

        static {
            int[] r02 = new int[AccessRightSignTermEnum.values().length];
            $SwitchMap$org$ejbca$cvc$AccessRightSignTermEnum = r02;
            try {
                r02[AccessRightSignTermEnum.ACCESS_SIGN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$ejbca$cvc$AccessRightSignTermEnum[AccessRightSignTermEnum.ACCESS_QUALSIGN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$ejbca$cvc$AccessRightSignTermEnum[AccessRightSignTermEnum.ACCESS_SIGN_AND_QUALSIGN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$ejbca$cvc$AccessRightSignTermEnum[AccessRightSignTermEnum.ACCESS_NONE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    AccessRightSignTermEnum(int r32) {
        this.value = (byte) r32;
    }

    public boolean allowsQualifiedSignature() {
        return (this.value & ACCESS_QUALSIGN.value) != 0;
    }

    public boolean allowsSignature() {
        return (this.value & ACCESS_SIGN.value) != 0;
    }

    @Override // org.ejbca.cvc.AccessRights
    public byte[] getEncoded() {
        return new byte[]{this.value};
    }

    public byte getValue() {
        return this.value;
    }

    @Override // java.lang.Enum
    public String toString() {
        int r02 = AnonymousClass1.$SwitchMap$org$ejbca$cvc$AccessRightSignTermEnum[ordinal()];
        if (r02 == 1) {
            return "Signature";
        }
        if (r02 == 2) {
            return "Qualified_Signature";
        }
        if (r02 == 3) {
            return "Signature_and_Qualified_Signature";
        }
        if (r02 == 4) {
            return "none";
        }
        throw new IllegalStateException("Enum case not handled");
    }
}
