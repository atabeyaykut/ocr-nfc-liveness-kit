package s4;

/* loaded from: classes.dex */
public final class r0<E> extends d0<E> {

    /* renamed from: e, reason: collision with root package name */
    public static final r0 f15143e = new r0(new Object[0], 0);

    /* renamed from: c, reason: collision with root package name */
    public final transient Object[] f15144c;

    /* renamed from: d, reason: collision with root package name */
    public final transient int f15145d;

    public r0(Object[] objArr, int r22) {
        this.f15144c = objArr;
        this.f15145d = r22;
    }

    @Override // java.util.List
    public final E get(int r22) {
        b.b(r22, this.f15145d);
        return (E) this.f15144c[r22];
    }

    @Override // s4.d0, s4.z
    public final int h(Object[] objArr) {
        Object[] objArr2 = this.f15144c;
        int r22 = this.f15145d;
        System.arraycopy(objArr2, 0, objArr, 0, r22);
        return r22;
    }

    @Override // s4.z
    public final int l() {
        return this.f15145d;
    }

    @Override // s4.z
    public final int m() {
        return 0;
    }

    @Override // s4.z
    public final Object[] o() {
        return this.f15144c;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f15145d;
    }
}
