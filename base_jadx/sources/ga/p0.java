package ga;

import cc.i1;
import cc.q1;
import ga.t0;
import java.lang.reflect.Array;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public final class p0 implements kotlin.jvm.internal.i {

    /* renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ da.m<Object>[] f6097e = {kotlin.jvm.internal.w.c(new kotlin.jvm.internal.r(kotlin.jvm.internal.w.a(p0.class), "classifier", "getClassifier()Lkotlin/reflect/KClassifier;")), kotlin.jvm.internal.w.c(new kotlin.jvm.internal.r(kotlin.jvm.internal.w.a(p0.class), "arguments", "getArguments()Ljava/util/List;"))};

    /* renamed from: a, reason: collision with root package name */
    public final cc.e0 f6098a;

    /* renamed from: b, reason: collision with root package name */
    public final t0.a<Type> f6099b;

    /* renamed from: c, reason: collision with root package name */
    public final t0.a f6100c;

    /* renamed from: d, reason: collision with root package name */
    public final t0.a f6101d;

    public static final class a extends kotlin.jvm.internal.j implements x9.a<List<? extends da.p>> {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ x9.a<Type> f6103b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public a(x9.a<? extends Type> aVar) {
            super(0);
            this.f6103b = aVar;
        }

        @Override // x9.a
        public final List<? extends da.p> invoke() {
            da.p pVar;
            p0 p0Var = p0.this;
            List<i1> listK0 = p0Var.f6098a.K0();
            if (listK0.isEmpty()) {
                return m9.v.f10173a;
            }
            l9.e eVarV = c5.y.v(2, new o0(p0Var));
            List<i1> list = listK0;
            ArrayList arrayList = new ArrayList(m9.n.Q0(list));
            int r52 = 0;
            for (Object obj : list) {
                int r72 = r52 + 1;
                if (r52 < 0) {
                    b8.f.k0();
                    throw null;
                }
                i1 i1Var = (i1) obj;
                if (i1Var.c()) {
                    pVar = da.p.f4714c;
                } else {
                    cc.e0 type = i1Var.getType();
                    kotlin.jvm.internal.h.e(type, "typeProjection.type");
                    p0 p0Var2 = new p0(type, this.f6103b != null ? new n0(p0Var, r52, eVarV) : null);
                    int r53 = i1Var.b().ordinal();
                    if (r53 == 0) {
                        pVar = new da.p(1, p0Var2);
                    } else if (r53 == 1) {
                        pVar = new da.p(2, p0Var2);
                    } else {
                        if (r53 != 2) {
                            throw new j7.p();
                        }
                        pVar = new da.p(3, p0Var2);
                    }
                }
                arrayList.add(pVar);
                r52 = r72;
            }
            return arrayList;
        }
    }

    public static final class b extends kotlin.jvm.internal.j implements x9.a<da.e> {
        public b() {
            super(0);
        }

        @Override // x9.a
        public final da.e invoke() {
            p0 p0Var = p0.this;
            return p0Var.g(p0Var.f6098a);
        }
    }

    public p0(cc.e0 type, x9.a<? extends Type> aVar) {
        kotlin.jvm.internal.h.f(type, "type");
        this.f6098a = type;
        t0.a<Type> aVarC = null;
        t0.a<Type> aVar2 = aVar instanceof t0.a ? (t0.a) aVar : null;
        if (aVar2 != null) {
            aVarC = aVar2;
        } else if (aVar != null) {
            aVarC = t0.c(aVar);
        }
        this.f6099b = aVarC;
        this.f6100c = t0.c(new b());
        this.f6101d = t0.c(new a(aVar));
    }

    @Override // da.n
    public final da.e b() {
        da.m<Object> mVar = f6097e[0];
        return (da.e) this.f6100c.invoke();
    }

    @Override // kotlin.jvm.internal.i
    public final Type e() {
        t0.a<Type> aVar = this.f6099b;
        if (aVar != null) {
            return aVar.invoke();
        }
        return null;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof p0) {
            p0 p0Var = (p0) obj;
            if (kotlin.jvm.internal.h.a(this.f6098a, p0Var.f6098a) && kotlin.jvm.internal.h.a(b(), p0Var.b()) && kotlin.jvm.internal.h.a(getArguments(), p0Var.getArguments())) {
                return true;
            }
        }
        return false;
    }

    public final da.e g(cc.e0 e0Var) {
        cc.e0 type;
        ma.g gVarN = e0Var.M0().n();
        if (!(gVarN instanceof ma.e)) {
            if (gVarN instanceof ma.w0) {
                return new q0(null, (ma.w0) gVarN);
            }
            if (gVarN instanceof ma.v0) {
                throw new l9.f("An operation is not implemented: Type alias classifiers are not yet supported", 0);
            }
            return null;
        }
        Class<?> clsJ = z0.j((ma.e) gVarN);
        if (clsJ == null) {
            return null;
        }
        if (!clsJ.isArray()) {
            if (q1.g(e0Var)) {
                return new n(clsJ);
            }
            Class<? extends Object> cls = sa.d.f15335b.get(clsJ);
            if (cls != null) {
                clsJ = cls;
            }
            return new n(clsJ);
        }
        i1 i1Var = (i1) m9.t.r1(e0Var.K0());
        if (i1Var == null || (type = i1Var.getType()) == null) {
            return new n(clsJ);
        }
        da.e eVarG = g(type);
        if (eVarG != null) {
            return new n(Array.newInstance((Class<?>) com.google.android.gms.internal.clearcut.d0.q(b8.f.K(eVarG)), 0).getClass());
        }
        throw new l9.f("Cannot determine classifier for array element type: " + this, 1);
    }

    @Override // da.n
    public final List<da.p> getArguments() {
        da.m<Object> mVar = f6097e[1];
        Object objInvoke = this.f6101d.invoke();
        kotlin.jvm.internal.h.e(objInvoke, "<get-arguments>(...)");
        return (List) objInvoke;
    }

    public final int hashCode() {
        int r02 = this.f6098a.hashCode() * 31;
        da.e eVarB = b();
        return getArguments().hashCode() + ((r02 + (eVarB != null ? eVarB.hashCode() : 0)) * 31);
    }

    public final String toString() {
        nb.d dVar = v0.f6124a;
        return v0.d(this.f6098a);
    }
}
