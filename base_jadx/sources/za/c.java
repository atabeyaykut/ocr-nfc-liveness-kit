package za;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import p4.g7;

/* loaded from: classes2.dex */
public final class c implements vb.i {
    public static final /* synthetic */ da.m<Object>[] f = {kotlin.jvm.internal.w.c(new kotlin.jvm.internal.r(kotlin.jvm.internal.w.a(c.class), "kotlinScopes", "getKotlinScopes()[Lorg/jetbrains/kotlin/resolve/scopes/MemberScope;"))};

    /* renamed from: b, reason: collision with root package name */
    public final g7 f19891b;

    /* renamed from: c, reason: collision with root package name */
    public final m f19892c;

    /* renamed from: d, reason: collision with root package name */
    public final n f19893d;

    /* renamed from: e, reason: collision with root package name */
    public final bc.i f19894e;

    public static final class a extends kotlin.jvm.internal.j implements x9.a<vb.i[]> {
        public a() {
            super(0);
        }

        @Override // x9.a
        public final vb.i[] invoke() {
            c cVar = c.this;
            m mVar = cVar.f19892c;
            mVar.getClass();
            Collection collectionValues = ((Map) b8.f.O(mVar.f19953j, m.f19950n[0])).values();
            ArrayList arrayList = new ArrayList();
            Iterator it = collectionValues.iterator();
            while (it.hasNext()) {
                ac.j jVarA = ((ya.c) cVar.f19891b.f12358a).f19336d.a(cVar.f19892c, (eb.s) it.next());
                if (jVarA != null) {
                    arrayList.add(jVarA);
                }
            }
            return (vb.i[]) jc.a.b(arrayList).toArray(new vb.i[0]);
        }
    }

    public c(g7 g7Var, cb.t jPackage, m packageFragment) {
        kotlin.jvm.internal.h.f(jPackage, "jPackage");
        kotlin.jvm.internal.h.f(packageFragment, "packageFragment");
        this.f19891b = g7Var;
        this.f19892c = packageFragment;
        this.f19893d = new n(g7Var, jPackage, packageFragment);
        this.f19894e = g7Var.b().d(new a());
    }

    @Override // vb.i
    public final Collection a(lb.f name, ua.c cVar) {
        kotlin.jvm.internal.h.f(name, "name");
        i(name, cVar);
        vb.i[] iVarArrH = h();
        this.f19893d.getClass();
        Collection collectionA = m9.v.f10173a;
        for (vb.i iVar : iVarArrH) {
            collectionA = jc.a.a(collectionA, iVar.a(name, cVar));
        }
        return collectionA == null ? m9.x.f10175a : collectionA;
    }

    @Override // vb.i
    public final Set<lb.f> b() {
        vb.i[] iVarArrH = h();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (vb.i iVar : iVarArrH) {
            m9.p.T0(iVar.b(), linkedHashSet);
        }
        linkedHashSet.addAll(this.f19893d.b());
        return linkedHashSet;
    }

    @Override // vb.i
    public final Collection c(lb.f name, ua.c cVar) {
        kotlin.jvm.internal.h.f(name, "name");
        i(name, cVar);
        vb.i[] iVarArrH = h();
        Collection collectionC = this.f19893d.c(name, cVar);
        for (vb.i iVar : iVarArrH) {
            collectionC = jc.a.a(collectionC, iVar.c(name, cVar));
        }
        return collectionC == null ? m9.x.f10175a : collectionC;
    }

    @Override // vb.i
    public final Set<lb.f> d() {
        vb.i[] iVarArrH = h();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (vb.i iVar : iVarArrH) {
            m9.p.T0(iVar.d(), linkedHashSet);
        }
        linkedHashSet.addAll(this.f19893d.d());
        return linkedHashSet;
    }

    @Override // vb.l
    public final ma.g e(lb.f name, ua.c cVar) {
        kotlin.jvm.internal.h.f(name, "name");
        i(name, cVar);
        n nVar = this.f19893d;
        nVar.getClass();
        ma.g gVar = null;
        ma.e eVarV = nVar.v(name, null);
        if (eVarV != null) {
            return eVarV;
        }
        for (vb.i iVar : h()) {
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
    public final Collection<ma.j> f(vb.d kindFilter, x9.l<? super lb.f, Boolean> nameFilter) {
        kotlin.jvm.internal.h.f(kindFilter, "kindFilter");
        kotlin.jvm.internal.h.f(nameFilter, "nameFilter");
        vb.i[] iVarArrH = h();
        Collection<ma.j> collectionF = this.f19893d.f(kindFilter, nameFilter);
        for (vb.i iVar : iVarArrH) {
            collectionF = jc.a.a(collectionF, iVar.f(kindFilter, nameFilter));
        }
        return collectionF == null ? m9.x.f10175a : collectionF;
    }

    @Override // vb.i
    public final Set<lb.f> g() {
        vb.i[] iVarArrH = h();
        kotlin.jvm.internal.h.f(iVarArrH, "<this>");
        HashSet hashSetA = vb.k.a(iVarArrH.length == 0 ? m9.v.f10173a : new m9.j(iVarArrH));
        if (hashSetA == null) {
            return null;
        }
        hashSetA.addAll(this.f19893d.g());
        return hashSetA;
    }

    public final vb.i[] h() {
        return (vb.i[]) b8.f.O(this.f19894e, f[0]);
    }

    public final void i(lb.f name, ua.a aVar) {
        kotlin.jvm.internal.h.f(name, "name");
        ta.a.b(((ya.c) this.f19891b.f12358a).f19345n, (ua.c) aVar, this.f19892c, name);
    }

    public final String toString() {
        return "scope for " + this.f19892c;
    }
}
