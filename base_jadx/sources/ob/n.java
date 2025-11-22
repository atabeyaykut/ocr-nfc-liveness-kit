package ob;

import cc.b1;
import cc.c1;
import cc.e0;
import cc.s1;
import dc.d;
import dc.e;
import dc.f;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.ServiceLoader;
import ma.a0;
import ma.a1;
import ma.b;
import ma.k0;
import ma.l0;
import ma.n0;
import ma.o0;
import ma.w0;
import ob.j;
import pa.x;

/* loaded from: classes2.dex */
public final class n {

    /* renamed from: e, reason: collision with root package name */
    public static final List<j> f11287e = m9.t.v1(ServiceLoader.load(j.class, j.class.getClassLoader()));
    public static final n f;

    /* renamed from: g, reason: collision with root package name */
    public static final a f11288g;

    /* renamed from: a, reason: collision with root package name */
    public final dc.f f11289a;

    /* renamed from: b, reason: collision with root package name */
    public final dc.e f11290b;

    /* renamed from: c, reason: collision with root package name */
    public final d.a f11291c;

    /* renamed from: d, reason: collision with root package name */
    public final x9.p<e0, e0, Boolean> f11292d;

    public static class a implements d.a {
        public static /* synthetic */ void b(int r32) {
            Object[] objArr = new Object[3];
            if (r32 != 1) {
                objArr[0] = "a";
            } else {
                objArr[0] = "b";
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$1";
            objArr[2] = "equals";
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        @Override // dc.d.a
        public final boolean a(c1 c1Var, c1 c1Var2) {
            if (c1Var == null) {
                b(0);
                throw null;
            }
            if (c1Var2 != null) {
                return c1Var.equals(c1Var2);
            }
            b(1);
            throw null;
        }
    }

    public static class b {

        /* renamed from: b, reason: collision with root package name */
        public static final b f11293b = new b(1, "SUCCESS");

        /* renamed from: a, reason: collision with root package name */
        public final int f11294a;

        public b(int r12, String str) {
            if (r12 != 0) {
                this.f11294a = r12;
            } else {
                a(3);
                throw null;
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:22:0x0031  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static /* synthetic */ void a(int r10) {
            /*
                r0 = 4
                r1 = 3
                r2 = 2
                r3 = 1
                if (r10 == r3) goto Lf
                if (r10 == r2) goto Lf
                if (r10 == r1) goto Lf
                if (r10 == r0) goto Lf
                java.lang.String r4 = "@NotNull method %s.%s must not return null"
                goto L11
            Lf:
                java.lang.String r4 = "Argument for @NotNull parameter '%s' of %s.%s must not be null"
            L11:
                if (r10 == r3) goto L1b
                if (r10 == r2) goto L1b
                if (r10 == r1) goto L1b
                if (r10 == r0) goto L1b
                r5 = 2
                goto L1c
            L1b:
                r5 = 3
            L1c:
                java.lang.Object[] r5 = new java.lang.Object[r5]
                java.lang.String r6 = "success"
                java.lang.String r7 = "kotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$OverrideCompatibilityInfo"
                r8 = 0
                if (r10 == r3) goto L31
                if (r10 == r2) goto L31
                if (r10 == r1) goto L2e
                if (r10 == r0) goto L31
                r5[r8] = r7
                goto L35
            L2e:
                r5[r8] = r6
                goto L35
            L31:
                java.lang.String r9 = "debugMessage"
                r5[r8] = r9
            L35:
                switch(r10) {
                    case 1: goto L45;
                    case 2: goto L45;
                    case 3: goto L45;
                    case 4: goto L45;
                    case 5: goto L40;
                    case 6: goto L3b;
                    default: goto L38;
                }
            L38:
                r5[r3] = r6
                goto L47
            L3b:
                java.lang.String r6 = "getDebugMessage"
                r5[r3] = r6
                goto L47
            L40:
                java.lang.String r6 = "getResult"
                r5[r3] = r6
                goto L47
            L45:
                r5[r3] = r7
            L47:
                if (r10 == r3) goto L5a
                if (r10 == r2) goto L55
                if (r10 == r1) goto L50
                if (r10 == r0) goto L50
                goto L5e
            L50:
                java.lang.String r6 = "<init>"
                r5[r2] = r6
                goto L5e
            L55:
                java.lang.String r6 = "conflict"
                r5[r2] = r6
                goto L5e
            L5a:
                java.lang.String r6 = "incompatible"
                r5[r2] = r6
            L5e:
                java.lang.String r4 = java.lang.String.format(r4, r5)
                if (r10 == r3) goto L70
                if (r10 == r2) goto L70
                if (r10 == r1) goto L70
                if (r10 == r0) goto L70
                java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
                r10.<init>(r4)
                goto L75
            L70:
                java.lang.IllegalArgumentException r10 = new java.lang.IllegalArgumentException
                r10.<init>(r4)
            L75:
                throw r10
            */
            throw new UnsupportedOperationException("Method not decompiled: ob.n.b.a(int):void");
        }

        public static b b(String str) {
            return new b(3, str);
        }

        public static b d(String str) {
            return new b(2, str);
        }

        public final int c() {
            int r02 = this.f11294a;
            if (r02 != 0) {
                return r02;
            }
            a(5);
            throw null;
        }
    }

    static {
        a aVar = new a();
        f11288g = aVar;
        f = new n(aVar, f.a.f4827a, e.a.f4826a);
    }

    public n(d.a aVar, f.a aVar2, e.a aVar3) {
        if (aVar == null) {
            a(5);
            throw null;
        }
        if (aVar2 == null) {
            a(6);
            throw null;
        }
        if (aVar3 == null) {
            a(7);
            throw null;
        }
        this.f11291c = aVar;
        this.f11289a = aVar2;
        this.f11290b = aVar3;
        this.f11292d = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x01a5  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0035 A[FALL_THROUGH] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0058 A[FALL_THROUGH] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void a(int r24) {
        /*
            Method dump skipped, instructions count: 1322
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: ob.n.a(int):void");
    }

    public static boolean b(e0 e0Var, e0 e0Var2, b1 b1Var) {
        if (e0Var == null) {
            a(46);
            throw null;
        }
        if (e0Var2 == null) {
            a(47);
            throw null;
        }
        if (c5.v.y(e0Var) && c5.v.y(e0Var2)) {
            return true;
        }
        return cc.g.e(b1Var, e0Var.P0(), e0Var2.P0());
    }

    public static void c(ma.b bVar, LinkedHashSet linkedHashSet) {
        if (bVar == null) {
            a(17);
            throw null;
        }
        b.a aVarK0 = bVar.k0();
        aVarK0.getClass();
        if (aVarK0 != b.a.FAKE_OVERRIDE) {
            linkedHashSet.add(bVar);
            return;
        }
        if (bVar.e().isEmpty()) {
            throw new IllegalStateException("No overridden descriptors found for (fake override) " + bVar);
        }
        Iterator<? extends ma.b> it = bVar.e().iterator();
        while (it.hasNext()) {
            c(it.next(), linkedHashSet);
        }
    }

    public static ArrayList d(ma.a aVar) {
        o0 o0VarH0 = aVar.h0();
        ArrayList arrayList = new ArrayList();
        if (o0VarH0 != null) {
            arrayList.add(o0VarH0.getType());
        }
        Iterator<a1> it = aVar.g().iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getType());
        }
        return arrayList;
    }

    /* JADX WARN: Code restructure failed: missing block: B:87:0x0145, code lost:
    
        if (r2 == false) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0147, code lost:
    
        r1 = ma.p.f10227h;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x014a, code lost:
    
        r1 = ma.p.f10226g;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x014c, code lost:
    
        r12 = ((ma.b) s(r11, new ob.o())).b0(r12, r0, r1);
        r13.s(r12, r11);
        r13.k(r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0161, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void e(java.util.Collection r11, ma.e r12, ob.m r13) {
        /*
            Method dump skipped, instructions count: 378
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: ob.n.e(java.util.Collection, ma.e, ob.m):void");
    }

    public static ArrayList g(Object obj, LinkedList linkedList, x9.l lVar, x9.l lVar2) {
        if (obj == null) {
            a(99);
            throw null;
        }
        if (lVar == null) {
            a(101);
            throw null;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(obj);
        ma.a aVar = (ma.a) lVar.invoke(obj);
        Iterator it = linkedList.iterator();
        while (it.hasNext()) {
            Object next = it.next();
            ma.a aVar2 = (ma.a) lVar.invoke(next);
            if (obj != next) {
                int r32 = j(aVar, aVar2);
                if (r32 == 1) {
                    arrayList.add(next);
                } else if (r32 == 3) {
                    lVar2.invoke(next);
                }
            }
            it.remove();
        }
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x0079 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x007a A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static ob.n.b i(ma.a r5, ma.a r6) {
        /*
            r0 = 0
            if (r5 == 0) goto L81
            if (r6 == 0) goto L7b
            boolean r1 = r5 instanceof ma.u
            if (r1 == 0) goto Ld
            boolean r2 = r6 instanceof ma.u
            if (r2 == 0) goto L15
        Ld:
            boolean r2 = r5 instanceof ma.l0
            if (r2 == 0) goto L1c
            boolean r3 = r6 instanceof ma.l0
            if (r3 != 0) goto L1c
        L15:
            java.lang.String r5 = "Member kind mismatch"
        L17:
            ob.n$b r5 = ob.n.b.d(r5)
            return r5
        L1c:
            if (r1 != 0) goto L35
            if (r2 == 0) goto L21
            goto L35
        L21:
            java.lang.IllegalArgumentException r6 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "This type of CallableDescriptor cannot be checked for overridability: "
            r0.<init>(r1)
            r0.append(r5)
            java.lang.String r5 = r0.toString()
            r6.<init>(r5)
            throw r6
        L35:
            lb.f r1 = r5.getName()
            lb.f r2 = r6.getName()
            boolean r1 = r1.equals(r2)
            if (r1 != 0) goto L46
            java.lang.String r5 = "Name mismatch"
            goto L17
        L46:
            ma.o0 r1 = r5.h0()
            r2 = 0
            r3 = 1
            if (r1 != 0) goto L50
            r1 = 1
            goto L51
        L50:
            r1 = 0
        L51:
            ma.o0 r4 = r6.h0()
            if (r4 != 0) goto L58
            r2 = 1
        L58:
            if (r1 == r2) goto L5d
            java.lang.String r5 = "Receiver presence mismatch"
            goto L71
        L5d:
            java.util.List r5 = r5.g()
            int r5 = r5.size()
            java.util.List r6 = r6.g()
            int r6 = r6.size()
            if (r5 == r6) goto L76
            java.lang.String r5 = "Value parameter number mismatch"
        L71:
            ob.n$b r5 = ob.n.b.d(r5)
            goto L77
        L76:
            r5 = r0
        L77:
            if (r5 == 0) goto L7a
            return r5
        L7a:
            return r0
        L7b:
            r5 = 41
            a(r5)
            throw r0
        L81:
            r5 = 40
            a(r5)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: ob.n.i(ma.a, ma.a):ob.n$b");
    }

    public static int j(ma.a aVar, ma.a aVar2) {
        n nVar = f;
        int r22 = nVar.l(aVar2, aVar, null).c();
        int r32 = nVar.l(aVar, aVar2, null).c();
        if (r22 == 1 && r32 == 1) {
            return 1;
        }
        return (r22 == 3 || r32 == 3) ? 3 : 2;
    }

    public static boolean k(ma.a aVar, ma.a aVar2) {
        if (aVar == null) {
            a(67);
            throw null;
        }
        if (aVar2 == null) {
            a(68);
            throw null;
        }
        e0 returnType = aVar.getReturnType();
        e0 returnType2 = aVar2.getReturnType();
        if (!p(aVar, aVar2)) {
            return false;
        }
        b1 b1VarF = f.f(aVar.getTypeParameters(), aVar2.getTypeParameters());
        if (aVar instanceof ma.u) {
            return o(aVar, returnType, aVar2, returnType2, b1VarF);
        }
        if (!(aVar instanceof l0)) {
            throw new IllegalArgumentException("Unexpected callable: " + aVar.getClass());
        }
        l0 l0Var = (l0) aVar;
        l0 l0Var2 = (l0) aVar2;
        n0 n0VarF = l0Var.f();
        n0 n0VarF2 = l0Var2.f();
        if ((n0VarF == null || n0VarF2 == null) ? true : p(n0VarF, n0VarF2)) {
            return (l0Var.f0() && l0Var2.f0()) ? cc.g.e(b1VarF, returnType.P0(), returnType2.P0()) : (l0Var.f0() || !l0Var2.f0()) && o(aVar, returnType, aVar2, returnType2, b1VarF);
        }
        return false;
    }

    public static boolean o(ma.a aVar, e0 e0Var, ma.a aVar2, e0 e0Var2, b1 b1Var) {
        if (aVar == null) {
            a(73);
            throw null;
        }
        if (e0Var == null) {
            a(74);
            throw null;
        }
        if (aVar2 == null) {
            a(75);
            throw null;
        }
        if (e0Var2 == null) {
            a(76);
            throw null;
        }
        cc.g gVar = cc.g.f2306a;
        s1 subType = e0Var.P0();
        s1 superType = e0Var2.P0();
        kotlin.jvm.internal.h.f(subType, "subType");
        kotlin.jvm.internal.h.f(superType, "superType");
        return cc.g.i(gVar, b1Var, subType, superType);
    }

    public static boolean p(ma.n nVar, ma.n nVar2) {
        if (nVar == null) {
            a(69);
            throw null;
        }
        if (nVar2 != null) {
            Integer numB = ma.p.b(nVar.getVisibility(), nVar2.getVisibility());
            return numB == null || numB.intValue() >= 0;
        }
        a(70);
        throw null;
    }

    public static boolean q(ma.a aVar, ma.a aVar2) {
        if (aVar == null) {
            a(13);
            throw null;
        }
        if (aVar2 == null) {
            a(14);
            throw null;
        }
        boolean zEquals = aVar.equals(aVar2);
        g gVar = g.f11276a;
        if (!zEquals && gVar.a(aVar.a(), aVar2.a(), false, true)) {
            return true;
        }
        ma.a aVarA = aVar2.a();
        int r02 = i.f11277a;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        i.b(aVar.a(), linkedHashSet);
        Iterator it = linkedHashSet.iterator();
        while (it.hasNext()) {
            if (gVar.a(aVarA, (ma.a) it.next(), false, true)) {
                return true;
            }
        }
        return false;
    }

    public static void r(ma.b bVar, x9.l<ma.b, l9.m> lVar) {
        ma.q qVar;
        ma.q qVarD;
        ma.q qVar2;
        if (bVar == null) {
            a(107);
            throw null;
        }
        for (ma.b bVar2 : bVar.e()) {
            if (bVar2.getVisibility() == ma.p.f10226g) {
                r(bVar2, lVar);
            }
        }
        if (bVar.getVisibility() != ma.p.f10226g) {
            return;
        }
        Collection<? extends ma.b> collectionE = bVar.e();
        if (collectionE == null) {
            a(109);
            throw null;
        }
        if (collectionE.isEmpty()) {
            qVarD = ma.p.f10230k;
        } else {
            Iterator<? extends ma.b> it = collectionE.iterator();
            loop3: while (true) {
                qVar = null;
                while (it.hasNext()) {
                    ma.q visibility = it.next().getVisibility();
                    if (qVar != null) {
                        Integer numB = ma.p.b(visibility, qVar);
                        if (numB == null) {
                            break;
                        } else if (numB.intValue() > 0) {
                        }
                    }
                    qVar = visibility;
                }
            }
            if (qVar == null) {
                qVarD = null;
                break;
            }
            Iterator<? extends ma.b> it2 = collectionE.iterator();
            while (it2.hasNext()) {
                Integer numB2 = ma.p.b(qVar, it2.next().getVisibility());
                if (numB2 == null || numB2.intValue() < 0) {
                    qVarD = null;
                    break;
                }
            }
            qVarD = qVar;
        }
        if (qVarD == null) {
            qVarD = null;
            break;
        }
        if (bVar.k0() == b.a.FAKE_OVERRIDE) {
            for (ma.b bVar3 : collectionE) {
                if (bVar3.j() != a0.ABSTRACT && !bVar3.getVisibility().equals(qVarD)) {
                    qVarD = null;
                    break;
                }
            }
        } else {
            qVarD = qVarD.d();
        }
        if (qVarD == null) {
            if (lVar != null) {
                lVar.invoke(bVar);
            }
            qVar2 = ma.p.f10225e;
        } else {
            qVar2 = qVarD;
        }
        if (bVar instanceof pa.l0) {
            pa.l0 l0Var = (pa.l0) bVar;
            if (qVar2 == null) {
                pa.l0.C(20);
                throw null;
            }
            l0Var.f12936k = qVar2;
            Iterator it3 = ((l0) bVar).t().iterator();
            while (it3.hasNext()) {
                r((k0) it3.next(), qVarD == null ? null : lVar);
            }
            return;
        }
        if (bVar instanceof x) {
            x xVar = (x) bVar;
            if (qVar2 != null) {
                xVar.f13015m = qVar2;
                return;
            } else {
                x.C(10);
                throw null;
            }
        }
        pa.k0 k0Var = (pa.k0) bVar;
        k0Var.f12933l = qVar2;
        if (qVar2 != k0Var.A0().getVisibility()) {
            k0Var.f12928e = false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <H> H s(Collection<H> collection, x9.l<H, ma.a> lVar) {
        H h10;
        boolean z10;
        if (lVar == 0) {
            a(79);
            throw null;
        }
        if (collection.size() == 1) {
            H h11 = (H) m9.t.Z0(collection);
            if (h11 != null) {
                return h11;
            }
            a(80);
            throw null;
        }
        ArrayList arrayList = new ArrayList(2);
        ArrayList arrayList2 = new ArrayList(m9.n.Q0(collection));
        Iterator<T> it = collection.iterator();
        while (it.hasNext()) {
            arrayList2.add(lVar.invoke(it.next()));
        }
        H h12 = (H) m9.t.Z0(collection);
        ma.a aVar = (ma.a) lVar.invoke(h12);
        for (H h13 : collection) {
            ma.a aVar2 = (ma.a) lVar.invoke(h13);
            if (aVar2 == null) {
                a(71);
                throw null;
            }
            Iterator it2 = arrayList2.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    z10 = true;
                    break;
                }
                if (!k(aVar2, (ma.a) it2.next())) {
                    z10 = false;
                    break;
                }
            }
            if (z10) {
                arrayList.add(h13);
            }
            if (k(aVar2, aVar) && !k(aVar, aVar2)) {
                h12 = h13;
            }
        }
        if (arrayList.isEmpty()) {
            if (h12 != null) {
                return h12;
            }
            a(81);
            throw null;
        }
        if (arrayList.size() == 1) {
            H h14 = (H) m9.t.Z0(arrayList);
            if (h14 != null) {
                return h14;
            }
            a(82);
            throw null;
        }
        Iterator it3 = arrayList.iterator();
        while (true) {
            if (!it3.hasNext()) {
                h10 = null;
                break;
            }
            h10 = (H) it3.next();
            if (!c5.v.z(((ma.a) lVar.invoke(h10)).getReturnType())) {
                break;
            }
        }
        if (h10 != null) {
            return h10;
        }
        H h15 = (H) m9.t.Z0(arrayList);
        if (h15 != null) {
            return h15;
        }
        a(84);
        throw null;
    }

    public final b1 f(List<w0> list, List<w0> list2) {
        if (list == null) {
            a(42);
            throw null;
        }
        if (list2 == null) {
            a(43);
            throw null;
        }
        if (list.isEmpty()) {
            t tVar = new t(null, this.f11291c, this.f11289a, this.f11290b, this.f11292d);
            x9.p<e0, e0, Boolean> pVar = tVar.f11303e;
            dc.f kotlinTypeRefiner = tVar.f11301c;
            dc.e kotlinTypePreparator = tVar.f11302d;
            if (pVar != null) {
                return new s(tVar, kotlinTypePreparator, kotlinTypeRefiner);
            }
            kotlin.jvm.internal.h.f(kotlinTypePreparator, "kotlinTypePreparator");
            kotlin.jvm.internal.h.f(kotlinTypeRefiner, "kotlinTypeRefiner");
            return new b1(true, true, tVar, kotlinTypePreparator, kotlinTypeRefiner);
        }
        HashMap map = new HashMap();
        for (int r02 = 0; r02 < list.size(); r02++) {
            map.put(list.get(r02).i(), list2.get(r02).i());
        }
        t tVar2 = new t(map, this.f11291c, this.f11289a, this.f11290b, this.f11292d);
        x9.p<e0, e0, Boolean> pVar2 = tVar2.f11303e;
        dc.f kotlinTypeRefiner2 = tVar2.f11301c;
        dc.e kotlinTypePreparator2 = tVar2.f11302d;
        if (pVar2 != null) {
            return new s(tVar2, kotlinTypePreparator2, kotlinTypeRefiner2);
        }
        kotlin.jvm.internal.h.f(kotlinTypePreparator2, "kotlinTypePreparator");
        kotlin.jvm.internal.h.f(kotlinTypeRefiner2, "kotlinTypeRefiner");
        return new b1(true, true, tVar2, kotlinTypePreparator2, kotlinTypeRefiner2);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00d6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void h(lb.f r18, java.util.Collection r19, java.util.Collection r20, ma.e r21, ob.m r22) {
        /*
            Method dump skipped, instructions count: 351
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: ob.n.h(lb.f, java.util.Collection, java.util.Collection, ma.e, ob.m):void");
    }

    public final b l(ma.a aVar, ma.a aVar2, ma.e eVar) {
        if (aVar == null) {
            a(19);
            throw null;
        }
        if (aVar2 == null) {
            a(20);
            throw null;
        }
        b bVarM = m(aVar, aVar2, eVar, false);
        if (bVarM != null) {
            return bVarM;
        }
        a(21);
        throw null;
    }

    public final b m(ma.a aVar, ma.a aVar2, ma.e eVar, boolean z10) {
        if (aVar == null) {
            a(22);
            throw null;
        }
        if (aVar2 == null) {
            a(23);
            throw null;
        }
        b bVarN = n(aVar, aVar2, z10);
        boolean z11 = bVarN.c() == 1;
        List<j> list = f11287e;
        Iterator<j> it = list.iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            j.a aVar3 = j.a.CONFLICTS_ONLY;
            if (!zHasNext) {
                if (!z11) {
                    return bVarN;
                }
                for (j jVar : list) {
                    if (jVar.a() == aVar3) {
                        int r6 = jVar.b(aVar, aVar2, eVar).ordinal();
                        if (r6 == 0) {
                            throw new IllegalStateException("Contract violation in " + jVar.getClass().getName() + " condition. It's not supposed to end with success");
                        }
                        if (r6 == 1) {
                            return b.b("External condition failed");
                        }
                        if (r6 == 2) {
                            return b.d("External condition");
                        }
                    }
                }
                b bVar = b.f11293b;
                if (bVar != null) {
                    return bVar;
                }
                b.a(0);
                throw null;
            }
            j next = it.next();
            if (next.a() != aVar3 && (!z11 || next.a() != j.a.SUCCESS_ONLY)) {
                int r32 = next.b(aVar, aVar2, eVar).ordinal();
                if (r32 == 0) {
                    z11 = true;
                } else {
                    if (r32 == 1) {
                        return b.b("External condition failed");
                    }
                    if (r32 == 2) {
                        return b.d("External condition");
                    }
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x00b1, code lost:
    
        r15.remove();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final ob.n.b n(ma.a r18, ma.a r19, boolean r20) {
        /*
            Method dump skipped, instructions count: 363
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: ob.n.n(ma.a, ma.a, boolean):ob.n$b");
    }
}
