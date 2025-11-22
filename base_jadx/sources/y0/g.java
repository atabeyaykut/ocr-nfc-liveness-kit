package y0;

/* loaded from: classes.dex */
public final class g implements a<int[]> {
    @Override // y0.a
    public final int a() {
        return 4;
    }

    @Override // y0.a
    public final int b(int[] r12) {
        return r12.length;
    }

    @Override // y0.a
    public final String getTag() {
        return "IntegerArrayPool";
    }

    @Override // y0.a
    public final int[] newArray(int r12) {
        return new int[r12];
    }
}
