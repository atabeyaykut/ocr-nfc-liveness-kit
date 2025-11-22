package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public class BaseVector {

    /* renamed from: bb, reason: collision with root package name */
    protected ByteBuffer f974bb;
    private int element_size;
    private int length;
    private int vector;

    public int __element(int r32) {
        return (r32 * this.element_size) + this.vector;
    }

    public void __reset(int r12, int r22, ByteBuffer byteBuffer) {
        this.f974bb = byteBuffer;
        if (byteBuffer != null) {
            this.vector = r12;
            this.length = byteBuffer.getInt(r12 - 4);
            this.element_size = r22;
        } else {
            this.vector = 0;
            this.length = 0;
            this.element_size = 0;
        }
    }

    public int __vector() {
        return this.vector;
    }

    public int length() {
        return this.length;
    }

    public void reset() {
        __reset(0, 0, null);
    }
}
