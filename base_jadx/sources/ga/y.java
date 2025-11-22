package ga;

import da.h;
import ga.l0;
import ga.t0;

/* loaded from: classes2.dex */
public final class y<V> extends g0<V> implements da.h {

    /* renamed from: n, reason: collision with root package name */
    public final t0.b<a<V>> f6138n;

    public static final class a<R> extends l0.c<R> implements x9.l {

        /* renamed from: h, reason: collision with root package name */
        public final y<R> f6139h;

        public a(y<R> property) {
            kotlin.jvm.internal.h.f(property, "property");
            this.f6139h = property;
        }

        @Override // x9.l
        public final Object invoke(Object obj) throws ea.a {
            a<R> aVarInvoke = this.f6139h.f6138n.invoke();
            kotlin.jvm.internal.h.e(aVarInvoke, "_setter()");
            aVarInvoke.call(obj);
            return l9.m.f9594a;
        }

        @Override // ga.l0.a
        public final l0 s() {
            return this.f6139h;
        }
    }

    public static final class b extends kotlin.jvm.internal.j implements x9.a<a<V>> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ y<V> f6140a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(y<V> yVar) {
            super(0);
            this.f6140a = yVar;
        }

        @Override // x9.a
        public final Object invoke() {
            return new a(this.f6140a);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y(s container, ma.l0 descriptor) {
        super(container, descriptor);
        kotlin.jvm.internal.h.f(container, "container");
        kotlin.jvm.internal.h.f(descriptor, "descriptor");
        this.f6138n = t0.b(new b(this));
    }

    @Override // da.h
    public final h.a f() {
        a<V> aVarInvoke = this.f6138n.invoke();
        kotlin.jvm.internal.h.e(aVarInvoke, "_setter()");
        return aVarInvoke;
    }
}
