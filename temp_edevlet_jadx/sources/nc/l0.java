package nc;

/* loaded from: classes2.dex */
public final class l0 extends g {

    /* renamed from: a, reason: collision with root package name */
    public final k0 f10813a;

    public l0(k0 k0Var) {
        this.f10813a = k0Var;
    }

    @Override // nc.h
    public final void a(Throwable th2) {
        this.f10813a.dispose();
    }

    @Override // x9.l
    public final /* bridge */ /* synthetic */ l9.m invoke(Throwable th2) {
        a(th2);
        return l9.m.f9594a;
    }

    public final String toString() {
        return "DisposeOnCancel[" + this.f10813a + ']';
    }
}
