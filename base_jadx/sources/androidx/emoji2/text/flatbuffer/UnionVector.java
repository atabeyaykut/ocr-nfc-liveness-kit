package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public final class UnionVector extends BaseVector {
    public UnionVector __assign(int r12, int r22, ByteBuffer byteBuffer) {
        __reset(r12, r22, byteBuffer);
        return this;
    }

    public Table get(Table table, int r32) {
        return Table.__union(table, __element(r32), this.f974bb);
    }
}
