package org.bouncycastle.asn1;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes2.dex */
class IndefiniteLengthInputStream extends LimitedInputStream {
    private int _b1;
    private int _b2;
    private boolean _eofOn00;
    private boolean _eofReached;

    public IndefiniteLengthInputStream(InputStream inputStream, int r22) throws IOException {
        super(inputStream, r22);
        this._eofReached = false;
        this._eofOn00 = true;
        this._b1 = inputStream.read();
        int r12 = inputStream.read();
        this._b2 = r12;
        if (r12 < 0) {
            throw new EOFException();
        }
        checkForEof();
    }

    private boolean checkForEof() {
        if (!this._eofReached && this._eofOn00 && this._b1 == 0 && this._b2 == 0) {
            this._eofReached = true;
            setParentEofDetect(true);
        }
        return this._eofReached;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (checkForEof()) {
            return -1;
        }
        int r02 = this._in.read();
        if (r02 < 0) {
            throw new EOFException();
        }
        int r12 = this._b1;
        this._b1 = this._b2;
        this._b2 = r02;
        return r12;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int r42, int r52) throws IOException {
        if (this._eofOn00 || r52 < 3) {
            return super.read(bArr, r42, r52);
        }
        if (this._eofReached) {
            return -1;
        }
        int r53 = this._in.read(bArr, r42 + 2, r52 - 2);
        if (r53 < 0) {
            throw new EOFException();
        }
        bArr[r42] = (byte) this._b1;
        bArr[r42 + 1] = (byte) this._b2;
        this._b1 = this._in.read();
        int r32 = this._in.read();
        this._b2 = r32;
        if (r32 >= 0) {
            return r53 + 2;
        }
        throw new EOFException();
    }

    public void setEofOn00(boolean z10) {
        this._eofOn00 = z10;
        checkForEof();
    }
}
