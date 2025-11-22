package r4;

/* loaded from: classes.dex */
public final class w6 extends x6 {

    /* renamed from: c, reason: collision with root package name */
    public final transient int f14271c;

    /* renamed from: d, reason: collision with root package name */
    public final transient int f14272d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ x6 f14273e;

    public w6(x6 x6Var, int r22, int r32) {
        this.f14273e = x6Var;
        this.f14271c = r22;
        this.f14272d = r32;
    }

    @Override // java.util.List
    public final Object get(int r22) {
        c5.w.N(r22, this.f14272d);
        return this.f14273e.get(r22 + this.f14271c);
    }

    @Override // r4.u6
    public final int l() {
        return this.f14273e.m() + this.f14271c + this.f14272d;
    }

    @Override // r4.u6
    public final int m() {
        return this.f14273e.m() + this.f14271c;
    }

    @Override // r4.u6
    public final Object[] o() {
        return this.f14273e.o();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f14272d;
    }

    @Override // r4.x6, java.util.List
    /* renamed from: u, reason: merged with bridge method [inline-methods] */
    public final x6 subList(int r22, int r32) {
        c5.w.T(r22, r32, this.f14272d);
        int r02 = this.f14271c;
        return this.f14273e.subList(r22 + r02, r32 + r02);
    }
}
