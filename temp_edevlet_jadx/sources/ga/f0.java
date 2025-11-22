package ga;

import ga.t0;

/* loaded from: classes2.dex */
public final class f0 implements da.j {

    /* renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ da.m<Object>[] f5996e = {kotlin.jvm.internal.w.c(new kotlin.jvm.internal.r(kotlin.jvm.internal.w.a(f0.class), "descriptor", "getDescriptor()Lorg/jetbrains/kotlin/descriptors/ParameterDescriptor;")), kotlin.jvm.internal.w.c(new kotlin.jvm.internal.r(kotlin.jvm.internal.w.a(f0.class), "annotations", "getAnnotations()Ljava/util/List;"))};

    /* renamed from: a, reason: collision with root package name */
    public final h<?> f5997a;

    /* renamed from: b, reason: collision with root package name */
    public final int f5998b;

    /* renamed from: c, reason: collision with root package name */
    public final int f5999c;

    /* renamed from: d, reason: collision with root package name */
    public final t0.a f6000d;

    /* JADX WARN: Incorrect types in method signature: (Lga/h<*>;ILjava/lang/Object;Lx9/a<+Lma/j0;>;)V */
    public f0(h callable, int r32, int r42, x9.a aVar) {
        kotlin.jvm.internal.h.f(callable, "callable");
        androidx.camera.core.impl.utils.f.j(r42, "kind");
        this.f5997a = callable;
        this.f5998b = r32;
        this.f5999c = r42;
        this.f6000d = t0.c(aVar);
        t0.c(new d0(this));
    }

    @Override // da.j
    public final boolean a() {
        ma.j0 j0VarG = g();
        return (j0VarG instanceof ma.a1) && ((ma.a1) j0VarG).g0() != null;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof f0) {
            f0 f0Var = (f0) obj;
            if (kotlin.jvm.internal.h.a(this.f5997a, f0Var.f5997a)) {
                if (this.f5998b == f0Var.f5998b) {
                    return true;
                }
            }
        }
        return false;
    }

    public final ma.j0 g() {
        da.m<Object> mVar = f5996e[0];
        Object objInvoke = this.f6000d.invoke();
        kotlin.jvm.internal.h.e(objInvoke, "<get-descriptor>(...)");
        return (ma.j0) objInvoke;
    }

    @Override // da.j
    public final String getName() {
        ma.j0 j0VarG = g();
        ma.a1 a1Var = j0VarG instanceof ma.a1 ? (ma.a1) j0VarG : null;
        if (a1Var == null || a1Var.b().B()) {
            return null;
        }
        lb.f name = a1Var.getName();
        kotlin.jvm.internal.h.e(name, "valueParameter.name");
        if (name.f9677b) {
            return null;
        }
        return name.o();
    }

    @Override // da.j
    public final p0 getType() {
        cc.e0 type = g().getType();
        kotlin.jvm.internal.h.e(type, "descriptor.type");
        return new p0(type, new e0(this));
    }

    @Override // da.j
    public final int h() {
        return this.f5999c;
    }

    public final int hashCode() {
        return (this.f5997a.hashCode() * 31) + this.f5998b;
    }

    @Override // da.j
    public final boolean j() {
        ma.j0 j0VarG = g();
        ma.a1 a1Var = j0VarG instanceof ma.a1 ? (ma.a1) j0VarG : null;
        if (a1Var != null) {
            return sb.b.a(a1Var);
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0051  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String toString() throws java.io.IOException {
        /*
            r4 = this;
            nb.d r0 = ga.v0.f6124a
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            int r1 = r4.f5999c
            int r1 = g.d.c(r1)
            if (r1 == 0) goto L36
            r2 = 1
            if (r1 == r2) goto L33
            r2 = 2
            if (r1 == r2) goto L16
            goto L3b
        L16:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "parameter #"
            r1.<init>(r2)
            int r2 = r4.f5998b
            r1.append(r2)
            r2 = 32
            r1.append(r2)
            java.lang.String r2 = r4.getName()
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            goto L38
        L33:
            java.lang.String r1 = "extension receiver parameter"
            goto L38
        L36:
            java.lang.String r1 = "instance parameter"
        L38:
            r0.append(r1)
        L3b:
            java.lang.String r1 = " of "
            r0.append(r1)
            ga.h<?> r1 = r4.f5997a
            ma.b r1 = r1.o()
            boolean r2 = r1 instanceof ma.l0
            if (r2 == 0) goto L51
            ma.l0 r1 = (ma.l0) r1
            java.lang.String r1 = ga.v0.c(r1)
            goto L5b
        L51:
            boolean r2 = r1 instanceof ma.u
            if (r2 == 0) goto L68
            ma.u r1 = (ma.u) r1
            java.lang.String r1 = ga.v0.b(r1)
        L5b:
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            java.lang.String r1 = "StringBuilder().apply(builderAction).toString()"
            kotlin.jvm.internal.h.e(r0, r1)
            return r0
        L68:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            java.lang.String r3 = "Illegal callable: "
            r2.<init>(r3)
            r2.append(r1)
            java.lang.String r1 = r2.toString()
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: ga.f0.toString():java.lang.String");
    }
}
