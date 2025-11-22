package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public final class LongVector extends BaseVector {
    public LongVector __assign(int r22, ByteBuffer byteBuffer) {
        __reset(r22, 8, byteBuffer);
        return this;
    }

    public long get(int r32) {
        return this.f974bb.getLong(__element(r32));
    }
}
