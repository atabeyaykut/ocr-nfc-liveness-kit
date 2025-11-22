package lc;

import java.util.ArrayList;
import java.util.Iterator;
import lc.e;

/* loaded from: classes2.dex */
public class w extends r {
    public static final <T> int T0(h<? extends T> hVar) {
        Iterator<? extends T> it = hVar.iterator();
        int r02 = 0;
        while (it.hasNext()) {
            it.next();
            r02++;
            if (r02 < 0) {
                throw new ArithmeticException("Count overflow has happened.");
            }
        }
        return r02;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> h<T> U0(h<? extends T> hVar, int r22) {
        if (r22 >= 0) {
            return r22 == 0 ? hVar : hVar instanceof c ? ((c) hVar).a(r22) : new b(hVar, r22);
        }
        throw new IllegalArgumentException(androidx.appcompat.graphics.drawable.a.f("Requested element count ", r22, " is less than zero.").toString());
    }

    public static final e V0(h hVar, x9.l predicate) {
        kotlin.jvm.internal.h.f(predicate, "predicate");
        return new e(hVar, true, predicate);
    }

    public static final e W0(h hVar, x9.l predicate) {
        kotlin.jvm.internal.h.f(predicate, "predicate");
        return new e(hVar, false, predicate);
    }

    public static final Object X0(e eVar) {
        e.a aVar = new e.a(eVar);
        if (aVar.hasNext()) {
            return aVar.next();
        }
        return null;
    }

    public static final f Y0(h hVar, x9.l transform) {
        kotlin.jvm.internal.h.f(transform, "transform");
        return new f(hVar, transform, u.f9740a);
    }

    public static final y Z0(h hVar, x9.l transform) {
        kotlin.jvm.internal.h.f(transform, "transform");
        return new y(hVar, transform);
    }

    public static final e a1(h hVar, x9.l transform) {
        kotlin.jvm.internal.h.f(transform, "transform");
        return W0(new y(hVar, transform), t.f9739a);
    }

    public static final f b1(y yVar, Object obj) {
        return q.Q0(q.S0(yVar, q.S0(obj)));
    }

    public static final ArrayList c1(h hVar) {
        ArrayList arrayList = new ArrayList();
        Iterator it = hVar.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        return arrayList;
    }
}
