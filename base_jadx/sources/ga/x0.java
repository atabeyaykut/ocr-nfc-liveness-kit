package ga;

import ga.f;
import ga.g;
import java.lang.reflect.Method;
import jb.a;
import kb.d;
import mb.h;

/* loaded from: classes2.dex */
public final class x0 {

    /* renamed from: a, reason: collision with root package name */
    public static final lb.b f6137a = lb.b.l(new lb.c("java.lang.Void"));

    public static f.e a(ma.u uVar) {
        String strA = kotlin.reflect.jvm.internal.impl.load.java.d.a(uVar);
        if (strA == null) {
            if (uVar instanceof ma.m0) {
                String strO = sb.b.k(uVar).getName().o();
                kotlin.jvm.internal.h.e(strO, "descriptor.propertyIfAccessor.name.asString()");
                strA = va.w.a(strO);
            } else if (uVar instanceof ma.n0) {
                String strO2 = sb.b.k(uVar).getName().o();
                kotlin.jvm.internal.h.e(strO2, "descriptor.propertyIfAccessor.name.asString()");
                strA = va.w.b(strO2);
            } else {
                strA = uVar.getName().o();
                kotlin.jvm.internal.h.e(strA, "descriptor.name.asString()");
            }
        }
        return new f.e(new d.b(strA, eb.w.a(uVar, 1)));
    }

    public static g b(ma.l0 possiblyOverriddenProperty) {
        kotlin.jvm.internal.h.f(possiblyOverriddenProperty, "possiblyOverriddenProperty");
        ma.l0 l0VarA = ((ma.l0) ob.i.u(possiblyOverriddenProperty)).a();
        kotlin.jvm.internal.h.e(l0VarA, "unwrapFakeOverride(possi…rriddenProperty).original");
        if (l0VarA instanceof ac.k) {
            ac.k kVar = (ac.k) l0VarA;
            h.e<gb.m, a.c> propertySignature = jb.a.f8413d;
            kotlin.jvm.internal.h.e(propertySignature, "propertySignature");
            gb.m mVar = kVar.E;
            a.c cVar = (a.c) ib.e.a(mVar, propertySignature);
            if (cVar != null) {
                return new g.c(l0VarA, mVar, cVar, kVar.F, kVar.G);
            }
        } else if (l0VarA instanceof xa.f) {
            ma.r0 source = ((xa.f) l0VarA).getSource();
            bb.a aVar = source instanceof bb.a ? (bb.a) source : null;
            sa.v vVarB = aVar != null ? aVar.b() : null;
            if (vVarB instanceof sa.x) {
                return new g.a(((sa.x) vVarB).f15369a);
            }
            if (!(vVarB instanceof sa.a0)) {
                throw new l9.f("Incorrect resolution sequence for Java field " + l0VarA + " (source = " + vVarB + ')', 1);
            }
            Method method = ((sa.a0) vVarB).f15321a;
            ma.n0 n0VarF = l0VarA.f();
            ma.r0 source2 = n0VarF != null ? n0VarF.getSource() : null;
            bb.a aVar2 = source2 instanceof bb.a ? (bb.a) source2 : null;
            sa.v vVarB2 = aVar2 != null ? aVar2.b() : null;
            sa.a0 a0Var = vVarB2 instanceof sa.a0 ? (sa.a0) vVarB2 : null;
            return new g.b(method, a0Var != null ? a0Var.f15321a : null);
        }
        pa.m0 m0VarL = l0VarA.l();
        kotlin.jvm.internal.h.c(m0VarL);
        f.e eVarA = a(m0VarL);
        ma.n0 n0VarF2 = l0VarA.f();
        return new g.d(eVarA, n0VarF2 != null ? a(n0VarF2) : null);
    }

    /* JADX WARN: Removed duplicated region for block: B:78:0x015a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static ga.f c(ma.u r7) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 387
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: ga.x0.c(ma.u):ga.f");
    }
}
