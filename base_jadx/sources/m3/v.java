package m3;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class v extends u {

    /* renamed from: c, reason: collision with root package name */
    public final byte[] f9970c;

    public v(byte[] bArr) {
        super(Arrays.copyOfRange(bArr, 0, 25));
        this.f9970c = bArr;
    }

    @Override // m3.u
    public final byte[] y0() {
        return this.f9970c;
    }
}
