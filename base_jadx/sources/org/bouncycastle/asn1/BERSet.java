package org.bouncycastle.asn1;

import java.io.IOException;

/* loaded from: classes2.dex */
public class BERSet extends ASN1Set {
    public BERSet() {
    }

    public BERSet(ASN1Encodable aSN1Encodable) {
        super(aSN1Encodable);
    }

    public BERSet(ASN1EncodableVector aSN1EncodableVector) {
        super(aSN1EncodableVector, false);
    }

    public BERSet(boolean z10, ASN1Encodable[] aSN1EncodableArr) {
        super(z10, aSN1EncodableArr);
    }

    public BERSet(ASN1Encodable[] aSN1EncodableArr) {
        super(aSN1EncodableArr, false);
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive
    public void encode(ASN1OutputStream aSN1OutputStream, boolean z10) throws IOException {
        aSN1OutputStream.writeEncodingIL(z10, 49, this.elements);
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive
    public int encodedLength(boolean z10) throws IOException {
        int r52 = z10 ? 4 : 3;
        int length = this.elements.length;
        for (int r12 = 0; r12 < length; r12++) {
            r52 += this.elements[r12].toASN1Primitive().encodedLength(true);
        }
        return r52;
    }
}
