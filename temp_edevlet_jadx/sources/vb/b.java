package vb;

import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import m9.v;
import m9.x;
import vb.i;

/* loaded from: classes2.dex */
public final class b implements i {

    /* renamed from: b, reason: collision with root package name */
    public final String f18415b;

    /* renamed from: c, reason: collision with root package name */
    public final i[] f18416c;

    public static final class a {
        public static i a(String debugName, Iterable iterable) {
            kotlin.jvm.internal.h.f(debugName, "debugName");
            kc.c cVar = new kc.c();
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                i iVar = (i) it.next();
                if (iVar != i.b.f18453b) {
                    if (iVar instanceof b) {
                        i[] elements = ((b) iVar).f18416c;
                        kotlin.jvm.internal.h.f(elements, "elements");
                        cVar.addAll(m9.i.g0(elements));
                    } else {
                        cVar.add(iVar);
                    }
                }
            }
            return b(debugName, cVar);
        }

        public static i b(String debugName, kc.c cVar) {
            kotlin.jvm.internal.h.f(debugName, "debugName");
            int r02 = cVar.f8832a;
            return r02 != 0 ? r02 != 1 ? new b(debugName, (i[]) cVar.toArray(new i[0])) : (i) cVar.get(0) : i.b.f18453b;
        }
    }

    public b(String str, i[] iVarArr) {
        this.f18415b = str;
        this.f18416c = iVarArr;
    }

    @Override // vb.i
    public final Collection a(lb.f name, ua.c cVar) {
        kotlin.jvm.internal.h.f(name, "name");
        i[] iVarArr = this.f18416c;
        int length = iVarArr.length;
        if (length == 0) {
            return v.f10173a;
        }
        if (length == 1) {
            return iVarArr[0].a(name, cVar);
        }
        Collection collectionA = null;
        for (i iVar : iVarArr) {
            collectionA = jc.a.a(collectionA, iVar.a(name, cVar));
        }
        return collectionA == null ? x.f10175a : collectionA;
    }

    @Override // vb.i
    public final Set<lb.f> b() {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (i iVar : this.f18416c) {
            m9.p.T0(iVar.b(), linkedHashSet);
        }
        return linkedHashSet;
    }

    @Override // vb.i
    public final Collection c(lb.f name, ua.c cVar) {
        kotlin.jvm.internal.h.f(name, "name");
        i[] iVarArr = this.f18416c;
        int length = iVarArr.length;
        if (length == 0) {
            return v.f10173a;
        }
        if (length == 1) {
            return iVarArr[0].c(name, cVar);
        }
        Collection collectionA = null;
        for (i iVar : iVarArr) {
            collectionA = jc.a.a(collectionA, iVar.c(name, cVar));
        }
        return collectionA == null ? x.f10175a : collectionA;
    }

    @Override // vb.i
    public final Set<lb.f> d() {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (i iVar : this.f18416c) {
            m9.p.T0(iVar.d(), linkedHashSet);
        }
        return linkedHashSet;
    }

    @Override // vb.l
    public final ma.g e(lb.f name, ua.c cVar) {
        kotlin.jvm.internal.h.f(name, "name");
        ma.g gVar = null;
        for (i iVar : this.f18416c) {
            ma.g gVarE = iVar.e(name, cVar);
            if (gVarE != null) {
                if (!(gVarE instanceof ma.h) || !((ma.h) gVarE).G()) {
                    return gVarE;
                }
                if (gVar == null) {
                    gVar = gVarE;
                }
            }
        }
        return gVar;
    }

    @Override // vb.l
    public final Collection<ma.j> f(d kindFilter, x9.l<? super lb.f, Boolean> nameFilter) {
        kotlin.jvm.internal.h.f(kindFilter, "kindFilter");
        kotlin.jvm.internal.h.f(nameFilter, "nameFilter");
        i[] iVarArr = this.f18416c;
        int length = iVarArr.length;
        if (length == 0) {
            return v.f10173a;
        }
        if (length == 1) {
            return iVarArr[0].f(kindFilter, nameFilter);
        }
        Collection<ma.j> collectionA = null;
        for (i iVar : iVarArr) {
            collectionA = jc.a.a(collectionA, iVar.f(kindFilter, nameFilter));
        }
        return collectionA == null ? x.f10175a : collectionA;
    }

    @Override // vb.i
    public final Set<lb.f> g() {
        i[] iVarArr = this.f18416c;
        kotlin.jvm.internal.h.f(iVarArr, "<this>");
        return k.a(iVarArr.length == 0 ? v.f10173a : new m9.j(iVarArr));
    }

    public final String toString() {
        return this.f18415b;
    }
}
