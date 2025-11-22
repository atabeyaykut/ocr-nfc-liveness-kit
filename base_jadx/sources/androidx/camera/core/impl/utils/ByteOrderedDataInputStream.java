package androidx.camera.core.impl.utils;

import androidx.annotation.RequiresApi;
import java.io.ByteArrayInputStream;
import java.io.DataInput;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteOrder;
import org.bouncycastle.asn1.cmc.BodyPartID;

@RequiresApi(21)
/* loaded from: classes.dex */
final class ByteOrderedDataInputStream extends InputStream implements DataInput {
    private ByteOrder mByteOrder;
    private final DataInputStream mDataInputStream;
    final int mLength;
    int mPosition;
    private static final ByteOrder LITTLE_ENDIAN = ByteOrder.LITTLE_ENDIAN;
    private static final ByteOrder BIG_ENDIAN = ByteOrder.BIG_ENDIAN;

    public ByteOrderedDataInputStream(InputStream inputStream) throws IOException {
        this(inputStream, ByteOrder.BIG_ENDIAN);
    }

    public ByteOrderedDataInputStream(InputStream inputStream, ByteOrder byteOrder) throws IOException {
        this.mByteOrder = ByteOrder.BIG_ENDIAN;
        DataInputStream dataInputStream = new DataInputStream(inputStream);
        this.mDataInputStream = dataInputStream;
        int r32 = dataInputStream.available();
        this.mLength = r32;
        this.mPosition = 0;
        dataInputStream.mark(r32);
        this.mByteOrder = byteOrder;
    }

    public ByteOrderedDataInputStream(byte[] bArr) throws IOException {
        this(new ByteArrayInputStream(bArr));
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.mDataInputStream.available();
    }

    public int getLength() {
        return this.mLength;
    }

    @Override // java.io.InputStream
    public void mark(int r32) {
        synchronized (this.mDataInputStream) {
            this.mDataInputStream.mark(r32);
        }
    }

    public int peek() {
        return this.mPosition;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        this.mPosition++;
        return this.mDataInputStream.read();
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int r32, int r42) throws IOException {
        int r22 = this.mDataInputStream.read(bArr, r32, r42);
        this.mPosition += r22;
        return r22;
    }

    @Override // java.io.DataInput
    public boolean readBoolean() throws IOException {
        this.mPosition++;
        return this.mDataInputStream.readBoolean();
    }

    @Override // java.io.DataInput
    public byte readByte() throws IOException {
        int r02 = this.mPosition + 1;
        this.mPosition = r02;
        if (r02 > this.mLength) {
            throw new EOFException();
        }
        int r03 = this.mDataInputStream.read();
        if (r03 >= 0) {
            return (byte) r03;
        }
        throw new EOFException();
    }

    @Override // java.io.DataInput
    public char readChar() throws IOException {
        this.mPosition += 2;
        return this.mDataInputStream.readChar();
    }

    @Override // java.io.DataInput
    public double readDouble() throws IOException {
        return Double.longBitsToDouble(readLong());
    }

    @Override // java.io.DataInput
    public float readFloat() throws IOException {
        return Float.intBitsToFloat(readInt());
    }

    @Override // java.io.DataInput
    public void readFully(byte[] bArr) throws IOException {
        int length = this.mPosition + bArr.length;
        this.mPosition = length;
        if (length > this.mLength) {
            throw new EOFException();
        }
        if (this.mDataInputStream.read(bArr, 0, bArr.length) != bArr.length) {
            throw new IOException("Couldn't read up to the length of buffer");
        }
    }

    @Override // java.io.DataInput
    public void readFully(byte[] bArr, int r42, int r52) throws IOException {
        int r02 = this.mPosition + r52;
        this.mPosition = r02;
        if (r02 > this.mLength) {
            throw new EOFException();
        }
        if (this.mDataInputStream.read(bArr, r42, r52) != r52) {
            throw new IOException("Couldn't read up to the length of buffer");
        }
    }

    @Override // java.io.DataInput
    public int readInt() throws IOException {
        int r02 = this.mPosition + 4;
        this.mPosition = r02;
        if (r02 > this.mLength) {
            throw new EOFException();
        }
        int r03 = this.mDataInputStream.read();
        int r12 = this.mDataInputStream.read();
        int r22 = this.mDataInputStream.read();
        int r32 = this.mDataInputStream.read();
        if ((r03 | r12 | r22 | r32) < 0) {
            throw new EOFException();
        }
        ByteOrder byteOrder = this.mByteOrder;
        if (byteOrder == LITTLE_ENDIAN) {
            return (r32 << 24) + (r22 << 16) + (r12 << 8) + r03;
        }
        if (byteOrder == BIG_ENDIAN) {
            return (r03 << 24) + (r12 << 16) + (r22 << 8) + r32;
        }
        throw new IOException("Invalid byte order: " + this.mByteOrder);
    }

    @Override // java.io.DataInput
    public String readLine() {
        throw new UnsupportedOperationException("readLine() not implemented.");
    }

    @Override // java.io.DataInput
    public long readLong() throws IOException {
        int r12 = this.mPosition + 8;
        this.mPosition = r12;
        if (r12 > this.mLength) {
            throw new EOFException();
        }
        int r13 = this.mDataInputStream.read();
        int r32 = this.mDataInputStream.read();
        int r42 = this.mDataInputStream.read();
        int r52 = this.mDataInputStream.read();
        int r6 = this.mDataInputStream.read();
        int r72 = this.mDataInputStream.read();
        int r82 = this.mDataInputStream.read();
        int r92 = this.mDataInputStream.read();
        if ((r13 | r32 | r42 | r52 | r6 | r72 | r82 | r92) < 0) {
            throw new EOFException();
        }
        ByteOrder byteOrder = this.mByteOrder;
        if (byteOrder == LITTLE_ENDIAN) {
            return (r92 << 56) + (r82 << 48) + (r72 << 40) + (r6 << 32) + (r52 << 24) + (r42 << 16) + (r32 << 8) + r13;
        }
        if (byteOrder == BIG_ENDIAN) {
            return (r13 << 56) + (r32 << 48) + (r42 << 40) + (r52 << 32) + (r6 << 24) + (r72 << 16) + (r82 << 8) + r92;
        }
        throw new IOException("Invalid byte order: " + this.mByteOrder);
    }

    @Override // java.io.DataInput
    public short readShort() throws IOException {
        int r02 = this.mPosition + 2;
        this.mPosition = r02;
        if (r02 > this.mLength) {
            throw new EOFException();
        }
        int r03 = this.mDataInputStream.read();
        int r12 = this.mDataInputStream.read();
        if ((r03 | r12) < 0) {
            throw new EOFException();
        }
        ByteOrder byteOrder = this.mByteOrder;
        if (byteOrder == LITTLE_ENDIAN) {
            return (short) ((r12 << 8) + r03);
        }
        if (byteOrder == BIG_ENDIAN) {
            return (short) ((r03 << 8) + r12);
        }
        throw new IOException("Invalid byte order: " + this.mByteOrder);
    }

    @Override // java.io.DataInput
    public String readUTF() throws IOException {
        this.mPosition += 2;
        return this.mDataInputStream.readUTF();
    }

    @Override // java.io.DataInput
    public int readUnsignedByte() throws IOException {
        this.mPosition++;
        return this.mDataInputStream.readUnsignedByte();
    }

    public long readUnsignedInt() throws IOException {
        return readInt() & BodyPartID.bodyIdMax;
    }

    @Override // java.io.DataInput
    public int readUnsignedShort() throws IOException {
        int r02 = this.mPosition + 2;
        this.mPosition = r02;
        if (r02 > this.mLength) {
            throw new EOFException();
        }
        int r03 = this.mDataInputStream.read();
        int r12 = this.mDataInputStream.read();
        if ((r03 | r12) < 0) {
            throw new EOFException();
        }
        ByteOrder byteOrder = this.mByteOrder;
        if (byteOrder == LITTLE_ENDIAN) {
            return (r12 << 8) + r03;
        }
        if (byteOrder == BIG_ENDIAN) {
            return (r03 << 8) + r12;
        }
        throw new IOException("Invalid byte order: " + this.mByteOrder);
    }

    public void seek(long j10) throws IOException {
        int r02 = this.mPosition;
        if (r02 > j10) {
            this.mPosition = 0;
            this.mDataInputStream.reset();
            this.mDataInputStream.mark(this.mLength);
        } else {
            j10 -= r02;
        }
        int r6 = (int) j10;
        if (skipBytes(r6) != r6) {
            throw new IOException("Couldn't seek up to the byteCount");
        }
    }

    public void setByteOrder(ByteOrder byteOrder) {
        this.mByteOrder = byteOrder;
    }

    @Override // java.io.DataInput
    public int skipBytes(int r42) throws IOException {
        int r43 = Math.min(r42, this.mLength - this.mPosition);
        int r02 = 0;
        while (r02 < r43) {
            r02 += this.mDataInputStream.skipBytes(r43 - r02);
        }
        this.mPosition += r02;
        return r02;
    }
}
