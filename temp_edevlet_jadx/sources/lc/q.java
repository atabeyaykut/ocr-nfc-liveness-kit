package lc;

/* loaded from: classes2.dex */
public class q extends b8.f {
    public static final f Q0(h hVar) {
        boolean z10 = hVar instanceof y;
        m iterator = m.f9734a;
        if (!z10) {
            return new f(hVar, n.f9735a, iterator);
        }
        y yVar = (y) hVar;
        kotlin.jvm.internal.h.f(iterator, "iterator");
        return new f(yVar.f9748a, yVar.f9749b, iterator);
    }

    public static final h R0(x9.l nextFunction, Object obj) {
        kotlin.jvm.internal.h.f(nextFunction, "nextFunction");
        return obj == null ? d.f9709a : new g(new p(obj), nextFunction);
    }

    public static final <T> h<T> S0(T... tArr) {
        return tArr.length == 0 ? d.f9709a : m9.k.n0(tArr);
    }
}
