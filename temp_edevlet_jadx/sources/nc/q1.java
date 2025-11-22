package nc;

import nc.g1;

/* loaded from: classes2.dex */
public final class q1<T> extends f1 {

    /* renamed from: e, reason: collision with root package name */
    public final j<T> f10835e;

    public q1(g1.a aVar) {
        this.f10835e = aVar;
    }

    @Override // nc.t
    public final void J(Throwable th2) {
        Object objS = K().S();
        this.f10835e.resumeWith(objS instanceof r ? c5.w.j(((r) objS).f10837a) : c5.e0.f(objS));
    }

    @Override // x9.l
    public final /* bridge */ /* synthetic */ l9.m invoke(Throwable th2) {
        J(th2);
        return l9.m.f9594a;
    }
}
