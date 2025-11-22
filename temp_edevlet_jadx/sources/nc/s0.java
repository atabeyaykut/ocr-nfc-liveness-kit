package nc;

import java.lang.reflect.Method;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class s0 extends r0 implements g0 {

    /* renamed from: a, reason: collision with root package name */
    public final Executor f10841a;

    public s0(ExecutorService executorService) {
        Method method;
        this.f10841a = executorService;
        Method method2 = kotlinx.coroutines.internal.d.f9135a;
        try {
            ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = executorService instanceof ScheduledThreadPoolExecutor ? (ScheduledThreadPoolExecutor) executorService : null;
            if (scheduledThreadPoolExecutor != null && (method = kotlinx.coroutines.internal.d.f9135a) != null) {
                method.invoke(scheduledThreadPoolExecutor, Boolean.TRUE);
            }
        } catch (Throwable unused) {
        }
    }

    @Override // nc.g0
    public final void c(long j10, j jVar) {
        Executor executor = this.f10841a;
        ScheduledFuture<?> scheduledFutureSchedule = null;
        ScheduledExecutorService scheduledExecutorService = executor instanceof ScheduledExecutorService ? (ScheduledExecutorService) executor : null;
        if (scheduledExecutorService != null) {
            try {
                scheduledFutureSchedule = scheduledExecutorService.schedule(new l3.n(2, this, jVar), j10, TimeUnit.MILLISECONDS);
            } catch (RejectedExecutionException e10) {
                CancellationException cancellationException = new CancellationException("The task was rejected");
                cancellationException.initCause(e10);
                x5.a.d(jVar.f10807e, cancellationException);
            }
        }
        if (scheduledFutureSchedule != null) {
            jVar.D(new f(scheduledFutureSchedule));
        } else {
            d0.f.c(j10, jVar);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        Executor executor = this.f10841a;
        ExecutorService executorService = executor instanceof ExecutorService ? (ExecutorService) executor : null;
        if (executorService == null) {
            return;
        }
        executorService.shutdown();
    }

    @Override // nc.y
    public final void dispatch(p9.f fVar, Runnable runnable) {
        try {
            this.f10841a.execute(runnable);
        } catch (RejectedExecutionException e10) {
            CancellationException cancellationException = new CancellationException("The task was rejected");
            cancellationException.initCause(e10);
            x5.a.d(fVar, cancellationException);
            j0.f10809b.dispatch(fVar, runnable);
        }
    }

    public final boolean equals(Object obj) {
        return (obj instanceof s0) && ((s0) obj).f10841a == this.f10841a;
    }

    public final int hashCode() {
        return System.identityHashCode(this.f10841a);
    }

    @Override // nc.y
    public final String toString() {
        return this.f10841a.toString();
    }
}
