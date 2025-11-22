package h6;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    public final Executor f6910a;

    /* renamed from: b, reason: collision with root package name */
    public h5.k<Void> f6911b = h5.n.e(null);

    /* renamed from: c, reason: collision with root package name */
    public final Object f6912c = new Object();

    /* renamed from: d, reason: collision with root package name */
    public final ThreadLocal<Boolean> f6913d = new ThreadLocal<>();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            f.this.f6913d.set(Boolean.TRUE);
        }
    }

    public f(Executor executor) {
        this.f6910a = executor;
        executor.execute(new a());
    }

    public final <T> h5.k<T> a(Callable<T> callable) {
        h5.k<T> kVar;
        synchronized (this.f6912c) {
            kVar = (h5.k<T>) this.f6911b.e(this.f6910a, new g(callable));
            this.f6911b = kVar.e(this.f6910a, new h());
        }
        return kVar;
    }

    public final <T> h5.k<T> b(Callable<h5.k<T>> callable) {
        h5.k<T> kVar;
        synchronized (this.f6912c) {
            kVar = (h5.k<T>) this.f6911b.g(this.f6910a, new g(callable));
            this.f6911b = kVar.e(this.f6910a, new h());
        }
        return kVar;
    }
}
