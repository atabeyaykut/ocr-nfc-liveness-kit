package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* loaded from: classes.dex */
public final class IntVector extends BaseVector {
    public IntVector __assign(int r22, ByteBuffer byteBuffer) {
        __reset(r22, 4, byteBuffer);
        return this;
    }

    public int get(int r22) {
        return this.f974bb.getInt(__element(r22));
    }

    public long getAsUnsigned(int r52) {
        return get(r52) & BodyPartID.bodyIdMax;
    }
}
