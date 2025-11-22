package ab;

import c5.v;
import cc.e0;
import cc.f1;
import cc.i1;
import cc.k1;
import cc.q1;
import cc.t1;
import cc.x;
import j7.p;
import java.util.List;
import ma.w0;

/* loaded from: classes2.dex */
public final class f extends v {
    @Override // c5.v
    public final i1 q(w0 w0Var, x typeAttr, f1 typeParameterUpperBoundEraser, e0 erasedUpperBound) {
        kotlin.jvm.internal.h.f(typeAttr, "typeAttr");
        kotlin.jvm.internal.h.f(typeParameterUpperBoundEraser, "typeParameterUpperBoundEraser");
        kotlin.jvm.internal.h.f(erasedUpperBound, "erasedUpperBound");
        if (!(typeAttr instanceof a)) {
            return super.q(w0Var, typeAttr, typeParameterUpperBoundEraser, erasedUpperBound);
        }
        a aVarF = (a) typeAttr;
        if (!aVarF.f143c) {
            aVarF = aVarF.f(1);
        }
        int r02 = g.d.c(aVarF.f142b);
        t1 t1Var = t1.INVARIANT;
        if (r02 != 0 && r02 != 1) {
            if (r02 == 2) {
                return new k1(erasedUpperBound, t1Var);
            }
            throw new p();
        }
        if (!w0Var.I().f2364b) {
            return new k1(sb.b.e(w0Var).n(), t1Var);
        }
        List<w0> parameters = erasedUpperBound.M0().getParameters();
        kotlin.jvm.internal.h.e(parameters, "erasedUpperBound.constructor.parameters");
        return true ^ parameters.isEmpty() ? new k1(erasedUpperBound, t1.OUT_VARIANCE) : q1.n(w0Var, aVarF);
    }
}
