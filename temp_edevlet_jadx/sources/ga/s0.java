package ga;

import dc.l;
import eb.x;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import ma.u0;
import oa.a;
import oa.c;
import ua.b;
import va.m;
import wa.g;
import wa.k;
import ya.d;

/* loaded from: classes2.dex */
public final class s0 {

    /* renamed from: a, reason: collision with root package name */
    public static final ConcurrentHashMap f6115a = new ConcurrentHashMap();

    public static final ra.h a(Class<?> cls) {
        oa.a aVarL;
        oa.c cVarL;
        kotlin.jvm.internal.h.f(cls, "<this>");
        ClassLoader classLoaderD = sa.d.d(cls);
        a1 a1Var = new a1(classLoaderD);
        ConcurrentHashMap concurrentHashMap = f6115a;
        WeakReference weakReference = (WeakReference) concurrentHashMap.get(a1Var);
        if (weakReference != null) {
            ra.h hVar = (ra.h) weakReference.get();
            if (hVar != null) {
                return hVar;
            }
            concurrentHashMap.remove(a1Var, weakReference);
        }
        ra.f fVar = new ra.f(classLoaderD);
        ClassLoader classLoader = l9.m.class.getClassLoader();
        kotlin.jvm.internal.h.e(classLoader, "Unit::class.java.classLoader");
        ra.f fVar2 = new ra.f(classLoader);
        ra.d dVar = new ra.d(classLoaderD);
        String moduleName = "runtime module for " + classLoaderD;
        c5.v vVar = c5.v.f2052e;
        ra.i iVar = ra.i.f14370a;
        kotlin.jvm.internal.h.f(moduleName, "moduleName");
        bc.c cVar = new bc.c("DeserializationComponentsForJava.ModuleData");
        la.g gVar = new la.g(cVar);
        pa.g0 g0Var = new pa.g0(lb.f.v("<" + moduleName + '>'), cVar, gVar, 56);
        cVar.j(new ja.j(gVar, g0Var));
        gVar.f = new la.j(g0Var);
        eb.k kVar = new eb.k();
        ya.i iVar2 = new ya.i();
        a1 a1Var2 = a1Var;
        ma.d0 d0Var = new ma.d0(cVar, g0Var);
        x.a aVar = x.a.f5238a;
        ConcurrentHashMap concurrentHashMap2 = concurrentHashMap;
        k.a aVar2 = wa.k.f18853a;
        g.a aVar3 = g.a.f18845a;
        m9.v vVar2 = m9.v.f10173a;
        ub.b bVar = new ub.b(cVar);
        u0.a aVar4 = u0.a.f10247a;
        b.a aVar5 = b.a.f17907a;
        ja.m mVar = new ja.m(g0Var, d0Var);
        va.s sVar = va.s.f18370d;
        va.e eVar = new va.e(sVar);
        d.a aVar6 = d.a.f19355a;
        db.t tVar = new db.t(new db.g());
        m.a aVar7 = m.a.f18354a;
        dc.l.f4844b.getClass();
        dc.m mVar2 = l.a.f4846b;
        ya.f fVar3 = new ya.f(new ya.c(cVar, dVar, fVar, kVar, aVar2, vVar, aVar3, bVar, iVar, iVar2, aVar, aVar4, aVar5, g0Var, mVar, eVar, tVar, aVar7, aVar6, mVar2, sVar, new b0.a()));
        eb.l lVar = new eb.l(fVar, kVar);
        eb.h hVar2 = new eb.h(g0Var, d0Var, cVar, fVar);
        List listS = b8.f.S(cc.p.f2341a);
        ja.k kVar2 = g0Var.f12895d;
        la.g gVar2 = kVar2 instanceof la.g ? (la.g) kVar2 : null;
        eb.m mVar3 = eb.m.f5219a;
        if (gVar2 == null || (aVarL = gVar2.L()) == null) {
            aVarL = a.C0210a.f11264a;
        }
        oa.a aVar8 = aVarL;
        if (gVar2 == null || (cVarL = gVar2.L()) == null) {
            cVarL = c.b.f11266a;
        }
        yb.l lVar2 = new yb.l(cVar, g0Var, lVar, hVar2, fVar3, vVar, mVar3, vVar2, d0Var, aVar8, cVarL, kb.h.f8820a, mVar2, new ub.b(cVar), listS, 262144);
        kVar.f5216a = lVar2;
        iVar2.f19371a = new com.google.android.gms.internal.clearcut.b0(fVar3);
        la.t tVar2 = new la.t(cVar, fVar2, g0Var, d0Var, gVar.L(), gVar.L(), mVar2, new ub.b(cVar));
        g0Var.f12897g = new pa.d0(m9.k.A0(new pa.g0[]{g0Var}));
        g0Var.f12898h = new pa.o(b8.f.T(fVar3, tVar2), "CompositeProvider@RuntimeModuleData for " + g0Var);
        ra.h hVar3 = new ra.h(lVar2, new ra.a(kVar, fVar));
        while (true) {
            a1 a1Var3 = a1Var2;
            ConcurrentHashMap concurrentHashMap3 = concurrentHashMap2;
            WeakReference weakReference2 = (WeakReference) concurrentHashMap3.putIfAbsent(a1Var3, new WeakReference(hVar3));
            if (weakReference2 == null) {
                return hVar3;
            }
            ra.h hVar4 = (ra.h) weakReference2.get();
            if (hVar4 != null) {
                return hVar4;
            }
            concurrentHashMap3.remove(a1Var3, weakReference2);
            a1Var2 = a1Var3;
            concurrentHashMap2 = concurrentHashMap3;
        }
    }
}
