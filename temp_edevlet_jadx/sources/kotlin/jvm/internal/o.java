package kotlin.jvm.internal;

import kotlinx.coroutines.internal.j;
import nc.c0;

/* loaded from: classes2.dex */
public abstract class o extends s implements da.k {
    public o(Object obj) {
        super(obj, c0.class, "classSimpleName", "getClassSimpleName(Ljava/lang/Object;)Ljava/lang/String;", 1);
    }

    @Override // kotlin.jvm.internal.a
    public final da.c computeReflected() {
        return w.f8976a.e(this);
    }

    @Override // x9.a
    public final Object invoke() {
        return ((j.e) this).k();
    }
}
