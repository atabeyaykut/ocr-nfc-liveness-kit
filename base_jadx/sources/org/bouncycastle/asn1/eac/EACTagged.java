package org.bouncycastle.asn1.eac;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.DERTaggedObject;

/* loaded from: classes2.dex */
class EACTagged {
    public static ASN1TaggedObject create(int r32, ASN1Sequence aSN1Sequence) {
        return new DERTaggedObject(false, 64, r32, (ASN1Encodable) aSN1Sequence);
    }

    public static ASN1TaggedObject create(int r32, PublicKeyDataObject publicKeyDataObject) {
        return new DERTaggedObject(false, 64, r32, (ASN1Encodable) publicKeyDataObject);
    }

    public static ASN1TaggedObject create(int r32, byte[] bArr) {
        return new DERTaggedObject(false, 64, r32, (ASN1Encodable) new DEROctetString(bArr));
    }
}
