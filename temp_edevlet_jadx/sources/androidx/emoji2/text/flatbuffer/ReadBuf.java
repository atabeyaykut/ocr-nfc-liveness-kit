package androidx.emoji2.text.flatbuffer;

/* loaded from: classes.dex */
interface ReadBuf {
    byte[] data();

    byte get(int r12);

    boolean getBoolean(int r12);

    double getDouble(int r12);

    float getFloat(int r12);

    int getInt(int r12);

    long getLong(int r12);

    short getShort(int r12);

    String getString(int r12, int r22);

    int limit();
}
