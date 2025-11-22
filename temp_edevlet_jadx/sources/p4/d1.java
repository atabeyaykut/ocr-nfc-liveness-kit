package p4;

/* loaded from: classes.dex */
public final class d1<E> extends u0<E> {

    /* renamed from: e, reason: collision with root package name */
    public static final d1 f12296e = new d1(new Object[0], 0);

    /* renamed from: c, reason: collision with root package name */
    public final transient Object[] f12297c;

    /* renamed from: d, reason: collision with root package name */
    public final transient int f12298d;

    public d1(Object[] objArr, int r22) {
        this.f12297c = objArr;
        this.f12298d = r22;
    }

    @Override // java.util.List
    public final E get(int r22) {
        b8.f.A0(r22, this.f12298d);
        E e10 = (E) this.f12297c[r22];
        e10.getClass();
        return e10;
    }

    @Override // p4.u0, p4.o0
    public final int h(Object[] objArr, int r52) {
        Object[] objArr2 = this.f12297c;
        int r22 = this.f12298d;
        System.arraycopy(objArr2, 0, objArr, r52, r22);
        return r52 + r22;
    }

    @Override // p4.o0
    public final int l() {
        return this.f12298d;
    }

    @Override // p4.o0
    public final int m() {
        return 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f12298d;
    }

    @Override // p4.o0
    public final Object[] u() {
        return this.f12297c;
    }
}
