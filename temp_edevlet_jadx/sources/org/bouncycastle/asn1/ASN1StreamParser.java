package org.bouncycastle.asn1;

import ab.b;
import android.support.v4.media.a;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes2.dex */
public class ASN1StreamParser {
    private final InputStream _in;
    private final int _limit;
    private final byte[][] tmpBuffers;

    public ASN1StreamParser(InputStream inputStream) {
        this(inputStream, StreamUtil.findLimit(inputStream));
    }

    public ASN1StreamParser(InputStream inputStream, int r32) {
        this(inputStream, r32, new byte[11][]);
    }

    public ASN1StreamParser(InputStream inputStream, int r22, byte[][] bArr) {
        this._in = inputStream;
        this._limit = r22;
        this.tmpBuffers = bArr;
    }

    public ASN1StreamParser(byte[] bArr) {
        this(new ByteArrayInputStream(bArr), bArr.length);
    }

    private void set00Check(boolean z10) {
        InputStream inputStream = this._in;
        if (inputStream instanceof IndefiniteLengthInputStream) {
            ((IndefiniteLengthInputStream) inputStream).setEofOn00(z10);
        }
    }

    public ASN1Encodable implParseObject(int r82) throws IOException {
        set00Check(false);
        int tagNumber = ASN1InputStream.readTagNumber(this._in, r82);
        int length = ASN1InputStream.readLength(this._in, this._limit, tagNumber == 3 || tagNumber == 4 || tagNumber == 16 || tagNumber == 17 || tagNumber == 8);
        if (length < 0) {
            if ((r82 & 32) == 0) {
                throw new IOException("indefinite-length primitive encoding encountered");
            }
            ASN1StreamParser aSN1StreamParser = new ASN1StreamParser(new IndefiniteLengthInputStream(this._in, this._limit), this._limit, this.tmpBuffers);
            int r83 = r82 & 192;
            return r83 != 0 ? new BERTaggedObjectParser(r83, tagNumber, aSN1StreamParser) : aSN1StreamParser.parseImplicitConstructedIL(tagNumber);
        }
        DefiniteLengthInputStream definiteLengthInputStream = new DefiniteLengthInputStream(this._in, length, this._limit);
        if ((r82 & BERTags.FLAGS) == 0) {
            return parseImplicitPrimitive(tagNumber, definiteLengthInputStream);
        }
        ASN1StreamParser aSN1StreamParser2 = new ASN1StreamParser(definiteLengthInputStream, definiteLengthInputStream.getLimit(), this.tmpBuffers);
        int r32 = r82 & 192;
        if (r32 != 0) {
            return new DLTaggedObjectParser(r32, tagNumber, (r82 & 32) != 0, aSN1StreamParser2);
        }
        return aSN1StreamParser2.parseImplicitConstructedDL(tagNumber);
    }

    public ASN1Primitive loadTaggedDL(int r12, int r22, boolean z10) throws IOException {
        return !z10 ? ASN1TaggedObject.createPrimitive(r12, r22, ((DefiniteLengthInputStream) this._in).toByteArray()) : ASN1TaggedObject.createConstructedDL(r12, r22, readVector());
    }

    public ASN1Primitive loadTaggedIL(int r22, int r32) throws IOException {
        return ASN1TaggedObject.createConstructedIL(r22, r32, readVector());
    }

    public ASN1Encodable parseImplicitConstructedDL(int r42) throws IOException {
        if (r42 == 3) {
            return new BERBitStringParser(this);
        }
        if (r42 == 4) {
            return new BEROctetStringParser(this);
        }
        if (r42 == 8) {
            return new DERExternalParser(this);
        }
        if (r42 == 16) {
            return new DLSequenceParser(this);
        }
        if (r42 == 17) {
            return new DLSetParser(this);
        }
        throw new ASN1Exception(b.c(r42, new StringBuilder("unknown DL object encountered: 0x")));
    }

    public ASN1Encodable parseImplicitConstructedIL(int r42) throws IOException {
        if (r42 == 3) {
            return new BERBitStringParser(this);
        }
        if (r42 == 4) {
            return new BEROctetStringParser(this);
        }
        if (r42 == 8) {
            return new DERExternalParser(this);
        }
        if (r42 == 16) {
            return new BERSequenceParser(this);
        }
        if (r42 == 17) {
            return new BERSetParser(this);
        }
        throw new ASN1Exception(b.c(r42, new StringBuilder("unknown BER object encountered: 0x")));
    }

    public ASN1Encodable parseImplicitPrimitive(int r22) throws IOException {
        return parseImplicitPrimitive(r22, (DefiniteLengthInputStream) this._in);
    }

    public ASN1Encodable parseImplicitPrimitive(int r22, DefiniteLengthInputStream definiteLengthInputStream) throws IOException {
        if (r22 == 3) {
            return new DLBitStringParser(definiteLengthInputStream);
        }
        if (r22 == 4) {
            return new DEROctetStringParser(definiteLengthInputStream);
        }
        if (r22 == 8) {
            throw new ASN1Exception("externals must use constructed encoding (see X.690 8.18)");
        }
        if (r22 == 16) {
            throw new ASN1Exception("sets must use constructed encoding (see X.690 8.11.1/8.12.1)");
        }
        if (r22 == 17) {
            throw new ASN1Exception("sequences must use constructed encoding (see X.690 8.9.1/8.10.1)");
        }
        try {
            return ASN1InputStream.createPrimitiveDERObject(r22, definiteLengthInputStream, this.tmpBuffers);
        } catch (IllegalArgumentException e10) {
            throw new ASN1Exception("corrupted stream detected", e10);
        }
    }

    public ASN1Encodable parseObject(int r32) throws IOException {
        if (r32 < 0 || r32 > 30) {
            throw new IllegalArgumentException(a.d("invalid universal tag number: ", r32));
        }
        int r02 = this._in.read();
        if (r02 < 0) {
            return null;
        }
        if ((r02 & (-33)) == r32) {
            return implParseObject(r02);
        }
        throw new IOException(a.d("unexpected identifier encountered: ", r02));
    }

    public ASN1TaggedObjectParser parseTaggedObject() throws IOException {
        int r02 = this._in.read();
        if (r02 < 0) {
            return null;
        }
        if ((r02 & 192) != 0) {
            return (ASN1TaggedObjectParser) implParseObject(r02);
        }
        throw new ASN1Exception("no tagged object found");
    }

    public ASN1Encodable readObject() throws IOException {
        int r02 = this._in.read();
        if (r02 < 0) {
            return null;
        }
        return implParseObject(r02);
    }

    public ASN1EncodableVector readVector() throws IOException {
        int r02 = this._in.read();
        if (r02 < 0) {
            return new ASN1EncodableVector(0);
        }
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        do {
            ASN1Encodable aSN1EncodableImplParseObject = implParseObject(r02);
            aSN1EncodableVector.add(aSN1EncodableImplParseObject instanceof InMemoryRepresentable ? ((InMemoryRepresentable) aSN1EncodableImplParseObject).getLoadedObject() : aSN1EncodableImplParseObject.toASN1Primitive());
            r02 = this._in.read();
        } while (r02 >= 0);
        return aSN1EncodableVector;
    }
}
