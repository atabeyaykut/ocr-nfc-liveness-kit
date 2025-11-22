package s4;

/* loaded from: classes.dex */
public final class c0 extends d0 {

    /* renamed from: c, reason: collision with root package name */
    public final transient int f14934c;

    /* renamed from: d, reason: collision with root package name */
    public final transient int f14935d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ d0 f14936e;

    public c0(d0 d0Var, int r22, int r32) {
        this.f14936e = d0Var;
        this.f14934c = r22;
        this.f14935d = r32;
    }

    @Override // java.util.List
    public final Object get(int r22) {
        b.b(r22, this.f14935d);
        return this.f14936e.get(r22 + this.f14934c);
    }

    @Override // s4.z
    public final int l() {
        return this.f14936e.m() + this.f14934c + this.f14935d;
    }

    @Override // s4.z
    public final int m() {
        return this.f14936e.m() + this.f14934c;
    }

    @Override // s4.z
    public final Object[] o() {
        return this.f14936e.o();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f14935d;
    }

    @Override // s4.d0, java.util.List
    /* renamed from: u, reason: merged with bridge method [inline-methods] */
    public final d0 subList(int r22, int r32) {
        b.d(r22, r32, this.f14935d);
        int r02 = this.f14934c;
        return this.f14936e.subList(r22 + r02, r32 + r02);
    }
}
