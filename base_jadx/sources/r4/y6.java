package r4;

/* loaded from: classes.dex */
public final class y6<E> extends x6<E> {

    /* renamed from: e, reason: collision with root package name */
    public static final y6 f14281e = new y6(new Object[0], 0);

    /* renamed from: c, reason: collision with root package name */
    public final transient Object[] f14282c;

    /* renamed from: d, reason: collision with root package name */
    public final transient int f14283d;

    public y6(Object[] objArr, int r22) {
        this.f14282c = objArr;
        this.f14283d = r22;
    }

    @Override // java.util.List
    public final E get(int r22) {
        c5.w.N(r22, this.f14283d);
        E e10 = (E) this.f14282c[r22];
        e10.getClass();
        return e10;
    }

    @Override // r4.x6, r4.u6
    public final int h(Object[] objArr) {
        Object[] objArr2 = this.f14282c;
        int r22 = this.f14283d;
        System.arraycopy(objArr2, 0, objArr, 0, r22);
        return r22;
    }

    @Override // r4.u6
    public final int l() {
        return this.f14283d;
    }

    @Override // r4.u6
    public final int m() {
        return 0;
    }

    @Override // r4.u6
    public final Object[] o() {
        return this.f14282c;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f14283d;
    }
}
