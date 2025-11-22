package kotlin.jvm.internal;

import da.l;

/* loaded from: classes2.dex */
public abstract class q extends s implements da.l {
    public q(Object obj, Class cls, String str, String str2, int r52) {
        super(obj, cls, str, str2, r52);
    }

    @Override // kotlin.jvm.internal.a
    public final da.c computeReflected() {
        return w.c(this);
    }

    @Override // x9.l
    public final Object invoke(Object obj) {
        return get(obj);
    }

    @Override // da.l
    public final l.a l() {
        return ((da.l) getReflected()).l();
    }
}
