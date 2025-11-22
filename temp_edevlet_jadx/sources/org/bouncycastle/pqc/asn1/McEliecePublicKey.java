package org.bouncycastle.pqc.asn1;

import androidx.camera.core.impl.a;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Integer;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.pqc.legacy.math.linearalgebra.GF2Matrix;

/* loaded from: classes2.dex */
public class McEliecePublicKey extends ASN1Object {

    /* renamed from: g, reason: collision with root package name */
    private final GF2Matrix f11833g;

    /* renamed from: n, reason: collision with root package name */
    private final int f11834n;

    /* renamed from: t, reason: collision with root package name */
    private final int f11835t;

    public McEliecePublicKey(int r12, int r22, GF2Matrix gF2Matrix) {
        this.f11834n = r12;
        this.f11835t = r22;
        this.f11833g = new GF2Matrix(gF2Matrix);
    }

    private McEliecePublicKey(ASN1Sequence aSN1Sequence) {
        this.f11834n = ((ASN1Integer) aSN1Sequence.getObjectAt(0)).intValueExact();
        this.f11835t = ((ASN1Integer) aSN1Sequence.getObjectAt(1)).intValueExact();
        this.f11833g = new GF2Matrix(((ASN1OctetString) aSN1Sequence.getObjectAt(2)).getOctets());
    }

    public static McEliecePublicKey getInstance(Object obj) {
        if (obj instanceof McEliecePublicKey) {
            return (McEliecePublicKey) obj;
        }
        if (obj != null) {
            return new McEliecePublicKey(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    public GF2Matrix getG() {
        return new GF2Matrix(this.f11833g);
    }

    public int getN() {
        return this.f11834n;
    }

    public int getT() {
        return this.f11835t;
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.add(new ASN1Integer(this.f11834n));
        aSN1EncodableVector.add(new ASN1Integer(this.f11835t));
        return a.j(aSN1EncodableVector, new DEROctetString(this.f11833g.getEncoded()), aSN1EncodableVector);
    }
}
