package cc;

import cc.a1;
import cc.w0;
import cc.x0;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import vb.i;

/* loaded from: classes2.dex */
public final class v0 {

    /* renamed from: a, reason: collision with root package name */
    public final x0 f2370a = x0.a.f2376a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f2371b = false;

    public static a1 b(e0 e0Var, a1 a1Var) {
        boolean zY = c5.v.y(e0Var);
        a1 other = e0Var.L0();
        if (zY) {
            return other;
        }
        a1Var.getClass();
        kotlin.jvm.internal.h.f(other, "other");
        if (a1Var.isEmpty() && other.isEmpty()) {
            return a1Var;
        }
        ArrayList arrayList = new ArrayList();
        Collection<Integer> collectionValues = a1.f2258b.f9006a.values();
        kotlin.jvm.internal.h.e(collectionValues, "idPerType.values");
        Iterator<Integer> it = collectionValues.iterator();
        while (it.hasNext()) {
            int r22 = it.next().intValue();
            y0 y0Var = (y0) a1Var.f7362a.get(r22);
            y0 y0Var2 = (y0) other.f7362a.get(r22);
            com.google.android.gms.internal.clearcut.d0.f(y0Var == null ? y0Var2 != null ? y0Var2.a(y0Var) : null : y0Var.a(y0Var2), arrayList);
        }
        return a1.a.c(arrayList);
    }

    public final void a(na.h hVar, na.h hVar2) {
        HashSet hashSet = new HashSet();
        Iterator<na.c> it = hVar.iterator();
        while (it.hasNext()) {
            hashSet.add(it.next().d());
        }
        for (na.c cVar : hVar2) {
            if (hashSet.contains(cVar.d())) {
                this.f2370a.c(cVar);
            }
        }
    }

    public final m0 c(w0 w0Var, a1 a1Var, boolean z10, int r82, boolean z11) {
        t1 t1Var = t1.INVARIANT;
        ma.v0 v0Var = w0Var.f2373b;
        i1 i1VarD = d(new k1(v0Var.c0(), t1Var), w0Var, null, r82);
        e0 type = i1VarD.getType();
        kotlin.jvm.internal.h.e(type, "expandedProjection.type");
        m0 m0VarA = n1.a(type);
        if (c5.v.y(m0VarA)) {
            return m0VarA;
        }
        i1VarD.b();
        a(m0VarA.getAnnotations(), l.a(a1Var));
        if (!c5.v.y(m0VarA)) {
            m0VarA = n1.d(m0VarA, null, b(m0VarA, a1Var), 1);
        }
        m0 m0VarL = q1.l(m0VarA, z10);
        kotlin.jvm.internal.h.e(m0VarL, "expandedType.combineAttr…fNeeded(it, isNullable) }");
        if (!z11) {
            return m0VarL;
        }
        c1 c1VarI = v0Var.i();
        kotlin.jvm.internal.h.e(c1VarI, "descriptor.typeConstructor");
        return q0.c(m0VarL, f0.h(w0Var.f2374c, i.b.f18453b, a1Var, c1VarI, z10));
    }

    public final i1 d(i1 i1Var, w0 w0Var, ma.w0 w0Var2, int r18) {
        t1 t1VarI;
        e0 e0VarD;
        ma.v0 v0Var = w0Var.f2373b;
        if (r18 > 100) {
            throw new AssertionError("Too deep recursion while expanding type alias " + v0Var.getName());
        }
        if (!i1Var.c()) {
            e0 type = i1Var.getType();
            kotlin.jvm.internal.h.e(type, "underlyingProjection.type");
            c1 constructor = type.M0();
            kotlin.jvm.internal.h.f(constructor, "constructor");
            ma.g gVarN = constructor.n();
            i1 i1Var2 = gVarN instanceof ma.w0 ? w0Var.f2375d.get(gVarN) : null;
            t1 t1Var = t1.INVARIANT;
            x0 x0Var = this.f2370a;
            if (i1Var2 == null) {
                s1 s1VarP0 = i1Var.getType().P0();
                if (!w.a(s1VarP0)) {
                    m0 m0VarA = n1.a(s1VarP0);
                    if (!c5.v.y(m0VarA)) {
                        gc.b predicate = gc.b.f6613a;
                        kotlin.jvm.internal.h.f(predicate, "predicate");
                        if (q1.c(m0VarA, predicate)) {
                            c1 c1VarM0 = m0VarA.M0();
                            ma.g gVarN2 = c1VarM0.n();
                            c1VarM0.getParameters().size();
                            m0VarA.K0().size();
                            if (!(gVarN2 instanceof ma.w0)) {
                                int r12 = 0;
                                if (gVarN2 instanceof ma.v0) {
                                    ma.v0 v0Var2 = (ma.v0) gVarN2;
                                    if (w0Var.a(v0Var2)) {
                                        x0Var.d(v0Var2);
                                        ec.h hVar = ec.h.RECURSIVE_TYPE_ALIAS;
                                        String str = v0Var2.getName().f9676a;
                                        kotlin.jvm.internal.h.e(str, "typeDescriptor.name.toString()");
                                        return new k1(ec.i.c(hVar, str), t1Var);
                                    }
                                    List<i1> listK0 = m0VarA.K0();
                                    ArrayList arrayList = new ArrayList(m9.n.Q0(listK0));
                                    for (Object obj : listK0) {
                                        int r92 = r12 + 1;
                                        if (r12 < 0) {
                                            b8.f.k0();
                                            throw null;
                                        }
                                        arrayList.add(d((i1) obj, w0Var, c1VarM0.getParameters().get(r12), r18 + 1));
                                        r12 = r92;
                                    }
                                    m0 m0VarC = c(w0.a.a(w0Var, v0Var2, arrayList), m0VarA.L0(), m0VarA.N0(), r18 + 1, false);
                                    m0 m0VarE = e(m0VarA, w0Var, r18);
                                    if (!w.a(m0VarC)) {
                                        m0VarC = q0.c(m0VarC, m0VarE);
                                    }
                                    return new k1(m0VarC, i1Var.b());
                                }
                                m0 m0VarE2 = e(m0VarA, w0Var, r18);
                                p1 p1VarD = p1.d(m0VarE2);
                                for (Object obj2 : m0VarE2.K0()) {
                                    int r72 = r12 + 1;
                                    if (r12 < 0) {
                                        b8.f.k0();
                                        throw null;
                                    }
                                    i1 i1Var3 = (i1) obj2;
                                    if (!i1Var3.c()) {
                                        e0 type2 = i1Var3.getType();
                                        kotlin.jvm.internal.h.e(type2, "substitutedArgument.type");
                                        gc.a predicate2 = gc.a.f6612a;
                                        kotlin.jvm.internal.h.f(predicate2, "predicate");
                                        if (!q1.c(type2, predicate2)) {
                                            i1 i1Var4 = m0VarA.K0().get(r12);
                                            ma.w0 typeParameter = m0VarA.M0().getParameters().get(r12);
                                            if (this.f2371b) {
                                                e0 type3 = i1Var4.getType();
                                                kotlin.jvm.internal.h.e(type3, "unsubstitutedArgument.type");
                                                e0 type4 = i1Var3.getType();
                                                kotlin.jvm.internal.h.e(type4, "substitutedArgument.type");
                                                kotlin.jvm.internal.h.e(typeParameter, "typeParameter");
                                                x0Var.a(p1VarD, type3, type4, typeParameter);
                                            }
                                        }
                                    }
                                    r12 = r72;
                                }
                                return new k1(m0VarE2, i1Var.b());
                            }
                        }
                    }
                }
                return i1Var;
            }
            if (!i1Var2.c()) {
                s1 s1VarP02 = i1Var2.getType().P0();
                t1 t1VarB = i1Var2.b();
                kotlin.jvm.internal.h.e(t1VarB, "argument.projectionKind");
                t1 t1VarB2 = i1Var.b();
                kotlin.jvm.internal.h.e(t1VarB2, "underlyingProjection.projectionKind");
                if (t1VarB2 != t1VarB && t1VarB2 != t1Var) {
                    if (t1VarB == t1Var) {
                        t1VarB = t1VarB2;
                    } else {
                        x0Var.b(v0Var, s1VarP02);
                    }
                }
                if (w0Var2 == null || (t1VarI = w0Var2.I()) == null) {
                    t1VarI = t1Var;
                }
                if (t1VarI == t1VarB || t1VarI == t1Var) {
                    t1Var = t1VarB;
                } else if (t1VarB != t1Var) {
                    x0Var.b(v0Var, s1VarP02);
                    t1Var = t1VarB;
                }
                a(type.getAnnotations(), s1VarP02.getAnnotations());
                if (s1VarP02 instanceof v) {
                    v vVar = (v) s1VarP02;
                    a1 newAttributes = b(vVar, type.L0());
                    kotlin.jvm.internal.h.f(newAttributes, "newAttributes");
                    e0VarD = new v(c5.y.o(vVar.f2378c), newAttributes);
                } else {
                    m0 m0VarL = q1.l(n1.a(s1VarP02), type.N0());
                    kotlin.jvm.internal.h.e(m0VarL, "makeNullableIfNeeded(thi…romType.isMarkedNullable)");
                    a1 a1VarL0 = type.L0();
                    boolean zY = c5.v.y(m0VarL);
                    e0VarD = m0VarL;
                    if (!zY) {
                        e0VarD = n1.d(m0VarL, null, b(m0VarL, a1VarL0), 1);
                    }
                }
                return new k1(e0VarD, t1Var);
            }
        }
        kotlin.jvm.internal.h.c(w0Var2);
        return q1.m(w0Var2);
    }

    public final m0 e(m0 m0Var, w0 w0Var, int r11) {
        c1 c1VarM0 = m0Var.M0();
        List<i1> listK0 = m0Var.K0();
        ArrayList arrayList = new ArrayList(m9.n.Q0(listK0));
        int r32 = 0;
        for (Object obj : listK0) {
            int r6 = r32 + 1;
            if (r32 < 0) {
                b8.f.k0();
                throw null;
            }
            i1 i1Var = (i1) obj;
            i1 i1VarD = d(i1Var, w0Var, c1VarM0.getParameters().get(r32), r11 + 1);
            if (!i1VarD.c()) {
                i1VarD = new k1(q1.k(i1VarD.getType(), i1Var.getType().N0()), i1VarD.b());
            }
            arrayList.add(i1VarD);
            r32 = r6;
        }
        return n1.d(m0Var, arrayList, null, 2);
    }
}
