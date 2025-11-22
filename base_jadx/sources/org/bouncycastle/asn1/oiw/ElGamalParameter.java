package org.bouncycastle.asn1.oiw;

import androidx.browser.browseractions.a;
import java.math.BigInteger;
import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Integer;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;

/* loaded from: classes2.dex */
public class ElGamalParameter extends ASN1Object {

    /* renamed from: g, reason: collision with root package name */
    ASN1Integer f11379g;

    /* renamed from: p, reason: collision with root package name */
    ASN1Integer f11380p;

    public ElGamalParameter(BigInteger bigInteger, BigInteger bigInteger2) {
        this.f11380p = new ASN1Integer(bigInteger);
        this.f11379g = new ASN1Integer(bigInteger2);
    }

    private ElGamalParameter(ASN1Sequence aSN1Sequence) {
        Enumeration objects = aSN1Sequence.getObjects();
        this.f11380p = (ASN1Integer) objects.nextElement();
        this.f11379g = (ASN1Integer) objects.nextElement();
    }

    public static ElGamalParameter getInstance(Object obj) {
        if (obj instanceof ElGamalParameter) {
            return (ElGamalParameter) obj;
        }
        if (obj != null) {
            return new ElGamalParameter(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    public BigInteger getG() {
        return this.f11379g.getPositiveValue();
    }

    public BigInteger getP() {
        return this.f11380p.getPositiveValue();
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector(2);
        aSN1EncodableVector.add(this.f11380p);
        return a.e(aSN1EncodableVector, this.f11379g, aSN1EncodableVector);
    }
}
