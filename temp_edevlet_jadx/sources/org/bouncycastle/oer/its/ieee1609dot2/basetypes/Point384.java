package org.bouncycastle.oer.its.ieee1609dot2.basetypes;

import java.math.BigInteger;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.util.BigIntegers;

/* loaded from: classes2.dex */
public class Point384 extends ASN1Object {

    /* renamed from: x, reason: collision with root package name */
    private final ASN1OctetString f11816x;

    /* renamed from: y, reason: collision with root package name */
    private final ASN1OctetString f11817y;

    public static class Builder {

        /* renamed from: x, reason: collision with root package name */
        private ASN1OctetString f11818x;

        /* renamed from: y, reason: collision with root package name */
        private ASN1OctetString f11819y;

        public Point384 createPoint384() {
            return new Point384(this.f11818x, this.f11819y);
        }

        public Builder setX(BigInteger bigInteger) {
            this.f11818x = new DEROctetString(BigIntegers.asUnsignedByteArray(48, bigInteger));
            return this;
        }

        public Builder setX(ASN1OctetString aSN1OctetString) {
            this.f11818x = aSN1OctetString;
            return this;
        }

        public Builder setX(byte[] bArr) {
            this.f11818x = new DEROctetString(bArr);
            return this;
        }

        public Builder setY(BigInteger bigInteger) {
            this.f11819y = new DEROctetString(BigIntegers.asUnsignedByteArray(48, bigInteger));
            return this;
        }

        public Builder setY(ASN1OctetString aSN1OctetString) {
            this.f11819y = aSN1OctetString;
            return this;
        }

        public Builder setY(byte[] bArr) {
            this.f11819y = new DEROctetString(bArr);
            return this;
        }
    }

    public Point384(ASN1OctetString aSN1OctetString, ASN1OctetString aSN1OctetString2) {
        if (aSN1OctetString.getOctets().length != 48) {
            throw new IllegalArgumentException("x must be 48 bytes long");
        }
        if (aSN1OctetString2.getOctets().length != 48) {
            throw new IllegalArgumentException("y must be 48 bytes long");
        }
        this.f11816x = aSN1OctetString;
        this.f11817y = aSN1OctetString2;
    }

    private Point384(ASN1Sequence aSN1Sequence) {
        if (aSN1Sequence.size() != 2) {
            throw new IllegalArgumentException("expected sequence size of 2");
        }
        ASN1OctetString aSN1OctetString = ASN1OctetString.getInstance(aSN1Sequence.getObjectAt(0));
        this.f11816x = aSN1OctetString;
        ASN1OctetString aSN1OctetString2 = ASN1OctetString.getInstance(aSN1Sequence.getObjectAt(1));
        this.f11817y = aSN1OctetString2;
        if (aSN1OctetString.getOctets().length != 48) {
            throw new IllegalArgumentException("x must be 48 bytes long");
        }
        if (aSN1OctetString2.getOctets().length != 48) {
            throw new IllegalArgumentException("y must be 48 bytes long");
        }
    }

    public static Builder builder() {
        return new Builder();
    }

    public static Point384 getInstance(Object obj) {
        if (obj instanceof Point384) {
            return (Point384) obj;
        }
        if (obj != null) {
            return new Point384(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    public ASN1OctetString getX() {
        return this.f11816x;
    }

    public ASN1OctetString getY() {
        return this.f11817y;
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        return new DERSequence(new ASN1Encodable[]{this.f11816x, this.f11817y});
    }
}
