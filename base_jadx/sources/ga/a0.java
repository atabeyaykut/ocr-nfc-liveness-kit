package ga;

import da.h;
import ga.l0;
import ga.t0;

/* loaded from: classes2.dex */
public final class a0<D, E, V> extends i0<D, E, V> implements da.h {

    /* renamed from: n, reason: collision with root package name */
    public final t0.b<a<D, E, V>> f5954n;

    public static final class a<D, E, V> extends l0.c<V> implements x9.q {

        /* renamed from: h, reason: collision with root package name */
        public final a0<D, E, V> f5955h;

        public a(a0<D, E, V> property) {
            kotlin.jvm.internal.h.f(property, "property");
            this.f5955h = property;
        }

        @Override // x9.q
        public final Object i(Object obj, Object obj2, Object obj3) throws ea.a {
            a<D, E, V> aVarInvoke = this.f5955h.f5954n.invoke();
            kotlin.jvm.internal.h.e(aVarInvoke, "_setter()");
            aVarInvoke.call(obj, obj2, obj3);
            return l9.m.f9594a;
        }

        @Override // ga.l0.a
        public final l0 s() {
            return this.f5955h;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a0(s container, ma.l0 descriptor) {
        super(container, descriptor);
        kotlin.jvm.internal.h.f(container, "container");
        kotlin.jvm.internal.h.f(descriptor, "descriptor");
        this.f5954n = t0.b(new b0(this));
    }

    @Override // da.h
    public final h.a f() {
        a<D, E, V> aVarInvoke = this.f5954n.invoke();
        kotlin.jvm.internal.h.e(aVarInvoke, "_setter()");
        return aVarInvoke;
    }
}
