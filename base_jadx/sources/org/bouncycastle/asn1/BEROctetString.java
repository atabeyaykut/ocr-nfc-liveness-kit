package org.bouncycastle.asn1;

import java.io.IOException;

/* loaded from: classes2.dex */
public class BEROctetString extends ASN1OctetString {
    private static final int DEFAULT_SEGMENT_LIMIT = 1000;
    private final ASN1OctetString[] elements;
    private final int segmentLimit;

    public BEROctetString(byte[] bArr) {
        this(bArr, 1000);
    }

    public BEROctetString(byte[] bArr, int r32) {
        this(bArr, null, r32);
    }

    private BEROctetString(byte[] bArr, ASN1OctetString[] aSN1OctetStringArr, int r32) {
        super(bArr);
        this.elements = aSN1OctetStringArr;
        this.segmentLimit = r32;
    }

    public BEROctetString(ASN1OctetString[] aSN1OctetStringArr) {
        this(aSN1OctetStringArr, 1000);
    }

    public BEROctetString(ASN1OctetString[] aSN1OctetStringArr, int r32) {
        this(flattenOctetStrings(aSN1OctetStringArr), aSN1OctetStringArr, r32);
    }

    public static byte[] flattenOctetStrings(ASN1OctetString[] aSN1OctetStringArr) {
        int length = aSN1OctetStringArr.length;
        if (length == 0) {
            return ASN1OctetString.EMPTY_OCTETS;
        }
        if (length == 1) {
            return aSN1OctetStringArr[0].string;
        }
        int length2 = 0;
        for (ASN1OctetString aSN1OctetString : aSN1OctetStringArr) {
            length2 += aSN1OctetString.string.length;
        }
        byte[] bArr = new byte[length2];
        int length3 = 0;
        for (ASN1OctetString aSN1OctetString2 : aSN1OctetStringArr) {
            byte[] bArr2 = aSN1OctetString2.string;
            System.arraycopy(bArr2, 0, bArr, length3, bArr2.length);
            length3 += bArr2.length;
        }
        return bArr;
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive
    public void encode(ASN1OutputStream aSN1OutputStream, boolean z10) throws IOException {
        aSN1OutputStream.writeIdentifier(z10, 36);
        aSN1OutputStream.write(128);
        ASN1OctetString[] aSN1OctetStringArr = this.elements;
        if (aSN1OctetStringArr == null) {
            int r6 = 0;
            while (true) {
                byte[] bArr = this.string;
                if (r6 >= bArr.length) {
                    break;
                }
                int r12 = Math.min(bArr.length - r6, this.segmentLimit);
                DEROctetString.encode(aSN1OutputStream, true, this.string, r6, r12);
                r6 += r12;
            }
        } else {
            aSN1OutputStream.writePrimitives(aSN1OctetStringArr);
        }
        aSN1OutputStream.write(0);
        aSN1OutputStream.write(0);
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive
    public boolean encodeConstructed() {
        return true;
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive
    public int encodedLength(boolean z10) throws IOException {
        int r52 = z10 ? 4 : 3;
        if (this.elements == null) {
            int length = this.string.length;
            int r22 = this.segmentLimit;
            int r02 = length / r22;
            int r53 = r52 + (DEROctetString.encodedLength(true, r22) * r02);
            int length2 = this.string.length - (r02 * this.segmentLimit);
            return length2 > 0 ? r53 + DEROctetString.encodedLength(true, length2) : r53;
        }
        int r03 = 0;
        while (true) {
            ASN1OctetString[] aSN1OctetStringArr = this.elements;
            if (r03 >= aSN1OctetStringArr.length) {
                return r52;
            }
            r52 += aSN1OctetStringArr[r03].encodedLength(true);
            r03++;
        }
    }
}
