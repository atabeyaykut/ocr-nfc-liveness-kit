package ga;

import ga.t0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public final class q0 implements da.o, q {

    /* renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ da.m<Object>[] f6105d = {kotlin.jvm.internal.w.c(new kotlin.jvm.internal.r(kotlin.jvm.internal.w.a(q0.class), "upperBounds", "getUpperBounds()Ljava/util/List;"))};

    /* renamed from: a, reason: collision with root package name */
    public final ma.w0 f6106a;

    /* renamed from: b, reason: collision with root package name */
    public final t0.a f6107b;

    /* renamed from: c, reason: collision with root package name */
    public final r0 f6108c;

    public static final class a extends kotlin.jvm.internal.j implements x9.a<List<? extends p0>> {
        public a() {
            super(0);
        }

        @Override // x9.a
        public final List<? extends p0> invoke() {
            List<cc.e0> upperBounds = q0.this.f6106a.getUpperBounds();
            kotlin.jvm.internal.h.e(upperBounds, "descriptor.upperBounds");
            List<cc.e0> list = upperBounds;
            ArrayList arrayList = new ArrayList(m9.n.Q0(list));
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(new p0((cc.e0) it.next(), null));
            }
            return arrayList;
        }
    }

    public q0(r0 r0Var, ma.w0 descriptor) {
        Class<?> cls;
        n nVarB;
        Object objO0;
        kotlin.jvm.internal.h.f(descriptor, "descriptor");
        this.f6106a = descriptor;
        this.f6107b = t0.c(new a());
        if (r0Var == null) {
            ma.j jVarB = descriptor.b();
            kotlin.jvm.internal.h.e(jVarB, "descriptor.containingDeclaration");
            if (jVarB instanceof ma.e) {
                objO0 = b((ma.e) jVarB);
            } else {
                if (!(jVarB instanceof ma.b)) {
                    throw new l9.f("Unknown type parameter container: " + jVarB, 1);
                }
                ma.j jVarB2 = ((ma.b) jVarB).b();
                kotlin.jvm.internal.h.e(jVarB2, "declaration.containingDeclaration");
                if (jVarB2 instanceof ma.e) {
                    nVarB = b((ma.e) jVarB2);
                } else {
                    ac.h hVar = jVarB instanceof ac.h ? (ac.h) jVarB : null;
                    if (hVar == null) {
                        throw new l9.f("Non-class callable descriptor must be deserialized: " + jVarB, 1);
                    }
                    ac.g gVarX = hVar.X();
                    eb.n nVar = (eb.n) (gVarX instanceof eb.n ? gVarX : null);
                    eb.s sVar = nVar != null ? nVar.f5222d : null;
                    ra.e eVar = (ra.e) (sVar instanceof ra.e ? sVar : null);
                    if (eVar == null || (cls = eVar.f14363a) == null) {
                        throw new l9.f("Container of deserialized member is not resolved: " + hVar, 1);
                    }
                    da.d dVarA = kotlin.jvm.internal.w.a(cls);
                    kotlin.jvm.internal.h.d(dVarA, "null cannot be cast to non-null type kotlin.reflect.jvm.internal.KClassImpl<*>");
                    nVarB = (n) dVarA;
                }
                objO0 = jVarB.o0(new d(nVarB), l9.m.f9594a);
            }
            kotlin.jvm.internal.h.e(objO0, "when (val declaration = … $declaration\")\n        }");
            r0Var = (r0) objO0;
        }
        this.f6108c = r0Var;
    }

    public static n b(ma.e eVar) {
        Class<?> clsJ = z0.j(eVar);
        n nVar = (n) (clsJ != null ? kotlin.jvm.internal.w.a(clsJ) : null);
        if (nVar != null) {
            return nVar;
        }
        throw new l9.f("Type parameter container is not resolved: " + eVar.b(), 1);
    }

    public final int a() {
        int r02 = this.f6106a.I().ordinal();
        if (r02 == 0) {
            return 1;
        }
        if (r02 == 1) {
            return 2;
        }
        if (r02 == 2) {
            return 3;
        }
        throw new j7.p();
    }

    public final boolean equals(Object obj) {
        if (obj instanceof q0) {
            q0 q0Var = (q0) obj;
            if (kotlin.jvm.internal.h.a(this.f6108c, q0Var.f6108c) && kotlin.jvm.internal.h.a(getName(), q0Var.getName())) {
                return true;
            }
        }
        return false;
    }

    @Override // da.o
    public final String getName() {
        String strO = this.f6106a.getName().o();
        kotlin.jvm.internal.h.e(strO, "descriptor.name.asString()");
        return strO;
    }

    @Override // da.o
    public final List<da.n> getUpperBounds() {
        da.m<Object> mVar = f6105d[0];
        Object objInvoke = this.f6107b.invoke();
        kotlin.jvm.internal.h.e(objInvoke, "<get-upperBounds>(...)");
        return (List) objInvoke;
    }

    public final int hashCode() {
        return getName().hashCode() + (this.f6108c.hashCode() * 31);
    }

    @Override // ga.q
    public final ma.g i() {
        return this.f6106a;
    }

    public final String toString() {
        String str;
        StringBuilder sb2 = new StringBuilder();
        int r12 = g.d.c(a());
        if (r12 != 1) {
            str = r12 == 2 ? "out " : "in ";
            sb2.append(getName());
            String string = sb2.toString();
            kotlin.jvm.internal.h.e(string, "StringBuilder().apply(builderAction).toString()");
            return string;
        }
        sb2.append(str);
        sb2.append(getName());
        String string2 = sb2.toString();
        kotlin.jvm.internal.h.e(string2, "StringBuilder().apply(builderAction).toString()");
        return string2;
    }
}
