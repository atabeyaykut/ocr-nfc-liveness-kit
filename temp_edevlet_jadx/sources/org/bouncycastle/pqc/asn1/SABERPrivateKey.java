package org.bouncycastle.pqc.asn1;

import androidx.camera.core.impl.utils.f;
import androidx.fragment.app.a;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Integer;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DEROctetString;

/* loaded from: classes2.dex */
public class SABERPrivateKey extends ASN1Object {
    private SABERPublicKey PublicKey;
    private byte[] hpk;

    /* renamed from: s, reason: collision with root package name */
    private byte[] f11841s;
    private int version;

    /* renamed from: z, reason: collision with root package name */
    private byte[] f11842z;

    public SABERPrivateKey(int r12, byte[] bArr, byte[] bArr2, byte[] bArr3) {
        this.version = r12;
        if (r12 != 0) {
            throw new IllegalArgumentException("unrecognized version");
        }
        this.f11842z = bArr;
        this.f11841s = bArr2;
        this.hpk = bArr3;
    }

    public SABERPrivateKey(int r12, byte[] bArr, byte[] bArr2, byte[] bArr3, SABERPublicKey sABERPublicKey) {
        this.version = r12;
        if (r12 != 0) {
            throw new IllegalArgumentException("unrecognized version");
        }
        this.f11842z = bArr;
        this.f11841s = bArr2;
        this.hpk = bArr3;
        this.PublicKey = sABERPublicKey;
    }

    private SABERPrivateKey(ASN1Sequence aSN1Sequence) {
        int r02 = f.f(aSN1Sequence, 0);
        this.version = r02;
        if (r02 != 0) {
            throw new IllegalArgumentException("unrecognized version");
        }
        this.f11842z = a.i(aSN1Sequence, 1);
        this.f11841s = a.i(aSN1Sequence, 2);
        this.PublicKey = SABERPublicKey.getInstance(aSN1Sequence.getObjectAt(3));
        this.hpk = a.i(aSN1Sequence, 4);
    }

    public static SABERPrivateKey getInstance(Object obj) {
        if (obj instanceof SABERPrivateKey) {
            return (SABERPrivateKey) obj;
        }
        if (obj != null) {
            return new SABERPrivateKey(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    public byte[] getHpk() {
        return this.hpk;
    }

    public SABERPublicKey getPublicKey() {
        return this.PublicKey;
    }

    public byte[] getS() {
        return this.f11841s;
    }

    public int getVersion() {
        return this.version;
    }

    public byte[] getZ() {
        return this.f11842z;
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.add(new ASN1Integer(this.version));
        aSN1EncodableVector.add(new DEROctetString(this.f11842z));
        aSN1EncodableVector.add(new DEROctetString(this.f11841s));
        return androidx.camera.core.impl.a.j(aSN1EncodableVector, new DEROctetString(this.hpk), aSN1EncodableVector);
    }
}
