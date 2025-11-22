package org.bouncycastle.asn1;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import org.bouncycastle.util.io.Streams;

/* loaded from: classes2.dex */
class DefiniteLengthInputStream extends LimitedInputStream {
    private static final byte[] EMPTY_BYTES = new byte[0];
    private final int _originalLength;
    private int _remaining;

    public DefiniteLengthInputStream(InputStream inputStream, int r22, int r32) {
        super(inputStream, r32);
        if (r22 <= 0) {
            if (r22 < 0) {
                throw new IllegalArgumentException("negative lengths not allowed");
            }
            setParentEofDetect(true);
        }
        this._originalLength = r22;
        this._remaining = r22;
    }

    public int getRemaining() {
        return this._remaining;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (this._remaining == 0) {
            return -1;
        }
        int r02 = this._in.read();
        if (r02 >= 0) {
            int r12 = this._remaining - 1;
            this._remaining = r12;
            if (r12 == 0) {
                setParentEofDetect(true);
            }
            return r02;
        }
        throw new EOFException("DEF length " + this._originalLength + " object truncated by " + this._remaining);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int r32, int r42) throws IOException {
        int r02 = this._remaining;
        if (r02 == 0) {
            return -1;
        }
        int r22 = this._in.read(bArr, r32, Math.min(r42, r02));
        if (r22 >= 0) {
            int r33 = this._remaining - r22;
            this._remaining = r33;
            if (r33 == 0) {
                setParentEofDetect(true);
            }
            return r22;
        }
        throw new EOFException("DEF length " + this._originalLength + " object truncated by " + this._remaining);
    }

    public void readAllIntoByteArray(byte[] bArr) throws IOException {
        int r02 = this._remaining;
        if (r02 != bArr.length) {
            throw new IllegalArgumentException("buffer length not right for data");
        }
        if (r02 == 0) {
            return;
        }
        int limit = getLimit();
        int r12 = this._remaining;
        if (r12 >= limit) {
            throw new IOException("corrupted stream - out of bounds length found: " + this._remaining + " >= " + limit);
        }
        int fully = r12 - Streams.readFully(this._in, bArr, 0, bArr.length);
        this._remaining = fully;
        if (fully == 0) {
            setParentEofDetect(true);
            return;
        }
        throw new EOFException("DEF length " + this._originalLength + " object truncated by " + this._remaining);
    }

    public byte[] toByteArray() throws IOException {
        if (this._remaining == 0) {
            return EMPTY_BYTES;
        }
        int limit = getLimit();
        int r12 = this._remaining;
        if (r12 >= limit) {
            throw new IOException("corrupted stream - out of bounds length found: " + this._remaining + " >= " + limit);
        }
        byte[] bArr = new byte[r12];
        int fully = r12 - Streams.readFully(this._in, bArr, 0, r12);
        this._remaining = fully;
        if (fully == 0) {
            setParentEofDetect(true);
            return bArr;
        }
        throw new EOFException("DEF length " + this._originalLength + " object truncated by " + this._remaining);
    }
}
