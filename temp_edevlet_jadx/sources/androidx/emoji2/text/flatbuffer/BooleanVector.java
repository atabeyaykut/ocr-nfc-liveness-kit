package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public final class BooleanVector extends BaseVector {
    public BooleanVector __assign(int r22, ByteBuffer byteBuffer) {
        __reset(r22, 1, byteBuffer);
        return this;
    }

    public boolean get(int r22) {
        return this.f974bb.get(__element(r22)) != 0;
    }
}
