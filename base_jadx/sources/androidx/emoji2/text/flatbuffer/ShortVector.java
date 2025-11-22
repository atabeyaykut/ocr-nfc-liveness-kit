package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;
import org.bouncycastle.crypto.hpke.HPKE;

/* loaded from: classes.dex */
public final class ShortVector extends BaseVector {
    public ShortVector __assign(int r22, ByteBuffer byteBuffer) {
        __reset(r22, 2, byteBuffer);
        return this;
    }

    public short get(int r22) {
        return this.f974bb.getShort(__element(r22));
    }

    public int getAsUnsigned(int r22) {
        return get(r22) & HPKE.aead_EXPORT_ONLY;
    }
}
