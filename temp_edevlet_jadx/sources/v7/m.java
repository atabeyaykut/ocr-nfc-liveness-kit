package v7;

import androidx.annotation.GuardedBy;
import androidx.annotation.RecentlyNonNull;
import java.util.ArrayDeque;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicReference;
import o3.k0;

/* loaded from: classes2.dex */
public final class m {

    /* renamed from: b, reason: collision with root package name */
    @GuardedBy("lock")
    public boolean f18277b;

    /* renamed from: a, reason: collision with root package name */
    public final Object f18276a = new Object();

    /* renamed from: c, reason: collision with root package name */
    @GuardedBy("lock")
    public final ArrayDeque f18278c = new ArrayDeque();

    /* renamed from: d, reason: collision with root package name */
    public final AtomicReference<Thread> f18279d = new AtomicReference<>();

    public final void a(@RecentlyNonNull Runnable runnable, @RecentlyNonNull Executor executor) {
        synchronized (this.f18276a) {
            if (this.f18277b) {
                this.f18278c.add(new v(executor, runnable));
            } else {
                this.f18277b = true;
                c(runnable, executor);
            }
        }
    }

    public final void b() {
        synchronized (this.f18276a) {
            if (this.f18278c.isEmpty()) {
                this.f18277b = false;
                return;
            }
            v vVar = (v) this.f18278c.remove();
            c(vVar.f18300b, vVar.f18299a);
        }
    }

    public final void c(Runnable runnable, Executor executor) {
        try {
            executor.execute(new k0(this, runnable));
        } catch (RejectedExecutionException unused) {
            b();
        }
    }
}
