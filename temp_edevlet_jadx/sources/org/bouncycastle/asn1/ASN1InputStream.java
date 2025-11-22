package org.bouncycastle.asn1;

import androidx.constraintlayout.core.a;
import java.io.ByteArrayInputStream;
import java.io.EOFException;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import org.bouncycastle.asn1.eac.CertificateBody;
import org.bouncycastle.util.io.Streams;

/* loaded from: classes2.dex */
public class ASN1InputStream extends FilterInputStream implements BERTags {
    private final boolean lazyEvaluate;
    private final int limit;
    private final byte[][] tmpBuffers;

    public ASN1InputStream(InputStream inputStream) {
        this(inputStream, StreamUtil.findLimit(inputStream));
    }

    public ASN1InputStream(InputStream inputStream, int r32) {
        this(inputStream, r32, false);
    }

    public ASN1InputStream(InputStream inputStream, int r32, boolean z10) {
        this(inputStream, r32, z10, new byte[11][]);
    }

    private ASN1InputStream(InputStream inputStream, int r22, boolean z10, byte[][] bArr) {
        super(inputStream);
        this.limit = r22;
        this.lazyEvaluate = z10;
        this.tmpBuffers = bArr;
    }

    public ASN1InputStream(InputStream inputStream, boolean z10) {
        this(inputStream, StreamUtil.findLimit(inputStream), z10);
    }

    public ASN1InputStream(byte[] bArr) {
        this(new ByteArrayInputStream(bArr), bArr.length);
    }

    public ASN1InputStream(byte[] bArr, boolean z10) {
        this(new ByteArrayInputStream(bArr), bArr.length, z10);
    }

    public static ASN1Primitive createPrimitiveDERObject(int r42, DefiniteLengthInputStream definiteLengthInputStream, byte[][] bArr) throws IOException {
        try {
            switch (r42) {
                case 1:
                    return ASN1Boolean.createPrimitive(getBuffer(definiteLengthInputStream, bArr));
                case 2:
                    return ASN1Integer.createPrimitive(definiteLengthInputStream.toByteArray());
                case 3:
                    return ASN1BitString.createPrimitive(definiteLengthInputStream.toByteArray());
                case 4:
                    return ASN1OctetString.createPrimitive(definiteLengthInputStream.toByteArray());
                case 5:
                    return ASN1Null.createPrimitive(definiteLengthInputStream.toByteArray());
                case 6:
                    ASN1ObjectIdentifier.checkContentsLength(definiteLengthInputStream.getRemaining());
                    return ASN1ObjectIdentifier.createPrimitive(getBuffer(definiteLengthInputStream, bArr), true);
                case 7:
                    return ASN1ObjectDescriptor.createPrimitive(definiteLengthInputStream.toByteArray());
                case 8:
                case 9:
                case 11:
                case 15:
                case 16:
                case 17:
                case 29:
                default:
                    throw new IOException("unknown tag " + r42 + " encountered");
                case 10:
                    return ASN1Enumerated.createPrimitive(getBuffer(definiteLengthInputStream, bArr), true);
                case 12:
                    return ASN1UTF8String.createPrimitive(definiteLengthInputStream.toByteArray());
                case 13:
                    ASN1RelativeOID.checkContentsLength(definiteLengthInputStream.getRemaining());
                    return ASN1RelativeOID.createPrimitive(getBuffer(definiteLengthInputStream, bArr), true);
                case 14:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                    throw new IOException("unsupported tag " + r42 + " encountered");
                case 18:
                    return ASN1NumericString.createPrimitive(definiteLengthInputStream.toByteArray());
                case 19:
                    return ASN1PrintableString.createPrimitive(definiteLengthInputStream.toByteArray());
                case 20:
                    return ASN1T61String.createPrimitive(definiteLengthInputStream.toByteArray());
                case 21:
                    return ASN1VideotexString.createPrimitive(definiteLengthInputStream.toByteArray());
                case 22:
                    return ASN1IA5String.createPrimitive(definiteLengthInputStream.toByteArray());
                case 23:
                    return ASN1UTCTime.createPrimitive(definiteLengthInputStream.toByteArray());
                case 24:
                    return ASN1GeneralizedTime.createPrimitive(definiteLengthInputStream.toByteArray());
                case 25:
                    return ASN1GraphicString.createPrimitive(definiteLengthInputStream.toByteArray());
                case 26:
                    return ASN1VisibleString.createPrimitive(definiteLengthInputStream.toByteArray());
                case 27:
                    return ASN1GeneralString.createPrimitive(definiteLengthInputStream.toByteArray());
                case 28:
                    return ASN1UniversalString.createPrimitive(definiteLengthInputStream.toByteArray());
                case 30:
                    return ASN1BMPString.createPrimitive(getBMPCharBuffer(definiteLengthInputStream));
            }
        } catch (IllegalArgumentException e10) {
            throw new ASN1Exception(e10.getMessage(), e10);
        } catch (IllegalStateException e11) {
            throw new ASN1Exception(e11.getMessage(), e11);
        }
    }

    private static char[] getBMPCharBuffer(DefiniteLengthInputStream definiteLengthInputStream) throws IOException {
        int r92;
        int remaining = definiteLengthInputStream.getRemaining();
        if ((remaining & 1) != 0) {
            throw new IOException("malformed BMPString encoding encountered");
        }
        int r12 = remaining / 2;
        char[] cArr = new char[r12];
        byte[] bArr = new byte[8];
        int r52 = 0;
        int r6 = 0;
        while (remaining >= 8) {
            if (Streams.readFully(definiteLengthInputStream, bArr, 0, 8) != 8) {
                throw new EOFException("EOF encountered in middle of BMPString");
            }
            cArr[r6] = (char) ((bArr[0] << 8) | (bArr[1] & 255));
            cArr[r6 + 1] = (char) ((bArr[2] << 8) | (bArr[3] & 255));
            cArr[r6 + 2] = (char) ((bArr[4] << 8) | (bArr[5] & 255));
            cArr[r6 + 3] = (char) ((bArr[6] << 8) | (bArr[7] & 255));
            r6 += 4;
            remaining -= 8;
        }
        if (remaining > 0) {
            if (Streams.readFully(definiteLengthInputStream, bArr, 0, remaining) != remaining) {
                throw new EOFException("EOF encountered in middle of BMPString");
            }
            while (true) {
                int r72 = r52 + 1;
                int r82 = r72 + 1;
                r92 = r6 + 1;
                cArr[r6] = (char) ((bArr[r52] << 8) | (bArr[r72] & 255));
                if (r82 >= remaining) {
                    break;
                }
                r52 = r82;
                r6 = r92;
            }
            r6 = r92;
        }
        if (definiteLengthInputStream.getRemaining() == 0 && r12 == r6) {
            return cArr;
        }
        throw new IllegalStateException();
    }

    private static byte[] getBuffer(DefiniteLengthInputStream definiteLengthInputStream, byte[][] bArr) throws IOException {
        int remaining = definiteLengthInputStream.getRemaining();
        if (remaining >= bArr.length) {
            return definiteLengthInputStream.toByteArray();
        }
        byte[] bArr2 = bArr[remaining];
        if (bArr2 == null) {
            bArr2 = new byte[remaining];
            bArr[remaining] = bArr2;
        }
        definiteLengthInputStream.readAllIntoByteArray(bArr2);
        return bArr2;
    }

    public static int readLength(InputStream inputStream, int r6, boolean z10) throws IOException {
        int r02 = inputStream.read();
        if ((r02 >>> 7) == 0) {
            return r02;
        }
        if (128 == r02) {
            return -1;
        }
        if (r02 < 0) {
            throw new EOFException("EOF found when length expected");
        }
        if (255 == r02) {
            throw new IOException("invalid long form definite-length 0xFF");
        }
        int r03 = r02 & CertificateBody.profileType;
        int r12 = 0;
        int r22 = 0;
        do {
            int r32 = inputStream.read();
            if (r32 < 0) {
                throw new EOFException("EOF found reading length");
            }
            if ((r12 >>> 23) != 0) {
                throw new IOException("long form definite-length more than 31 bits");
            }
            r12 = (r12 << 8) + r32;
            r22++;
        } while (r22 < r03);
        if (r12 < r6 || z10) {
            return r12;
        }
        throw new IOException(a.c("corrupted stream - out of bounds length found: ", r12, " >= ", r6));
    }

    public static int readTagNumber(InputStream inputStream, int r52) throws IOException {
        int r53 = r52 & 31;
        if (r53 != 31) {
            return r53;
        }
        int r54 = inputStream.read();
        if (r54 < 31) {
            if (r54 < 0) {
                throw new EOFException("EOF found inside tag value.");
            }
            throw new IOException("corrupted stream - high tag number < 31 found");
        }
        int r02 = r54 & CertificateBody.profileType;
        if (r02 == 0) {
            throw new IOException("corrupted stream - invalid high tag number found");
        }
        while ((r54 & 128) != 0) {
            if ((r02 >>> 24) != 0) {
                throw new IOException("Tag number more than 31 bits");
            }
            int r55 = r02 << 7;
            int r03 = inputStream.read();
            if (r03 < 0) {
                throw new EOFException("EOF found inside tag value.");
            }
            r02 = r55 | (r03 & CertificateBody.profileType);
            r54 = r03;
        }
        return r02;
    }

    public ASN1BitString buildConstructedBitString(ASN1EncodableVector aSN1EncodableVector) throws IOException {
        int size = aSN1EncodableVector.size();
        ASN1BitString[] aSN1BitStringArr = new ASN1BitString[size];
        for (int r22 = 0; r22 != size; r22++) {
            ASN1Encodable aSN1Encodable = aSN1EncodableVector.get(r22);
            if (!(aSN1Encodable instanceof ASN1BitString)) {
                throw new ASN1Exception("unknown object encountered in constructed BIT STRING: " + aSN1Encodable.getClass());
            }
            aSN1BitStringArr[r22] = (ASN1BitString) aSN1Encodable;
        }
        return new BERBitString(aSN1BitStringArr);
    }

    public ASN1OctetString buildConstructedOctetString(ASN1EncodableVector aSN1EncodableVector) throws IOException {
        int size = aSN1EncodableVector.size();
        ASN1OctetString[] aSN1OctetStringArr = new ASN1OctetString[size];
        for (int r22 = 0; r22 != size; r22++) {
            ASN1Encodable aSN1Encodable = aSN1EncodableVector.get(r22);
            if (!(aSN1Encodable instanceof ASN1OctetString)) {
                throw new ASN1Exception("unknown object encountered in constructed OCTET STRING: " + aSN1Encodable.getClass());
            }
            aSN1OctetStringArr[r22] = (ASN1OctetString) aSN1Encodable;
        }
        return new BEROctetString(aSN1OctetStringArr);
    }

    public ASN1Primitive buildObject(int r32, int r42, int r52) throws IOException {
        DefiniteLengthInputStream definiteLengthInputStream = new DefiniteLengthInputStream(this, r52, this.limit);
        if ((r32 & BERTags.FLAGS) == 0) {
            return createPrimitiveDERObject(r42, definiteLengthInputStream, this.tmpBuffers);
        }
        int r53 = r32 & 192;
        if (r53 != 0) {
            return readTaggedObjectDL(r53, r42, (r32 & 32) != 0, definiteLengthInputStream);
        }
        if (r42 == 3) {
            return buildConstructedBitString(readVector(definiteLengthInputStream));
        }
        if (r42 == 4) {
            return buildConstructedOctetString(readVector(definiteLengthInputStream));
        }
        if (r42 == 8) {
            return DLFactory.createSequence(readVector(definiteLengthInputStream)).toASN1External();
        }
        if (r42 == 16) {
            return definiteLengthInputStream.getRemaining() < 1 ? DLFactory.EMPTY_SEQUENCE : this.lazyEvaluate ? new LazyEncodedSequence(definiteLengthInputStream.toByteArray()) : DLFactory.createSequence(readVector(definiteLengthInputStream));
        }
        if (r42 == 17) {
            return DLFactory.createSet(readVector(definiteLengthInputStream));
        }
        throw new IOException(androidx.appcompat.graphics.drawable.a.f("unknown tag ", r42, " encountered"));
    }

    public int getLimit() {
        return this.limit;
    }

    public void readFully(byte[] bArr) throws IOException {
        if (Streams.readFully(this, bArr, 0, bArr.length) != bArr.length) {
            throw new EOFException("EOF encountered in middle of object");
        }
    }

    public int readLength() throws IOException {
        return readLength(this, this.limit, false);
    }

    public ASN1Primitive readObject() throws IOException {
        int r02 = read();
        if (r02 <= 0) {
            if (r02 != 0) {
                return null;
            }
            throw new IOException("unexpected end-of-contents marker");
        }
        int tagNumber = readTagNumber(this, r02);
        int length = readLength();
        if (length >= 0) {
            try {
                return buildObject(r02, tagNumber, length);
            } catch (IllegalArgumentException e10) {
                throw new ASN1Exception("corrupted stream detected", e10);
            }
        }
        if ((r02 & 32) == 0) {
            throw new IOException("indefinite-length primitive encoding encountered");
        }
        ASN1StreamParser aSN1StreamParser = new ASN1StreamParser(new IndefiniteLengthInputStream(this, this.limit), this.limit, this.tmpBuffers);
        int r03 = r02 & 192;
        if (r03 != 0) {
            return aSN1StreamParser.loadTaggedIL(r03, tagNumber);
        }
        if (tagNumber == 3) {
            return BERBitStringParser.parse(aSN1StreamParser);
        }
        if (tagNumber == 4) {
            return BEROctetStringParser.parse(aSN1StreamParser);
        }
        if (tagNumber == 8) {
            return DERExternalParser.parse(aSN1StreamParser);
        }
        if (tagNumber == 16) {
            return BERSequenceParser.parse(aSN1StreamParser);
        }
        if (tagNumber == 17) {
            return BERSetParser.parse(aSN1StreamParser);
        }
        throw new IOException("unknown BER object encountered");
    }

    public ASN1Primitive readTaggedObjectDL(int r12, int r22, boolean z10, DefiniteLengthInputStream definiteLengthInputStream) throws IOException {
        return !z10 ? ASN1TaggedObject.createPrimitive(r12, r22, definiteLengthInputStream.toByteArray()) : ASN1TaggedObject.createConstructedDL(r12, r22, readVector(definiteLengthInputStream));
    }

    public ASN1EncodableVector readVector() throws IOException {
        ASN1Primitive object = readObject();
        if (object == null) {
            return new ASN1EncodableVector(0);
        }
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        do {
            aSN1EncodableVector.add(object);
            object = readObject();
        } while (object != null);
        return aSN1EncodableVector;
    }

    public ASN1EncodableVector readVector(DefiniteLengthInputStream definiteLengthInputStream) throws IOException {
        int remaining = definiteLengthInputStream.getRemaining();
        return remaining < 1 ? new ASN1EncodableVector(0) : new ASN1InputStream(definiteLengthInputStream, remaining, this.lazyEvaluate, this.tmpBuffers).readVector();
    }
}
