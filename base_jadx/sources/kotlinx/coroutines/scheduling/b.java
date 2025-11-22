package kotlinx.coroutines.scheduling;

import java.util.concurrent.Executor;
import kotlinx.coroutines.internal.v;
import nc.r0;
import nc.y;

/* loaded from: classes2.dex */
public final class b extends r0 implements Executor {

    /* renamed from: a, reason: collision with root package name */
    public static final b f9207a = new b();

    /* renamed from: b, reason: collision with root package name */
    public static final y f9208b;

    static {
        k kVar = k.f9221a;
        int r12 = v.f9177a;
        if (64 >= r12) {
            r12 = 64;
        }
        f9208b = kVar.limitedParallelism(c5.v.J("kotlinx.coroutines.io.parallelism", r12, 0, 0, 12));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        throw new IllegalStateException("Cannot be invoked on Dispatchers.IO".toString());
    }

    @Override // nc.y
    public final void dispatch(p9.f fVar, Runnable runnable) {
        f9208b.dispatch(fVar, runnable);
    }

    @Override // nc.y
    public final void dispatchYield(p9.f fVar, Runnable runnable) {
        f9208b.dispatchYield(fVar, runnable);
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        dispatch(p9.g.f12870a, runnable);
    }

    @Override // nc.y
    public final y limitedParallelism(int r22) {
        return k.f9221a.limitedParallelism(r22);
    }

    @Override // nc.y
    public final String toString() {
        return "Dispatchers.IO";
    }
}
