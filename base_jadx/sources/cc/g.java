package cc;

import cc.b1;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* loaded from: classes2.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    public static final g f2306a = new g();

    /* JADX WARN: Removed duplicated region for block: B:12:0x002d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean a(fc.n r3, fc.i r4) {
        /*
            boolean r0 = r3.i0(r4)
            r1 = 1
            if (r0 != 0) goto L32
            boolean r0 = r4 instanceof fc.d
            r2 = 0
            if (r0 != 0) goto Ld
            goto L2d
        Ld:
            fc.d r4 = (fc.d) r4
            dc.j r4 = r3.D(r4)
            cc.i1 r4 = r3.p(r4)
            boolean r0 = r3.w(r4)
            if (r0 != 0) goto L2d
            cc.s1 r4 = r3.P(r4)
            cc.m0 r4 = r3.g(r4)
            boolean r3 = r3.i0(r4)
            if (r3 == 0) goto L2d
            r3 = 1
            goto L2e
        L2d:
            r3 = 0
        L2e:
            if (r3 == 0) goto L31
            goto L32
        L31:
            r1 = 0
        L32:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: cc.g.a(fc.n, fc.i):boolean");
    }

    public static final boolean b(fc.n nVar, b1 b1Var, fc.i iVar, fc.i iVar2, boolean z10) {
        Set<fc.h> setC0 = nVar.c0(iVar);
        if ((setC0 instanceof Collection) && setC0.isEmpty()) {
            return false;
        }
        for (fc.h hVar : setC0) {
            if (kotlin.jvm.internal.h.a(nVar.V(hVar), nVar.f(iVar2)) || (z10 && i(f2306a, b1Var, iVar2, hVar))) {
                return true;
            }
        }
        return false;
    }

    public static List c(b1 b1Var, fc.i iVar, fc.l lVar) {
        b1.b bVarF0;
        fc.n nVar = b1Var.f2265c;
        nVar.U(iVar, lVar);
        boolean zX = nVar.x(lVar);
        m9.v vVar = m9.v.f10173a;
        if (!zX && nVar.u(iVar)) {
            return vVar;
        }
        if (nVar.T(lVar)) {
            if (!nVar.h(nVar.f(iVar), lVar)) {
                return vVar;
            }
            m0 m0VarQ = nVar.q(iVar);
            if (m0VarQ != null) {
                iVar = m0VarQ;
            }
            return b8.f.S(iVar);
        }
        kc.c cVar = new kc.c();
        b1Var.c();
        ArrayDeque<fc.i> arrayDeque = b1Var.f2268g;
        kotlin.jvm.internal.h.c(arrayDeque);
        kc.d dVar = b1Var.f2269h;
        kotlin.jvm.internal.h.c(dVar);
        arrayDeque.push(iVar);
        while (!arrayDeque.isEmpty()) {
            if (dVar.f8840b > 1000) {
                throw new IllegalStateException(("Too many supertypes for type: " + iVar + ". Supertypes = " + m9.t.g1(dVar, null, null, null, null, 63)).toString());
            }
            fc.i current = arrayDeque.pop();
            kotlin.jvm.internal.h.e(current, "current");
            if (dVar.add(current)) {
                m0 m0VarQ2 = nVar.q(current);
                if (m0VarQ2 == null) {
                    m0VarQ2 = current;
                }
                boolean zH = nVar.h(nVar.f(m0VarQ2), lVar);
                fc.n nVar2 = b1Var.f2265c;
                if (zH) {
                    cVar.add(m0VarQ2);
                    bVarF0 = b1.b.c.f2272a;
                } else {
                    bVarF0 = nVar.E(m0VarQ2) == 0 ? b1.b.C0056b.f2271a : nVar2.f0(m0VarQ2);
                }
                if (!(!kotlin.jvm.internal.h.a(bVarF0, b1.b.c.f2272a))) {
                    bVarF0 = null;
                }
                if (bVarF0 != null) {
                    Iterator<fc.h> it = nVar2.l0(nVar2.f(current)).iterator();
                    while (it.hasNext()) {
                        arrayDeque.add(bVarF0.a(b1Var, it.next()));
                    }
                }
            }
        }
        b1Var.a();
        return cVar;
    }

    public static List d(b1 b1Var, fc.i iVar, fc.l lVar) {
        List listC = c(b1Var, iVar, lVar);
        if (listC.size() < 2) {
            return listC;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = listC.iterator();
        while (true) {
            boolean z10 = true;
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            fc.n nVar = b1Var.f2265c;
            fc.j jVarB = nVar.B((fc.i) next);
            int r52 = nVar.j0(jVarB);
            int r72 = 0;
            while (true) {
                if (r72 >= r52) {
                    break;
                }
                if (!(nVar.n(nVar.P(nVar.t(jVarB, r72))) == null)) {
                    z10 = false;
                    break;
                }
                r72++;
            }
            if (z10) {
                arrayList.add(next);
            }
        }
        return arrayList.isEmpty() ^ true ? arrayList : listC;
    }

    public static boolean e(b1 state, fc.h a10, fc.h b10) {
        kotlin.jvm.internal.h.f(state, "state");
        kotlin.jvm.internal.h.f(a10, "a");
        kotlin.jvm.internal.h.f(b10, "b");
        if (a10 == b10) {
            return true;
        }
        g gVar = f2306a;
        fc.n nVar = state.f2265c;
        if (g(nVar, a10) && g(nVar, b10)) {
            c6.a aVar = state.f2267e;
            fc.h hVarD = state.d(aVar.r(a10));
            fc.h hVarD2 = state.d(aVar.r(b10));
            m0 m0VarZ = nVar.Z(hVarD);
            if (!nVar.h(nVar.V(hVarD), nVar.V(hVarD2))) {
                return false;
            }
            if (nVar.E(m0VarZ) == 0) {
                return nVar.X(hVarD) || nVar.X(hVarD2) || nVar.k(m0VarZ) == nVar.k(nVar.Z(hVarD2));
            }
        }
        return i(gVar, state, a10, b10) && i(gVar, state, b10, a10);
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0063, code lost:
    
        return r7.F(r7.V(r8), r2);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static fc.m f(fc.n r7, fc.h r8, fc.i r9) {
        /*
            int r0 = r7.E(r8)
            r1 = 0
            r2 = 0
        L6:
            r3 = 0
            if (r2 >= r0) goto L67
            fc.k r4 = r7.j(r8, r2)
            boolean r5 = r7.w(r4)
            r6 = 1
            r5 = r5 ^ r6
            if (r5 == 0) goto L16
            r3 = r4
        L16:
            if (r3 == 0) goto L64
            cc.s1 r3 = r7.P(r3)
            if (r3 != 0) goto L1f
            goto L64
        L1f:
            cc.m0 r4 = r7.Z(r3)
            fc.i r4 = r7.M(r4)
            boolean r4 = r7.l(r4)
            if (r4 == 0) goto L3c
            cc.m0 r4 = r7.Z(r9)
            fc.i r4 = r7.M(r4)
            boolean r4 = r7.l(r4)
            if (r4 == 0) goto L3c
            goto L3d
        L3c:
            r6 = 0
        L3d:
            boolean r4 = kotlin.jvm.internal.h.a(r3, r9)
            if (r4 != 0) goto L5b
            if (r6 == 0) goto L54
            cc.c1 r4 = r7.V(r3)
            cc.c1 r5 = r7.V(r9)
            boolean r4 = kotlin.jvm.internal.h.a(r4, r5)
            if (r4 == 0) goto L54
            goto L5b
        L54:
            fc.m r3 = f(r7, r3, r9)
            if (r3 == 0) goto L64
            return r3
        L5b:
            cc.c1 r8 = r7.V(r8)
            fc.m r7 = r7.F(r8, r2)
            return r7
        L64:
            int r2 = r2 + 1
            goto L6
        L67:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: cc.g.f(fc.n, fc.h, fc.i):fc.m");
    }

    public static boolean g(fc.n nVar, fc.h hVar) {
        return (!nVar.O(nVar.V(hVar)) || nVar.C(hVar) || nVar.k0(hVar) || nVar.W(hVar) || !kotlin.jvm.internal.h.a(nVar.f(nVar.Z(hVar)), nVar.f(nVar.g(hVar)))) ? false : true;
    }

    public static boolean h(b1 b1Var, fc.j capturedSubArguments, fc.i superType) {
        boolean zI;
        kotlin.jvm.internal.h.f(b1Var, "<this>");
        kotlin.jvm.internal.h.f(capturedSubArguments, "capturedSubArguments");
        kotlin.jvm.internal.h.f(superType, "superType");
        fc.n nVar = b1Var.f2265c;
        c1 c1VarF = nVar.f(superType);
        int r22 = nVar.j0(capturedSubArguments);
        int r32 = nVar.d0(c1VarF);
        if (r22 != r32 || r22 != nVar.E(superType)) {
            return false;
        }
        for (int r23 = 0; r23 < r32; r23++) {
            fc.k kVarJ = nVar.j(superType, r23);
            if (!nVar.w(kVarJ)) {
                s1 s1VarP = nVar.P(kVarJ);
                fc.k kVarT = nVar.t(capturedSubArguments, r23);
                nVar.g0(kVarT);
                s1 s1VarP2 = nVar.P(kVarT);
                int r92 = nVar.a0(nVar.F(c1VarF, r23));
                int r6 = nVar.g0(kVarJ);
                androidx.camera.core.impl.utils.f.j(r92, "declared");
                androidx.camera.core.impl.utils.f.j(r6, "useSite");
                if (r92 == 3) {
                    r92 = r6;
                } else if (r6 != 3 && r92 != r6) {
                    r92 = 0;
                }
                if (r92 == 0) {
                    return b1Var.f2263a;
                }
                g gVar = f2306a;
                if (r92 == 3 && (j(nVar, s1VarP2, s1VarP, c1VarF) || j(nVar, s1VarP, s1VarP2, c1VarF))) {
                    continue;
                } else {
                    int r10 = b1Var.f;
                    if (r10 > 100) {
                        throw new IllegalStateException(("Arguments depth is too high. Some related argument: " + s1VarP2).toString());
                    }
                    b1Var.f = r10 + 1;
                    int r93 = g.d.c(r92);
                    if (r93 == 0) {
                        zI = i(gVar, b1Var, s1VarP, s1VarP2);
                    } else if (r93 == 1) {
                        zI = i(gVar, b1Var, s1VarP2, s1VarP);
                    } else {
                        if (r93 != 2) {
                            throw new j7.p();
                        }
                        zI = e(b1Var, s1VarP2, s1VarP);
                    }
                    b1Var.f--;
                    if (!zI) {
                        return false;
                    }
                }
            }
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x016f  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x018b  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x01b9  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x01c5  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x02da  */
    /* JADX WARN: Removed duplicated region for block: B:217:0x0352  */
    /* JADX WARN: Removed duplicated region for block: B:218:0x0354  */
    /* JADX WARN: Removed duplicated region for block: B:223:0x0360  */
    /* JADX WARN: Removed duplicated region for block: B:225:0x0363  */
    /* JADX WARN: Removed duplicated region for block: B:226:0x0369  */
    /* JADX WARN: Removed duplicated region for block: B:4:0x001b  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x00fb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean i(cc.g r24, cc.b1 r25, fc.h r26, fc.h r27) {
        /*
            Method dump skipped, instructions count: 1568
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: cc.g.i(cc.g, cc.b1, fc.h, fc.h):boolean");
    }

    public static boolean j(fc.n nVar, fc.h hVar, fc.h hVar2, fc.l lVar) {
        ma.w0 w0VarR;
        na.a aVarD = nVar.d(hVar);
        if (!(aVarD instanceof fc.d)) {
            return false;
        }
        fc.d dVar = (fc.d) aVarD;
        if (nVar.L(dVar) || !nVar.w(nVar.p(nVar.D(dVar))) || nVar.s(dVar) != fc.b.FOR_SUBTYPING) {
            return false;
        }
        c1 c1VarV = nVar.V(hVar2);
        fc.p pVar = c1VarV instanceof fc.p ? (fc.p) c1VarV : null;
        return (pVar == null || (w0VarR = nVar.R(pVar)) == null || !nVar.A(w0VarR, lVar)) ? false : true;
    }
}
