package org.bouncycastle.asn1;

import java.io.IOException;

/* loaded from: classes2.dex */
public class BERBitString extends ASN1BitString {
    private static final int DEFAULT_SEGMENT_LIMIT = 1000;
    private final ASN1BitString[] elements;
    private final int segmentLimit;

    public BERBitString(byte b10, int r22) {
        super(b10, r22);
        this.elements = null;
        this.segmentLimit = 1000;
    }

    public BERBitString(ASN1Encodable aSN1Encodable) throws IOException {
        this(aSN1Encodable.toASN1Primitive().getEncoded(ASN1Encoding.DER), 0);
    }

    public BERBitString(byte[] bArr) {
        this(bArr, 0);
    }

    public BERBitString(byte[] bArr, int r32) {
        this(bArr, r32, 1000);
    }

    public BERBitString(byte[] bArr, int r22, int r32) {
        super(bArr, r22);
        this.elements = null;
        this.segmentLimit = r32;
    }

    public BERBitString(byte[] bArr, boolean z10) {
        super(bArr, z10);
        this.elements = null;
        this.segmentLimit = 1000;
    }

    public BERBitString(ASN1BitString[] aSN1BitStringArr) {
        this(aSN1BitStringArr, 1000);
    }

    public BERBitString(ASN1BitString[] aSN1BitStringArr, int r42) {
        super(flattenBitStrings(aSN1BitStringArr), false);
        this.elements = aSN1BitStringArr;
        this.segmentLimit = r42;
    }

    public static byte[] flattenBitStrings(ASN1BitString[] aSN1BitStringArr) {
        int length = aSN1BitStringArr.length;
        if (length == 0) {
            return new byte[]{0};
        }
        if (length == 1) {
            return aSN1BitStringArr[0].contents;
        }
        int r32 = length - 1;
        int length2 = 0;
        for (int r42 = 0; r42 < r32; r42++) {
            byte[] bArr = aSN1BitStringArr[r42].contents;
            if (bArr[0] != 0) {
                throw new IllegalArgumentException("only the last nested bitstring can have padding");
            }
            length2 += bArr.length - 1;
        }
        byte[] bArr2 = aSN1BitStringArr[r32].contents;
        byte b10 = bArr2[0];
        byte[] bArr3 = new byte[length2 + bArr2.length];
        bArr3[0] = b10;
        int r43 = 1;
        for (ASN1BitString aSN1BitString : aSN1BitStringArr) {
            byte[] bArr4 = aSN1BitString.contents;
            int length3 = bArr4.length - 1;
            System.arraycopy(bArr4, 1, bArr3, r43, length3);
            r43 += length3;
        }
        return bArr3;
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive
    public void encode(ASN1OutputStream aSN1OutputStream, boolean z10) throws IOException {
        if (!encodeConstructed()) {
            byte[] bArr = this.contents;
            DLBitString.encode(aSN1OutputStream, z10, bArr, 0, bArr.length);
            return;
        }
        aSN1OutputStream.writeIdentifier(z10, 35);
        aSN1OutputStream.write(128);
        ASN1BitString[] aSN1BitStringArr = this.elements;
        if (aSN1BitStringArr != null) {
            aSN1OutputStream.writePrimitives(aSN1BitStringArr);
        } else {
            byte[] bArr2 = this.contents;
            if (bArr2.length >= 2) {
                byte b10 = bArr2[0];
                int length = bArr2.length;
                int r02 = length - 1;
                int r22 = this.segmentLimit - 1;
                while (r02 > r22) {
                    DLBitString.encode(aSN1OutputStream, true, (byte) 0, this.contents, length - r02, r22);
                    r02 -= r22;
                }
                DLBitString.encode(aSN1OutputStream, true, b10, this.contents, length - r02, r02);
            }
        }
        aSN1OutputStream.write(0);
        aSN1OutputStream.write(0);
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive
    public boolean encodeConstructed() {
        return this.elements != null || this.contents.length > this.segmentLimit;
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive
    public int encodedLength(boolean z10) throws IOException {
        if (!encodeConstructed()) {
            return DLBitString.encodedLength(z10, this.contents.length);
        }
        int r52 = z10 ? 4 : 3;
        if (this.elements == null) {
            byte[] bArr = this.contents;
            if (bArr.length < 2) {
                return r52;
            }
            int length = bArr.length - 2;
            int r22 = this.segmentLimit;
            int r02 = length / (r22 - 1);
            return DLBitString.encodedLength(true, this.contents.length - ((this.segmentLimit - 1) * r02)) + (DLBitString.encodedLength(true, r22) * r02) + r52;
        }
        int r03 = 0;
        while (true) {
            ASN1BitString[] aSN1BitStringArr = this.elements;
            if (r03 >= aSN1BitStringArr.length) {
                return r52;
            }
            r52 += aSN1BitStringArr[r03].encodedLength(true);
            r03++;
        }
    }
}
