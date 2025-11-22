package nc;

/* loaded from: classes2.dex */
public final class r1 extends f1 {

    /* renamed from: e, reason: collision with root package name */
    public final p9.d<l9.m> f10838e;

    public r1(j jVar) {
        this.f10838e = jVar;
    }

    @Override // nc.t
    public final void J(Throwable th2) {
        this.f10838e.resumeWith(l9.m.f9594a);
    }

    @Override // x9.l
    public final /* bridge */ /* synthetic */ l9.m invoke(Throwable th2) {
        J(th2);
        return l9.m.f9594a;
    }
}
