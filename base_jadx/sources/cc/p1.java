package cc;

import ja.o;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public final class p1 {

    /* renamed from: b, reason: collision with root package name */
    public static final p1 f2344b = e(l1.f2330a);

    /* renamed from: a, reason: collision with root package name */
    public final l1 f2345a;

    public static final class a extends Exception {
        public a() {
            super("Out-projection in in-position");
        }
    }

    public p1(l1 l1Var) {
        if (l1Var != null) {
            this.f2345a = l1Var;
        } else {
            a(7);
            throw null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0021 A[FALL_THROUGH] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x003b A[FALL_THROUGH] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00b8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void a(int r13) {
        /*
            Method dump skipped, instructions count: 660
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: cc.p1.a(int):void");
    }

    public static t1 b(t1 t1Var, t1 t1Var2) {
        if (t1Var == null) {
            a(38);
            throw null;
        }
        if (t1Var2 == null) {
            a(39);
            throw null;
        }
        t1 t1Var3 = t1.INVARIANT;
        if (t1Var == t1Var3) {
            return t1Var2;
        }
        if (t1Var2 == t1Var3) {
            return t1Var;
        }
        if (t1Var == t1Var2) {
            return t1Var2;
        }
        throw new AssertionError("Variance conflict: type parameter variance '" + t1Var + "' and projection kind '" + t1Var2 + "' cannot be combined");
    }

    public static int c(t1 t1Var, t1 t1Var2) {
        t1 t1Var3 = t1.IN_VARIANCE;
        t1 t1Var4 = t1.OUT_VARIANCE;
        if (t1Var == t1Var3 && t1Var2 == t1Var4) {
            return 3;
        }
        return (t1Var == t1Var4 && t1Var2 == t1Var3) ? 2 : 1;
    }

    public static p1 d(e0 e0Var) {
        if (e0Var == null) {
            a(6);
            throw null;
        }
        return e(e1.f2291b.b(e0Var.M0(), e0Var.K0()));
    }

    public static p1 e(l1 l1Var) {
        if (l1Var != null) {
            return new p1(l1Var);
        }
        a(0);
        throw null;
    }

    public static p1 f(l1 l1Var, l1 l1Var2) {
        if (l1Var == null) {
            a(3);
            throw null;
        }
        if (l1Var2 == null) {
            a(4);
            throw null;
        }
        int r02 = u.f2365d;
        if (l1Var.e()) {
            l1Var = l1Var2;
        } else if (!l1Var2.e()) {
            l1Var = new u(l1Var, l1Var2);
        }
        return e(l1Var);
    }

    public static String j(Object obj) {
        try {
            return obj.toString();
        } catch (Throwable th2) {
            if (x5.a.n(th2)) {
                throw th2;
            }
            return "[Exception while computing toString(): " + th2 + "]";
        }
    }

    public final l1 g() {
        l1 l1Var = this.f2345a;
        if (l1Var != null) {
            return l1Var;
        }
        a(8);
        throw null;
    }

    public final boolean h() {
        return this.f2345a.e();
    }

    public final e0 i(e0 e0Var, t1 t1Var) {
        if (e0Var == null) {
            a(9);
            throw null;
        }
        if (h()) {
            return e0Var;
        }
        try {
            e0 type = l(new k1(e0Var, t1Var), null, 0).getType();
            if (type != null) {
                return type;
            }
            a(12);
            throw null;
        } catch (a e10) {
            return ec.i.c(ec.h.UNABLE_TO_SUBSTITUTE_TYPE, e10.getMessage());
        }
    }

    public final e0 k(e0 e0Var, t1 t1Var) {
        k1 k1Var;
        if (e0Var == null) {
            a(14);
            throw null;
        }
        if (t1Var == null) {
            a(15);
            throw null;
        }
        i1 k1Var2 = new k1(g().f(e0Var, t1Var), t1Var);
        if (!h()) {
            try {
                k1Var2 = l(k1Var2, null, 0);
            } catch (a unused) {
                k1Var2 = null;
            }
        }
        l1 l1Var = this.f2345a;
        if (l1Var.a() || l1Var.b()) {
            boolean zB = l1Var.b();
            if (k1Var2 == null) {
                k1Var2 = null;
            } else if (!k1Var2.c()) {
                e0 type = k1Var2.getType();
                kotlin.jvm.internal.h.e(type, "typeProjection.type");
                if (q1.c(type, hc.b.f7078a)) {
                    t1 t1VarB = k1Var2.b();
                    kotlin.jvm.internal.h.e(t1VarB, "typeProjection.projectionKind");
                    if (t1VarB == t1.OUT_VARIANCE) {
                        k1Var = new k1(hc.d.a(type).f7077b, t1VarB);
                    } else if (zB) {
                        k1Var = new k1(hc.d.a(type).f7076a, t1VarB);
                    } else {
                        p1 p1VarE = e(new hc.c());
                        if (!p1VarE.h()) {
                            try {
                                k1Var2 = p1VarE.l(k1Var2, null, 0);
                            } catch (a unused2) {
                            }
                        }
                    }
                    k1Var2 = k1Var;
                }
            }
        }
        if (k1Var2 == null) {
            return null;
        }
        return k1Var2.getType();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final i1 l(i1 i1Var, ma.w0 w0Var, int r19) throws a {
        p1 p1Var;
        p1 p1Var2 = this;
        e0 e0VarK = null;
        if (i1Var == null) {
            a(18);
            throw null;
        }
        l1 l1Var = p1Var2.f2345a;
        if (r19 > 100) {
            throw new IllegalStateException("Recursion too deep. Most likely infinite loop while substituting " + j(i1Var) + "; substitution: " + j(l1Var));
        }
        if (i1Var.c()) {
            return i1Var;
        }
        e0 type = i1Var.getType();
        if (type instanceof r1) {
            r1 r1Var = (r1) type;
            s1 s1VarE0 = r1Var.E0();
            e0 e0VarC = r1Var.C();
            i1 i1VarL = p1Var2.l(new k1(s1VarE0, i1Var.b()), w0Var, r19 + 1);
            return i1VarL.c() ? i1VarL : new k1(c5.v.O(i1VarL.getType().P0(), p1Var2.k(e0VarC, i1Var.b())), i1VarL.b());
        }
        if (!w.a(type) && !(type.P0() instanceof l0)) {
            i1 i1VarD = l1Var.d(type);
            if (i1VarD == null) {
                i1VarD = null;
            } else if (type.getAnnotations().P(o.a.f8394y)) {
                c1 c1VarM0 = i1VarD.getType().M0();
                if (c1VarM0 instanceof dc.j) {
                    i1 i1Var2 = ((dc.j) c1VarM0).f4835a;
                    t1 t1VarB = i1Var2.b();
                    if (c(i1Var.b(), t1VarB) == 3) {
                        i1VarD = new k1(i1Var2.getType());
                    } else if (w0Var != null && c(w0Var.I(), t1VarB) == 3) {
                        i1VarD = new k1(i1Var2.getType());
                    }
                }
            }
            t1 t1VarB2 = i1Var.b();
            int r92 = 0;
            if (i1VarD == null && c5.v.z(type)) {
                na.a aVarP0 = type.P0();
                o oVar = aVarP0 instanceof o ? (o) aVarP0 : null;
                if (!(oVar != null ? oVar.z0() : false)) {
                    y yVarM = c5.v.m(type);
                    m0 m0Var = yVarM.f2377b;
                    int r22 = r19 + 1;
                    i1 i1VarL2 = p1Var2.l(new k1(m0Var, t1VarB2), w0Var, r22);
                    m0 m0Var2 = yVarM.f2378c;
                    i1 i1VarL3 = p1Var2.l(new k1(m0Var2, t1VarB2), w0Var, r22);
                    return (i1VarL2.getType() == m0Var && i1VarL3.getType() == m0Var2) ? i1Var : new k1(f0.c(n1.a(i1VarL2.getType()), n1.a(i1VarL3.getType())), i1VarL2.b());
                }
            }
            if (!ja.k.E(type) && !c5.v.y(type)) {
                if (i1VarD != null) {
                    int r23 = c(t1VarB2, i1VarD.b());
                    if (!(type.M0() instanceof pb.b)) {
                        int r10 = g.d.c(r23);
                        if (r10 == 1) {
                            return new k1(type.M0().m().o(), t1.OUT_VARIANCE);
                        }
                        if (r10 == 2) {
                            throw new a();
                        }
                    }
                    na.a aVarP02 = type.P0();
                    o oVar2 = aVarP02 instanceof o ? (o) aVarP02 : null;
                    if (oVar2 == null || !oVar2.z0()) {
                        oVar2 = null;
                    }
                    if (i1VarD.c()) {
                        return i1VarD;
                    }
                    e0 e0VarE0 = oVar2 != null ? oVar2.e0(i1VarD.getType()) : q1.k(i1VarD.getType(), type.N0());
                    if (!type.getAnnotations().isEmpty()) {
                        na.h hVarC = l1Var.c(type.getAnnotations());
                        if (hVarC == null) {
                            a(33);
                            throw null;
                        }
                        if (hVarC.P(o.a.f8394y)) {
                            hVarC = new na.l(hVarC, new o1());
                        }
                        e0VarE0 = c5.y.z(e0VarE0, new na.k(e0VarE0.getAnnotations(), hVarC));
                    }
                    if (r23 == 1) {
                        t1VarB2 = b(t1VarB2, i1VarD.b());
                    }
                    return new k1(e0VarE0, t1VarB2);
                }
                e0 type2 = i1Var.getType();
                t1 t1VarB3 = i1Var.b();
                if (type2.M0().n() instanceof ma.w0) {
                    return i1Var;
                }
                s1 s1VarP0 = type2.P0();
                cc.a aVar = s1VarP0 instanceof cc.a ? (cc.a) s1VarP0 : null;
                m0 m0Var3 = aVar != null ? aVar.f2255c : null;
                t1 t1Var = t1.INVARIANT;
                if (m0Var3 != null) {
                    if ((l1Var instanceof b0) && l1Var.b()) {
                        b0 b0Var = (b0) l1Var;
                        p1Var = new p1(new b0(b0Var.f2260b, b0Var.f2261c, false));
                    } else {
                        p1Var = p1Var2;
                    }
                    e0VarK = p1Var.k(m0Var3, t1Var);
                }
                List<ma.w0> parameters = type2.M0().getParameters();
                List<i1> newArguments = type2.K0();
                ArrayList arrayList = new ArrayList(parameters.size());
                boolean z10 = false;
                while (r92 < parameters.size()) {
                    ma.w0 w0Var2 = parameters.get(r92);
                    i1 i1Var3 = newArguments.get(r92);
                    i1 i1VarL4 = p1Var2.l(i1Var3, w0Var2, r19 + 1);
                    int r02 = g.d.c(c(w0Var2.I(), i1VarL4.b()));
                    if (r02 != 0) {
                        if (r02 == 1 || r02 == 2) {
                            i1VarL4 = q1.m(w0Var2);
                        }
                    } else if (w0Var2.I() != t1Var && !i1VarL4.c()) {
                        i1VarL4 = new k1(i1VarL4.getType(), t1Var);
                    }
                    if (i1VarL4 != i1Var3) {
                        z10 = true;
                    }
                    arrayList.add(i1VarL4);
                    r92++;
                    p1Var2 = this;
                }
                if (z10) {
                    newArguments = arrayList;
                }
                na.h newAnnotations = l1Var.c(type2.getAnnotations());
                kotlin.jvm.internal.h.f(newArguments, "newArguments");
                kotlin.jvm.internal.h.f(newAnnotations, "newAnnotations");
                e0 e0VarC2 = n1.c(type2, newArguments, newAnnotations, 4);
                if ((e0VarC2 instanceof m0) && (e0VarK instanceof m0)) {
                    e0VarC2 = q0.c((m0) e0VarC2, (m0) e0VarK);
                }
                return new k1(e0VarC2, t1VarB3);
            }
        }
        return i1Var;
    }
}
