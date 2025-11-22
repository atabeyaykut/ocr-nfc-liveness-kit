package org.bouncycastle.asn1;

import java.io.IOException;

/* loaded from: classes2.dex */
public class BERTaggedObject extends ASN1TaggedObject {
    public BERTaggedObject(int r12, int r22, int r32, ASN1Encodable aSN1Encodable) {
        super(r12, r22, r32, aSN1Encodable);
    }

    public BERTaggedObject(int r22, int r32, ASN1Encodable aSN1Encodable) {
        super(true, r22, r32, aSN1Encodable);
    }

    public BERTaggedObject(int r22, ASN1Encodable aSN1Encodable) {
        super(true, r22, aSN1Encodable);
    }

    public BERTaggedObject(boolean z10, int r22, int r32, ASN1Encodable aSN1Encodable) {
        super(z10, r22, r32, aSN1Encodable);
    }

    public BERTaggedObject(boolean z10, int r22, ASN1Encodable aSN1Encodable) {
        super(z10, r22, aSN1Encodable);
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive
    public void encode(ASN1OutputStream aSN1OutputStream, boolean z10) throws IOException {
        ASN1Primitive aSN1Primitive = this.obj.toASN1Primitive();
        boolean zIsExplicit = isExplicit();
        if (z10) {
            int r6 = this.tagClass;
            if (zIsExplicit || aSN1Primitive.encodeConstructed()) {
                r6 |= 32;
            }
            aSN1OutputStream.writeIdentifier(true, r6, this.tagNo);
        }
        if (!zIsExplicit) {
            aSN1Primitive.encode(aSN1OutputStream, false);
            return;
        }
        aSN1OutputStream.write(128);
        aSN1Primitive.encode(aSN1OutputStream, true);
        aSN1OutputStream.write(0);
        aSN1OutputStream.write(0);
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive
    public boolean encodeConstructed() {
        return isExplicit() || this.obj.toASN1Primitive().encodeConstructed();
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive
    public int encodedLength(boolean z10) throws IOException {
        ASN1Primitive aSN1Primitive = this.obj.toASN1Primitive();
        boolean zIsExplicit = isExplicit();
        int r02 = aSN1Primitive.encodedLength(zIsExplicit);
        if (zIsExplicit) {
            r02 += 3;
        }
        return r02 + (z10 ? ASN1OutputStream.getLengthOfIdentifier(this.tagNo) : 0);
    }

    @Override // org.bouncycastle.asn1.ASN1TaggedObject
    public ASN1Sequence rebuildConstructed(ASN1Primitive aSN1Primitive) {
        return new BERSequence(aSN1Primitive);
    }

    @Override // org.bouncycastle.asn1.ASN1TaggedObject
    public ASN1TaggedObject replaceTag(int r42, int r52) {
        return new BERTaggedObject(this.explicitness, r42, r52, this.obj);
    }
}
