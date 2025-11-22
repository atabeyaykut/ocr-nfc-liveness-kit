package za;

import cc.i1;
import cc.m0;
import ja.o;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import m9.e0;
import ma.a1;
import ma.r0;
import ma.w0;
import p4.g7;
import qb.s;

/* loaded from: classes2.dex */
public final class d implements na.c, xa.g {

    /* renamed from: i, reason: collision with root package name */
    public static final /* synthetic */ da.m<Object>[] f19896i = {kotlin.jvm.internal.w.c(new kotlin.jvm.internal.r(kotlin.jvm.internal.w.a(d.class), "fqName", "getFqName()Lorg/jetbrains/kotlin/name/FqName;")), kotlin.jvm.internal.w.c(new kotlin.jvm.internal.r(kotlin.jvm.internal.w.a(d.class), "type", "getType()Lorg/jetbrains/kotlin/types/SimpleType;")), kotlin.jvm.internal.w.c(new kotlin.jvm.internal.r(kotlin.jvm.internal.w.a(d.class), "allValueArguments", "getAllValueArguments()Ljava/util/Map;"))};

    /* renamed from: a, reason: collision with root package name */
    public final g7 f19897a;

    /* renamed from: b, reason: collision with root package name */
    public final cb.a f19898b;

    /* renamed from: c, reason: collision with root package name */
    public final bc.j f19899c;

    /* renamed from: d, reason: collision with root package name */
    public final bc.i f19900d;

    /* renamed from: e, reason: collision with root package name */
    public final bb.a f19901e;
    public final bc.i f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f19902g;

    /* renamed from: h, reason: collision with root package name */
    public final boolean f19903h;

    public static final class a extends kotlin.jvm.internal.j implements x9.a<Map<lb.f, ? extends qb.g<?>>> {
        public a() {
            super(0);
        }

        @Override // x9.a
        public final Map<lb.f, ? extends qb.g<?>> invoke() {
            d dVar = d.this;
            ArrayList<cb.b> arguments = dVar.f19898b.getArguments();
            ArrayList arrayList = new ArrayList();
            for (cb.b bVar : arguments) {
                lb.f name = bVar.getName();
                if (name == null) {
                    name = va.x.f18384b;
                }
                qb.g<?> gVarB = dVar.b(bVar);
                l9.g gVar = gVarB != null ? new l9.g(name, gVarB) : null;
                if (gVar != null) {
                    arrayList.add(gVar);
                }
            }
            return e0.S0(arrayList);
        }
    }

    public static final class b extends kotlin.jvm.internal.j implements x9.a<lb.c> {
        public b() {
            super(0);
        }

        @Override // x9.a
        public final lb.c invoke() {
            lb.b bVarC = d.this.f19898b.c();
            if (bVarC != null) {
                return bVarC.b();
            }
            return null;
        }
    }

    public static final class c extends kotlin.jvm.internal.j implements x9.a<m0> {
        public c() {
            super(0);
        }

        @Override // x9.a
        public final m0 invoke() {
            d dVar = d.this;
            lb.c cVarD = dVar.d();
            cb.a aVar = dVar.f19898b;
            if (cVarD == null) {
                return ec.i.c(ec.h.NOT_FOUND_FQNAME_FOR_JAVA_ANNOTATION, aVar.toString());
            }
            a0.b bVar = a0.b.f13l;
            g7 g7Var = dVar.f19897a;
            ma.e eVarN = a0.b.n(bVar, cVarD, g7Var.a().m());
            if (eVarN == null) {
                sa.r rVarZ = aVar.z();
                eVarN = rVarZ != null ? ((ya.c) g7Var.f12358a).f19342k.a(rVarZ) : null;
                if (eVarN == null) {
                    eVarN = ma.t.c(g7Var.a(), lb.b.l(cVarD), ((ya.c) g7Var.f12358a).f19336d.c().f19452l);
                }
            }
            return eVarN.q();
        }
    }

    public d(g7 c10, cb.a javaAnnotation, boolean z10) {
        kotlin.jvm.internal.h.f(c10, "c");
        kotlin.jvm.internal.h.f(javaAnnotation, "javaAnnotation");
        this.f19897a = c10;
        this.f19898b = javaAnnotation;
        this.f19899c = c10.b().f(new b());
        this.f19900d = c10.b().d(new c());
        this.f19901e = ((ya.c) c10.f12358a).f19341j.a(javaAnnotation);
        this.f = c10.b().d(new a());
        javaAnnotation.e();
        this.f19902g = false;
        javaAnnotation.u();
        this.f19903h = z10;
    }

    @Override // na.c
    public final Map<lb.f, qb.g<?>> a() {
        return (Map) b8.f.O(this.f, f19896i[2]);
    }

    public final qb.g<?> b(cb.b bVar) {
        qb.s sVar;
        cc.e0 e0VarH;
        if (bVar instanceof cb.o) {
            return qb.i.b(((cb.o) bVar).getValue());
        }
        qb.g kVar = null;
        kVar = null;
        kVar = null;
        kVar = null;
        kVar = null;
        kVar = null;
        if (bVar instanceof cb.m) {
            cb.m mVar = (cb.m) bVar;
            lb.b bVarB = mVar.b();
            lb.f fVarD = mVar.d();
            if (bVarB != null && fVarD != null) {
                kVar = new qb.k(bVarB, fVarD);
            }
        } else {
            boolean z10 = bVar instanceof cb.e;
            g7 g7Var = this.f19897a;
            if (z10) {
                cb.e eVar = (cb.e) bVar;
                lb.f name = eVar.getName();
                if (name == null) {
                    name = va.x.f18384b;
                }
                kotlin.jvm.internal.h.e(name, "argument.name ?: DEFAULT_ANNOTATION_MEMBER_NAME");
                ArrayList arrayListE = eVar.e();
                m0 type = (m0) b8.f.O(this.f19900d, f19896i[1]);
                kotlin.jvm.internal.h.e(type, "type");
                if (!c5.v.y(type)) {
                    ma.e eVarD = sb.b.d(this);
                    kotlin.jvm.internal.h.c(eVarD);
                    a1 a1VarN = c5.y.n(name, eVarD);
                    if (a1VarN == null || (e0VarH = a1VarN.getType()) == null) {
                        e0VarH = ((ya.c) g7Var.f12358a).f19346o.m().h(ec.i.c(ec.h.UNKNOWN_ARRAY_ELEMENT_TYPE_OF_ANNOTATION_ARGUMENT, new String[0]));
                    }
                    ArrayList arrayList = new ArrayList(m9.n.Q0(arrayListE));
                    Iterator it = arrayListE.iterator();
                    while (it.hasNext()) {
                        qb.g<?> gVarB = b((cb.b) it.next());
                        if (gVarB == null) {
                            gVarB = new qb.u();
                        }
                        arrayList.add(gVarB);
                    }
                    return new qb.b(arrayList, new qb.h(e0VarH));
                }
            } else {
                if (bVar instanceof cb.c) {
                    return new qb.a(new d(g7Var, ((cb.c) bVar).a(), false));
                }
                if (bVar instanceof cb.h) {
                    cc.e0 e0VarE = ((ab.d) g7Var.f12362e).e(((cb.h) bVar).c(), c5.v.K(2, false, false, null, 7));
                    if (!c5.v.y(e0VarE)) {
                        cc.e0 type2 = e0VarE;
                        int r32 = 0;
                        while (ja.k.y(type2)) {
                            type2 = ((i1) m9.t.p1(type2.K0())).getType();
                            kotlin.jvm.internal.h.e(type2, "type.arguments.single().type");
                            r32++;
                        }
                        ma.g gVarN = type2.M0().n();
                        if (gVarN instanceof ma.e) {
                            lb.b bVarF = sb.b.f(gVarN);
                            if (bVarF == null) {
                                kVar = sVar;
                                sVar = new qb.s(new s.a.C0225a(e0VarE));
                            } else {
                                kVar = sVar;
                                sVar = new qb.s(bVarF, r32);
                            }
                        } else if (gVarN instanceof w0) {
                            return new qb.s(lb.b.l(o.a.f8369a.h()), 0);
                        }
                    }
                }
            }
        }
        return kVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // na.c
    public final lb.c d() {
        da.m<Object> p10 = f19896i[0];
        bc.j jVar = this.f19899c;
        kotlin.jvm.internal.h.f(jVar, "<this>");
        kotlin.jvm.internal.h.f(p10, "p");
        return (lb.c) jVar.invoke();
    }

    @Override // xa.g
    public final boolean e() {
        return this.f19902g;
    }

    @Override // na.c
    public final r0 getSource() {
        return this.f19901e;
    }

    @Override // na.c
    public final cc.e0 getType() {
        return (m0) b8.f.O(this.f19900d, f19896i[1]);
    }

    public final String toString() {
        return nb.c.f10697a.p(this, null);
    }
}
