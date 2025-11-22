package hc;

import c5.v;
import c5.y;
import cc.c1;
import cc.e0;
import cc.f0;
import cc.i1;
import cc.m0;
import cc.p1;
import cc.q1;
import cc.t1;
import j7.p;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.h;
import l9.g;
import m9.t;
import ma.w0;

/* loaded from: classes2.dex */
public final class d {
    public static final a<e0> a(e0 type) {
        Object objB;
        e eVar;
        h.f(type, "type");
        if (v.z(type)) {
            a<e0> aVarA = a(v.E(type));
            a<e0> aVarA2 = a(v.M(type));
            return new a<>(v.v(f0.c(v.E(aVarA.f7076a), v.M(aVarA2.f7076a)), type), v.v(f0.c(v.E(aVarA.f7077b), v.M(aVarA2.f7077b)), type));
        }
        c1 c1VarM0 = type.M0();
        boolean z10 = true;
        if (type.M0() instanceof pb.b) {
            h.d(c1VarM0, "null cannot be cast to non-null type org.jetbrains.kotlin.resolve.calls.inference.CapturedTypeConstructor");
            i1 i1VarB = ((pb.b) c1VarM0).b();
            e0 type2 = i1VarB.getType();
            h.e(type2, "typeProjection.type");
            e0 e0VarK = q1.k(type2, type.N0());
            int r22 = i1VarB.b().ordinal();
            if (r22 == 1) {
                return new a<>(e0VarK, y.o(type).o());
            }
            if (r22 == 2) {
                m0 m0VarN = y.o(type).n();
                h.e(m0VarN, "type.builtIns.nothingType");
                return new a<>(q1.k(m0VarN, type.N0()), e0VarK);
            }
            throw new AssertionError("Only nontrivial projections should have been captured, not: " + i1VarB);
        }
        if (type.K0().isEmpty() || type.K0().size() != c1VarM0.getParameters().size()) {
            return new a<>(type, type);
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        List<i1> listK0 = type.K0();
        List<w0> parameters = c1VarM0.getParameters();
        h.e(parameters, "typeConstructor.parameters");
        Iterator it = t.A1(listK0, parameters).iterator();
        while (it.hasNext()) {
            g gVar = (g) it.next();
            i1 i1Var = (i1) gVar.f9582a;
            w0 typeParameter = (w0) gVar.f9583b;
            h.e(typeParameter, "typeParameter");
            t1 t1VarI = typeParameter.I();
            if (t1VarI == null) {
                p1.a(35);
                throw null;
            }
            if (i1Var == null) {
                p1.a(36);
                throw null;
            }
            p1 p1Var = p1.f2344b;
            int r92 = (i1Var.c() ? t1.OUT_VARIANCE : p1.b(t1VarI, i1Var.b())).ordinal();
            if (r92 == 0) {
                e0 type3 = i1Var.getType();
                h.e(type3, "type");
                e0 type4 = i1Var.getType();
                h.e(type4, "type");
                eVar = new e(typeParameter, type3, type4);
            } else if (r92 == 1) {
                e0 type5 = i1Var.getType();
                h.e(type5, "type");
                eVar = new e(typeParameter, type5, sb.b.e(typeParameter).o());
            } else {
                if (r92 != 2) {
                    throw new p();
                }
                m0 m0VarN2 = sb.b.e(typeParameter).n();
                h.e(m0VarN2, "typeParameter.builtIns.nothingType");
                e0 type6 = i1Var.getType();
                h.e(type6, "type");
                eVar = new e(typeParameter, m0VarN2, type6);
            }
            if (i1Var.c()) {
                arrayList.add(eVar);
                arrayList2.add(eVar);
            } else {
                a<e0> aVarA3 = a(eVar.f7080b);
                e0 e0Var = aVarA3.f7076a;
                e0 e0Var2 = aVarA3.f7077b;
                a<e0> aVarA4 = a(eVar.f7081c);
                e0 e0Var3 = aVarA4.f7076a;
                e0 e0Var4 = aVarA4.f7077b;
                w0 w0Var = eVar.f7079a;
                e eVar2 = new e(w0Var, e0Var2, e0Var3);
                e eVar3 = new e(w0Var, e0Var, e0Var4);
                arrayList.add(eVar2);
                arrayList2.add(eVar3);
            }
        }
        if (arrayList.isEmpty()) {
            z10 = false;
        } else {
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                ((e) it2.next()).getClass();
                if (!dc.d.f4825a.d(r1.f7080b, r1.f7081c)) {
                    break;
                }
            }
            z10 = false;
        }
        if (z10) {
            objB = y.o(type).n();
            h.e(objB, "type.builtIns.nothingType");
        } else {
            objB = b(arrayList, type);
        }
        return new a<>(objB, b(arrayList2, type));
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x0095  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final cc.e0 b(java.util.ArrayList r9, cc.e0 r10) {
        /*
            java.util.List r0 = r10.K0()
            r0.size()
            r9.size()
            java.util.ArrayList r0 = new java.util.ArrayList
            int r1 = m9.n.Q0(r9)
            r0.<init>(r1)
            java.util.Iterator r9 = r9.iterator()
        L17:
            boolean r1 = r9.hasNext()
            r2 = 0
            if (r1 == 0) goto L9f
            java.lang.Object r1 = r9.next()
            hc.e r1 = (hc.e) r1
            r1.getClass()
            dc.m r3 = dc.d.f4825a
            cc.e0 r4 = r1.f7081c
            cc.e0 r5 = r1.f7080b
            r3.d(r5, r4)
            cc.e0 r3 = r1.f7080b
            cc.e0 r4 = r1.f7081c
            boolean r5 = kotlin.jvm.internal.h.a(r3, r4)
            if (r5 != 0) goto L95
            ma.w0 r1 = r1.f7079a
            cc.t1 r5 = r1.I()
            cc.t1 r6 = cc.t1.IN_VARIANCE
            if (r5 != r6) goto L45
            goto L95
        L45:
            boolean r5 = ja.k.E(r3)
            cc.t1 r7 = cc.t1.OUT_VARIANCE
            cc.t1 r8 = cc.t1.INVARIANT
            if (r5 == 0) goto L62
            cc.t1 r5 = r1.I()
            if (r5 == r6) goto L62
            cc.k1 r2 = new cc.k1
            cc.t1 r1 = r1.I()
            if (r7 != r1) goto L5e
            r7 = r8
        L5e:
            r2.<init>(r4, r7)
            goto L9a
        L62:
            if (r4 == 0) goto L8f
            boolean r2 = ja.k.x(r4)
            if (r2 == 0) goto L72
            boolean r2 = r4.N0()
            if (r2 == 0) goto L72
            r2 = 1
            goto L73
        L72:
            r2 = 0
        L73:
            if (r2 == 0) goto L82
            cc.k1 r2 = new cc.k1
            cc.t1 r1 = r1.I()
            if (r6 != r1) goto L7e
            r6 = r8
        L7e:
            r2.<init>(r3, r6)
            goto L9a
        L82:
            cc.k1 r2 = new cc.k1
            cc.t1 r1 = r1.I()
            if (r7 != r1) goto L8b
            r7 = r8
        L8b:
            r2.<init>(r4, r7)
            goto L9a
        L8f:
            r9 = 140(0x8c, float:1.96E-43)
            ja.k.a(r9)
            throw r2
        L95:
            cc.k1 r2 = new cc.k1
            r2.<init>(r3)
        L9a:
            r0.add(r2)
            goto L17
        L9f:
            r9 = 6
            cc.e0 r9 = cc.n1.c(r10, r0, r2, r9)
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: hc.d.b(java.util.ArrayList, cc.e0):cc.e0");
    }
}
