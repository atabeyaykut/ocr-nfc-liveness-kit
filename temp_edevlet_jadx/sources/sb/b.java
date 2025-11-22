package sb;

import dc.f;
import ja.k;
import kotlin.jvm.internal.f;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.v;
import kotlin.jvm.internal.w;
import ma.a1;
import ma.b0;
import ma.e;
import ma.e0;
import ma.g;
import ma.j;
import ma.k0;
import ma.l0;
import ob.i;
import x9.l;

/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f15372a = 0;

    public /* synthetic */ class a extends f implements l<a1, Boolean> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f15373a = new a();

        public a() {
            super(1);
        }

        @Override // kotlin.jvm.internal.a, da.c
        public final String getName() {
            return "declaresDefaultValue";
        }

        @Override // kotlin.jvm.internal.a
        public final da.f getOwner() {
            return w.a(a1.class);
        }

        @Override // kotlin.jvm.internal.a
        public final String getSignature() {
            return "declaresDefaultValue()Z";
        }

        @Override // x9.l
        public final Boolean invoke(a1 a1Var) {
            a1 p02 = a1Var;
            h.f(p02, "p0");
            return Boolean.valueOf(p02.t0());
        }
    }

    static {
        lb.f.t("value");
    }

    public static final boolean a(a1 a1Var) {
        h.f(a1Var, "<this>");
        Boolean boolD = kc.a.d(b8.f.S(a1Var), a2.b.f46l, a.f15373a);
        h.e(boolD, "ifAny(\n        listOf(th…eclaresDefaultValue\n    )");
        return boolD.booleanValue();
    }

    public static ma.b b(ma.b bVar, l predicate) {
        h.f(bVar, "<this>");
        h.f(predicate, "predicate");
        return (ma.b) kc.a.b(b8.f.S(bVar), new sb.a(false), new c(new v(), predicate));
    }

    public static final lb.c c(j jVar) {
        h.f(jVar, "<this>");
        lb.d dVarH = h(jVar);
        if (!dVarH.e()) {
            dVarH = null;
        }
        if (dVarH != null) {
            return dVarH.h();
        }
        return null;
    }

    public static final e d(na.c cVar) {
        h.f(cVar, "<this>");
        g gVarN = cVar.getType().M0().n();
        if (gVarN instanceof e) {
            return (e) gVarN;
        }
        return null;
    }

    public static final k e(j jVar) {
        h.f(jVar, "<this>");
        return j(jVar).m();
    }

    public static final lb.b f(g gVar) {
        j jVarB;
        lb.b bVarF;
        if (gVar == null || (jVarB = gVar.b()) == null) {
            return null;
        }
        if (jVarB instanceof e0) {
            return new lb.b(((e0) jVarB).d(), gVar.getName());
        }
        if (!(jVarB instanceof ma.h) || (bVarF = f((g) jVarB)) == null) {
            return null;
        }
        return bVarF.d(gVar.getName());
    }

    public static final lb.c g(j jVar) {
        h.f(jVar, "<this>");
        lb.c cVarH = i.h(jVar);
        if (cVarH == null) {
            cVarH = i.g(jVar.b()).b(jVar.getName()).h();
        }
        if (cVarH != null) {
            return cVarH;
        }
        i.a(4);
        throw null;
    }

    public static final lb.d h(j jVar) {
        h.f(jVar, "<this>");
        lb.d dVarG = i.g(jVar);
        h.e(dVarG, "getFqName(this)");
        return dVarG;
    }

    public static final f.a i(b0 b0Var) {
        h.f(b0Var, "<this>");
        return f.a.f4827a;
    }

    public static final b0 j(j jVar) {
        h.f(jVar, "<this>");
        b0 b0VarD = i.d(jVar);
        h.e(b0VarD, "getContainingModule(this)");
        return b0VarD;
    }

    public static final ma.b k(ma.b bVar) {
        h.f(bVar, "<this>");
        if (!(bVar instanceof k0)) {
            return bVar;
        }
        l0 correspondingProperty = ((k0) bVar).A0();
        h.e(correspondingProperty, "correspondingProperty");
        return correspondingProperty;
    }
}
