package org.bouncycastle.asn1;

import ab.b;
import androidx.constraintlayout.core.a;
import java.io.IOException;
import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
public abstract class ASN1BMPString extends ASN1Primitive implements ASN1String {
    static final ASN1UniversalType TYPE = new ASN1UniversalType(ASN1BMPString.class, 30) { // from class: org.bouncycastle.asn1.ASN1BMPString.1
        @Override // org.bouncycastle.asn1.ASN1UniversalType
        public ASN1Primitive fromImplicitPrimitive(DEROctetString dEROctetString) {
            return ASN1BMPString.createPrimitive(dEROctetString.getOctets());
        }
    };
    final char[] string;

    public ASN1BMPString(String str) {
        if (str == null) {
            throw new NullPointerException("'string' cannot be null");
        }
        this.string = str.toCharArray();
    }

    public ASN1BMPString(byte[] bArr) {
        if (bArr == null) {
            throw new NullPointerException("'string' cannot be null");
        }
        int length = bArr.length;
        if ((length & 1) != 0) {
            throw new IllegalArgumentException("malformed BMPString encoding encountered");
        }
        int r02 = length / 2;
        char[] cArr = new char[r02];
        for (int r22 = 0; r22 != r02; r22++) {
            int r32 = r22 * 2;
            cArr[r22] = (char) ((bArr[r32 + 1] & 255) | (bArr[r32] << 8));
        }
        this.string = cArr;
    }

    public ASN1BMPString(char[] cArr) {
        if (cArr == null) {
            throw new NullPointerException("'string' cannot be null");
        }
        this.string = cArr;
    }

    public static ASN1BMPString createPrimitive(byte[] bArr) {
        return new DERBMPString(bArr);
    }

    public static ASN1BMPString createPrimitive(char[] cArr) {
        return new DERBMPString(cArr);
    }

    public static ASN1BMPString getInstance(Object obj) {
        if (obj == null || (obj instanceof ASN1BMPString)) {
            return (ASN1BMPString) obj;
        }
        if (obj instanceof ASN1Encodable) {
            ASN1Primitive aSN1Primitive = ((ASN1Encodable) obj).toASN1Primitive();
            if (aSN1Primitive instanceof ASN1BMPString) {
                return (ASN1BMPString) aSN1Primitive;
            }
        }
        if (!(obj instanceof byte[])) {
            throw new IllegalArgumentException(b.f(obj, "illegal object in getInstance: "));
        }
        try {
            return (ASN1BMPString) TYPE.fromByteArray((byte[]) obj);
        } catch (Exception e10) {
            throw new IllegalArgumentException(a.b(e10, new StringBuilder("encoding error in getInstance: ")));
        }
    }

    public static ASN1BMPString getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z10) {
        return (ASN1BMPString) TYPE.getContextInstance(aSN1TaggedObject, z10);
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive
    public final boolean asn1Equals(ASN1Primitive aSN1Primitive) {
        if (aSN1Primitive instanceof ASN1BMPString) {
            return Arrays.areEqual(this.string, ((ASN1BMPString) aSN1Primitive).string);
        }
        return false;
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive
    public final void encode(ASN1OutputStream aSN1OutputStream, boolean z10) throws IOException {
        int length = this.string.length;
        aSN1OutputStream.writeIdentifier(z10, 30);
        aSN1OutputStream.writeDL(length * 2);
        byte[] bArr = new byte[8];
        int r22 = length & (-4);
        int r42 = 0;
        while (r42 < r22) {
            char[] cArr = this.string;
            char c10 = cArr[r42];
            char c11 = cArr[r42 + 1];
            char c12 = cArr[r42 + 2];
            char c13 = cArr[r42 + 3];
            r42 += 4;
            bArr[0] = (byte) (c10 >> '\b');
            bArr[1] = (byte) c10;
            bArr[2] = (byte) (c11 >> '\b');
            bArr[3] = (byte) c11;
            bArr[4] = (byte) (c12 >> '\b');
            bArr[5] = (byte) c12;
            bArr[6] = (byte) (c13 >> '\b');
            bArr[7] = (byte) c13;
            aSN1OutputStream.write(bArr, 0, 8);
        }
        if (r42 < length) {
            int r13 = 0;
            do {
                char c14 = this.string[r42];
                r42++;
                int r6 = r13 + 1;
                bArr[r13] = (byte) (c14 >> '\b');
                r13 = r6 + 1;
                bArr[r6] = (byte) c14;
            } while (r42 < length);
            aSN1OutputStream.write(bArr, 0, r13);
        }
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive
    public final boolean encodeConstructed() {
        return false;
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive
    public final int encodedLength(boolean z10) {
        return ASN1OutputStream.getLengthOfEncodingDL(z10, this.string.length * 2);
    }

    @Override // org.bouncycastle.asn1.ASN1String
    public final String getString() {
        return new String(this.string);
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive, org.bouncycastle.asn1.ASN1Object
    public final int hashCode() {
        return Arrays.hashCode(this.string);
    }

    public String toString() {
        return getString();
    }
}
