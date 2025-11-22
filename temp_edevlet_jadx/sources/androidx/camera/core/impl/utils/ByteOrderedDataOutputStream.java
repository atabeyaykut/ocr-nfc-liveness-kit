package androidx.camera.core.impl.utils;

import androidx.annotation.RequiresApi;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteOrder;

@RequiresApi(21)
/* loaded from: classes.dex */
class ByteOrderedDataOutputStream extends FilterOutputStream {
    private ByteOrder mByteOrder;
    final OutputStream mOutputStream;

    public ByteOrderedDataOutputStream(OutputStream outputStream, ByteOrder byteOrder) {
        super(outputStream);
        this.mOutputStream = outputStream;
        this.mByteOrder = byteOrder;
    }

    public void setByteOrder(ByteOrder byteOrder) {
        this.mByteOrder = byteOrder;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        this.mOutputStream.write(bArr);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int r32, int r42) throws IOException {
        this.mOutputStream.write(bArr, r32, r42);
    }

    public void writeByte(int r22) throws IOException {
        this.mOutputStream.write(r22);
    }

    public void writeInt(int r32) throws IOException {
        OutputStream outputStream;
        int r33;
        ByteOrder byteOrder = this.mByteOrder;
        if (byteOrder == ByteOrder.LITTLE_ENDIAN) {
            this.mOutputStream.write((r32 >>> 0) & 255);
            this.mOutputStream.write((r32 >>> 8) & 255);
            this.mOutputStream.write((r32 >>> 16) & 255);
            outputStream = this.mOutputStream;
            r33 = r32 >>> 24;
        } else {
            if (byteOrder != ByteOrder.BIG_ENDIAN) {
                return;
            }
            this.mOutputStream.write((r32 >>> 24) & 255);
            this.mOutputStream.write((r32 >>> 16) & 255);
            this.mOutputStream.write((r32 >>> 8) & 255);
            outputStream = this.mOutputStream;
            r33 = r32 >>> 0;
        }
        outputStream.write(r33 & 255);
    }

    public void writeShort(short s7) throws IOException {
        OutputStream outputStream;
        int r32;
        ByteOrder byteOrder = this.mByteOrder;
        if (byteOrder == ByteOrder.LITTLE_ENDIAN) {
            this.mOutputStream.write((s7 >>> 0) & 255);
            outputStream = this.mOutputStream;
            r32 = s7 >>> 8;
        } else {
            if (byteOrder != ByteOrder.BIG_ENDIAN) {
                return;
            }
            this.mOutputStream.write((s7 >>> 8) & 255);
            outputStream = this.mOutputStream;
            r32 = s7 >>> 0;
        }
        outputStream.write(r32 & 255);
    }

    public void writeUnsignedInt(long j10) throws IOException {
        writeInt((int) j10);
    }

    public void writeUnsignedShort(int r12) throws IOException {
        writeShort((short) r12);
    }
}
