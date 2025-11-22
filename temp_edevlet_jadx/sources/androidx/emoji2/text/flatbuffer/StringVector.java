package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public final class StringVector extends BaseVector {
    private Utf8 utf8 = Utf8.getDefault();

    public StringVector __assign(int r12, int r22, ByteBuffer byteBuffer) {
        __reset(r12, r22, byteBuffer);
        return this;
    }

    public String get(int r32) {
        return Table.__string(__element(r32), this.f974bb, this.utf8);
    }
}
