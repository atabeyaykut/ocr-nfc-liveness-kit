package kotlin.jvm.internal;

import java.io.Serializable;

/* loaded from: classes2.dex */
public abstract class j<R> implements e<R>, Serializable {
    private final int arity;

    public j(int r12) {
        this.arity = r12;
    }

    @Override // kotlin.jvm.internal.e
    public int getArity() {
        return this.arity;
    }

    public String toString() {
        String strH = w.f8976a.h(this);
        h.e(strH, "renderLambdaToString(this)");
        return strH;
    }
}
