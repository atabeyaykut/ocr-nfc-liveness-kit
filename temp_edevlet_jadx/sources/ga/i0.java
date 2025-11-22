package ga;

import ga.l0;
import ga.t0;

/* loaded from: classes2.dex */
public class i0<D, E, V> extends l0<V> implements x9.p {

    /* renamed from: m, reason: collision with root package name */
    public final t0.b<a<D, E, V>> f6028m;

    public static final class a<D, E, V> extends l0.b<V> implements x9.p {

        /* renamed from: h, reason: collision with root package name */
        public final i0<D, E, V> f6029h;

        /* JADX WARN: Multi-variable type inference failed */
        public a(i0<D, E, ? extends V> property) {
            kotlin.jvm.internal.h.f(property, "property");
            this.f6029h = property;
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final V mo7invoke(D d10, E e10) {
            a<D, E, V> aVarInvoke = this.f6029h.f6028m.invoke();
            kotlin.jvm.internal.h.e(aVarInvoke, "_getter()");
            return aVarInvoke.call(d10, e10);
        }

        @Override // ga.l0.a
        public final l0 s() {
            return this.f6029h;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i0(s container, ma.l0 descriptor) {
        super(container, descriptor);
        kotlin.jvm.internal.h.f(container, "container");
        kotlin.jvm.internal.h.f(descriptor, "descriptor");
        this.f6028m = new t0.b<>(new j0(this));
        c5.y.v(2, new k0(this));
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final V mo7invoke(D d10, E e10) {
        a<D, E, V> aVarInvoke = this.f6028m.invoke();
        kotlin.jvm.internal.h.e(aVarInvoke, "_getter()");
        return aVarInvoke.call(d10, e10);
    }

    @Override // ga.l0
    public final l0.b t() {
        a<D, E, V> aVarInvoke = this.f6028m.invoke();
        kotlin.jvm.internal.h.e(aVarInvoke, "_getter()");
        return aVarInvoke;
    }
}
