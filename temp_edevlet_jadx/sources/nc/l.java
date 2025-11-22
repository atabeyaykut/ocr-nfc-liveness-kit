package nc;

import java.lang.reflect.InvocationTargetException;

/* loaded from: classes2.dex */
public final class l extends d1 {

    /* renamed from: e, reason: collision with root package name */
    public final j<?> f10812e;

    public l(j<?> jVar) {
        this.f10812e = jVar;
    }

    @Override // nc.t
    public final void J(Throwable th2) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        g1 g1VarK = K();
        j<?> jVar = this.f10812e;
        Throwable thL = jVar.l(g1VarK);
        if (!jVar.p() ? false : ((kotlinx.coroutines.internal.g) jVar.f10806d).l(thL)) {
            return;
        }
        jVar.x(thL);
        if (jVar.p()) {
            return;
        }
        jVar.i();
    }

    @Override // x9.l
    public final /* bridge */ /* synthetic */ l9.m invoke(Throwable th2) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        J(th2);
        return l9.m.f9594a;
    }
}
