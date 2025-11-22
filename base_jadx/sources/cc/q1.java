package cc;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public final class q1 {

    /* renamed from: a, reason: collision with root package name */
    public static final ec.f f2348a = ec.i.c(ec.h.DONT_CARE, new String[0]);

    /* renamed from: b, reason: collision with root package name */
    public static final ec.f f2349b = ec.i.c(ec.h.UNINFERRED_LAMBDA_PARAMETER_TYPE, new String[0]);

    /* renamed from: c, reason: collision with root package name */
    public static final a f2350c = new a("NO_EXPECTED_TYPE");

    /* renamed from: d, reason: collision with root package name */
    public static final a f2351d = new a("UNIT_EXPECTED_TYPE");

    public static class a extends s {

        /* renamed from: b, reason: collision with root package name */
        public final String f2352b;

        public a(String str) {
            this.f2352b = str;
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x0030  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static /* synthetic */ void Y0(int r9) {
            /*
                r0 = 4
                r1 = 1
                if (r9 == r1) goto L9
                if (r9 == r0) goto L9
                java.lang.String r2 = "Argument for @NotNull parameter '%s' of %s.%s must not be null"
                goto Lb
            L9:
                java.lang.String r2 = "@NotNull method %s.%s must not return null"
            Lb:
                r3 = 3
                r4 = 2
                if (r9 == r1) goto L13
                if (r9 == r0) goto L13
                r5 = 3
                goto L14
            L13:
                r5 = 2
            L14:
                java.lang.Object[] r5 = new java.lang.Object[r5]
                java.lang.String r6 = "kotlin/reflect/jvm/internal/impl/types/TypeUtils$SpecialType"
                r7 = 0
                if (r9 == r1) goto L30
                if (r9 == r4) goto L2b
                if (r9 == r3) goto L26
                if (r9 == r0) goto L30
                java.lang.String r8 = "newAttributes"
                r5[r7] = r8
                goto L32
            L26:
                java.lang.String r8 = "kotlinTypeRefiner"
                r5[r7] = r8
                goto L32
            L2b:
                java.lang.String r8 = "delegate"
                r5[r7] = r8
                goto L32
            L30:
                r5[r7] = r6
            L32:
                java.lang.String r7 = "refine"
                if (r9 == r1) goto L3e
                if (r9 == r0) goto L3b
                r5[r1] = r6
                goto L42
            L3b:
                r5[r1] = r7
                goto L42
            L3e:
                java.lang.String r6 = "toString"
                r5[r1] = r6
            L42:
                if (r9 == r1) goto L56
                if (r9 == r4) goto L52
                if (r9 == r3) goto L4f
                if (r9 == r0) goto L56
                java.lang.String r3 = "replaceAttributes"
                r5[r4] = r3
                goto L56
            L4f:
                r5[r4] = r7
                goto L56
            L52:
                java.lang.String r3 = "replaceDelegate"
                r5[r4] = r3
            L56:
                java.lang.String r2 = java.lang.String.format(r2, r5)
                if (r9 == r1) goto L64
                if (r9 == r0) goto L64
                java.lang.IllegalArgumentException r9 = new java.lang.IllegalArgumentException
                r9.<init>(r2)
                goto L69
            L64:
                java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
                r9.<init>(r2)
            L69:
                throw r9
            */
            throw new UnsupportedOperationException("Method not decompiled: cc.q1.a.Y0(int):void");
        }

        @Override // cc.s, cc.e0
        /* renamed from: O0 */
        public final e0 R0(dc.f fVar) {
            if (fVar != null) {
                return this;
            }
            Y0(3);
            throw null;
        }

        @Override // cc.m0, cc.s1
        public final /* bridge */ /* synthetic */ s1 Q0(boolean z10) {
            Q0(z10);
            throw null;
        }

        @Override // cc.s, cc.s1
        /* renamed from: R0 */
        public final s1 O0(dc.f fVar) {
            if (fVar != null) {
                return this;
            }
            Y0(3);
            throw null;
        }

        @Override // cc.m0, cc.s1
        public final /* bridge */ /* synthetic */ s1 S0(a1 a1Var) {
            S0(a1Var);
            throw null;
        }

        @Override // cc.m0
        /* renamed from: T0 */
        public final m0 Q0(boolean z10) {
            throw new IllegalStateException(this.f2352b);
        }

        @Override // cc.m0
        /* renamed from: U0 */
        public final m0 S0(a1 a1Var) {
            if (a1Var != null) {
                throw new IllegalStateException(this.f2352b);
            }
            Y0(0);
            throw null;
        }

        @Override // cc.s
        public final m0 V0() {
            throw new IllegalStateException(this.f2352b);
        }

        @Override // cc.s
        /* renamed from: W0 */
        public final m0 O0(dc.f fVar) {
            if (fVar != null) {
                return this;
            }
            Y0(3);
            throw null;
        }

        @Override // cc.s
        public final s X0(m0 m0Var) {
            throw new IllegalStateException(this.f2352b);
        }

        @Override // cc.m0
        public final String toString() {
            String str = this.f2352b;
            if (str != null) {
                return str;
            }
            Y0(1);
            throw null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0120  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void a(int r24) {
        /*
            Method dump skipped, instructions count: 780
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: cc.q1.a(int):void");
    }

    public static boolean b(e0 e0Var) {
        if (e0Var == null) {
            a(28);
            throw null;
        }
        if (e0Var.N0()) {
            return true;
        }
        return c5.v.z(e0Var) && b(c5.v.m(e0Var).f2378c);
    }

    public static boolean c(e0 e0Var, x9.l<s1, Boolean> lVar) {
        if (lVar != null) {
            return d(e0Var, lVar, null);
        }
        a(43);
        throw null;
    }

    public static boolean d(e0 e0Var, x9.l<s1, Boolean> lVar, kc.d<e0> dVar) {
        if (lVar == null) {
            a(44);
            throw null;
        }
        if (e0Var == null) {
            return false;
        }
        s1 s1VarP0 = e0Var.P0();
        if (q(e0Var)) {
            return lVar.invoke(s1VarP0).booleanValue();
        }
        if (dVar != null && dVar.contains(e0Var)) {
            return false;
        }
        if (lVar.invoke(s1VarP0).booleanValue()) {
            return true;
        }
        if (dVar == null) {
            dVar = new kc.d<>();
        }
        dVar.add(e0Var);
        y yVar = s1VarP0 instanceof y ? (y) s1VarP0 : null;
        if (yVar != null && (d(yVar.f2377b, lVar, dVar) || d(yVar.f2378c, lVar, dVar))) {
            return true;
        }
        if ((s1VarP0 instanceof q) && d(((q) s1VarP0).f2346b, lVar, dVar)) {
            return true;
        }
        c1 c1VarM0 = e0Var.M0();
        if (c1VarM0 instanceof c0) {
            Iterator<e0> it = ((c0) c1VarM0).f2275b.iterator();
            while (it.hasNext()) {
                if (d(it.next(), lVar, dVar)) {
                    return true;
                }
            }
            return false;
        }
        for (i1 i1Var : e0Var.K0()) {
            if (!i1Var.c()) {
                if (d(i1Var.getType(), lVar, dVar)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static List<i1> e(List<ma.w0> list) {
        if (list == null) {
            a(16);
            throw null;
        }
        ArrayList arrayList = new ArrayList(list.size());
        Iterator<ma.w0> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new k1(it.next().q()));
        }
        return m9.t.v1(arrayList);
    }

    public static boolean f(e0 e0Var) {
        if (e0Var == null) {
            a(29);
            throw null;
        }
        if (e0Var.M0().n() instanceof ma.e) {
            return false;
        }
        p1 p1VarD = p1.d(e0Var);
        Collection<e0> collectionL = e0Var.M0().l();
        ArrayList arrayList = new ArrayList(collectionL.size());
        for (e0 e0Var2 : collectionL) {
            if (e0Var2 == null) {
                a(21);
                throw null;
            }
            e0 e0VarK = p1VarD.k(e0Var2, t1.INVARIANT);
            e0 e0VarK2 = e0VarK != null ? k(e0VarK, e0Var.N0()) : null;
            if (e0VarK2 != null) {
                arrayList.add(e0VarK2);
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            if (g((e0) it.next())) {
                return true;
            }
        }
        return false;
    }

    public static boolean g(e0 e0Var) {
        if (e0Var == null) {
            a(27);
            throw null;
        }
        if (e0Var.N0()) {
            return true;
        }
        if (c5.v.z(e0Var) && g(c5.v.m(e0Var).f2378c)) {
            return true;
        }
        if (e0Var.P0() instanceof q) {
            return false;
        }
        if (h(e0Var)) {
            return f(e0Var);
        }
        if (e0Var instanceof d) {
            ma.w0 w0VarA = ((d) e0Var).f2280b.a();
            return w0VarA == null || f(w0VarA.q());
        }
        c1 c1VarM0 = e0Var.M0();
        if (c1VarM0 instanceof c0) {
            Iterator<e0> it = c1VarM0.l().iterator();
            while (it.hasNext()) {
                if (g(it.next())) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean h(e0 e0Var) {
        if (e0Var == null) {
            a(60);
            throw null;
        }
        if (e0Var != null) {
            return (e0Var.M0().n() instanceof ma.w0 ? (ma.w0) e0Var.M0().n() : null) != null || (e0Var.M0() instanceof dc.n);
        }
        a(63);
        throw null;
    }

    public static s1 i(e0 e0Var) {
        if (e0Var != null) {
            return j(e0Var, false);
        }
        a(2);
        throw null;
    }

    public static s1 j(e0 e0Var, boolean z10) {
        if (e0Var == null) {
            a(3);
            throw null;
        }
        s1 s1VarQ0 = e0Var.P0().Q0(z10);
        if (s1VarQ0 != null) {
            return s1VarQ0;
        }
        a(4);
        throw null;
    }

    public static e0 k(e0 e0Var, boolean z10) {
        if (e0Var != null) {
            return z10 ? j(e0Var, true) : e0Var;
        }
        a(8);
        throw null;
    }

    public static m0 l(m0 m0Var, boolean z10) {
        if (m0Var == null) {
            a(5);
            throw null;
        }
        if (!z10) {
            if (m0Var != null) {
                return m0Var;
            }
            a(7);
            throw null;
        }
        m0 m0VarQ0 = m0Var.Q0(true);
        if (m0VarQ0 != null) {
            return m0VarQ0;
        }
        a(6);
        throw null;
    }

    public static s0 m(ma.w0 w0Var) {
        if (w0Var != null) {
            return new s0(w0Var);
        }
        a(45);
        throw null;
    }

    public static j1 n(ma.w0 w0Var, x xVar) {
        if (w0Var != null) {
            return xVar.b() == 1 ? new k1(c5.u.p(w0Var)) : new s0(w0Var);
        }
        a(46);
        throw null;
    }

    public static m0 o(c1 c1Var, vb.i iVar, x9.l<dc.f, m0> lVar) {
        if (c1Var == null) {
            a(12);
            throw null;
        }
        if (iVar == null) {
            a(13);
            throw null;
        }
        if (lVar == null) {
            a(14);
            throw null;
        }
        List<i1> listE = e(c1Var.getParameters());
        a1.f2258b.getClass();
        return f0.g(a1.f2259c, c1Var, listE, false, iVar, lVar);
    }

    public static m0 p(ma.g gVar, vb.i iVar, x9.l<dc.f, m0> lVar) {
        return ec.i.f(gVar) ? ec.i.c(ec.h.UNABLE_TO_SUBSTITUTE_TYPE, gVar.toString()) : o(gVar.i(), iVar, lVar);
    }

    public static boolean q(e0 e0Var) {
        if (e0Var != null) {
            return e0Var == f2350c || e0Var == f2351d;
        }
        a(0);
        throw null;
    }
}
