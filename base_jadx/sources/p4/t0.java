package p4;

/* loaded from: classes.dex */
public final class t0 extends u0 {

    /* renamed from: c, reason: collision with root package name */
    public final transient int f12679c;

    /* renamed from: d, reason: collision with root package name */
    public final transient int f12680d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ u0 f12681e;

    public t0(u0 u0Var, int r22, int r32) {
        this.f12681e = u0Var;
        this.f12679c = r22;
        this.f12680d = r32;
    }

    @Override // java.util.List
    public final Object get(int r22) {
        b8.f.A0(r22, this.f12680d);
        return this.f12681e.get(r22 + this.f12679c);
    }

    @Override // p4.o0
    public final int l() {
        return this.f12681e.m() + this.f12679c + this.f12680d;
    }

    @Override // p4.o0
    public final int m() {
        return this.f12681e.m() + this.f12679c;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f12680d;
    }

    @Override // p4.o0
    public final Object[] u() {
        return this.f12681e.u();
    }

    @Override // p4.u0, java.util.List
    /* renamed from: w */
    public final u0 subList(int r22, int r32) {
        b8.f.M0(r22, r32, this.f12680d);
        int r02 = this.f12679c;
        return this.f12681e.subList(r22 + r02, r32 + r02);
    }
}
