package org.bouncycastle.asn1.x509;

import androidx.camera.core.impl.a;
import java.math.BigInteger;
import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Integer;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;

/* loaded from: classes2.dex */
public class DSAParameter extends ASN1Object {

    /* renamed from: g, reason: collision with root package name */
    ASN1Integer f11396g;

    /* renamed from: p, reason: collision with root package name */
    ASN1Integer f11397p;

    /* renamed from: q, reason: collision with root package name */
    ASN1Integer f11398q;

    public DSAParameter(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        this.f11397p = new ASN1Integer(bigInteger);
        this.f11398q = new ASN1Integer(bigInteger2);
        this.f11396g = new ASN1Integer(bigInteger3);
    }

    private DSAParameter(ASN1Sequence aSN1Sequence) {
        if (aSN1Sequence.size() != 3) {
            throw new IllegalArgumentException(a.g(aSN1Sequence, new StringBuilder("Bad sequence size: ")));
        }
        Enumeration objects = aSN1Sequence.getObjects();
        this.f11397p = ASN1Integer.getInstance(objects.nextElement());
        this.f11398q = ASN1Integer.getInstance(objects.nextElement());
        this.f11396g = ASN1Integer.getInstance(objects.nextElement());
    }

    public static DSAParameter getInstance(Object obj) {
        if (obj instanceof DSAParameter) {
            return (DSAParameter) obj;
        }
        if (obj != null) {
            return new DSAParameter(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    public static DSAParameter getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z10) {
        return getInstance(ASN1Sequence.getInstance(aSN1TaggedObject, z10));
    }

    public BigInteger getG() {
        return this.f11396g.getPositiveValue();
    }

    public BigInteger getP() {
        return this.f11397p.getPositiveValue();
    }

    public BigInteger getQ() {
        return this.f11398q.getPositiveValue();
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector(3);
        aSN1EncodableVector.add(this.f11397p);
        aSN1EncodableVector.add(this.f11398q);
        return androidx.browser.browseractions.a.e(aSN1EncodableVector, this.f11396g, aSN1EncodableVector);
    }
}
