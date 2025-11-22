package ga;

import da.h;
import da.i;
import ga.l0;
import ga.t0;

/* loaded from: classes2.dex */
public final class z<T, V> extends h0<T, V> implements da.i<T, V> {

    /* renamed from: n, reason: collision with root package name */
    public final t0.b<a<T, V>> f6142n;

    public static final class a<T, V> extends l0.c<V> implements i.a<T, V> {

        /* renamed from: h, reason: collision with root package name */
        public final z<T, V> f6143h;

        public a(z<T, V> property) {
            kotlin.jvm.internal.h.f(property, "property");
            this.f6143h = property;
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final l9.m mo7invoke(Object obj, Object obj2) throws ea.a {
            a<T, V> aVarInvoke = this.f6143h.f6142n.invoke();
            kotlin.jvm.internal.h.e(aVarInvoke, "_setter()");
            aVarInvoke.call(obj, obj2);
            return l9.m.f9594a;
        }

        @Override // ga.l0.a
        public final l0 s() {
            return this.f6143h;
        }
    }

    public static final class b extends kotlin.jvm.internal.j implements x9.a<a<T, V>> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ z<T, V> f6144a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(z<T, V> zVar) {
            super(0);
            this.f6144a = zVar;
        }

        @Override // x9.a
        public final Object invoke() {
            return new a(this.f6144a);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z(s container, String name, String signature, Object obj) {
        super(container, name, signature, obj);
        kotlin.jvm.internal.h.f(container, "container");
        kotlin.jvm.internal.h.f(name, "name");
        kotlin.jvm.internal.h.f(signature, "signature");
        this.f6142n = t0.b(new b(this));
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z(s container, ma.l0 descriptor) {
        super(container, descriptor);
        kotlin.jvm.internal.h.f(container, "container");
        kotlin.jvm.internal.h.f(descriptor, "descriptor");
        this.f6142n = t0.b(new b(this));
    }

    @Override // da.h
    public final h.a f() {
        a<T, V> aVarInvoke = this.f6142n.invoke();
        kotlin.jvm.internal.h.e(aVarInvoke, "_setter()");
        return aVarInvoke;
    }

    @Override // da.i, da.h
    public final i.a f() {
        a<T, V> aVarInvoke = this.f6142n.invoke();
        kotlin.jvm.internal.h.e(aVarInvoke, "_setter()");
        return aVarInvoke;
    }
}
