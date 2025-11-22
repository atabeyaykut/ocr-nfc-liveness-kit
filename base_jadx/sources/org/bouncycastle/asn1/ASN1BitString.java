package org.bouncycastle.asn1;

import ab.b;
import android.support.v4.media.a;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import org.bouncycastle.util.Arrays;
import org.jmrtd.PassportService;

/* loaded from: classes2.dex */
public abstract class ASN1BitString extends ASN1Primitive implements ASN1String, ASN1BitStringParser {
    static final ASN1UniversalType TYPE = new ASN1UniversalType(ASN1BitString.class, 3) { // from class: org.bouncycastle.asn1.ASN1BitString.1
        @Override // org.bouncycastle.asn1.ASN1UniversalType
        public ASN1Primitive fromImplicitConstructed(ASN1Sequence aSN1Sequence) {
            return aSN1Sequence.toASN1BitString();
        }

        @Override // org.bouncycastle.asn1.ASN1UniversalType
        public ASN1Primitive fromImplicitPrimitive(DEROctetString dEROctetString) {
            return ASN1BitString.createPrimitive(dEROctetString.getOctets());
        }
    };
    private static final char[] table = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    final byte[] contents;

    public ASN1BitString(byte b10, int r42) {
        if (r42 > 7 || r42 < 0) {
            throw new IllegalArgumentException("pad bits cannot be greater than 7 or less than 0");
        }
        this.contents = new byte[]{(byte) r42, b10};
    }

    public ASN1BitString(byte[] bArr, int r32) {
        if (bArr == null) {
            throw new NullPointerException("'data' cannot be null");
        }
        if (bArr.length == 0 && r32 != 0) {
            throw new IllegalArgumentException("zero length data with non-zero pad bits");
        }
        if (r32 > 7 || r32 < 0) {
            throw new IllegalArgumentException("pad bits cannot be greater than 7 or less than 0");
        }
        this.contents = Arrays.prepend(bArr, (byte) r32);
    }

    public ASN1BitString(byte[] bArr, boolean z10) {
        if (z10) {
            if (bArr == null) {
                throw new NullPointerException("'contents' cannot be null");
            }
            if (bArr.length < 1) {
                throw new IllegalArgumentException("'contents' cannot be empty");
            }
            int r42 = bArr[0] & 255;
            if (r42 > 0) {
                if (bArr.length < 2) {
                    throw new IllegalArgumentException("zero length data with non-zero pad bits");
                }
                if (r42 > 7) {
                    throw new IllegalArgumentException("pad bits cannot be greater than 7 or less than 0");
                }
            }
        }
        this.contents = bArr;
    }

    public static ASN1BitString createPrimitive(byte[] bArr) {
        int length = bArr.length;
        if (length < 1) {
            throw new IllegalArgumentException("truncated BIT STRING detected");
        }
        int r32 = bArr[0] & 255;
        if (r32 > 0) {
            if (r32 > 7 || length < 2) {
                throw new IllegalArgumentException("invalid pad bits detected");
            }
            byte b10 = bArr[length - 1];
            if (b10 != ((byte) ((255 << r32) & b10))) {
                return new DLBitString(bArr, false);
            }
        }
        return new DERBitString(bArr, false);
    }

    public static byte[] getBytes(int r52) {
        if (r52 == 0) {
            return new byte[0];
        }
        int r12 = 4;
        for (int r22 = 3; r22 >= 1 && ((255 << (r22 * 8)) & r52) == 0; r22--) {
            r12--;
        }
        byte[] bArr = new byte[r12];
        for (int r02 = 0; r02 < r12; r02++) {
            bArr[r02] = (byte) ((r52 >> (r02 * 8)) & 255);
        }
        return bArr;
    }

    public static ASN1BitString getInstance(Object obj) {
        if (obj == null || (obj instanceof ASN1BitString)) {
            return (ASN1BitString) obj;
        }
        if (obj instanceof ASN1Encodable) {
            ASN1Primitive aSN1Primitive = ((ASN1Encodable) obj).toASN1Primitive();
            if (aSN1Primitive instanceof ASN1BitString) {
                return (ASN1BitString) aSN1Primitive;
            }
        } else if (obj instanceof byte[]) {
            try {
                return (ASN1BitString) TYPE.fromByteArray((byte[]) obj);
            } catch (IOException e10) {
                throw new IllegalArgumentException(a.c(e10, new StringBuilder("failed to construct BIT STRING from byte[]: ")));
            }
        }
        throw new IllegalArgumentException(b.f(obj, "illegal object in getInstance: "));
    }

    public static ASN1BitString getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z10) {
        return (ASN1BitString) TYPE.getContextInstance(aSN1TaggedObject, z10);
    }

    public static int getPadBits(int r32) {
        int r33;
        int r02 = 3;
        while (true) {
            if (r02 < 0) {
                r33 = 0;
                break;
            }
            if (r02 != 0) {
                int r22 = r32 >> (r02 * 8);
                if (r22 != 0) {
                    r33 = r22 & 255;
                    break;
                }
                r02--;
            } else {
                if (r32 != 0) {
                    r33 = r32 & 255;
                    break;
                }
                r02--;
            }
        }
        if (r33 == 0) {
            return 0;
        }
        int r12 = 1;
        while (true) {
            r33 <<= 1;
            if ((r33 & 255) == 0) {
                return 8 - r12;
            }
            r12++;
        }
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive
    public boolean asn1Equals(ASN1Primitive aSN1Primitive) {
        if (!(aSN1Primitive instanceof ASN1BitString)) {
            return false;
        }
        byte[] bArr = this.contents;
        byte[] bArr2 = ((ASN1BitString) aSN1Primitive).contents;
        int length = bArr.length;
        if (bArr2.length != length) {
            return false;
        }
        if (length == 1) {
            return true;
        }
        int r22 = length - 1;
        for (int r42 = 0; r42 < r22; r42++) {
            if (bArr[r42] != bArr2[r42]) {
                return false;
            }
        }
        int r43 = 255 << (bArr[0] & 255);
        return ((byte) (bArr[r22] & r43)) == ((byte) (bArr2[r22] & r43));
    }

    @Override // org.bouncycastle.asn1.ASN1BitStringParser
    public InputStream getBitStream() throws IOException {
        byte[] bArr = this.contents;
        return new ByteArrayInputStream(bArr, 1, bArr.length - 1);
    }

    public byte[] getBytes() {
        byte[] bArr = this.contents;
        if (bArr.length == 1) {
            return ASN1OctetString.EMPTY_OCTETS;
        }
        int r12 = bArr[0] & 255;
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, 1, bArr.length);
        int length = bArrCopyOfRange.length - 1;
        bArrCopyOfRange[length] = (byte) (((byte) (255 << r12)) & bArrCopyOfRange[length]);
        return bArrCopyOfRange;
    }

    @Override // org.bouncycastle.asn1.InMemoryRepresentable
    public ASN1Primitive getLoadedObject() {
        return toASN1Primitive();
    }

    @Override // org.bouncycastle.asn1.ASN1BitStringParser
    public InputStream getOctetStream() throws IOException {
        int r02 = this.contents[0] & 255;
        if (r02 == 0) {
            return getBitStream();
        }
        throw new IOException(a.d("expected octet-aligned bitstring, but found padBits: ", r02));
    }

    public byte[] getOctets() {
        byte[] bArr = this.contents;
        if (bArr[0] == 0) {
            return Arrays.copyOfRange(bArr, 1, bArr.length);
        }
        throw new IllegalStateException("attempt to get non-octet aligned data from BIT STRING");
    }

    @Override // org.bouncycastle.asn1.ASN1BitStringParser
    public int getPadBits() {
        return this.contents[0] & 255;
    }

    @Override // org.bouncycastle.asn1.ASN1String
    public String getString() {
        try {
            byte[] encoded = getEncoded();
            StringBuffer stringBuffer = new StringBuffer((encoded.length * 2) + 1);
            stringBuffer.append('#');
            for (int r22 = 0; r22 != encoded.length; r22++) {
                byte b10 = encoded[r22];
                char[] cArr = table;
                stringBuffer.append(cArr[(b10 >>> 4) & 15]);
                stringBuffer.append(cArr[b10 & PassportService.SFI_DG15]);
            }
            return stringBuffer.toString();
        } catch (IOException e10) {
            throw new ASN1ParsingException(a.c(e10, new StringBuilder("Internal error encoding BitString: ")), e10);
        }
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive, org.bouncycastle.asn1.ASN1Object
    public int hashCode() {
        byte[] bArr = this.contents;
        if (bArr.length < 2) {
            return 1;
        }
        int r22 = bArr[0] & 255;
        int length = bArr.length - 1;
        return (Arrays.hashCode(bArr, 0, length) * 257) ^ ((byte) ((255 << r22) & bArr[length]));
    }

    public int intValue() {
        int r02 = Math.min(5, this.contents.length - 1);
        int r52 = 0;
        for (int r42 = 1; r42 < r02; r42++) {
            r52 |= (255 & this.contents[r42]) << ((r42 - 1) * 8);
        }
        if (1 > r02 || r02 >= 5) {
            return r52;
        }
        byte[] bArr = this.contents;
        return r52 | ((((byte) (bArr[r02] & (255 << (bArr[0] & 255)))) & 255) << ((r02 - 1) * 8));
    }

    public ASN1BitStringParser parser() {
        return this;
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive
    public ASN1Primitive toDERObject() {
        return new DERBitString(this.contents, false);
    }

    @Override // org.bouncycastle.asn1.ASN1Primitive
    public ASN1Primitive toDLObject() {
        return new DLBitString(this.contents, false);
    }

    public String toString() {
        return getString();
    }
}
