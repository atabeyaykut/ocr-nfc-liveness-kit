package y0;

/* loaded from: classes.dex */
public final class e implements a<byte[]> {
    @Override // y0.a
    public final int a() {
        return 1;
    }

    @Override // y0.a
    public final int b(byte[] bArr) {
        return bArr.length;
    }

    @Override // y0.a
    public final String getTag() {
        return "ByteArrayPool";
    }

    @Override // y0.a
    public final byte[] newArray(int r12) {
        return new byte[r12];
    }
}
