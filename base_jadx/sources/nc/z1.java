package nc;

/* loaded from: classes2.dex */
public final class z1<T> extends kotlinx.coroutines.internal.r<T> {

    /* renamed from: d, reason: collision with root package name */
    public final ThreadLocal<l9.g<p9.f, Object>> f10862d;

    /* JADX WARN: Illegal instructions before constructor call */
    public z1(p9.d dVar, p9.f fVar) {
        a2 a2Var = a2.f10781a;
        super(dVar, fVar.get(a2Var) == null ? fVar.plus(a2Var) : fVar);
        this.f10862d = new ThreadLocal<>();
    }

    @Override // kotlinx.coroutines.internal.r, nc.a
    public final void i0(Object obj) {
        ThreadLocal<l9.g<p9.f, Object>> threadLocal = this.f10862d;
        l9.g<p9.f, Object> gVar = threadLocal.get();
        if (gVar != null) {
            kotlinx.coroutines.internal.w.a(gVar.f9582a, gVar.f9583b);
            threadLocal.set(null);
        }
        Object objP = x5.a.p(obj);
        p9.d<T> dVar = this.f9172c;
        p9.f context = dVar.getContext();
        Object objC = kotlinx.coroutines.internal.w.c(context, null);
        z1<?> z1VarC = objC != kotlinx.coroutines.internal.w.f9178a ? w.c(dVar, context, objC) : null;
        try {
            dVar.resumeWith(objP);
            l9.m mVar = l9.m.f9594a;
        } finally {
            if (z1VarC == null || z1VarC.m0()) {
                kotlinx.coroutines.internal.w.a(context, objC);
            }
        }
    }

    public final boolean m0() {
        ThreadLocal<l9.g<p9.f, Object>> threadLocal = this.f10862d;
        if (threadLocal.get() == null) {
            return false;
        }
        threadLocal.set(null);
        return true;
    }
}
