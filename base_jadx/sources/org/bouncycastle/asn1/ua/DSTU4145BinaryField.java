package org.bouncycastle.asn1.ua;

import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Integer;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERSequence;

/* loaded from: classes2.dex */
public class DSTU4145BinaryField extends ASN1Object {

    /* renamed from: j, reason: collision with root package name */
    private int f11384j;

    /* renamed from: k, reason: collision with root package name */
    private int f11385k;

    /* renamed from: l, reason: collision with root package name */
    private int f11386l;

    /* renamed from: m, reason: collision with root package name */
    private int f11387m;

    public DSTU4145BinaryField(int r22, int r32) {
        this(r22, r32, 0, 0);
    }

    public DSTU4145BinaryField(int r12, int r22, int r32, int r42) {
        this.f11387m = r12;
        this.f11385k = r22;
        this.f11384j = r32;
        this.f11386l = r42;
    }

    private DSTU4145BinaryField(ASN1Sequence aSN1Sequence) {
        this.f11387m = ASN1Integer.getInstance(aSN1Sequence.getObjectAt(0)).intPositiveValueExact();
        if (aSN1Sequence.getObjectAt(1) instanceof ASN1Integer) {
            this.f11385k = ((ASN1Integer) aSN1Sequence.getObjectAt(1)).intPositiveValueExact();
        } else {
            if (!(aSN1Sequence.getObjectAt(1) instanceof ASN1Sequence)) {
                throw new IllegalArgumentException("object parse error");
            }
            ASN1Sequence aSN1Sequence2 = ASN1Sequence.getInstance(aSN1Sequence.getObjectAt(1));
            this.f11385k = ASN1Integer.getInstance(aSN1Sequence2.getObjectAt(0)).intPositiveValueExact();
            this.f11384j = ASN1Integer.getInstance(aSN1Sequence2.getObjectAt(1)).intPositiveValueExact();
            this.f11386l = ASN1Integer.getInstance(aSN1Sequence2.getObjectAt(2)).intPositiveValueExact();
        }
    }

    public static DSTU4145BinaryField getInstance(Object obj) {
        if (obj instanceof DSTU4145BinaryField) {
            return (DSTU4145BinaryField) obj;
        }
        if (obj != null) {
            return new DSTU4145BinaryField(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    public int getK1() {
        return this.f11385k;
    }

    public int getK2() {
        return this.f11384j;
    }

    public int getK3() {
        return this.f11386l;
    }

    public int getM() {
        return this.f11387m;
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector(2);
        aSN1EncodableVector.add(new ASN1Integer(this.f11387m));
        if (this.f11384j == 0) {
            aSN1EncodableVector.add(new ASN1Integer(this.f11385k));
        } else {
            ASN1EncodableVector aSN1EncodableVector2 = new ASN1EncodableVector(3);
            aSN1EncodableVector2.add(new ASN1Integer(this.f11385k));
            aSN1EncodableVector2.add(new ASN1Integer(this.f11384j));
            aSN1EncodableVector2.add(new ASN1Integer(this.f11386l));
            aSN1EncodableVector.add(new DERSequence(aSN1EncodableVector2));
        }
        return new DERSequence(aSN1EncodableVector);
    }
}
