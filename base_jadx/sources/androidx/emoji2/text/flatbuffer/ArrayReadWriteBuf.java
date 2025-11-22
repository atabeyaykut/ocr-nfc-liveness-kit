package androidx.emoji2.text.flatbuffer;

import java.util.Arrays;

/* loaded from: classes.dex */
public class ArrayReadWriteBuf implements ReadWriteBuf {
    private byte[] buffer;
    private int writePos;

    public ArrayReadWriteBuf() {
        this(10);
    }

    public ArrayReadWriteBuf(int r12) {
        this(new byte[r12]);
    }

    public ArrayReadWriteBuf(byte[] bArr) {
        this.buffer = bArr;
        this.writePos = 0;
    }

    public ArrayReadWriteBuf(byte[] bArr, int r22) {
        this.buffer = bArr;
        this.writePos = r22;
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public byte[] data() {
        return this.buffer;
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public byte get(int r22) {
        return this.buffer[r22];
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public boolean getBoolean(int r22) {
        return this.buffer[r22] != 0;
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public double getDouble(int r32) {
        return Double.longBitsToDouble(getLong(r32));
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public float getFloat(int r12) {
        return Float.intBitsToFloat(getInt(r12));
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public int getInt(int r42) {
        byte[] bArr = this.buffer;
        return (bArr[r42] & 255) | (bArr[r42 + 3] << 24) | ((bArr[r42 + 2] & 255) << 16) | ((bArr[r42 + 1] & 255) << 8);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public long getLong(int r92) {
        byte[] bArr = this.buffer;
        long j10 = bArr[r92] & 255;
        int r32 = r92 + 1 + 1 + 1;
        long j11 = j10 | ((bArr[r1] & 255) << 8) | ((bArr[r9] & 255) << 16);
        long j12 = j11 | ((bArr[r32] & 255) << 24);
        long j13 = j12 | ((bArr[r9] & 255) << 32);
        int r93 = r32 + 1 + 1 + 1;
        return j13 | ((bArr[r3] & 255) << 40) | ((255 & bArr[r93]) << 48) | (bArr[r93 + 1] << 56);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public short getShort(int r32) {
        byte[] bArr = this.buffer;
        return (short) ((bArr[r32] & 255) | (bArr[r32 + 1] << 8));
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public String getString(int r22, int r32) {
        return Utf8Safe.decodeUtf8Array(this.buffer, r22, r32);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf, androidx.emoji2.text.flatbuffer.ReadBuf
    public int limit() {
        return this.writePos;
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void put(byte b10) {
        set(this.writePos, b10);
        this.writePos++;
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void put(byte[] bArr, int r32, int r42) {
        set(this.writePos, bArr, r32, r42);
        this.writePos += r42;
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void putBoolean(boolean z10) {
        setBoolean(this.writePos, z10);
        this.writePos++;
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void putDouble(double d10) {
        setDouble(this.writePos, d10);
        this.writePos += 8;
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void putFloat(float f) {
        setFloat(this.writePos, f);
        this.writePos += 4;
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void putInt(int r22) {
        setInt(this.writePos, r22);
        this.writePos += 4;
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void putLong(long j10) {
        setLong(this.writePos, j10);
        this.writePos += 8;
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void putShort(short s7) {
        setShort(this.writePos, s7);
        this.writePos += 2;
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public boolean requestCapacity(int r42) {
        byte[] bArr = this.buffer;
        if (bArr.length > r42) {
            return true;
        }
        int length = bArr.length;
        this.buffer = Arrays.copyOf(bArr, length + (length >> 1));
        return true;
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void set(int r22, byte b10) {
        requestCapacity(r22 + 1);
        this.buffer[r22] = b10;
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void set(int r22, byte[] bArr, int r42, int r52) {
        requestCapacity((r52 - r42) + r22);
        System.arraycopy(bArr, r42, this.buffer, r22, r52);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void setBoolean(int r12, boolean z10) {
        set(r12, z10 ? (byte) 1 : (byte) 0);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void setDouble(int r52, double d10) {
        requestCapacity(r52 + 8);
        long jDoubleToRawLongBits = Double.doubleToRawLongBits(d10);
        int r02 = (int) jDoubleToRawLongBits;
        byte[] bArr = this.buffer;
        int r22 = r52 + 1;
        bArr[r52] = (byte) (r02 & 255);
        int r53 = r22 + 1;
        bArr[r22] = (byte) ((r02 >> 8) & 255);
        int r23 = r53 + 1;
        bArr[r53] = (byte) ((r02 >> 16) & 255);
        int r54 = r23 + 1;
        bArr[r23] = (byte) ((r02 >> 24) & 255);
        int r72 = (int) (jDoubleToRawLongBits >> 32);
        int r6 = r54 + 1;
        bArr[r54] = (byte) (r72 & 255);
        int r55 = r6 + 1;
        bArr[r6] = (byte) ((r72 >> 8) & 255);
        bArr[r55] = (byte) ((r72 >> 16) & 255);
        bArr[r55 + 1] = (byte) ((r72 >> 24) & 255);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void setFloat(int r42, float f) {
        requestCapacity(r42 + 4);
        int r52 = Float.floatToRawIntBits(f);
        byte[] bArr = this.buffer;
        int r12 = r42 + 1;
        bArr[r42] = (byte) (r52 & 255);
        int r43 = r12 + 1;
        bArr[r12] = (byte) ((r52 >> 8) & 255);
        bArr[r43] = (byte) ((r52 >> 16) & 255);
        bArr[r43 + 1] = (byte) ((r52 >> 24) & 255);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void setInt(int r42, int r52) {
        requestCapacity(r42 + 4);
        byte[] bArr = this.buffer;
        int r12 = r42 + 1;
        bArr[r42] = (byte) (r52 & 255);
        int r43 = r12 + 1;
        bArr[r12] = (byte) ((r52 >> 8) & 255);
        bArr[r43] = (byte) ((r52 >> 16) & 255);
        bArr[r43 + 1] = (byte) ((r52 >> 24) & 255);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void setLong(int r52, long j10) {
        requestCapacity(r52 + 8);
        int r02 = (int) j10;
        byte[] bArr = this.buffer;
        int r22 = r52 + 1;
        bArr[r52] = (byte) (r02 & 255);
        int r53 = r22 + 1;
        bArr[r22] = (byte) ((r02 >> 8) & 255);
        int r23 = r53 + 1;
        bArr[r53] = (byte) ((r02 >> 16) & 255);
        int r54 = r23 + 1;
        bArr[r23] = (byte) ((r02 >> 24) & 255);
        int r72 = (int) (j10 >> 32);
        int r6 = r54 + 1;
        bArr[r54] = (byte) (r72 & 255);
        int r55 = r6 + 1;
        bArr[r6] = (byte) ((r72 >> 8) & 255);
        bArr[r55] = (byte) ((r72 >> 16) & 255);
        bArr[r55 + 1] = (byte) ((r72 >> 24) & 255);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void setShort(int r42, short s7) {
        requestCapacity(r42 + 2);
        byte[] bArr = this.buffer;
        bArr[r42] = (byte) (s7 & 255);
        bArr[r42 + 1] = (byte) ((s7 >> 8) & 255);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public int writePosition() {
        return this.writePos;
    }
}
