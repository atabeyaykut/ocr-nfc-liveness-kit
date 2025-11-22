package nc;

import nc.g1;

/* loaded from: classes2.dex */
public class f0<T> extends a<T> implements kotlinx.coroutines.selects.b<T> {
    public f0(p9.f fVar, boolean z10) {
        super(fVar, z10);
    }

    public final Object m0(p9.d<? super T> dVar) throws Throwable {
        Object objS;
        do {
            objS = S();
            if (!(objS instanceof v0)) {
                if (objS instanceof r) {
                    throw ((r) objS).f10837a;
                }
                return c5.e0.f(objS);
            }
        } while (e0(objS) < 0);
        g1.a aVar = new g1.a(c5.w.x(dVar), this);
        aVar.n();
        aVar.D(new l0(o(new q1(aVar))));
        return aVar.m();
    }

    @Override // kotlinx.coroutines.selects.b
    public final <R> void z(kotlinx.coroutines.selects.c<? super R> cVar, x9.p<? super T, ? super p9.d<? super R>, ? extends Object> pVar) {
        Object objS;
        do {
            objS = S();
            if (cVar.a()) {
                return;
            }
            if (!(objS instanceof v0)) {
                if (cVar.n()) {
                    if (objS instanceof r) {
                        cVar.t(((r) objS).f10837a);
                        return;
                    } else {
                        com.google.android.gms.internal.clearcut.d0.A(c5.e0.f(objS), cVar.r(), pVar);
                        return;
                    }
                }
                return;
            }
        } while (e0(objS) != 0);
        cVar.m(o(new s1(cVar, pVar)));
    }
}
