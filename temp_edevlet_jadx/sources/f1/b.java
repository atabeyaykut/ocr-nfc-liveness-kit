package f1;

import androidx.annotation.NonNull;
import q1.l;
import x0.w;

/* loaded from: classes.dex */
public final class b implements w<byte[]> {

    /* renamed from: a, reason: collision with root package name */
    public final byte[] f5499a;

    public b(byte[] bArr) {
        l.b(bArr);
        this.f5499a = bArr;
    }

    @Override // x0.w
    @NonNull
    public final Class<byte[]> a() {
        return byte[].class;
    }

    @Override // x0.w
    @NonNull
    public final byte[] get() {
        return this.f5499a;
    }

    @Override // x0.w
    public final int getSize() {
        return this.f5499a.length;
    }

    @Override // x0.w
    public final void recycle() {
    }
}
