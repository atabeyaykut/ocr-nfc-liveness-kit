package org.bouncycastle.asn1;

import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes2.dex */
class ConstructedOctetStream extends InputStream {
    private InputStream _currentStream;
    private boolean _first = true;
    private final ASN1StreamParser _parser;

    public ConstructedOctetStream(ASN1StreamParser aSN1StreamParser) {
        this._parser = aSN1StreamParser;
    }

    private ASN1OctetStringParser getNextParser() throws IOException {
        ASN1Encodable object = this._parser.readObject();
        if (object == null) {
            return null;
        }
        if (object instanceof ASN1OctetStringParser) {
            return (ASN1OctetStringParser) object;
        }
        throw new IOException("unknown object encountered: " + object.getClass());
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        ASN1OctetStringParser nextParser;
        if (this._currentStream == null) {
            if (!this._first || (nextParser = getNextParser()) == null) {
                return -1;
            }
            this._first = false;
            this._currentStream = nextParser.getOctetStream();
        }
        while (true) {
            int r02 = this._currentStream.read();
            if (r02 >= 0) {
                return r02;
            }
            ASN1OctetStringParser nextParser2 = getNextParser();
            if (nextParser2 == null) {
                this._currentStream = null;
                return -1;
            }
            this._currentStream = nextParser2.getOctetStream();
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int r72, int r82) throws IOException {
        ASN1OctetStringParser nextParser;
        int r12 = 0;
        if (this._currentStream == null) {
            if (!this._first || (nextParser = getNextParser()) == null) {
                return -1;
            }
            this._first = false;
            this._currentStream = nextParser.getOctetStream();
        }
        while (true) {
            int r02 = this._currentStream.read(bArr, r72 + r12, r82 - r12);
            if (r02 >= 0) {
                r12 += r02;
                if (r12 == r82) {
                    return r12;
                }
            } else {
                ASN1OctetStringParser nextParser2 = getNextParser();
                if (nextParser2 == null) {
                    this._currentStream = null;
                    if (r12 < 1) {
                        return -1;
                    }
                    return r12;
                }
                this._currentStream = nextParser2.getOctetStream();
            }
        }
    }
}
