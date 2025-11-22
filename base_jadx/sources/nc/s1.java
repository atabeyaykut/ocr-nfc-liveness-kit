package nc;

/* loaded from: classes2.dex */
public final class s1<T, R> extends f1 {

    /* renamed from: e, reason: collision with root package name */
    public final kotlinx.coroutines.selects.c<R> f10842e;
    public final x9.p<T, p9.d<? super R>, Object> f;

    /* JADX WARN: Multi-variable type inference failed */
    public s1(kotlinx.coroutines.selects.c<? super R> cVar, x9.p<? super T, ? super p9.d<? super R>, ? extends Object> pVar) {
        this.f10842e = cVar;
        this.f = pVar;
    }

    @Override // nc.t
    public final void J(Throwable th2) {
        kotlinx.coroutines.selects.c<R> cVar = this.f10842e;
        if (cVar.n()) {
            g1 g1VarK = K();
            x9.p<T, p9.d<? super R>, Object> pVar = this.f;
            Object objS = g1VarK.S();
            if (objS instanceof r) {
                cVar.t(((r) objS).f10837a);
                return;
            }
            Object objF = c5.e0.f(objS);
            p9.d<R> dVarR = cVar.r();
            try {
                a2.b.m(c5.w.x(c5.w.g(objF, dVarR, pVar)), l9.m.f9594a, null);
            } catch (Throwable th3) {
                dVarR.resumeWith(c5.w.j(th3));
                throw th3;
            }
        }
    }

    @Override // x9.l
    public final /* bridge */ /* synthetic */ l9.m invoke(Throwable th2) {
        J(th2);
        return l9.m.f9594a;
    }
}
