package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public final class ByteVector extends BaseVector {
    public ByteVector __assign(int r22, ByteBuffer byteBuffer) {
        __reset(r22, 1, byteBuffer);
        return this;
    }

    public byte get(int r22) {
        return this.f974bb.get(__element(r22));
    }

    public int getAsUnsigned(int r12) {
        return get(r12) & 255;
    }
}
