package org.bouncycastle.pqc.asn1;

import androidx.fragment.app.a;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
public class KyberPublicKey extends ASN1Object {
    private byte[] rho;

    /* renamed from: t, reason: collision with root package name */
    private byte[] f11825t;

    public KyberPublicKey(ASN1Sequence aSN1Sequence) {
        this.f11825t = a.i(aSN1Sequence, 0);
        this.rho = a.i(aSN1Sequence, 1);
    }

    public KyberPublicKey(byte[] bArr, byte[] bArr2) {
        this.f11825t = bArr;
        this.rho = bArr2;
    }

    public static KyberPublicKey getInstance(Object obj) {
        if (obj instanceof KyberPublicKey) {
            return (KyberPublicKey) obj;
        }
        if (obj != null) {
            return new KyberPublicKey(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    public byte[] getRho() {
        return Arrays.clone(this.rho);
    }

    public byte[] getT() {
        return Arrays.clone(this.f11825t);
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.add(new DEROctetString(this.f11825t));
        return androidx.camera.core.impl.a.j(aSN1EncodableVector, new DEROctetString(this.rho), aSN1EncodableVector);
    }
}
