package eb;

import eb.d.a;
import eb.v;
import gb.b;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import jb.a;
import kb.d;
import ma.r0;
import mb.h;
import yb.g0;

/* loaded from: classes2.dex */
public abstract class d<A, S extends a<? extends A>> implements yb.g<A> {

    /* renamed from: a, reason: collision with root package name */
    public final q f5186a;

    public static abstract class a<A> {
    }

    public d(ra.f fVar) {
        this.f5186a = fVar;
    }

    public static /* synthetic */ List m(d dVar, g0 g0Var, v vVar, boolean z10, Boolean bool, boolean z11, int r15) {
        boolean z12 = (r15 & 4) != 0 ? false : z10;
        if ((r15 & 16) != 0) {
            bool = null;
        }
        return dVar.l(g0Var, vVar, z12, false, bool, (r15 & 32) != 0 ? false : z11);
    }

    public static v n(mb.p proto, ib.c nameResolver, ib.g typeTable, yb.c kind, boolean z10) {
        a.b bVar;
        String str;
        d.b bVarC;
        kotlin.jvm.internal.h.f(proto, "proto");
        kotlin.jvm.internal.h.f(nameResolver, "nameResolver");
        kotlin.jvm.internal.h.f(typeTable, "typeTable");
        kotlin.jvm.internal.h.f(kind, "kind");
        if (proto instanceof gb.c) {
            mb.f fVar = kb.h.f8820a;
            bVarC = kb.h.a((gb.c) proto, nameResolver, typeTable);
            if (bVarC == null) {
                return null;
            }
        } else {
            if (!(proto instanceof gb.h)) {
                if (!(proto instanceof gb.m)) {
                    return null;
                }
                h.e<gb.m, a.c> propertySignature = jb.a.f8413d;
                kotlin.jvm.internal.h.e(propertySignature, "propertySignature");
                a.c cVar = (a.c) ib.e.a((h.c) proto, propertySignature);
                if (cVar == null) {
                    return null;
                }
                int r11 = kind.ordinal();
                if (r11 == 1) {
                    return f.a((gb.m) proto, nameResolver, typeTable, true, true, z10);
                }
                if (r11 == 2) {
                    if (!((cVar.f8446b & 4) == 4)) {
                        return null;
                    }
                    bVar = cVar.f8449e;
                    str = "signature.getter";
                } else {
                    if (r11 != 3) {
                        return null;
                    }
                    if (!((cVar.f8446b & 8) == 8)) {
                        return null;
                    }
                    bVar = cVar.f;
                    str = "signature.setter";
                }
                kotlin.jvm.internal.h.e(bVar, str);
                return v.a.c(nameResolver, bVar);
            }
            mb.f fVar2 = kb.h.f8820a;
            bVarC = kb.h.c((gb.h) proto, nameResolver, typeTable);
            if (bVarC == null) {
                return null;
            }
        }
        return v.a.b(bVarC);
    }

    @Override // yb.g
    public final List a(g0.a container, gb.f proto) {
        kotlin.jvm.internal.h.f(container, "container");
        kotlin.jvm.internal.h.f(proto, "proto");
        String string = container.f19408a.getString(proto.f6297d);
        String strC = container.f.c();
        kotlin.jvm.internal.h.e(strC, "container as ProtoContai…Class).classId.asString()");
        return m(this, container, v.a.a(string, kb.b.b(strC)), false, null, false, 60);
    }

    @Override // yb.g
    public final List<A> b(g0 g0Var, mb.p proto, yb.c kind) {
        kotlin.jvm.internal.h.f(proto, "proto");
        kotlin.jvm.internal.h.f(kind, "kind");
        if (kind == yb.c.PROPERTY) {
            return s(g0Var, (gb.m) proto, 1);
        }
        v vVarN = n(proto, g0Var.f19408a, g0Var.f19409b, kind, false);
        return vVarN == null ? m9.v.f10173a : m(this, g0Var, vVarN, false, null, false, 60);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0077  */
    @Override // yb.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<A> c(yb.g0 r8, mb.p r9, yb.c r10, int r11, gb.t r12) {
        /*
            r7 = this;
            java.lang.String r0 = "container"
            kotlin.jvm.internal.h.f(r8, r0)
            java.lang.String r0 = "callableProto"
            kotlin.jvm.internal.h.f(r9, r0)
            java.lang.String r0 = "kind"
            kotlin.jvm.internal.h.f(r10, r0)
            java.lang.String r0 = "proto"
            kotlin.jvm.internal.h.f(r12, r0)
            ib.c r12 = r8.f19408a
            ib.g r0 = r8.f19409b
            r1 = 0
            eb.v r10 = n(r9, r12, r0, r10, r1)
            if (r10 == 0) goto La1
            boolean r12 = r9 instanceof gb.h
            r0 = 64
            r2 = 32
            r3 = 1
            if (r12 == 0) goto L44
            gb.h r9 = (gb.h) r9
            int r9 = r9.f6328c
            r12 = r9 & 32
            if (r12 != r2) goto L32
            r12 = 1
            goto L33
        L32:
            r12 = 0
        L33:
            if (r12 != 0) goto L40
            r9 = r9 & r0
            if (r9 != r0) goto L3a
            r9 = 1
            goto L3b
        L3a:
            r9 = 0
        L3b:
            if (r9 == 0) goto L3e
            goto L40
        L3e:
            r9 = 0
            goto L41
        L40:
            r9 = 1
        L41:
            if (r9 == 0) goto L78
            goto L77
        L44:
            boolean r12 = r9 instanceof gb.m
            if (r12 == 0) goto L64
            gb.m r9 = (gb.m) r9
            int r9 = r9.f6393c
            r12 = r9 & 32
            if (r12 != r2) goto L52
            r12 = 1
            goto L53
        L52:
            r12 = 0
        L53:
            if (r12 != 0) goto L60
            r9 = r9 & r0
            if (r9 != r0) goto L5a
            r9 = 1
            goto L5b
        L5a:
            r9 = 0
        L5b:
            if (r9 == 0) goto L5e
            goto L60
        L5e:
            r9 = 0
            goto L61
        L60:
            r9 = 1
        L61:
            if (r9 == 0) goto L78
            goto L77
        L64:
            boolean r12 = r9 instanceof gb.c
            if (r12 == 0) goto L89
            r9 = r8
            yb.g0$a r9 = (yb.g0.a) r9
            gb.b$c r12 = gb.b.c.ENUM_CLASS
            gb.b$c r0 = r9.f19413g
            if (r0 != r12) goto L73
            r1 = 2
            goto L78
        L73:
            boolean r9 = r9.f19414h
            if (r9 == 0) goto L78
        L77:
            r1 = 1
        L78:
            int r11 = r11 + r1
            eb.v r2 = eb.v.a.e(r10, r11)
            r3 = 0
            r4 = 0
            r5 = 0
            r6 = 60
            r0 = r7
            r1 = r8
            java.util.List r8 = m(r0, r1, r2, r3, r4, r5, r6)
            return r8
        L89:
            java.lang.UnsupportedOperationException r8 = new java.lang.UnsupportedOperationException
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            java.lang.String r11 = "Unsupported message: "
            r10.<init>(r11)
            java.lang.Class r9 = r9.getClass()
            r10.append(r9)
            java.lang.String r9 = r10.toString()
            r8.<init>(r9)
            throw r8
        La1:
            m9.v r8 = m9.v.f10173a
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: eb.d.c(yb.g0, mb.p, yb.c, int, gb.t):java.util.List");
    }

    @Override // yb.g
    public final ArrayList e(g0.a container) {
        kotlin.jvm.internal.h.f(container, "container");
        r0 r0Var = container.f19410c;
        u uVar = r0Var instanceof u ? (u) r0Var : null;
        s sVar = uVar != null ? uVar.f5236b : null;
        if (sVar != null) {
            ArrayList arrayList = new ArrayList(1);
            sVar.b(new e(this, arrayList));
            return arrayList;
        }
        throw new IllegalStateException(("Class for loading annotations is not found: " + container.a()).toString());
    }

    @Override // yb.g
    public final List<A> f(g0 g0Var, mb.p proto, yb.c kind) {
        kotlin.jvm.internal.h.f(proto, "proto");
        kotlin.jvm.internal.h.f(kind, "kind");
        v vVarN = n(proto, g0Var.f19408a, g0Var.f19409b, kind, false);
        return vVarN != null ? m(this, g0Var, v.a.e(vVarN, 0), false, null, false, 60) : m9.v.f10173a;
    }

    @Override // yb.g
    public final List<A> h(g0 g0Var, gb.m proto) {
        kotlin.jvm.internal.h.f(proto, "proto");
        return s(g0Var, proto, 3);
    }

    @Override // yb.g
    public final ArrayList i(gb.p proto, ib.c nameResolver) {
        kotlin.jvm.internal.h.f(proto, "proto");
        kotlin.jvm.internal.h.f(nameResolver, "nameResolver");
        Object objK = proto.k(jb.a.f);
        kotlin.jvm.internal.h.e(objK, "proto.getExtension(JvmProtoBuf.typeAnnotation)");
        Iterable<gb.a> iterable = (Iterable) objK;
        ArrayList arrayList = new ArrayList(m9.n.Q0(iterable));
        for (gb.a it : iterable) {
            kotlin.jvm.internal.h.e(it, "it");
            arrayList.add(((h) this).f5196e.a(it, nameResolver));
        }
        return arrayList;
    }

    @Override // yb.g
    public final ArrayList j(gb.r proto, ib.c nameResolver) {
        kotlin.jvm.internal.h.f(proto, "proto");
        kotlin.jvm.internal.h.f(nameResolver, "nameResolver");
        Object objK = proto.k(jb.a.f8416h);
        kotlin.jvm.internal.h.e(objK, "proto.getExtension(JvmPr….typeParameterAnnotation)");
        Iterable<gb.a> iterable = (Iterable) objK;
        ArrayList arrayList = new ArrayList(m9.n.Q0(iterable));
        for (gb.a it : iterable) {
            kotlin.jvm.internal.h.e(it, "it");
            arrayList.add(((h) this).f5196e.a(it, nameResolver));
        }
        return arrayList;
    }

    @Override // yb.g
    public final List<A> k(g0 g0Var, gb.m proto) {
        kotlin.jvm.internal.h.f(proto, "proto");
        return s(g0Var, proto, 2);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<A> l(yb.g0 r7, eb.v r8, boolean r9, boolean r10, java.lang.Boolean r11, boolean r12) {
        /*
            r6 = this;
            r0 = r6
            r1 = r7
            r2 = r9
            r3 = r10
            r4 = r11
            r5 = r12
            eb.s r9 = r0.o(r1, r2, r3, r4, r5)
            if (r9 != 0) goto L23
            boolean r9 = r7 instanceof yb.g0.a
            r10 = 0
            if (r9 == 0) goto L22
            yb.g0$a r7 = (yb.g0.a) r7
            ma.r0 r7 = r7.f19410c
            boolean r9 = r7 instanceof eb.u
            if (r9 == 0) goto L1c
            eb.u r7 = (eb.u) r7
            goto L1d
        L1c:
            r7 = r10
        L1d:
            if (r7 == 0) goto L22
            eb.s r9 = r7.f5236b
            goto L23
        L22:
            r9 = r10
        L23:
            m9.v r7 = m9.v.f10173a
            if (r9 != 0) goto L28
            return r7
        L28:
            r10 = r6
            eb.a r10 = (eb.a) r10
            bc.g<eb.s, eb.a$a<A, C>> r10 = r10.f5162b
            bc.c$k r10 = (bc.c.k) r10
            java.lang.Object r9 = r10.invoke(r9)
            eb.a$a r9 = (eb.a.C0078a) r9
            java.util.Map<eb.v, java.util.List<A>> r9 = r9.f5163a
            java.lang.Object r8 = r9.get(r8)
            java.util.List r8 = (java.util.List) r8
            if (r8 != 0) goto L40
            goto L41
        L40:
            r7 = r8
        L41:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: eb.d.l(yb.g0, eb.v, boolean, boolean, java.lang.Boolean, boolean):java.util.List");
    }

    public final s o(g0 container, boolean z10, boolean z11, Boolean bool, boolean z12) {
        g0.a aVar;
        lb.b bVarL;
        kotlin.jvm.internal.h.f(container, "container");
        b.c cVar = b.c.INTERFACE;
        q qVar = this.f5186a;
        r0 r0Var = container.f19410c;
        if (z10) {
            if (bool == null) {
                throw new IllegalStateException(("isConst should not be null for property (container=" + container + ')').toString());
            }
            if (container instanceof g0.a) {
                g0.a aVar2 = (g0.a) container;
                if (aVar2.f19413g == cVar) {
                    bVarL = aVar2.f.d(lb.f.t("DefaultImpls"));
                }
                return r.a(qVar, bVarL);
            }
            if (bool.booleanValue() && (container instanceof g0.b)) {
                n nVar = r0Var instanceof n ? (n) r0Var : null;
                tb.b bVar = nVar != null ? nVar.f5221c : null;
                if (bVar != null) {
                    String strE = bVar.e();
                    kotlin.jvm.internal.h.e(strE, "facadeClassName.internalName");
                    bVarL = lb.b.l(new lb.c(mc.j.B(strE, '/', '.')));
                    return r.a(qVar, bVarL);
                }
            }
        }
        if (z11 && (container instanceof g0.a)) {
            g0.a aVar3 = (g0.a) container;
            if (aVar3.f19413g == b.c.COMPANION_OBJECT && (aVar = aVar3.f19412e) != null) {
                b.c cVar2 = b.c.CLASS;
                b.c cVar3 = aVar.f19413g;
                if (cVar3 == cVar2 || cVar3 == b.c.ENUM_CLASS || (z12 && (cVar3 == cVar || cVar3 == b.c.ANNOTATION_CLASS))) {
                    r0 r0Var2 = aVar.f19410c;
                    u uVar = r0Var2 instanceof u ? (u) r0Var2 : null;
                    if (uVar != null) {
                        return uVar.f5236b;
                    }
                    return null;
                }
            }
        }
        if (!(container instanceof g0.b) || !(r0Var instanceof n)) {
            return null;
        }
        kotlin.jvm.internal.h.d(r0Var, "null cannot be cast to non-null type org.jetbrains.kotlin.load.kotlin.JvmPackagePartSource");
        n nVar2 = (n) r0Var;
        s sVar = nVar2.f5222d;
        return sVar == null ? r.a(qVar, nVar2.d()) : sVar;
    }

    public final boolean p(lb.b classId) {
        s sVarA;
        kotlin.jvm.internal.h.f(classId, "classId");
        if (classId.g() != null && kotlin.jvm.internal.h.a(classId.j().o(), "Container") && (sVarA = r.a(this.f5186a, classId)) != null) {
            LinkedHashSet linkedHashSet = ia.b.f7317a;
            kotlin.jvm.internal.t tVar = new kotlin.jvm.internal.t();
            sVarA.b(new ia.a(tVar));
            if (tVar.f8973a) {
                return true;
            }
        }
        return false;
    }

    public abstract i q(lb.b bVar, r0 r0Var, List list);

    public final i r(lb.b bVar, ra.b bVar2, List result) {
        kotlin.jvm.internal.h.f(result, "result");
        if (ia.b.f7317a.contains(bVar)) {
            return null;
        }
        return q(bVar, bVar2, result);
    }

    /* JADX WARN: Incorrect types in method signature: (Lyb/g0;Lgb/m;Ljava/lang/Object;)Ljava/util/List<TA;>; */
    public final List s(g0 g0Var, gb.m mVar, int r15) {
        boolean zI = androidx.room.util.a.i(ib.b.A, mVar.f6394d, "IS_CONST.get(proto.flags)");
        boolean zD = kb.h.d(mVar);
        m9.v vVar = m9.v.f10173a;
        if (r15 == 1) {
            v vVarA = f.a(mVar, g0Var.f19408a, g0Var.f19409b, (40 & 8) != 0 ? false : false, (40 & 16) != 0 ? false : true, (40 & 32) != 0);
            return vVarA == null ? vVar : m(this, g0Var, vVarA, true, Boolean.valueOf(zI), zD, 8);
        }
        v vVarA2 = f.a(mVar, g0Var.f19408a, g0Var.f19409b, (40 & 8) != 0 ? false : true, (40 & 16) != 0 ? false : false, (40 & 32) != 0);
        if (vVarA2 == null) {
            return vVar;
        }
        return mc.n.G(vVarA2.f5237a, "$delegate", false) != (r15 == 3) ? vVar : l(g0Var, vVarA2, true, true, Boolean.valueOf(zI), zD);
    }
}
