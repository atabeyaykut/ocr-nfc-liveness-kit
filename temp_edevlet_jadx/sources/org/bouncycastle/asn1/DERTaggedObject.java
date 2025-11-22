package org.bouncycastle.asn1;

import java.io.IOException;

/* loaded from: classes2.dex */
public class DERTaggedObject extends ASN1TaggedObject {
    public DERTaggedObject(int r12, int r22, int r32, ASN1Encodable aSN1Encodable) {
        super(r12, r22, r32, aSN1Encodable);
    }

    public DERTaggedObject(int r22, int r32, ASN1Encodable aSN1Encodable) {
        super(true, r22, r32, aSN1Encodable);
    }

    public DERTaggedObject(int r22, ASN1Encodable aSN1Encodable) {
        super(true, r22, aSN1Encodable);
    }

    public DERTaggedObject(boolean z10, int r22, int r32, ASN1Encodable aSN1Encodable) {
        super(z10, r22, r32, aSN1Encodable);
    }

    public DERTaggedObject(boolean z10, int r22, ASN1Encodable aSN1Encodable) {
        super(z10, r22, aSN1Encodable);
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive
    public void encode(ASN1OutputStream aSN1OutputStream, boolean z10) throws IOException {
        ASN1Primitive dERObject = this.obj.toASN1Primitive().toDERObject();
        boolean zIsExplicit = isExplicit();
        if (z10) {
            int r6 = this.tagClass;
            if (zIsExplicit || dERObject.encodeConstructed()) {
                r6 |= 32;
            }
            aSN1OutputStream.writeIdentifier(true, r6, this.tagNo);
        }
        if (zIsExplicit) {
            aSN1OutputStream.writeDL(dERObject.encodedLength(true));
        }
        dERObject.encode(aSN1OutputStream.getDERSubStream(), zIsExplicit);
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive
    public boolean encodeConstructed() {
        return isExplicit() || this.obj.toASN1Primitive().toDERObject().encodeConstructed();
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive
    public int encodedLength(boolean z10) throws IOException {
        ASN1Primitive dERObject = this.obj.toASN1Primitive().toDERObject();
        boolean zIsExplicit = isExplicit();
        int lengthOfDL = dERObject.encodedLength(zIsExplicit);
        if (zIsExplicit) {
            lengthOfDL += ASN1OutputStream.getLengthOfDL(lengthOfDL);
        }
        return lengthOfDL + (z10 ? ASN1OutputStream.getLengthOfIdentifier(this.tagNo) : 0);
    }

    @Override // org.bouncycastle.asn1.ASN1TaggedObject
    public ASN1Sequence rebuildConstructed(ASN1Primitive aSN1Primitive) {
        return new DERSequence(aSN1Primitive);
    }

    @Override // org.bouncycastle.asn1.ASN1TaggedObject
    public ASN1TaggedObject replaceTag(int r42, int r52) {
        return new DERTaggedObject(this.explicitness, r42, r52, this.obj);
    }

    @Override // org.bouncycastle.asn1.ASN1TaggedObject, org.bouncycastle.asn1.ASN1Primitive
    public ASN1Primitive toDERObject() {
        return this;
    }

    @Override // org.bouncycastle.asn1.ASN1TaggedObject, org.bouncycastle.asn1.ASN1Primitive
    public ASN1Primitive toDLObject() {
        return this;
    }
}
