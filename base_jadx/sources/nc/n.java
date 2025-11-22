package nc;

/* loaded from: classes2.dex */
public final class n extends d1 implements m {

    /* renamed from: e, reason: collision with root package name */
    public final o f10816e;

    public n(g1 g1Var) {
        this.f10816e = g1Var;
    }

    @Override // nc.t
    public final void J(Throwable th2) {
        this.f10816e.e(K());
    }

    @Override // nc.m
    public final b1 getParent() {
        return K();
    }

    @Override // x9.l
    public final /* bridge */ /* synthetic */ l9.m invoke(Throwable th2) {
        J(th2);
        return l9.m.f9594a;
    }

    @Override // nc.m
    public final boolean o(Throwable th2) {
        return K().K(th2);
    }
}
