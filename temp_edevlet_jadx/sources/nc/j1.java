package nc;

/* loaded from: classes2.dex */
public final class j1 extends t1 {

    /* renamed from: c, reason: collision with root package name */
    public final p9.d<l9.m> f10810c;

    public j1(p9.f fVar, x9.p<? super a0, ? super p9.d<? super l9.m>, ? extends Object> pVar) {
        super(fVar, false);
        this.f10810c = c5.w.g(this, this, pVar);
    }

    @Override // nc.g1
    public final void c0() {
        try {
            a2.b.m(c5.w.x(this.f10810c), l9.m.f9594a, null);
        } catch (Throwable th2) {
            resumeWith(c5.w.j(th2));
            throw th2;
        }
    }
}
