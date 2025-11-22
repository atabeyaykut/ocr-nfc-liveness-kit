package ud;

import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.concurrent.Executor;
import ud.c;
import ud.j;

/* loaded from: classes2.dex */
public final class j extends c.a {

    /* renamed from: a, reason: collision with root package name */
    public final Executor f18030a;

    public static final class a<T> implements b<T> {

        /* renamed from: a, reason: collision with root package name */
        public final Executor f18031a;

        /* renamed from: b, reason: collision with root package name */
        public final b<T> f18032b;

        /* renamed from: ud.j$a$a, reason: collision with other inner class name */
        public class C0279a implements d<T> {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ d f18033a;

            public C0279a(d dVar) {
                this.f18033a = dVar;
            }

            @Override // ud.d
            public final void onFailure(b<T> bVar, final Throwable th2) {
                Executor executor = a.this.f18031a;
                final d dVar = this.f18033a;
                executor.execute(new Runnable() { // from class: ud.i
                    @Override // java.lang.Runnable
                    public final void run() {
                        dVar.onFailure(j.a.this, th2);
                    }
                });
            }

            @Override // ud.d
            public final void onResponse(b<T> bVar, final c0<T> c0Var) {
                Executor executor = a.this.f18031a;
                final d dVar = this.f18033a;
                executor.execute(new Runnable() { // from class: ud.h
                    @Override // java.lang.Runnable
                    public final void run() {
                        j.a aVar = j.a.this;
                        boolean zM = aVar.f18032b.m();
                        d dVar2 = dVar;
                        if (zM) {
                            dVar2.onFailure(aVar, new IOException("Canceled"));
                        } else {
                            dVar2.onResponse(aVar, c0Var);
                        }
                    }
                });
            }
        }

        public a(Executor executor, b<T> bVar) {
            this.f18031a = executor;
            this.f18032b = bVar;
        }

        @Override // ud.b
        public final void cancel() {
            this.f18032b.cancel();
        }

        @Override // ud.b
        public final b<T> clone() {
            return new a(this.f18031a, this.f18032b.clone());
        }

        @Override // ud.b
        public final c0<T> execute() throws IOException {
            return this.f18032b.execute();
        }

        @Override // ud.b
        public final boolean m() {
            return this.f18032b.m();
        }

        @Override // ud.b
        public final void n0(d<T> dVar) {
            this.f18032b.n0(new C0279a(dVar));
        }

        @Override // ud.b
        public final rc.x o() {
            return this.f18032b.o();
        }
    }

    public j(Executor executor) {
        this.f18030a = executor;
    }

    @Override // ud.c.a
    public final c a(Type type, Annotation[] annotationArr) {
        if (h0.f(type) != b.class) {
            return null;
        }
        if (type instanceof ParameterizedType) {
            return new g(h0.e(0, (ParameterizedType) type), h0.i(annotationArr, f0.class) ? null : this.f18030a);
        }
        throw new IllegalArgumentException("Call return type must be parameterized as Call<Foo> or Call<? extends Foo>");
    }
}
