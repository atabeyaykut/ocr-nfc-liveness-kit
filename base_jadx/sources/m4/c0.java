package m4;

/* loaded from: classes.dex */
public final class c0 extends b0 {

    /* renamed from: e, reason: collision with root package name */
    public static final c0 f9990e = new c0(new Object[0], 0);

    /* renamed from: c, reason: collision with root package name */
    public final transient Object[] f9991c;

    /* renamed from: d, reason: collision with root package name */
    public final transient int f9992d;

    public c0(Object[] objArr, int r22) {
        this.f9991c = objArr;
        this.f9992d = r22;
    }

    @Override // java.util.List
    public final Object get(int r22) {
        b8.f.E0(r22, this.f9992d);
        Object obj = this.f9991c[r22];
        obj.getClass();
        return obj;
    }

    @Override // m4.b0, m4.y
    public final void h(Object[] objArr) {
        System.arraycopy(this.f9991c, 0, objArr, 0, this.f9992d);
    }

    @Override // m4.y
    public final int l() {
        return this.f9992d;
    }

    @Override // m4.y
    public final int m() {
        return 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f9992d;
    }

    @Override // m4.y
    public final boolean w() {
        return false;
    }

    @Override // m4.y
    public final Object[] x() {
        return this.f9991c;
    }
}
