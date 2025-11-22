package ud;

import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.concurrent.CompletableFuture;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;
import ud.c;

@IgnoreJRERequirement
/* loaded from: classes2.dex */
public final class e extends c.a {

    /* renamed from: a, reason: collision with root package name */
    public static final e f18008a = new e();

    @IgnoreJRERequirement
    public static final class a<R> implements ud.c<R, CompletableFuture<R>> {

        /* renamed from: a, reason: collision with root package name */
        public final Type f18009a;

        @IgnoreJRERequirement
        /* renamed from: ud.e$a$a, reason: collision with other inner class name */
        public class C0278a implements d<R> {

            /* renamed from: a, reason: collision with root package name */
            public final CompletableFuture<R> f18010a;

            public C0278a(b bVar) {
                this.f18010a = bVar;
            }

            @Override // ud.d
            public final void onFailure(ud.b<R> bVar, Throwable th2) {
                this.f18010a.completeExceptionally(th2);
            }

            @Override // ud.d
            public final void onResponse(ud.b<R> bVar, c0<R> c0Var) {
                boolean zC = c0Var.f17992a.c();
                CompletableFuture<R> completableFuture = this.f18010a;
                if (zC) {
                    completableFuture.complete(c0Var.f17993b);
                } else {
                    completableFuture.completeExceptionally(new k(c0Var));
                }
            }
        }

        public a(Type type) {
            this.f18009a = type;
        }

        @Override // ud.c
        public final Type a() {
            return this.f18009a;
        }

        @Override // ud.c
        public final Object b(u uVar) {
            b bVar = new b(uVar);
            uVar.n0(new C0278a(bVar));
            return bVar;
        }
    }

    @IgnoreJRERequirement
    public static final class b<T> extends CompletableFuture<T> {

        /* renamed from: a, reason: collision with root package name */
        public final ud.b<?> f18011a;

        public b(u uVar) {
            this.f18011a = uVar;
        }

        @Override // java.util.concurrent.CompletableFuture, java.util.concurrent.Future
        public final boolean cancel(boolean z10) {
            if (z10) {
                this.f18011a.cancel();
            }
            return super.cancel(z10);
        }
    }

    @IgnoreJRERequirement
    public static final class c<R> implements ud.c<R, CompletableFuture<c0<R>>> {

        /* renamed from: a, reason: collision with root package name */
        public final Type f18012a;

        @IgnoreJRERequirement
        public class a implements d<R> {

            /* renamed from: a, reason: collision with root package name */
            public final CompletableFuture<c0<R>> f18013a;

            public a(b bVar) {
                this.f18013a = bVar;
            }

            @Override // ud.d
            public final void onFailure(ud.b<R> bVar, Throwable th2) {
                this.f18013a.completeExceptionally(th2);
            }

            @Override // ud.d
            public final void onResponse(ud.b<R> bVar, c0<R> c0Var) {
                this.f18013a.complete(c0Var);
            }
        }

        public c(Type type) {
            this.f18012a = type;
        }

        @Override // ud.c
        public final Type a() {
            return this.f18012a;
        }

        @Override // ud.c
        public final Object b(u uVar) {
            b bVar = new b(uVar);
            uVar.n0(new a(bVar));
            return bVar;
        }
    }

    @Override // ud.c.a
    public final ud.c a(Type type, Annotation[] annotationArr) {
        if (h0.f(type) != CompletableFuture.class) {
            return null;
        }
        if (!(type instanceof ParameterizedType)) {
            throw new IllegalStateException("CompletableFuture return type must be parameterized as CompletableFuture<Foo> or CompletableFuture<? extends Foo>");
        }
        Type typeE = h0.e(0, (ParameterizedType) type);
        if (h0.f(typeE) != c0.class) {
            return new a(typeE);
        }
        if (typeE instanceof ParameterizedType) {
            return new c(h0.e(0, (ParameterizedType) typeE));
        }
        throw new IllegalStateException("Response must be parameterized as Response<Foo> or Response<? extends Foo>");
    }
}
