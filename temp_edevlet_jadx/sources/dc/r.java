package dc;

import cc.a1;
import cc.b1;
import cc.c0;
import cc.c1;
import cc.e0;
import cc.f0;
import cc.m0;
import cc.q;
import cc.q0;
import cc.s1;
import cc.u0;
import cc.y0;
import com.google.android.gms.internal.clearcut.d0;
import dc.l;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;

/* loaded from: classes2.dex */
public final class r {

    /* renamed from: a, reason: collision with root package name */
    public static final r f4853a = new r();

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public static final c f4854a;

        /* renamed from: b, reason: collision with root package name */
        public static final C0073a f4855b;

        /* renamed from: c, reason: collision with root package name */
        public static final d f4856c;

        /* renamed from: d, reason: collision with root package name */
        public static final b f4857d;

        /* renamed from: e, reason: collision with root package name */
        public static final /* synthetic */ a[] f4858e;

        /* renamed from: dc.r$a$a, reason: collision with other inner class name */
        public static final class C0073a extends a {
            public C0073a() {
                super("ACCEPT_NULL", 1);
            }

            @Override // dc.r.a
            public final a n(s1 nextType) {
                kotlin.jvm.internal.h.f(nextType, "nextType");
                return a.o(nextType);
            }
        }

        public static final class b extends a {
            public b() {
                super("NOT_NULL", 3);
            }

            @Override // dc.r.a
            public final a n(s1 nextType) {
                kotlin.jvm.internal.h.f(nextType, "nextType");
                return this;
            }
        }

        public static final class c extends a {
            public c() {
                super("START", 0);
            }

            @Override // dc.r.a
            public final a n(s1 nextType) {
                kotlin.jvm.internal.h.f(nextType, "nextType");
                return a.o(nextType);
            }
        }

        public static final class d extends a {
            public d() {
                super("UNKNOWN", 2);
            }

            @Override // dc.r.a
            public final a n(s1 nextType) {
                kotlin.jvm.internal.h.f(nextType, "nextType");
                a aVarO = a.o(nextType);
                return aVarO == a.f4855b ? this : aVarO;
            }
        }

        static {
            c cVar = new c();
            f4854a = cVar;
            C0073a c0073a = new C0073a();
            f4855b = c0073a;
            d dVar = new d();
            f4856c = dVar;
            b bVar = new b();
            f4857d = bVar;
            f4858e = new a[]{cVar, c0073a, dVar, bVar};
        }

        public a() {
            throw null;
        }

        public a(String str, int r22) {
        }

        public static a o(s1 s1Var) {
            kotlin.jvm.internal.h.f(s1Var, "<this>");
            if (s1Var.N0()) {
                return f4855b;
            }
            boolean z10 = s1Var instanceof cc.q;
            b bVar = f4857d;
            if (!z10 || !(((cc.q) s1Var).f2346b instanceof u0)) {
                boolean z11 = s1Var instanceof u0;
                d dVar = f4856c;
                if (z11 || !cc.c.a(dc.a.a(false, true, p.f4850a, null, null, 24), c5.v.E(s1Var), b1.b.C0056b.f2271a)) {
                    return dVar;
                }
            }
            return bVar;
        }

        public static a valueOf(String str) {
            return (a) Enum.valueOf(a.class, str);
        }

        public static a[] values() {
            return (a[]) f4858e.clone();
        }

        public abstract a n(s1 s1Var);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x004d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.ArrayList a(java.util.AbstractCollection r7, x9.p r8) {
        /*
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>(r7)
            java.util.Iterator r7 = r0.iterator()
            java.lang.String r1 = "filteredTypes.iterator()"
            kotlin.jvm.internal.h.e(r7, r1)
        Le:
            boolean r1 = r7.hasNext()
            if (r1 == 0) goto L57
            java.lang.Object r1 = r7.next()
            cc.m0 r1 = (cc.m0) r1
            boolean r2 = r0.isEmpty()
            r3 = 0
            if (r2 == 0) goto L22
            goto L51
        L22:
            java.util.Iterator r2 = r0.iterator()
        L26:
            boolean r4 = r2.hasNext()
            if (r4 == 0) goto L51
            java.lang.Object r4 = r2.next()
            cc.m0 r4 = (cc.m0) r4
            r5 = 1
            if (r4 == r1) goto L4d
            java.lang.String r6 = "lower"
            kotlin.jvm.internal.h.e(r4, r6)
            java.lang.String r6 = "upper"
            kotlin.jvm.internal.h.e(r1, r6)
            java.lang.Object r4 = r8.mo7invoke(r4, r1)
            java.lang.Boolean r4 = (java.lang.Boolean) r4
            boolean r4 = r4.booleanValue()
            if (r4 == 0) goto L4d
            r4 = 1
            goto L4e
        L4d:
            r4 = 0
        L4e:
            if (r4 == 0) goto L26
            r3 = 1
        L51:
            if (r3 == 0) goto Le
            r7.remove()
            goto Le
        L57:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: dc.r.a(java.util.AbstractCollection, x9.p):java.util.ArrayList");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v7, types: [cc.a1, ic.a, ic.e, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9, types: [cc.a1] */
    /* JADX WARN: Type inference failed for: r15v10, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r15v14, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v10, types: [cc.e0, cc.m0, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v20, types: [cc.m0] */
    /* JADX WARN: Type inference failed for: r1v8, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v9 */
    public final m0 b(ArrayList arrayList) {
        m0 m0VarC;
        m0 m0VarO1;
        arrayList.size();
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            m0 m0Var = (m0) it.next();
            if (m0Var.M0() instanceof c0) {
                Collection<e0> collectionL = m0Var.M0().l();
                kotlin.jvm.internal.h.e(collectionL, "type.constructor.supertypes");
                Collection<e0> collection = collectionL;
                ArrayList arrayList3 = new ArrayList(m9.n.Q0(collection));
                for (e0 it2 : collection) {
                    kotlin.jvm.internal.h.e(it2, "it");
                    m0 m0VarM = c5.v.M(it2);
                    if (m0Var.N0()) {
                        m0VarM = m0VarM.Q0(true);
                    }
                    arrayList3.add(m0VarM);
                }
                arrayList2.addAll(arrayList3);
            } else {
                arrayList2.add(m0Var);
            }
        }
        a aVarN = a.f4854a;
        Iterator it3 = arrayList2.iterator();
        while (it3.hasNext()) {
            aVarN = aVarN.n((s1) it3.next());
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator it4 = arrayList2.iterator();
        while (it4.hasNext()) {
            m0 m0VarQ0 = (m0) it4.next();
            if (aVarN == a.f4857d) {
                if (m0VarQ0 instanceof h) {
                    h hVar = (h) m0VarQ0;
                    kotlin.jvm.internal.h.f(hVar, "<this>");
                    m0VarQ0 = new h(hVar.f4829b, hVar.f4830c, hVar.f4831d, hVar.f4832e, hVar.f, true);
                }
                kotlin.jvm.internal.h.f(m0VarQ0, "<this>");
                m0 m0VarA = q.a.a(m0VarQ0, false);
                m0VarQ0 = (m0VarA == null && (m0VarA = q0.b(m0VarQ0)) == null) ? m0VarQ0.Q0(false) : m0VarA;
            }
            linkedHashSet.add(m0VarQ0);
        }
        ArrayList arrayList4 = new ArrayList(m9.n.Q0(arrayList));
        Iterator it5 = arrayList.iterator();
        while (it5.hasNext()) {
            arrayList4.add(((m0) it5.next()).L0());
        }
        Iterator it6 = arrayList4.iterator();
        if (!it6.hasNext()) {
            throw new UnsupportedOperationException("Empty collection can't be reduced.");
        }
        ?? next = it6.next();
        while (true) {
            m0VarC = null;
            if (!it6.hasNext()) {
                break;
            }
            a1 other = (a1) it6.next();
            next = (a1) next;
            next.getClass();
            kotlin.jvm.internal.h.f(other, "other");
            if (!next.isEmpty() || !other.isEmpty()) {
                ArrayList arrayList5 = new ArrayList();
                Collection collectionValues = a1.f2258b.f9006a.values();
                kotlin.jvm.internal.h.e(collectionValues, "idPerType.values");
                Iterator it7 = collectionValues.iterator();
                while (it7.hasNext()) {
                    int r92 = ((Number) it7.next()).intValue();
                    y0 y0Var = (y0) next.f7362a.get(r92);
                    y0 y0Var2 = (y0) other.f7362a.get(r92);
                    d0.f(y0Var == null ? y0Var2 != null ? y0Var2.c(y0Var) : null : y0Var.c(y0Var2), arrayList5);
                }
                next = a1.a.c(arrayList5);
            }
        }
        a1 a1Var = (a1) next;
        if (linkedHashSet.size() != 1) {
            new s(linkedHashSet);
            ArrayList arrayListA = a(linkedHashSet, new t(this));
            arrayListA.isEmpty();
            if (!arrayListA.isEmpty()) {
                Iterator it8 = arrayListA.iterator();
                if (!it8.hasNext()) {
                    throw new UnsupportedOperationException("Empty collection can't be reduced.");
                }
                m0 next2 = it8.next();
                while (it8.hasNext()) {
                    m0 m0Var2 = (m0) it8.next();
                    next2 = next2;
                    if (next2 != 0 && m0Var2 != null) {
                        c1 c1VarM0 = next2.M0();
                        c1 c1VarM02 = m0Var2.M0();
                        boolean z10 = c1VarM0 instanceof qb.o;
                        if (z10 && (c1VarM02 instanceof qb.o)) {
                            qb.o oVar = (qb.o) c1VarM0;
                            Set<e0> set = oVar.f13477c;
                            Set<e0> other2 = ((qb.o) c1VarM02).f13477c;
                            kotlin.jvm.internal.h.f(set, "<this>");
                            kotlin.jvm.internal.h.f(other2, "other");
                            Set setX1 = m9.t.x1(set);
                            m9.p.T0(other2, setX1);
                            qb.o oVar2 = new qb.o(oVar.f13475a, oVar.f13476b, setX1);
                            a1.f2258b.getClass();
                            next2 = f0.d(a1.f2259c, oVar2);
                        } else if (z10) {
                            if (((qb.o) c1VarM0).f13477c.contains(m0Var2)) {
                                next2 = m0Var2;
                            }
                        } else if (!(c1VarM02 instanceof qb.o) || !((qb.o) c1VarM02).f13477c.contains(next2)) {
                        }
                    }
                    next2 = 0;
                }
                m0VarC = next2;
            }
            if (m0VarC == null) {
                l.f4844b.getClass();
                ArrayList arrayListA2 = a(arrayListA, new u(l.a.f4846b));
                arrayListA2.isEmpty();
                if (arrayListA2.size() < 2) {
                    m0VarO1 = m9.t.o1(arrayListA2);
                } else {
                    m0VarC = new c0(linkedHashSet).c();
                }
            }
            return m0VarC.S0(a1Var);
        }
        m0VarO1 = m9.t.o1(linkedHashSet);
        m0VarC = m0VarO1;
        return m0VarC.S0(a1Var);
    }
}
