package za;

import com.google.android.gms.internal.clearcut.d0;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import ma.b;
import ma.l0;
import p4.g7;
import pa.p0;
import vb.i;

/* loaded from: classes2.dex */
public final class x extends y {

    /* renamed from: p, reason: collision with root package name */
    public static final /* synthetic */ int f20014p = 0;

    /* renamed from: n, reason: collision with root package name */
    public final cb.g f20015n;

    /* renamed from: o, reason: collision with root package name */
    public final xa.c f20016o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x(g7 g7Var, cb.g jClass, xa.c ownerDescriptor) {
        super(g7Var);
        kotlin.jvm.internal.h.f(jClass, "jClass");
        kotlin.jvm.internal.h.f(ownerDescriptor, "ownerDescriptor");
        this.f20015n = jClass;
        this.f20016o = ownerDescriptor;
    }

    public static l0 v(l0 l0Var) {
        b.a aVarK0 = l0Var.k0();
        aVarK0.getClass();
        if (aVarK0 != b.a.FAKE_OVERRIDE) {
            return l0Var;
        }
        Collection<? extends l0> collectionE = l0Var.e();
        kotlin.jvm.internal.h.e(collectionE, "this.overriddenDescriptors");
        Collection<? extends l0> collection = collectionE;
        ArrayList arrayList = new ArrayList(m9.n.Q0(collection));
        for (l0 it : collection) {
            kotlin.jvm.internal.h.e(it, "it");
            arrayList.add(v(it));
        }
        return (l0) m9.t.p1(m9.t.v1(m9.t.x1(arrayList)));
    }

    @Override // vb.j, vb.l
    public final ma.g e(lb.f name, ua.c cVar) {
        kotlin.jvm.internal.h.f(name, "name");
        return null;
    }

    @Override // za.o
    public final Set h(vb.d kindFilter, i.a.C0290a c0290a) {
        kotlin.jvm.internal.h.f(kindFilter, "kindFilter");
        return m9.x.f10175a;
    }

    @Override // za.o
    public final Set i(vb.d kindFilter, i.a.C0290a c0290a) {
        kotlin.jvm.internal.h.f(kindFilter, "kindFilter");
        Set setX1 = m9.t.x1(this.f19977e.invoke().a());
        xa.c cVar = this.f20016o;
        x xVarV = d0.v(cVar);
        Set<lb.f> setB = xVarV != null ? xVarV.b() : null;
        if (setB == null) {
            setB = m9.x.f10175a;
        }
        setX1.addAll(setB);
        if (this.f20015n.y()) {
            setX1.addAll(b8.f.T(ja.o.f8357c, ja.o.f8355a));
        }
        g7 g7Var = this.f19974b;
        setX1.addAll(((ya.c) g7Var.f12358a).f19354x.b(g7Var, cVar));
        return setX1;
    }

    @Override // za.o
    public final void j(ArrayList arrayList, lb.f name) {
        kotlin.jvm.internal.h.f(name, "name");
        g7 g7Var = this.f19974b;
        ((ya.c) g7Var.f12358a).f19354x.e(g7Var, this.f20016o, name, arrayList);
    }

    @Override // za.o
    public final b k() {
        return new a(this.f20015n, s.f20007a);
    }

    @Override // za.o
    public final void m(LinkedHashSet linkedHashSet, lb.f name) {
        p0 p0VarG;
        kotlin.jvm.internal.h.f(name, "name");
        xa.c cVar = this.f20016o;
        x xVarV = d0.v(cVar);
        Collection collectionY1 = xVarV == null ? m9.x.f10175a : m9.t.y1(xVarV.c(name, ua.c.WHEN_GET_SUPER_MEMBERS));
        xa.c cVar2 = this.f20016o;
        ya.c cVar3 = (ya.c) this.f19974b.f12358a;
        linkedHashSet.addAll(c5.y.D(name, collectionY1, linkedHashSet, cVar2, cVar3.f, cVar3.f19352u.a()));
        if (this.f20015n.y()) {
            if (kotlin.jvm.internal.h.a(name, ja.o.f8357c)) {
                p0VarG = ob.h.f(cVar);
            } else if (!kotlin.jvm.internal.h.a(name, ja.o.f8355a)) {
                return;
            } else {
                p0VarG = ob.h.g(cVar);
            }
            linkedHashSet.add(p0VarG);
        }
    }

    @Override // za.y, za.o
    public final void n(ArrayList arrayList, lb.f name) {
        kotlin.jvm.internal.h.f(name, "name");
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        t tVar = new t(name);
        xa.c cVar = this.f20016o;
        kc.a.b(b8.f.S(cVar), a0.b.f24z, new w(cVar, linkedHashSet, tVar));
        boolean z10 = !arrayList.isEmpty();
        g7 g7Var = this.f19974b;
        if (z10) {
            xa.c cVar2 = this.f20016o;
            ya.c cVar3 = (ya.c) g7Var.f12358a;
            arrayList.addAll(c5.y.D(name, linkedHashSet, arrayList, cVar2, cVar3.f, cVar3.f19352u.a()));
        } else {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Object obj : linkedHashSet) {
                l0 l0VarV = v((l0) obj);
                Object arrayList2 = linkedHashMap.get(l0VarV);
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList();
                    linkedHashMap.put(l0VarV, arrayList2);
                }
                ((List) arrayList2).add(obj);
            }
            ArrayList arrayList3 = new ArrayList();
            Iterator it = linkedHashMap.entrySet().iterator();
            while (it.hasNext()) {
                Collection collection = (Collection) ((Map.Entry) it.next()).getValue();
                xa.c cVar4 = this.f20016o;
                ya.c cVar5 = (ya.c) g7Var.f12358a;
                m9.p.T0(c5.y.D(name, collection, arrayList, cVar4, cVar5.f, cVar5.f19352u.a()), arrayList3);
            }
            arrayList.addAll(arrayList3);
        }
        if (this.f20015n.y() && kotlin.jvm.internal.h.a(name, ja.o.f8356b)) {
            d0.f(ob.h.e(cVar), arrayList);
        }
    }

    @Override // za.o
    public final Set o(vb.d kindFilter) {
        kotlin.jvm.internal.h.f(kindFilter, "kindFilter");
        Set setX1 = m9.t.x1(this.f19977e.invoke().f());
        u uVar = u.f20009a;
        xa.c cVar = this.f20016o;
        kc.a.b(b8.f.S(cVar), a0.b.f24z, new w(cVar, setX1, uVar));
        if (this.f20015n.y()) {
            setX1.add(ja.o.f8356b);
        }
        return setX1;
    }

    @Override // za.o
    public final ma.j q() {
        return this.f20016o;
    }
}
