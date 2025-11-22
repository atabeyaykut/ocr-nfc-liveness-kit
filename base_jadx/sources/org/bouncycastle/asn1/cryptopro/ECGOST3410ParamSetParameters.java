package org.bouncycastle.asn1.cryptopro;

import ab.b;
import androidx.browser.browseractions.a;
import java.math.BigInteger;
import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Integer;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;

/* loaded from: classes2.dex */
public class ECGOST3410ParamSetParameters extends ASN1Object {

    /* renamed from: a, reason: collision with root package name */
    ASN1Integer f11369a;

    /* renamed from: b, reason: collision with root package name */
    ASN1Integer f11370b;

    /* renamed from: p, reason: collision with root package name */
    ASN1Integer f11371p;

    /* renamed from: q, reason: collision with root package name */
    ASN1Integer f11372q;

    /* renamed from: x, reason: collision with root package name */
    ASN1Integer f11373x;

    /* renamed from: y, reason: collision with root package name */
    ASN1Integer f11374y;

    public ECGOST3410ParamSetParameters(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, int r6, BigInteger bigInteger5) {
        this.f11369a = new ASN1Integer(bigInteger);
        this.f11370b = new ASN1Integer(bigInteger2);
        this.f11371p = new ASN1Integer(bigInteger3);
        this.f11372q = new ASN1Integer(bigInteger4);
        this.f11373x = new ASN1Integer(r6);
        this.f11374y = new ASN1Integer(bigInteger5);
    }

    public ECGOST3410ParamSetParameters(ASN1Sequence aSN1Sequence) {
        Enumeration objects = aSN1Sequence.getObjects();
        this.f11369a = (ASN1Integer) objects.nextElement();
        this.f11370b = (ASN1Integer) objects.nextElement();
        this.f11371p = (ASN1Integer) objects.nextElement();
        this.f11372q = (ASN1Integer) objects.nextElement();
        this.f11373x = (ASN1Integer) objects.nextElement();
        this.f11374y = (ASN1Integer) objects.nextElement();
    }

    public static ECGOST3410ParamSetParameters getInstance(Object obj) {
        if (obj == null || (obj instanceof ECGOST3410ParamSetParameters)) {
            return (ECGOST3410ParamSetParameters) obj;
        }
        if (obj instanceof ASN1Sequence) {
            return new ECGOST3410ParamSetParameters((ASN1Sequence) obj);
        }
        throw new IllegalArgumentException(b.f(obj, "Invalid GOST3410Parameter: "));
    }

    public static ECGOST3410ParamSetParameters getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z10) {
        return getInstance(ASN1Sequence.getInstance(aSN1TaggedObject, z10));
    }

    public BigInteger getA() {
        return this.f11369a.getPositiveValue();
    }

    public BigInteger getP() {
        return this.f11371p.getPositiveValue();
    }

    public BigInteger getQ() {
        return this.f11372q.getPositiveValue();
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector(6);
        aSN1EncodableVector.add(this.f11369a);
        aSN1EncodableVector.add(this.f11370b);
        aSN1EncodableVector.add(this.f11371p);
        aSN1EncodableVector.add(this.f11372q);
        aSN1EncodableVector.add(this.f11373x);
        return a.e(aSN1EncodableVector, this.f11374y, aSN1EncodableVector);
    }
}
