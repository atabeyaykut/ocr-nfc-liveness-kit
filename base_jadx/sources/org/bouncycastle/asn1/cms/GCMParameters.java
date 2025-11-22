package org.bouncycastle.asn1.cms;

import androidx.appcompat.graphics.drawable.a;
import androidx.camera.core.impl.utils.f;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Integer;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
public class GCMParameters extends ASN1Object {
    private int icvLen;
    private byte[] nonce;

    private GCMParameters(ASN1Sequence aSN1Sequence) {
        this.nonce = a.k(aSN1Sequence, 0);
        this.icvLen = aSN1Sequence.size() == 2 ? f.f(aSN1Sequence, 1) : 12;
    }

    public GCMParameters(byte[] bArr, int r22) {
        this.nonce = Arrays.clone(bArr);
        this.icvLen = r22;
    }

    public static GCMParameters getInstance(Object obj) {
        if (obj instanceof GCMParameters) {
            return (GCMParameters) obj;
        }
        if (obj != null) {
            return new GCMParameters(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    public int getIcvLen() {
        return this.icvLen;
    }

    public byte[] getNonce() {
        return Arrays.clone(this.nonce);
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector(2);
        aSN1EncodableVector.add(new DEROctetString(this.nonce));
        if (this.icvLen != 12) {
            aSN1EncodableVector.add(new ASN1Integer(this.icvLen));
        }
        return new DERSequence(aSN1EncodableVector);
    }
}
