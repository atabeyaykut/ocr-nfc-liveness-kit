package m4;

/* loaded from: classes.dex */
public final class a0 extends b0 {

    /* renamed from: c, reason: collision with root package name */
    public final transient int f9986c;

    /* renamed from: d, reason: collision with root package name */
    public final transient int f9987d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ b0 f9988e;

    public a0(b0 b0Var, int r22, int r32) {
        this.f9988e = b0Var;
        this.f9986c = r22;
        this.f9987d = r32;
    }

    @Override // java.util.List
    public final Object get(int r22) {
        b8.f.E0(r22, this.f9987d);
        return this.f9988e.get(r22 + this.f9986c);
    }

    @Override // m4.y
    public final int l() {
        return this.f9988e.m() + this.f9986c + this.f9987d;
    }

    @Override // m4.y
    public final int m() {
        return this.f9988e.m() + this.f9986c;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f9987d;
    }

    @Override // m4.y
    public final boolean w() {
        return true;
    }

    @Override // m4.y
    public final Object[] x() {
        return this.f9988e.x();
    }

    @Override // m4.b0, java.util.List
    /* renamed from: y */
    public final b0 subList(int r22, int r32) {
        b8.f.N0(r22, r32, this.f9987d);
        int r02 = this.f9986c;
        return this.f9988e.subList(r22 + r02, r32 + r02);
    }
}
