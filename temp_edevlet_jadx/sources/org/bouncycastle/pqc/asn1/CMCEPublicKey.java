package org.bouncycastle.pqc.asn1;

import androidx.fragment.app.a;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
public class CMCEPublicKey extends ASN1Object {
    private byte[] T;

    public CMCEPublicKey(ASN1Sequence aSN1Sequence) {
        this.T = a.i(aSN1Sequence, 0);
    }

    public CMCEPublicKey(byte[] bArr) {
        this.T = bArr;
    }

    public static CMCEPublicKey getInstance(Object obj) {
        if (obj instanceof CMCEPublicKey) {
            return (CMCEPublicKey) obj;
        }
        if (obj != null) {
            return new CMCEPublicKey(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    public byte[] getT() {
        return Arrays.clone(this.T);
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        return androidx.camera.core.impl.a.j(aSN1EncodableVector, new DEROctetString(this.T), aSN1EncodableVector);
    }
}
