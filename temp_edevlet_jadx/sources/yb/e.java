package yb;

import gb.a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import mb.h;
import yb.g0;

/* loaded from: classes2.dex */
public final class e implements d<na.c, qb.g<?>> {

    /* renamed from: a, reason: collision with root package name */
    public final xb.a f19396a;

    /* renamed from: b, reason: collision with root package name */
    public final f f19397b;

    public e(ma.b0 module, ma.d0 d0Var, zb.a protocol) {
        kotlin.jvm.internal.h.f(module, "module");
        kotlin.jvm.internal.h.f(protocol, "protocol");
        this.f19396a = protocol;
        this.f19397b = new f(module, d0Var);
    }

    @Override // yb.g
    public final List a(g0.a container, gb.f proto) {
        kotlin.jvm.internal.h.f(container, "container");
        kotlin.jvm.internal.h.f(proto, "proto");
        Iterable iterable = (List) proto.k(this.f19396a.f19197h);
        if (iterable == null) {
            iterable = m9.v.f10173a;
        }
        Iterable iterable2 = iterable;
        ArrayList arrayList = new ArrayList(m9.n.Q0(iterable2));
        Iterator it = iterable2.iterator();
        while (it.hasNext()) {
            arrayList.add(this.f19397b.a((gb.a) it.next(), container.f19408a));
        }
        return arrayList;
    }

    @Override // yb.g
    public final List<na.c> b(g0 g0Var, mb.p proto, c kind) {
        h.c cVar;
        Object obj;
        kotlin.jvm.internal.h.f(proto, "proto");
        kotlin.jvm.internal.h.f(kind, "kind");
        boolean z10 = proto instanceof gb.c;
        xb.a aVar = this.f19396a;
        if (z10) {
            cVar = (gb.c) proto;
            obj = aVar.f19192b;
        } else if (proto instanceof gb.h) {
            cVar = (gb.h) proto;
            obj = aVar.f19194d;
        } else {
            if (!(proto instanceof gb.m)) {
                throw new IllegalStateException(("Unknown message: " + proto).toString());
            }
            int r6 = kind.ordinal();
            if (r6 == 1) {
                cVar = (gb.m) proto;
                obj = aVar.f19195e;
            } else if (r6 == 2) {
                cVar = (gb.m) proto;
                obj = aVar.f;
            } else {
                if (r6 != 3) {
                    throw new IllegalStateException("Unsupported callable kind with property proto".toString());
                }
                cVar = (gb.m) proto;
                obj = aVar.f19196g;
            }
        }
        Iterable iterable = (List) cVar.k(obj);
        if (iterable == null) {
            iterable = m9.v.f10173a;
        }
        Iterable iterable2 = iterable;
        ArrayList arrayList = new ArrayList(m9.n.Q0(iterable2));
        Iterator it = iterable2.iterator();
        while (it.hasNext()) {
            arrayList.add(this.f19397b.a((gb.a) it.next(), g0Var.f19408a));
        }
        return arrayList;
    }

    @Override // yb.g
    public final List<na.c> c(g0 container, mb.p callableProto, c kind, int r52, gb.t proto) {
        kotlin.jvm.internal.h.f(container, "container");
        kotlin.jvm.internal.h.f(callableProto, "callableProto");
        kotlin.jvm.internal.h.f(kind, "kind");
        kotlin.jvm.internal.h.f(proto, "proto");
        Iterable iterable = (List) proto.k(this.f19396a.f19199j);
        if (iterable == null) {
            iterable = m9.v.f10173a;
        }
        Iterable iterable2 = iterable;
        ArrayList arrayList = new ArrayList(m9.n.Q0(iterable2));
        Iterator it = iterable2.iterator();
        while (it.hasNext()) {
            arrayList.add(this.f19397b.a((gb.a) it.next(), container.f19408a));
        }
        return arrayList;
    }

    @Override // yb.d
    public final qb.g<?> d(g0 g0Var, gb.m proto, cc.e0 e0Var) {
        kotlin.jvm.internal.h.f(proto, "proto");
        return null;
    }

    @Override // yb.g
    public final ArrayList e(g0.a container) {
        kotlin.jvm.internal.h.f(container, "container");
        Iterable iterable = (List) container.f19411d.k(this.f19396a.f19193c);
        if (iterable == null) {
            iterable = m9.v.f10173a;
        }
        Iterable iterable2 = iterable;
        ArrayList arrayList = new ArrayList(m9.n.Q0(iterable2));
        Iterator it = iterable2.iterator();
        while (it.hasNext()) {
            arrayList.add(this.f19397b.a((gb.a) it.next(), container.f19408a));
        }
        return arrayList;
    }

    @Override // yb.g
    public final List<na.c> f(g0 g0Var, mb.p proto, c kind) {
        kotlin.jvm.internal.h.f(proto, "proto");
        kotlin.jvm.internal.h.f(kind, "kind");
        return m9.v.f10173a;
    }

    @Override // yb.d
    public final qb.g<?> g(g0 g0Var, gb.m proto, cc.e0 e0Var) {
        kotlin.jvm.internal.h.f(proto, "proto");
        a.b.c cVar = (a.b.c) ib.e.a(proto, this.f19396a.f19198i);
        if (cVar == null) {
            return null;
        }
        return this.f19397b.c(e0Var, cVar, g0Var.f19408a);
    }

    @Override // yb.g
    public final List<na.c> h(g0 g0Var, gb.m proto) {
        kotlin.jvm.internal.h.f(proto, "proto");
        return m9.v.f10173a;
    }

    @Override // yb.g
    public final ArrayList i(gb.p proto, ib.c nameResolver) {
        kotlin.jvm.internal.h.f(proto, "proto");
        kotlin.jvm.internal.h.f(nameResolver, "nameResolver");
        Iterable iterable = (List) proto.k(this.f19396a.f19200k);
        if (iterable == null) {
            iterable = m9.v.f10173a;
        }
        Iterable iterable2 = iterable;
        ArrayList arrayList = new ArrayList(m9.n.Q0(iterable2));
        Iterator it = iterable2.iterator();
        while (it.hasNext()) {
            arrayList.add(this.f19397b.a((gb.a) it.next(), nameResolver));
        }
        return arrayList;
    }

    @Override // yb.g
    public final ArrayList j(gb.r proto, ib.c nameResolver) {
        kotlin.jvm.internal.h.f(proto, "proto");
        kotlin.jvm.internal.h.f(nameResolver, "nameResolver");
        Iterable iterable = (List) proto.k(this.f19396a.f19201l);
        if (iterable == null) {
            iterable = m9.v.f10173a;
        }
        Iterable iterable2 = iterable;
        ArrayList arrayList = new ArrayList(m9.n.Q0(iterable2));
        Iterator it = iterable2.iterator();
        while (it.hasNext()) {
            arrayList.add(this.f19397b.a((gb.a) it.next(), nameResolver));
        }
        return arrayList;
    }

    @Override // yb.g
    public final List<na.c> k(g0 g0Var, gb.m proto) {
        kotlin.jvm.internal.h.f(proto, "proto");
        return m9.v.f10173a;
    }
}
