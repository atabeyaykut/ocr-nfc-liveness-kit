package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public final class DoubleVector extends BaseVector {
    public DoubleVector __assign(int r22, ByteBuffer byteBuffer) {
        __reset(r22, 8, byteBuffer);
        return this;
    }

    public double get(int r32) {
        return this.f974bb.getDouble(__element(r32));
    }
}
