package ma;

import cc.i1;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p4.m9;

/* loaded from: classes2.dex */
public final class x0 {

    public static final class a extends kotlin.jvm.internal.j implements x9.l<j, Boolean> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f10251a = new a();

        public a() {
            super(1);
        }

        @Override // x9.l
        public final Boolean invoke(j jVar) {
            j it = jVar;
            kotlin.jvm.internal.h.f(it, "it");
            return Boolean.valueOf(it instanceof ma.a);
        }
    }

    public static final class b extends kotlin.jvm.internal.j implements x9.l<j, Boolean> {

        /* renamed from: a, reason: collision with root package name */
        public static final b f10252a = new b();

        public b() {
            super(1);
        }

        @Override // x9.l
        public final Boolean invoke(j jVar) {
            j it = jVar;
            kotlin.jvm.internal.h.f(it, "it");
            return Boolean.valueOf(!(it instanceof i));
        }
    }

    public static final class c extends kotlin.jvm.internal.j implements x9.l<j, lc.h<? extends w0>> {

        /* renamed from: a, reason: collision with root package name */
        public static final c f10253a = new c();

        public c() {
            super(1);
        }

        @Override // x9.l
        public final lc.h<? extends w0> invoke(j jVar) {
            j it = jVar;
            kotlin.jvm.internal.h.f(it, "it");
            List<w0> typeParameters = ((ma.a) it).getTypeParameters();
            kotlin.jvm.internal.h.e(typeParameters, "it as CallableDescriptor).typeParameters");
            return m9.t.U0(typeParameters);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final m9 a(cc.m0 m0Var, h hVar, int r72) {
        Object[] objArr = 0;
        if (hVar == null || ec.i.f(hVar)) {
            return null;
        }
        int size = hVar.s().size() + r72;
        if (hVar.H()) {
            List<i1> listSubList = m0Var.K0().subList(r72, size);
            j jVarB = hVar.b();
            return new m9(hVar, listSubList, a(m0Var, jVarB instanceof h ? (h) jVarB : null, size));
        }
        if (size != m0Var.K0().size()) {
            ob.i.o(hVar);
        }
        return new m9(hVar, m0Var.K0().subList(r72, m0Var.K0().size()), objArr == true ? 1 : 0);
    }

    public static final List<w0> b(h hVar) {
        List<w0> parameters;
        Object next;
        cc.c1 c1VarI;
        kotlin.jvm.internal.h.f(hVar, "<this>");
        List<w0> declaredTypeParameters = hVar.s();
        kotlin.jvm.internal.h.e(declaredTypeParameters, "declaredTypeParameters");
        if (!hVar.H() && !(hVar.b() instanceof ma.a)) {
            return declaredTypeParameters;
        }
        int r32 = sb.b.f15372a;
        sb.d dVar = sb.d.f15376a;
        lc.h hVarU0 = lc.w.U0(lc.q.R0(dVar, hVar), 1);
        a predicate = a.f10251a;
        kotlin.jvm.internal.h.f(hVarU0, "<this>");
        kotlin.jvm.internal.h.f(predicate, "predicate");
        List listZ = b8.f.Z(lc.w.c1(lc.w.Y0(lc.w.V0(new lc.x(hVarU0, predicate), b.f10252a), c.f10253a)));
        Iterator it = lc.w.U0(lc.q.R0(dVar, hVar), 1).iterator();
        while (true) {
            parameters = null;
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (next instanceof e) {
                break;
            }
        }
        e eVar = (e) next;
        if (eVar != null && (c1VarI = eVar.i()) != null) {
            parameters = c1VarI.getParameters();
        }
        if (parameters == null) {
            parameters = m9.v.f10173a;
        }
        if (listZ.isEmpty() && parameters.isEmpty()) {
            List<w0> declaredTypeParameters2 = hVar.s();
            kotlin.jvm.internal.h.e(declaredTypeParameters2, "declaredTypeParameters");
            return declaredTypeParameters2;
        }
        ArrayList arrayListM1 = m9.t.m1(parameters, listZ);
        ArrayList arrayList = new ArrayList(m9.n.Q0(arrayListM1));
        Iterator it2 = arrayListM1.iterator();
        while (it2.hasNext()) {
            w0 it3 = (w0) it2.next();
            kotlin.jvm.internal.h.e(it3, "it");
            arrayList.add(new ma.c(it3, hVar, declaredTypeParameters.size()));
        }
        return m9.t.m1(arrayList, declaredTypeParameters);
    }
}
