package kotlin.jvm.internal;

import da.i;
import da.l;

/* loaded from: classes2.dex */
public abstract class k extends m implements da.i {
    public k(Object obj, Class cls, String str, String str2, int r52) {
        super(obj, cls, str, str2, r52);
    }

    @Override // kotlin.jvm.internal.a
    public final da.c computeReflected() {
        return w.b(this);
    }

    @Override // da.h
    public final i.a f() {
        return ((da.i) getReflected()).f();
    }

    @Override // x9.l
    public final Object invoke(Object obj) {
        return ((l) this).get(obj);
    }

    @Override // da.l
    public final l.a l() {
        return ((da.i) getReflected()).l();
    }
}
