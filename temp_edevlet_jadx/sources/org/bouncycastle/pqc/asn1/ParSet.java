package org.bouncycastle.pqc.asn1;

import androidx.camera.core.impl.a;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Integer;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
public class ParSet extends ASN1Object {

    /* renamed from: h, reason: collision with root package name */
    private int[] f11836h;

    /* renamed from: k, reason: collision with root package name */
    private int[] f11837k;

    /* renamed from: t, reason: collision with root package name */
    private int f11838t;
    private int[] w;

    public ParSet(int r12, int[] r22, int[] r32, int[] r42) {
        this.f11838t = r12;
        this.f11836h = r22;
        this.w = r32;
        this.f11837k = r42;
    }

    private ParSet(ASN1Sequence aSN1Sequence) {
        if (aSN1Sequence.size() != 4) {
            throw new IllegalArgumentException(a.g(aSN1Sequence, new StringBuilder("sie of seqOfParams = ")));
        }
        this.f11838t = checkBigIntegerInIntRangeAndPositive(aSN1Sequence.getObjectAt(0));
        ASN1Sequence aSN1Sequence2 = (ASN1Sequence) aSN1Sequence.getObjectAt(1);
        ASN1Sequence aSN1Sequence3 = (ASN1Sequence) aSN1Sequence.getObjectAt(2);
        ASN1Sequence aSN1Sequence4 = (ASN1Sequence) aSN1Sequence.getObjectAt(3);
        if (aSN1Sequence2.size() != this.f11838t || aSN1Sequence3.size() != this.f11838t || aSN1Sequence4.size() != this.f11838t) {
            throw new IllegalArgumentException("invalid size of sequences");
        }
        this.f11836h = new int[aSN1Sequence2.size()];
        this.w = new int[aSN1Sequence3.size()];
        this.f11837k = new int[aSN1Sequence4.size()];
        for (int r02 = 0; r02 < this.f11838t; r02++) {
            this.f11836h[r02] = checkBigIntegerInIntRangeAndPositive(aSN1Sequence2.getObjectAt(r02));
            this.w[r02] = checkBigIntegerInIntRangeAndPositive(aSN1Sequence3.getObjectAt(r02));
            this.f11837k[r02] = checkBigIntegerInIntRangeAndPositive(aSN1Sequence4.getObjectAt(r02));
        }
    }

    private static int checkBigIntegerInIntRangeAndPositive(ASN1Encodable aSN1Encodable) {
        int r22 = ((ASN1Integer) aSN1Encodable).intValueExact();
        if (r22 > 0) {
            return r22;
        }
        throw new IllegalArgumentException(android.support.v4.media.a.d("BigInteger not in Range: ", r22));
    }

    public static ParSet getInstance(Object obj) {
        if (obj instanceof ParSet) {
            return (ParSet) obj;
        }
        if (obj != null) {
            return new ParSet(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    public int[] getH() {
        return Arrays.clone(this.f11836h);
    }

    public int[] getK() {
        return Arrays.clone(this.f11837k);
    }

    public int getT() {
        return this.f11838t;
    }

    public int[] getW() {
        return Arrays.clone(this.w);
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector2 = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector3 = new ASN1EncodableVector();
        for (int r32 = 0; r32 < this.f11836h.length; r32++) {
            aSN1EncodableVector.add(new ASN1Integer(this.f11836h[r32]));
            aSN1EncodableVector2.add(new ASN1Integer(this.w[r32]));
            aSN1EncodableVector3.add(new ASN1Integer(this.f11837k[r32]));
        }
        ASN1EncodableVector aSN1EncodableVector4 = new ASN1EncodableVector();
        aSN1EncodableVector4.add(new ASN1Integer(this.f11838t));
        aSN1EncodableVector4.add(new DERSequence(aSN1EncodableVector));
        aSN1EncodableVector4.add(new DERSequence(aSN1EncodableVector2));
        aSN1EncodableVector4.add(new DERSequence(aSN1EncodableVector3));
        return new DERSequence(aSN1EncodableVector4);
    }
}
