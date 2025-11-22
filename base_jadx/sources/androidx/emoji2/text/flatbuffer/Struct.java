package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public class Struct {

    /* renamed from: bb, reason: collision with root package name */
    protected ByteBuffer f979bb;
    protected int bb_pos;

    public void __reset() {
        __reset(0, null);
    }

    public void __reset(int r12, ByteBuffer byteBuffer) {
        this.f979bb = byteBuffer;
        if (byteBuffer == null) {
            r12 = 0;
        }
        this.bb_pos = r12;
    }
}
