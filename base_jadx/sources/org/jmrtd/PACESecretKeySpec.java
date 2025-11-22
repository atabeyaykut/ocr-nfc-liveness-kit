package org.jmrtd;

import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes2.dex */
public class PACESecretKeySpec extends SecretKeySpec implements AccessKeySpec {
    private static final long serialVersionUID = -5181060361947453857L;
    private byte keyReference;

    public PACESecretKeySpec(byte[] bArr, int r22, int r32, String str, byte b10) {
        super(bArr, r22, r32, str);
        this.keyReference = b10;
    }

    public PACESecretKeySpec(byte[] bArr, String str, byte b10) {
        super(bArr, str);
        this.keyReference = b10;
    }

    @Override // javax.crypto.spec.SecretKeySpec
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return super.equals(obj) && getClass() == obj.getClass() && this.keyReference == ((PACESecretKeySpec) obj).keyReference;
    }

    @Override // org.jmrtd.AccessKeySpec
    public byte[] getKey() {
        return super.getEncoded();
    }

    public byte getKeyReference() {
        return this.keyReference;
    }

    @Override // javax.crypto.spec.SecretKeySpec
    public int hashCode() {
        return (super.hashCode() * 31) + this.keyReference;
    }
}
