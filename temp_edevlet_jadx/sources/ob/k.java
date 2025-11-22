package ob;

import cc.e0;
import ma.b1;
import ma.l0;
import ma.m0;
import ma.y0;

/* loaded from: classes2.dex */
public final class k {
    static {
        lb.b.l(new lb.c("kotlin.jvm.JvmInline"));
    }

    public static final boolean a(ma.u uVar) {
        kotlin.jvm.internal.h.f(uVar, "<this>");
        if (uVar instanceof m0) {
            l0 correspondingProperty = ((m0) uVar).A0();
            kotlin.jvm.internal.h.e(correspondingProperty, "correspondingProperty");
            if (d(correspondingProperty)) {
                return true;
            }
        }
        return false;
    }

    public static final boolean b(ma.j jVar) {
        kotlin.jvm.internal.h.f(jVar, "<this>");
        return (jVar instanceof ma.e) && (((ma.e) jVar).y0() instanceof ma.v);
    }

    public static final boolean c(e0 e0Var) {
        ma.g gVarN = e0Var.M0().n();
        if (gVarN != null) {
            return b(gVarN);
        }
        return false;
    }

    public static final boolean d(b1 b1Var) {
        if (b1Var.h0() == null) {
            ma.j jVarB = b1Var.b();
            lb.f fVar = null;
            ma.e eVar = jVarB instanceof ma.e ? (ma.e) jVarB : null;
            if (eVar != null) {
                int r12 = sb.b.f15372a;
                y0<cc.m0> y0VarY0 = eVar.y0();
                ma.v vVar = y0VarY0 instanceof ma.v ? (ma.v) y0VarY0 : null;
                if (vVar != null) {
                    fVar = vVar.f10248a;
                }
            }
            if (kotlin.jvm.internal.h.a(fVar, b1Var.getName())) {
                return true;
            }
        }
        return false;
    }

    public static final cc.m0 e(e0 e0Var) {
        kotlin.jvm.internal.h.f(e0Var, "<this>");
        ma.g gVarN = e0Var.M0().n();
        if (!(gVarN instanceof ma.e)) {
            gVarN = null;
        }
        ma.e eVar = (ma.e) gVarN;
        if (eVar == null) {
            return null;
        }
        int r02 = sb.b.f15372a;
        y0<cc.m0> y0VarY0 = eVar.y0();
        ma.v vVar = y0VarY0 instanceof ma.v ? (ma.v) y0VarY0 : null;
        if (vVar != null) {
            return (cc.m0) vVar.f10249b;
        }
        return null;
    }
}
