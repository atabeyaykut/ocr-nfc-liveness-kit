package kotlinx.coroutines.internal;

import nc.c0;

/* loaded from: classes2.dex */
public abstract class o {
    public abstract c<?> a();

    public final boolean b(o oVar) {
        c<?> cVarA;
        c<?> cVarA2 = a();
        return (cVarA2 == null || (cVarA = oVar.a()) == null || cVarA2.g() >= cVarA.g()) ? false : true;
    }

    public abstract Object c(Object obj);

    public String toString() {
        return getClass().getSimpleName() + '@' + c0.c(this);
    }
}
