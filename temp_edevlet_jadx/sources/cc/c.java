package cc;

import cc.b1;
import java.util.ArrayDeque;
import java.util.Iterator;

/* loaded from: classes2.dex */
public final class c {
    public static boolean a(b1 b1Var, fc.i type, b1.b supertypesPolicy) {
        kotlin.jvm.internal.h.f(b1Var, "<this>");
        kotlin.jvm.internal.h.f(type, "type");
        kotlin.jvm.internal.h.f(supertypesPolicy, "supertypesPolicy");
        fc.n nVar = b1Var.f2265c;
        if (!((nVar.u(type) && !nVar.k(type)) || nVar.k0(type))) {
            b1Var.c();
            ArrayDeque<fc.i> arrayDeque = b1Var.f2268g;
            kotlin.jvm.internal.h.c(arrayDeque);
            kc.d dVar = b1Var.f2269h;
            kotlin.jvm.internal.h.c(dVar);
            arrayDeque.push(type);
            while (!arrayDeque.isEmpty()) {
                if (dVar.f8840b > 1000) {
                    throw new IllegalStateException(("Too many supertypes for type: " + type + ". Supertypes = " + m9.t.g1(dVar, null, null, null, null, 63)).toString());
                }
                fc.i current = arrayDeque.pop();
                kotlin.jvm.internal.h.e(current, "current");
                if (dVar.add(current)) {
                    b1.b bVar = nVar.k(current) ? b1.b.c.f2272a : supertypesPolicy;
                    if (!(!kotlin.jvm.internal.h.a(bVar, b1.b.c.f2272a))) {
                        bVar = null;
                    }
                    if (bVar == null) {
                        continue;
                    } else {
                        Iterator<fc.h> it = nVar.l0(nVar.f(current)).iterator();
                        while (it.hasNext()) {
                            fc.i iVarA = bVar.a(b1Var, it.next());
                            if ((nVar.u(iVarA) && !nVar.k(iVarA)) || nVar.k0(iVarA)) {
                                b1Var.a();
                            } else {
                                arrayDeque.add(iVarA);
                            }
                        }
                    }
                }
            }
            b1Var.a();
            return false;
        }
        return true;
    }

    public static boolean b(b1 b1Var, fc.i iVar, fc.l lVar) {
        fc.n nVar = b1Var.f2265c;
        if (nVar.Y(iVar)) {
            return true;
        }
        if (nVar.k(iVar)) {
            return false;
        }
        if (b1Var.f2264b && nVar.r(iVar)) {
            return true;
        }
        return nVar.h(nVar.f(iVar), lVar);
    }
}
