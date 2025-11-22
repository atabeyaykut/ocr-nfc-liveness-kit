package pc;

import java.lang.reflect.InvocationTargetException;

/* loaded from: classes2.dex */
public final class a0<E> extends z<E> {
    public final x9.l<E, l9.m> f;

    public a0(Object obj, nc.j jVar, x9.l lVar) {
        super(obj, jVar);
        this.f = lVar;
    }

    @Override // kotlinx.coroutines.internal.j
    public final boolean F() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (!super.F()) {
            return false;
        }
        N();
        return true;
    }

    @Override // pc.x
    public final void N() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        p9.f context = this.f13124e.getContext();
        kotlinx.coroutines.internal.a0 a0VarE = c5.y.e(this.f, this.f13123d, null);
        if (a0VarE == null) {
            return;
        }
        c5.v.u(context, a0VarE);
    }
}
