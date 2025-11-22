package vb;

import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.Set;
import m9.v;
import ma.q0;

/* loaded from: classes2.dex */
public abstract class j implements i {
    @Override // vb.i
    public Collection a(lb.f name, ua.c cVar) {
        kotlin.jvm.internal.h.f(name, "name");
        return v.f10173a;
    }

    @Override // vb.i
    public Set<lb.f> b() {
        Collection<ma.j> collectionF = f(d.f18432p, kc.b.f8824a);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (Object obj : collectionF) {
            if (obj instanceof q0) {
                lb.f name = ((q0) obj).getName();
                kotlin.jvm.internal.h.e(name, "it.name");
                linkedHashSet.add(name);
            }
        }
        return linkedHashSet;
    }

    @Override // vb.i
    public Collection c(lb.f name, ua.c cVar) {
        kotlin.jvm.internal.h.f(name, "name");
        return v.f10173a;
    }

    @Override // vb.i
    public Set<lb.f> d() {
        Collection<ma.j> collectionF = f(d.f18433q, kc.b.f8824a);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (Object obj : collectionF) {
            if (obj instanceof q0) {
                lb.f name = ((q0) obj).getName();
                kotlin.jvm.internal.h.e(name, "it.name");
                linkedHashSet.add(name);
            }
        }
        return linkedHashSet;
    }

    @Override // vb.l
    public ma.g e(lb.f name, ua.c cVar) {
        kotlin.jvm.internal.h.f(name, "name");
        return null;
    }

    @Override // vb.l
    public Collection<ma.j> f(d kindFilter, x9.l<? super lb.f, Boolean> nameFilter) {
        kotlin.jvm.internal.h.f(kindFilter, "kindFilter");
        kotlin.jvm.internal.h.f(nameFilter, "nameFilter");
        return v.f10173a;
    }

    @Override // vb.i
    public Set<lb.f> g() {
        return null;
    }
}
