package ga;

/* loaded from: classes2.dex */
public class d implements ma.l<h<?>, l9.m> {

    /* renamed from: a, reason: collision with root package name */
    public final s f5983a;

    public d(s container) {
        kotlin.jvm.internal.h.f(container, "container");
        this.f5983a = container;
    }

    @Override // ma.l
    public final /* bridge */ /* synthetic */ h<?> a(ma.a1 a1Var, l9.m mVar) {
        return null;
    }

    @Override // ma.l
    public final h<?> b(ma.u descriptor, l9.m mVar) {
        l9.m data = mVar;
        kotlin.jvm.internal.h.f(descriptor, "descriptor");
        kotlin.jvm.internal.h.f(data, "data");
        return new x(this.f5983a, descriptor);
    }

    @Override // ma.l
    public final h<?> c(ma.n0 n0Var, l9.m mVar) {
        return b(n0Var, mVar);
    }

    @Override // ma.l
    public final h<?> d(ma.l0 descriptor, l9.m mVar) {
        l9.m data = mVar;
        kotlin.jvm.internal.h.f(descriptor, "descriptor");
        kotlin.jvm.internal.h.f(data, "data");
        int r6 = (descriptor.a0() != null ? 1 : 0) + (descriptor.h0() != null ? 1 : 0);
        boolean zF0 = descriptor.f0();
        s sVar = this.f5983a;
        if (zF0) {
            if (r6 == 0) {
                return new y(sVar, descriptor);
            }
            if (r6 == 1) {
                return new z(sVar, descriptor);
            }
            if (r6 == 2) {
                return new a0(sVar, descriptor);
            }
        } else {
            if (r6 == 0) {
                return new g0(sVar, descriptor);
            }
            if (r6 == 1) {
                return new h0(sVar, descriptor);
            }
            if (r6 == 2) {
                return new i0(sVar, descriptor);
            }
        }
        throw new l9.f("Unsupported property: " + descriptor, 1);
    }

    @Override // ma.l
    public final /* bridge */ /* synthetic */ h<?> e(ma.e0 e0Var, l9.m mVar) {
        return null;
    }

    @Override // ma.l
    public final /* bridge */ /* synthetic */ h<?> f(ma.e eVar, l9.m mVar) {
        return null;
    }

    @Override // ma.l
    public final /* bridge */ /* synthetic */ h<?> g(ma.o0 o0Var, l9.m mVar) {
        return null;
    }

    @Override // ma.l
    public h<?> h(ma.i iVar, l9.m mVar) {
        return b(iVar, mVar);
    }

    @Override // ma.l
    public final /* bridge */ /* synthetic */ h<?> i(ma.w0 w0Var, l9.m mVar) {
        return null;
    }

    @Override // ma.l
    public final h<?> j(ma.m0 m0Var, l9.m mVar) {
        return b(m0Var, mVar);
    }

    @Override // ma.l
    public final /* bridge */ /* synthetic */ h<?> k(ma.v0 v0Var, l9.m mVar) {
        return null;
    }

    @Override // ma.l
    public final /* bridge */ /* synthetic */ h<?> l(ma.i0 i0Var, l9.m mVar) {
        return null;
    }

    @Override // ma.l
    public final /* bridge */ /* synthetic */ h<?> m(ma.b0 b0Var, l9.m mVar) {
        return null;
    }
}
