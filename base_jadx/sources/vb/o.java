package vb;

import cc.e0;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import m9.t;
import ob.u;
import vb.b;

/* loaded from: classes2.dex */
public final class o extends vb.a {

    /* renamed from: b, reason: collision with root package name */
    public final i f18466b;

    public static final class a {
        public static i a(String message, Collection types) {
            kotlin.jvm.internal.h.f(message, "message");
            kotlin.jvm.internal.h.f(types, "types");
            Collection collection = types;
            ArrayList arrayList = new ArrayList(m9.n.Q0(collection));
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                arrayList.add(((e0) it.next()).o());
            }
            kc.c cVarB = jc.a.b(arrayList);
            i iVarB = b.a.b(message, cVarB);
            return cVarB.f8832a <= 1 ? iVarB : new o(iVarB);
        }
    }

    public static final class b extends kotlin.jvm.internal.j implements x9.l<ma.a, ma.a> {

        /* renamed from: a, reason: collision with root package name */
        public static final b f18467a = new b();

        public b() {
            super(1);
        }

        @Override // x9.l
        public final ma.a invoke(ma.a aVar) {
            ma.a selectMostSpecificInEachOverridableGroup = aVar;
            kotlin.jvm.internal.h.f(selectMostSpecificInEachOverridableGroup, "$this$selectMostSpecificInEachOverridableGroup");
            return selectMostSpecificInEachOverridableGroup;
        }
    }

    public o(i iVar) {
        this.f18466b = iVar;
    }

    @Override // vb.a, vb.i
    public final Collection a(lb.f name, ua.c cVar) {
        kotlin.jvm.internal.h.f(name, "name");
        return u.a(super.a(name, cVar), q.f18469a);
    }

    @Override // vb.a, vb.i
    public final Collection c(lb.f name, ua.c cVar) {
        kotlin.jvm.internal.h.f(name, "name");
        return u.a(super.c(name, cVar), p.f18468a);
    }

    @Override // vb.a, vb.l
    public final Collection<ma.j> f(d kindFilter, x9.l<? super lb.f, Boolean> nameFilter) {
        kotlin.jvm.internal.h.f(kindFilter, "kindFilter");
        kotlin.jvm.internal.h.f(nameFilter, "nameFilter");
        Collection<ma.j> collectionF = super.f(kindFilter, nameFilter);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : collectionF) {
            if (((ma.j) obj) instanceof ma.a) {
                arrayList.add(obj);
            } else {
                arrayList2.add(obj);
            }
        }
        return t.m1(arrayList2, u.a(arrayList, b.f18467a));
    }

    @Override // vb.a
    public final i i() {
        return this.f18466b;
    }
}
