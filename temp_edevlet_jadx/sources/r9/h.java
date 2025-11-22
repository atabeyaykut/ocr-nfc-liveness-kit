package r9;

import kotlin.jvm.internal.w;

/* loaded from: classes2.dex */
public abstract class h extends g implements kotlin.jvm.internal.e<Object> {
    private final int arity;

    public h(int r22) {
        this(r22, null);
    }

    public h(int r12, p9.d<Object> dVar) {
        super(dVar);
        this.arity = r12;
    }

    @Override // kotlin.jvm.internal.e
    public int getArity() {
        return this.arity;
    }

    @Override // r9.a
    public String toString() {
        if (getCompletion() != null) {
            return super.toString();
        }
        String strG = w.f8976a.g(this);
        kotlin.jvm.internal.h.e(strG, "renderLambdaToString(this)");
        return strG;
    }
}
