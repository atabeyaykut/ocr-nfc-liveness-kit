package org.bouncycastle.pqc.asn1;

import androidx.camera.core.impl.utils.f;
import androidx.fragment.app.a;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Integer;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
public class KyberPrivateKey extends ASN1Object {
    private byte[] hpk;
    private byte[] nonce;
    private KyberPublicKey publicKey;

    /* renamed from: s, reason: collision with root package name */
    private byte[] f11824s;
    private int version;

    public KyberPrivateKey(int r72, byte[] bArr, byte[] bArr2, byte[] bArr3) {
        this(r72, bArr, bArr2, bArr3, null);
    }

    public KyberPrivateKey(int r12, byte[] bArr, byte[] bArr2, byte[] bArr3, KyberPublicKey kyberPublicKey) {
        this.version = r12;
        this.f11824s = bArr;
        this.publicKey = kyberPublicKey;
        this.hpk = bArr2;
        this.nonce = bArr3;
    }

    private KyberPrivateKey(ASN1Sequence aSN1Sequence) {
        int r02 = 0;
        int r12 = f.f(aSN1Sequence, 0);
        this.version = r12;
        if (r12 != 0) {
            throw new IllegalArgumentException("unrecognized version");
        }
        this.f11824s = a.i(aSN1Sequence, 1);
        if (aSN1Sequence.size() == 5) {
            this.publicKey = KyberPublicKey.getInstance(aSN1Sequence.getObjectAt(2));
        } else {
            r02 = 1;
        }
        this.hpk = Arrays.clone(ASN1OctetString.getInstance(aSN1Sequence.getObjectAt(3 - r02)).getOctets());
        this.nonce = Arrays.clone(ASN1OctetString.getInstance(aSN1Sequence.getObjectAt(4 - r02)).getOctets());
    }

    public static KyberPrivateKey getInstance(Object obj) {
        if (obj instanceof KyberPrivateKey) {
            return (KyberPrivateKey) obj;
        }
        if (obj != null) {
            return new KyberPrivateKey(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    public byte[] getHpk() {
        return Arrays.clone(this.hpk);
    }

    public byte[] getNonce() {
        return Arrays.clone(this.nonce);
    }

    public KyberPublicKey getPublicKey() {
        return this.publicKey;
    }

    public byte[] getS() {
        return Arrays.clone(this.f11824s);
    }

    public int getVersion() {
        return this.version;
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.add(new ASN1Integer(this.version));
        aSN1EncodableVector.add(new DEROctetString(this.f11824s));
        KyberPublicKey kyberPublicKey = this.publicKey;
        if (kyberPublicKey != null) {
            aSN1EncodableVector.add(new KyberPublicKey(kyberPublicKey.getT(), this.publicKey.getRho()));
        }
        aSN1EncodableVector.add(new DEROctetString(this.hpk));
        return androidx.camera.core.impl.a.j(aSN1EncodableVector, new DEROctetString(this.nonce), aSN1EncodableVector);
    }
}
