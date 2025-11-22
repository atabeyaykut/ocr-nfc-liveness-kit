package ga;

import da.l;
import ga.l0;
import ga.t0;
import java.lang.reflect.Member;

/* loaded from: classes2.dex */
public class h0<T, V> extends l0<V> implements da.l<T, V> {

    /* renamed from: m, reason: collision with root package name */
    public final t0.b<a<T, V>> f6023m;

    public static final class a<T, V> extends l0.b<V> implements l.a<T, V> {

        /* renamed from: h, reason: collision with root package name */
        public final h0<T, V> f6024h;

        /* JADX WARN: Multi-variable type inference failed */
        public a(h0<T, ? extends V> property) {
            kotlin.jvm.internal.h.f(property, "property");
            this.f6024h = property;
        }

        @Override // x9.l
        public final V invoke(T t10) {
            return this.f6024h.get(t10);
        }

        @Override // ga.l0.a
        public final l0 s() {
            return this.f6024h;
        }
    }

    public static final class b extends kotlin.jvm.internal.j implements x9.a<a<T, ? extends V>> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ h0<T, V> f6025a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public b(h0<T, ? extends V> h0Var) {
            super(0);
            this.f6025a = h0Var;
        }

        @Override // x9.a
        public final Object invoke() {
            return new a(this.f6025a);
        }
    }

    public static final class c extends kotlin.jvm.internal.j implements x9.a<Member> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ h0<T, V> f6026a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public c(h0<T, ? extends V> h0Var) {
            super(0);
            this.f6026a = h0Var;
        }

        @Override // x9.a
        public final Member invoke() {
            return this.f6026a.r();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h0(s container, String name, String signature, Object obj) {
        super(container, name, signature, obj);
        kotlin.jvm.internal.h.f(container, "container");
        kotlin.jvm.internal.h.f(name, "name");
        kotlin.jvm.internal.h.f(signature, "signature");
        this.f6023m = new t0.b<>(new b(this));
        c5.y.v(2, new c(this));
    }

    @Override // da.l
    public final V get(T t10) {
        return l().call(t10);
    }

    @Override // x9.l
    public final V invoke(T t10) {
        return get(t10);
    }

    @Override // ga.l0
    /* renamed from: u, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final a<T, V> t() {
        a<T, V> aVarInvoke = this.f6023m.invoke();
        kotlin.jvm.internal.h.e(aVarInvoke, "_getter()");
        return aVarInvoke;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h0(s container, ma.l0 descriptor) {
        super(container, descriptor);
        kotlin.jvm.internal.h.f(container, "container");
        kotlin.jvm.internal.h.f(descriptor, "descriptor");
        this.f6023m = new t0.b<>(new b(this));
        c5.y.v(2, new c(this));
    }
}
