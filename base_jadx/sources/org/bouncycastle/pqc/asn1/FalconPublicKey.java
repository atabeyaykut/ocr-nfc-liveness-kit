package org.bouncycastle.pqc.asn1;

import androidx.fragment.app.a;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DEROctetString;

/* loaded from: classes2.dex */
public class FalconPublicKey extends ASN1Object {

    /* renamed from: h, reason: collision with root package name */
    private byte[] f11823h;

    public FalconPublicKey(ASN1Sequence aSN1Sequence) {
        this.f11823h = a.i(aSN1Sequence, 0);
    }

    public FalconPublicKey(byte[] bArr) {
        this.f11823h = bArr;
    }

    public static FalconPublicKey getInstance(Object obj) {
        if (obj instanceof FalconPublicKey) {
            return (FalconPublicKey) obj;
        }
        if (obj != null) {
            return new FalconPublicKey(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    public byte[] getH() {
        return this.f11823h;
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        return androidx.camera.core.impl.a.j(aSN1EncodableVector, new DEROctetString(this.f11823h), aSN1EncodableVector);
    }
}
