package ma;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import ic.o;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.ServiceLoader;
import ma.d1;

/* loaded from: classes2.dex */
public final class p {

    /* renamed from: a, reason: collision with root package name */
    public static final d f10221a;

    /* renamed from: b, reason: collision with root package name */
    public static final e f10222b;

    /* renamed from: c, reason: collision with root package name */
    public static final f f10223c;

    /* renamed from: d, reason: collision with root package name */
    public static final g f10224d;

    /* renamed from: e, reason: collision with root package name */
    public static final h f10225e;
    public static final i f;

    /* renamed from: g, reason: collision with root package name */
    public static final j f10226g;

    /* renamed from: h, reason: collision with root package name */
    public static final k f10227h;

    /* renamed from: i, reason: collision with root package name */
    public static final l f10228i;

    /* renamed from: j, reason: collision with root package name */
    public static final Map<q, Integer> f10229j;

    /* renamed from: k, reason: collision with root package name */
    public static final h f10230k;

    /* renamed from: l, reason: collision with root package name */
    public static final a f10231l;

    /* renamed from: m, reason: collision with root package name */
    public static final b f10232m;

    /* renamed from: n, reason: collision with root package name */
    @Deprecated
    public static final c f10233n;

    /* renamed from: o, reason: collision with root package name */
    public static final ic.o f10234o;

    /* renamed from: p, reason: collision with root package name */
    public static final HashMap f10235p;

    public static class a implements wb.g {
        @Override // wb.g
        public final cc.e0 getType() {
            throw new IllegalStateException("This method should not be called");
        }
    }

    public static class b implements wb.g {
        @Override // wb.g
        public final cc.e0 getType() {
            throw new IllegalStateException("This method should not be called");
        }
    }

    public static class c implements wb.g {
        @Override // wb.g
        public final cc.e0 getType() {
            throw new IllegalStateException("This method should not be called");
        }
    }

    public static class d extends o {
        public d(d1.e eVar) {
            super(eVar);
        }

        public static /* synthetic */ void e(int r52) {
            Object[] objArr = new Object[3];
            if (r52 == 1) {
                objArr[0] = "what";
            } else if (r52 != 2) {
                objArr[0] = "descriptor";
            } else {
                objArr[0] = TypedValues.TransitionType.S_FROM;
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1";
            if (r52 == 1 || r52 == 2) {
                objArr[2] = "isVisible";
            } else {
                objArr[2] = "hasContainingSourceFile";
            }
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r5v0, types: [ma.j, ma.n] */
        /* JADX WARN: Type inference failed for: r5v1, types: [ma.j] */
        /* JADX WARN: Type inference failed for: r5v2, types: [ma.j] */
        /* JADX WARN: Type inference failed for: r5v4, types: [ma.j] */
        @Override // ma.q
        public final boolean c(b bVar, n nVar, ma.j jVar) {
            if (jVar == null) {
                e(2);
                throw null;
            }
            if (ob.i.t(nVar)) {
                if (ob.i.f(jVar) != s0.f10244a) {
                    return p.d(nVar, jVar);
                }
            }
            if (nVar instanceof ma.i) {
                ((ma.i) nVar).b();
            }
            while (nVar != 0) {
                nVar = nVar.b();
                if (((nVar instanceof ma.e) && !ob.i.l(nVar)) || (nVar instanceof e0)) {
                    break;
                }
            }
            if (nVar == 0) {
                return false;
            }
            while (jVar != null) {
                if (nVar == jVar) {
                    return true;
                }
                if (jVar instanceof e0) {
                    return (nVar instanceof e0) && nVar.d().equals(((e0) jVar).d()) && ob.i.d(jVar).equals(ob.i.d(nVar));
                }
                jVar = jVar.b();
            }
            return false;
        }
    }

    public static class e extends o {
        public e(d1.f fVar) {
            super(fVar);
        }

        public static /* synthetic */ void e(int r32) {
            Object[] objArr = new Object[3];
            if (r32 != 1) {
                objArr[0] = "what";
            } else {
                objArr[0] = TypedValues.TransitionType.S_FROM;
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$2";
            objArr[2] = "isVisible";
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // ma.q
        public final boolean c(b bVar, n nVar, ma.j jVar) {
            ma.j jVarI;
            if (jVar == null) {
                e(1);
                throw null;
            }
            if (p.f10221a.c(bVar, nVar, jVar)) {
                if (bVar == p.f10232m) {
                    return true;
                }
                if (bVar != p.f10231l && (jVarI = ob.i.i(nVar, ma.e.class, true)) != null && (bVar instanceof wb.i)) {
                    return ((wb.i) bVar).p().a().equals(jVarI.a());
                }
            }
            return false;
        }
    }

    public static class f extends o {
        public f(d1.g gVar) {
            super(gVar);
        }

        public static /* synthetic */ void e(int r6) {
            Object[] objArr = new Object[3];
            if (r6 == 1) {
                objArr[0] = TypedValues.TransitionType.S_FROM;
            } else if (r6 == 2) {
                objArr[0] = "whatDeclaration";
            } else if (r6 != 3) {
                objArr[0] = "what";
            } else {
                objArr[0] = "fromClass";
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$3";
            if (r6 == 2 || r6 == 3) {
                objArr[2] = "doesReceiverFitForProtectedVisibility";
            } else {
                objArr[2] = "isVisible";
            }
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:42:0x0072  */
        @Override // ma.q
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean c(ma.p.b r7, ma.n r8, ma.j r9) {
            /*
                r6 = this;
                r0 = 0
                r1 = 1
                if (r9 == 0) goto L84
                java.lang.Class<ma.e> r2 = ma.e.class
                ma.j r3 = ob.i.i(r8, r2, r1)
                ma.e r3 = (ma.e) r3
                r4 = 0
                ma.j r9 = ob.i.i(r9, r2, r4)
                ma.e r9 = (ma.e) r9
                if (r9 != 0) goto L16
                return r4
            L16:
                if (r3 == 0) goto L2d
                boolean r5 = ob.i.l(r3)
                if (r5 == 0) goto L2d
                ma.j r3 = ob.i.i(r3, r2, r1)
                ma.e r3 = (ma.e) r3
                if (r3 == 0) goto L2d
                boolean r3 = ob.i.r(r9, r3)
                if (r3 == 0) goto L2d
                return r1
            L2d:
                ma.n r3 = ob.i.v(r8)
                ma.j r2 = ob.i.i(r3, r2, r1)
                ma.e r2 = (ma.e) r2
                if (r2 != 0) goto L3a
                return r4
            L3a:
                boolean r2 = ob.i.r(r9, r2)
                if (r2 == 0) goto L7b
                ma.p$c r2 = ma.p.f10233n
                if (r7 != r2) goto L45
                goto L78
            L45:
                boolean r2 = r3 instanceof ma.b
                if (r2 != 0) goto L4a
                goto L72
            L4a:
                boolean r2 = r3 instanceof ma.i
                if (r2 == 0) goto L4f
                goto L72
            L4f:
                ma.p$b r2 = ma.p.f10232m
                if (r7 != r2) goto L54
                goto L72
            L54:
                ma.p$a r2 = ma.p.f10231l
                if (r7 == r2) goto L78
                if (r7 != 0) goto L5b
                goto L78
            L5b:
                boolean r2 = r7 instanceof wb.h
                if (r2 == 0) goto L74
                r0 = r7
                wb.h r0 = (wb.h) r0
                cc.e0 r0 = r0.b()
                boolean r2 = ob.i.s(r0, r9)
                if (r2 != 0) goto L72
                boolean r0 = cc.w.a(r0)
                if (r0 == 0) goto L78
            L72:
                r4 = 1
                goto L78
            L74:
                r7.getType()
                throw r0
            L78:
                if (r4 == 0) goto L7b
                return r1
            L7b:
                ma.j r9 = r9.b()
                boolean r7 = r6.c(r7, r8, r9)
                return r7
            L84:
                e(r1)
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: ma.p.f.c(ma.p$b, ma.n, ma.j):boolean");
        }
    }

    public static class g extends o {
        public g(d1.b bVar) {
            super(bVar);
        }

        public static /* synthetic */ void e(int r32) {
            Object[] objArr = new Object[3];
            if (r32 != 1) {
                objArr[0] = "what";
            } else {
                objArr[0] = TypedValues.TransitionType.S_FROM;
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$4";
            objArr[2] = "isVisible";
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        @Override // ma.q
        public final boolean c(b bVar, n nVar, ma.j jVar) {
            if (jVar == null) {
                e(1);
                throw null;
            }
            if (!ob.i.d(jVar).V(ob.i.d(nVar))) {
                return false;
            }
            p.f10234o.a(nVar, jVar);
            return true;
        }
    }

    public static class h extends o {
        public h(d1.h hVar) {
            super(hVar);
        }

        public static /* synthetic */ void e(int r32) {
            Object[] objArr = new Object[3];
            if (r32 != 1) {
                objArr[0] = "what";
            } else {
                objArr[0] = TypedValues.TransitionType.S_FROM;
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$5";
            objArr[2] = "isVisible";
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        @Override // ma.q
        public final boolean c(b bVar, n nVar, ma.j jVar) {
            if (jVar != null) {
                return true;
            }
            e(1);
            throw null;
        }
    }

    public static class i extends o {
        public i(d1.d dVar) {
            super(dVar);
        }

        public static /* synthetic */ void e(int r32) {
            Object[] objArr = new Object[3];
            if (r32 != 1) {
                objArr[0] = "what";
            } else {
                objArr[0] = TypedValues.TransitionType.S_FROM;
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$6";
            objArr[2] = "isVisible";
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        @Override // ma.q
        public final boolean c(b bVar, n nVar, ma.j jVar) {
            if (jVar != null) {
                throw new IllegalStateException("This method shouldn't be invoked for LOCAL visibility");
            }
            e(1);
            throw null;
        }
    }

    public static class j extends o {
        public j(d1.a aVar) {
            super(aVar);
        }

        public static /* synthetic */ void e(int r32) {
            Object[] objArr = new Object[3];
            if (r32 != 1) {
                objArr[0] = "what";
            } else {
                objArr[0] = TypedValues.TransitionType.S_FROM;
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$7";
            objArr[2] = "isVisible";
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        @Override // ma.q
        public final boolean c(b bVar, n nVar, ma.j jVar) {
            if (jVar != null) {
                throw new IllegalStateException("Visibility is unknown yet");
            }
            e(1);
            throw null;
        }
    }

    public static class k extends o {
        public k(d1.c cVar) {
            super(cVar);
        }

        public static /* synthetic */ void e(int r32) {
            Object[] objArr = new Object[3];
            if (r32 != 1) {
                objArr[0] = "what";
            } else {
                objArr[0] = TypedValues.TransitionType.S_FROM;
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$8";
            objArr[2] = "isVisible";
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        @Override // ma.q
        public final boolean c(b bVar, n nVar, ma.j jVar) {
            if (jVar != null) {
                return false;
            }
            e(1);
            throw null;
        }
    }

    public static class l extends o {
        public l(d1.i iVar) {
            super(iVar);
        }

        public static /* synthetic */ void e(int r32) {
            Object[] objArr = new Object[3];
            if (r32 != 1) {
                objArr[0] = "what";
            } else {
                objArr[0] = TypedValues.TransitionType.S_FROM;
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$9";
            objArr[2] = "isVisible";
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        @Override // ma.q
        public final boolean c(b bVar, n nVar, ma.j jVar) {
            if (jVar != null) {
                return false;
            }
            e(1);
            throw null;
        }
    }

    static {
        d dVar = new d(d1.e.f10210c);
        f10221a = dVar;
        e eVar = new e(d1.f.f10211c);
        f10222b = eVar;
        f fVar = new f(d1.g.f10212c);
        f10223c = fVar;
        g gVar = new g(d1.b.f10207c);
        f10224d = gVar;
        h hVar = new h(d1.h.f10213c);
        f10225e = hVar;
        i iVar = new i(d1.d.f10209c);
        f = iVar;
        j jVar = new j(d1.a.f10206c);
        f10226g = jVar;
        k kVar = new k(d1.c.f10208c);
        f10227h = kVar;
        l lVar = new l(d1.i.f10214c);
        f10228i = lVar;
        Collections.unmodifiableSet(x5.a.s(dVar, eVar, gVar, iVar));
        HashMap map = new HashMap(6);
        map.put(eVar, 0);
        map.put(dVar, 0);
        map.put(gVar, 1);
        map.put(fVar, 1);
        map.put(hVar, 2);
        f10229j = Collections.unmodifiableMap(map);
        f10230k = hVar;
        f10231l = new a();
        f10232m = new b();
        f10233n = new c();
        Iterator it = ServiceLoader.load(ic.o.class, ic.o.class.getClassLoader()).iterator();
        f10234o = it.hasNext() ? (ic.o) it.next() : o.a.f7379a;
        f10235p = new HashMap();
        f(dVar);
        f(eVar);
        f(fVar);
        f(gVar);
        f(hVar);
        f(iVar);
        f(jVar);
        f(kVar);
        f(lVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x003a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void a(int r8) {
        /*
            r0 = 16
            if (r8 == r0) goto L7
            java.lang.String r1 = "Argument for @NotNull parameter '%s' of %s.%s must not be null"
            goto L9
        L7:
            java.lang.String r1 = "@NotNull method %s.%s must not return null"
        L9:
            r2 = 3
            r3 = 2
            if (r8 == r0) goto Lf
            r4 = 3
            goto L10
        Lf:
            r4 = 2
        L10:
            java.lang.Object[] r4 = new java.lang.Object[r4]
            java.lang.String r5 = "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities"
            r6 = 1
            r7 = 0
            if (r8 == r6) goto L3a
            if (r8 == r2) goto L3a
            r2 = 5
            if (r8 == r2) goto L3a
            r2 = 7
            if (r8 == r2) goto L3a
            switch(r8) {
                case 9: goto L3a;
                case 10: goto L35;
                case 11: goto L30;
                case 12: goto L35;
                case 13: goto L30;
                case 14: goto L2b;
                case 15: goto L2b;
                case 16: goto L28;
                default: goto L23;
            }
        L23:
            java.lang.String r2 = "what"
            r4[r7] = r2
            goto L3e
        L28:
            r4[r7] = r5
            goto L3e
        L2b:
            java.lang.String r2 = "visibility"
            r4[r7] = r2
            goto L3e
        L30:
            java.lang.String r2 = "second"
            r4[r7] = r2
            goto L3e
        L35:
            java.lang.String r2 = "first"
            r4[r7] = r2
            goto L3e
        L3a:
            java.lang.String r2 = "from"
            r4[r7] = r2
        L3e:
            java.lang.String r2 = "toDescriptorVisibility"
            if (r8 == r0) goto L45
            r4[r6] = r5
            goto L47
        L45:
            r4[r6] = r2
        L47:
            switch(r8) {
                case 2: goto L70;
                case 3: goto L70;
                case 4: goto L6b;
                case 5: goto L6b;
                case 6: goto L66;
                case 7: goto L66;
                case 8: goto L61;
                case 9: goto L61;
                case 10: goto L5c;
                case 11: goto L5c;
                case 12: goto L57;
                case 13: goto L57;
                case 14: goto L52;
                case 15: goto L4f;
                case 16: goto L74;
                default: goto L4a;
            }
        L4a:
            java.lang.String r2 = "isVisible"
            r4[r3] = r2
            goto L74
        L4f:
            r4[r3] = r2
            goto L74
        L52:
            java.lang.String r2 = "isPrivate"
            r4[r3] = r2
            goto L74
        L57:
            java.lang.String r2 = "compare"
            r4[r3] = r2
            goto L74
        L5c:
            java.lang.String r2 = "compareLocal"
            r4[r3] = r2
            goto L74
        L61:
            java.lang.String r2 = "findInvisibleMember"
            r4[r3] = r2
            goto L74
        L66:
            java.lang.String r2 = "inSameFile"
            r4[r3] = r2
            goto L74
        L6b:
            java.lang.String r2 = "isVisibleWithAnyReceiver"
            r4[r3] = r2
            goto L74
        L70:
            java.lang.String r2 = "isVisibleIgnoringReceiver"
            r4[r3] = r2
        L74:
            java.lang.String r1 = java.lang.String.format(r1, r4)
            if (r8 == r0) goto L80
            java.lang.IllegalArgumentException r8 = new java.lang.IllegalArgumentException
            r8.<init>(r1)
            goto L85
        L80:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            r8.<init>(r1)
        L85:
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: ma.p.a(int):void");
    }

    public static Integer b(q qVar, q qVar2) {
        if (qVar == null) {
            a(12);
            throw null;
        }
        if (qVar2 == null) {
            a(13);
            throw null;
        }
        Integer numA = qVar.a().a(qVar2.a());
        if (numA != null) {
            return numA;
        }
        Integer numA2 = qVar2.a().a(qVar.a());
        if (numA2 != null) {
            return Integer.valueOf(-numA2.intValue());
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x002a, code lost:
    
        if ((r5 instanceof pa.r0) == false) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x002c, code lost:
    
        r4 = c(r4, ((pa.r0) r5).m0(), r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0036, code lost:
    
        if (r4 == null) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0038, code lost:
    
        return r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0039, code lost:
    
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static ma.n c(ma.p.b r4, ma.n r5, ma.j r6) {
        /*
            r0 = 0
            if (r5 == 0) goto L40
            if (r6 == 0) goto L3a
            ma.j r1 = r5.a()
        L9:
            ma.n r1 = (ma.n) r1
            if (r1 == 0) goto L28
            ma.q r2 = r1.getVisibility()
            ma.p$i r3 = ma.p.f
            if (r2 == r3) goto L28
            ma.q r2 = r1.getVisibility()
            boolean r2 = r2.c(r4, r1, r6)
            if (r2 != 0) goto L20
            return r1
        L20:
            r2 = 1
            java.lang.Class<ma.n> r3 = ma.n.class
            ma.j r1 = ob.i.i(r1, r3, r2)
            goto L9
        L28:
            boolean r1 = r5 instanceof pa.r0
            if (r1 == 0) goto L39
            pa.r0 r5 = (pa.r0) r5
            ma.d r5 = r5.m0()
            ma.n r4 = c(r4, r5, r6)
            if (r4 == 0) goto L39
            return r4
        L39:
            return r0
        L3a:
            r4 = 9
            a(r4)
            throw r0
        L40:
            r4 = 8
            a(r4)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: ma.p.c(ma.p$b, ma.n, ma.j):ma.n");
    }

    public static boolean d(ma.j jVar, ma.j jVar2) {
        if (jVar2 == null) {
            a(7);
            throw null;
        }
        s0 s0VarF = ob.i.f(jVar2);
        if (s0VarF != s0.f10244a) {
            return s0VarF.equals(ob.i.f(jVar));
        }
        return false;
    }

    public static boolean e(q qVar) {
        if (qVar != null) {
            return qVar == f10221a || qVar == f10222b;
        }
        a(14);
        throw null;
    }

    public static void f(o oVar) {
        f10235p.put(oVar.f10220a, oVar);
    }

    public static q g(e1 e1Var) {
        if (e1Var == null) {
            a(15);
            throw null;
        }
        q qVar = (q) f10235p.get(e1Var);
        if (qVar != null) {
            return qVar;
        }
        throw new IllegalArgumentException("Inapplicable visibility: " + e1Var);
    }
}
