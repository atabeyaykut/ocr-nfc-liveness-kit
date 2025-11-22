package o4;

/* loaded from: classes.dex */
public final class f<E> extends e<E> {

    /* renamed from: e, reason: collision with root package name */
    public static final f f11214e = new f(new Object[0], 0);

    /* renamed from: c, reason: collision with root package name */
    public final transient Object[] f11215c;

    /* renamed from: d, reason: collision with root package name */
    public final transient int f11216d;

    public f(Object[] objArr, int r22) {
        this.f11215c = objArr;
        this.f11216d = r22;
    }

    @Override // java.util.List
    public final E get(int r22) {
        u.a(r22, this.f11216d);
        return (E) this.f11215c[r22];
    }

    @Override // o4.e, o4.b
    public final int h(Object[] objArr) {
        Object[] objArr2 = this.f11215c;
        int r22 = this.f11216d;
        System.arraycopy(objArr2, 0, objArr, 0, r22);
        return r22;
    }

    @Override // o4.b
    public final int l() {
        return this.f11216d;
    }

    @Override // o4.b
    public final int m() {
        return 0;
    }

    @Override // o4.b
    public final Object[] o() {
        return this.f11215c;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f11216d;
    }
}
