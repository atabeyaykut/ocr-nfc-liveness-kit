package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* loaded from: classes.dex */
public class ByteBufferReadWriteBuf implements ReadWriteBuf {
    private final ByteBuffer buffer;

    public ByteBufferReadWriteBuf(ByteBuffer byteBuffer) {
        this.buffer = byteBuffer;
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public byte[] data() {
        return this.buffer.array();
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public byte get(int r22) {
        return this.buffer.get(r22);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public boolean getBoolean(int r12) {
        return get(r12) != 0;
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public double getDouble(int r32) {
        return this.buffer.getDouble(r32);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public float getFloat(int r22) {
        return this.buffer.getFloat(r22);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public int getInt(int r22) {
        return this.buffer.getInt(r22);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public long getLong(int r32) {
        return this.buffer.getLong(r32);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public short getShort(int r22) {
        return this.buffer.getShort(r22);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public String getString(int r22, int r32) {
        return Utf8Safe.decodeUtf8Buffer(this.buffer, r22, r32);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf, androidx.emoji2.text.flatbuffer.ReadBuf
    public int limit() {
        return this.buffer.limit();
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void put(byte b10) {
        this.buffer.put(b10);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void put(byte[] bArr, int r32, int r42) {
        this.buffer.put(bArr, r32, r42);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void putBoolean(boolean z10) {
        this.buffer.put(z10 ? (byte) 1 : (byte) 0);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void putDouble(double d10) {
        this.buffer.putDouble(d10);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void putFloat(float f) {
        this.buffer.putFloat(f);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void putInt(int r22) {
        this.buffer.putInt(r22);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void putLong(long j10) {
        this.buffer.putLong(j10);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void putShort(short s7) {
        this.buffer.putShort(s7);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public boolean requestCapacity(int r22) {
        return r22 <= this.buffer.limit();
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void set(int r22, byte b10) {
        requestCapacity(r22 + 1);
        this.buffer.put(r22, b10);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void set(int r32, byte[] bArr, int r52, int r6) {
        requestCapacity((r6 - r52) + r32);
        int r02 = this.buffer.position();
        this.buffer.position(r32);
        this.buffer.put(bArr, r52, r6);
        this.buffer.position(r02);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void setBoolean(int r12, boolean z10) {
        set(r12, z10 ? (byte) 1 : (byte) 0);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void setDouble(int r22, double d10) {
        requestCapacity(r22 + 8);
        this.buffer.putDouble(r22, d10);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void setFloat(int r22, float f) {
        requestCapacity(r22 + 4);
        this.buffer.putFloat(r22, f);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void setInt(int r22, int r32) {
        requestCapacity(r22 + 4);
        this.buffer.putInt(r22, r32);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void setLong(int r22, long j10) {
        requestCapacity(r22 + 8);
        this.buffer.putLong(r22, j10);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void setShort(int r22, short s7) {
        requestCapacity(r22 + 2);
        this.buffer.putShort(r22, s7);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public int writePosition() {
        return this.buffer.position();
    }
}
