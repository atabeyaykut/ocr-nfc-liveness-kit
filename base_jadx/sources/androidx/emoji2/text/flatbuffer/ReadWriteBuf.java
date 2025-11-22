package androidx.emoji2.text.flatbuffer;

/* loaded from: classes.dex */
interface ReadWriteBuf extends ReadBuf {
    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    int limit();

    void put(byte b10);

    void put(byte[] bArr, int r22, int r32);

    void putBoolean(boolean z10);

    void putDouble(double d10);

    void putFloat(float f);

    void putInt(int r12);

    void putLong(long j10);

    void putShort(short s7);

    boolean requestCapacity(int r12);

    void set(int r12, byte b10);

    void set(int r12, byte[] bArr, int r32, int r42);

    void setBoolean(int r12, boolean z10);

    void setDouble(int r12, double d10);

    void setFloat(int r12, float f);

    void setInt(int r12, int r22);

    void setLong(int r12, long j10);

    void setShort(int r12, short s7);

    int writePosition();
}
