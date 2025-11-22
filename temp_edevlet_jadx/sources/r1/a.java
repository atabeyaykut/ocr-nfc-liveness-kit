package r1;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.core.util.Pools;
import r1.d;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public static final C0235a f13893a = new C0235a();

    /* renamed from: r1.a$a, reason: collision with other inner class name */
    public class C0235a implements e<Object> {
        @Override // r1.a.e
        public final void a(@NonNull Object obj) {
        }
    }

    public interface b<T> {
        T a();
    }

    public static final class c<T> implements Pools.Pool<T> {

        /* renamed from: a, reason: collision with root package name */
        public final b<T> f13894a;

        /* renamed from: b, reason: collision with root package name */
        public final e<T> f13895b;

        /* renamed from: c, reason: collision with root package name */
        public final Pools.Pool<T> f13896c;

        public c(@NonNull Pools.SynchronizedPool synchronizedPool, @NonNull b bVar, @NonNull e eVar) {
            this.f13896c = synchronizedPool;
            this.f13894a = bVar;
            this.f13895b = eVar;
        }

        @Override // androidx.core.util.Pools.Pool
        public final T acquire() {
            T tAcquire = this.f13896c.acquire();
            if (tAcquire == null) {
                tAcquire = this.f13894a.a();
                if (Log.isLoggable("FactoryPools", 2)) {
                    Log.v("FactoryPools", "Created new " + tAcquire.getClass());
                }
            }
            if (tAcquire instanceof d) {
                tAcquire.r().f13897a = false;
            }
            return (T) tAcquire;
        }

        @Override // androidx.core.util.Pools.Pool
        public final boolean release(@NonNull T t10) {
            if (t10 instanceof d) {
                ((d) t10).r().f13897a = true;
            }
            this.f13895b.a(t10);
            return this.f13896c.release(t10);
        }
    }

    public interface d {
        @NonNull
        d.a r();
    }

    public interface e<T> {
        void a(@NonNull T t10);
    }

    @NonNull
    public static c a(int r22, @NonNull b bVar) {
        return new c(new Pools.SynchronizedPool(r22), bVar, f13893a);
    }
}
