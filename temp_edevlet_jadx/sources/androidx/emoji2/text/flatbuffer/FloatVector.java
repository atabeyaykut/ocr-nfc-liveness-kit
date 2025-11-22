package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public final class FloatVector extends BaseVector {
    public FloatVector __assign(int r22, ByteBuffer byteBuffer) {
        __reset(r22, 4, byteBuffer);
        return this;
    }

    public float get(int r22) {
        return this.f974bb.getFloat(__element(r22));
    }
}
