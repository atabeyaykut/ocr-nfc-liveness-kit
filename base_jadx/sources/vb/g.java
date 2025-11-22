package vb;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Set;
import m9.v;
import ma.v0;

/* loaded from: classes2.dex */
public final class g extends j {

    /* renamed from: b, reason: collision with root package name */
    public final i f18446b;

    public g(i workerScope) {
        kotlin.jvm.internal.h.f(workerScope, "workerScope");
        this.f18446b = workerScope;
    }

    @Override // vb.j, vb.i
    public final Set<lb.f> b() {
        return this.f18446b.b();
    }

    @Override // vb.j, vb.i
    public final Set<lb.f> d() {
        return this.f18446b.d();
    }

    @Override // vb.j, vb.l
    public final ma.g e(lb.f name, ua.c cVar) {
        kotlin.jvm.internal.h.f(name, "name");
        ma.g gVarE = this.f18446b.e(name, cVar);
        if (gVarE == null) {
            return null;
        }
        ma.e eVar = gVarE instanceof ma.e ? (ma.e) gVarE : null;
        if (eVar != null) {
            return eVar;
        }
        if (gVarE instanceof v0) {
            return (v0) gVarE;
        }
        return null;
    }

    @Override // vb.j, vb.l
    public final Collection f(d kindFilter, x9.l nameFilter) {
        Collection collection;
        kotlin.jvm.internal.h.f(kindFilter, "kindFilter");
        kotlin.jvm.internal.h.f(nameFilter, "nameFilter");
        int r02 = d.f18428l & kindFilter.f18437b;
        d dVar = r02 == 0 ? null : new d(r02, kindFilter.f18436a);
        if (dVar == null) {
            collection = v.f10173a;
        } else {
            Collection<ma.j> collectionF = this.f18446b.f(dVar, nameFilter);
            ArrayList arrayList = new ArrayList();
            for (Object obj : collectionF) {
                if (obj instanceof ma.h) {
                    arrayList.add(obj);
                }
            }
            collection = arrayList;
        }
        return collection;
    }

    @Override // vb.j, vb.i
    public final Set<lb.f> g() {
        return this.f18446b.g();
    }

    public final String toString() {
        return "Classes from " + this.f18446b;
    }
}
