package org.bouncycastle.oer.its.ieee1609dot2.basetypes;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
public class EciesP256EncryptedKey extends ASN1Object {

    /* renamed from: c, reason: collision with root package name */
    private final ASN1OctetString f11805c;

    /* renamed from: t, reason: collision with root package name */
    private final ASN1OctetString f11806t;

    /* renamed from: v, reason: collision with root package name */
    private final EccP256CurvePoint f11807v;

    public static class Builder {

        /* renamed from: c, reason: collision with root package name */
        private ASN1OctetString f11808c;

        /* renamed from: t, reason: collision with root package name */
        private ASN1OctetString f11809t;

        /* renamed from: v, reason: collision with root package name */
        private EccP256CurvePoint f11810v;

        public EciesP256EncryptedKey createEciesP256EncryptedKey() {
            return new EciesP256EncryptedKey(this.f11810v, this.f11808c, this.f11809t);
        }

        public Builder setC(ASN1OctetString aSN1OctetString) {
            this.f11808c = aSN1OctetString;
            return this;
        }

        public Builder setC(byte[] bArr) {
            this.f11808c = new DEROctetString(Arrays.clone(bArr));
            return this;
        }

        public Builder setT(ASN1OctetString aSN1OctetString) {
            this.f11809t = aSN1OctetString;
            return this;
        }

        public Builder setT(byte[] bArr) {
            this.f11809t = new DEROctetString(Arrays.clone(bArr));
            return this;
        }

        public Builder setV(EccP256CurvePoint eccP256CurvePoint) {
            this.f11810v = eccP256CurvePoint;
            return this;
        }
    }

    private EciesP256EncryptedKey(ASN1Sequence aSN1Sequence) {
        if (aSN1Sequence.size() != 3) {
            throw new IllegalArgumentException("expected sequence size of 3");
        }
        this.f11807v = EccP256CurvePoint.getInstance(aSN1Sequence.getObjectAt(0));
        this.f11805c = ASN1OctetString.getInstance(aSN1Sequence.getObjectAt(1));
        this.f11806t = ASN1OctetString.getInstance(aSN1Sequence.getObjectAt(2));
    }

    public EciesP256EncryptedKey(EccP256CurvePoint eccP256CurvePoint, ASN1OctetString aSN1OctetString, ASN1OctetString aSN1OctetString2) {
        this.f11807v = eccP256CurvePoint;
        this.f11805c = aSN1OctetString;
        this.f11806t = aSN1OctetString2;
    }

    public static Builder builder() {
        return new Builder();
    }

    public static EciesP256EncryptedKey getInstance(Object obj) {
        if (obj instanceof EciesP256EncryptedKey) {
            return (EciesP256EncryptedKey) obj;
        }
        if (obj != null) {
            return new EciesP256EncryptedKey(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    public ASN1OctetString getC() {
        return this.f11805c;
    }

    public ASN1OctetString getT() {
        return this.f11806t;
    }

    public EccP256CurvePoint getV() {
        return this.f11807v;
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        return new DERSequence(new ASN1Encodable[]{this.f11807v, this.f11805c, this.f11806t});
    }
}
