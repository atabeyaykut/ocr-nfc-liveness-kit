package a1;

import android.os.Process;
import android.os.StrictMode;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public final class a implements ExecutorService {

    /* renamed from: b, reason: collision with root package name */
    public static final long f25b = TimeUnit.SECONDS.toMillis(10);

    /* renamed from: c, reason: collision with root package name */
    public static volatile int f26c;

    /* renamed from: a, reason: collision with root package name */
    public final ExecutorService f27a;

    /* renamed from: a1.a$a, reason: collision with other inner class name */
    public static final class ThreadFactoryC0003a implements ThreadFactory {

        /* renamed from: a1.a$a$a, reason: collision with other inner class name */
        public class C0004a extends Thread {
            public C0004a(Runnable runnable) {
                super(runnable);
            }

            @Override // java.lang.Thread, java.lang.Runnable
            public final void run() throws SecurityException, IllegalArgumentException {
                Process.setThreadPriority(9);
                super.run();
            }
        }

        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(@NonNull Runnable runnable) {
            return new C0004a(runnable);
        }
    }

    public static final class b implements ThreadFactory {

        /* renamed from: a, reason: collision with root package name */
        public final ThreadFactory f28a;

        /* renamed from: b, reason: collision with root package name */
        public final String f29b;

        /* renamed from: c, reason: collision with root package name */
        public final c f30c;

        /* renamed from: d, reason: collision with root package name */
        public final boolean f31d;

        /* renamed from: e, reason: collision with root package name */
        public final AtomicInteger f32e;

        /* renamed from: a1.a$b$a, reason: collision with other inner class name */
        public class RunnableC0005a implements Runnable {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ Runnable f33a;

            public RunnableC0005a(Runnable runnable) {
                this.f33a = runnable;
            }

            @Override // java.lang.Runnable
            public final void run() {
                b bVar = b.this;
                if (bVar.f31d) {
                    StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder().detectNetwork().penaltyDeath().build());
                }
                try {
                    this.f33a.run();
                } catch (Throwable th2) {
                    bVar.f30c.a(th2);
                }
            }
        }

        public b(ThreadFactoryC0003a threadFactoryC0003a, String str, boolean z10) {
            c.C0006a c0006a = c.f35a;
            this.f32e = new AtomicInteger();
            this.f28a = threadFactoryC0003a;
            this.f29b = str;
            this.f30c = c0006a;
            this.f31d = z10;
        }

        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(@NonNull Runnable runnable) {
            Thread threadNewThread = this.f28a.newThread(new RunnableC0005a(runnable));
            threadNewThread.setName("glide-" + this.f29b + "-thread-" + this.f32e.getAndIncrement());
            return threadNewThread;
        }
    }

    public interface c {

        /* renamed from: a, reason: collision with root package name */
        public static final C0006a f35a = new C0006a();

        /* renamed from: a1.a$c$a, reason: collision with other inner class name */
        public class C0006a implements c {
            @Override // a1.a.c
            public final void a(Throwable th2) {
                if (Log.isLoggable("GlideExecutor", 6)) {
                    Log.e("GlideExecutor", "Request threw uncaught throwable", th2);
                }
            }
        }

        void a(Throwable th2);
    }

    @VisibleForTesting
    public a(ThreadPoolExecutor threadPoolExecutor) {
        this.f27a = threadPoolExecutor;
    }

    @Override // java.util.concurrent.ExecutorService
    public final boolean awaitTermination(long j10, @NonNull TimeUnit timeUnit) throws InterruptedException {
        return this.f27a.awaitTermination(j10, timeUnit);
    }

    @Override // java.util.concurrent.Executor
    public final void execute(@NonNull Runnable runnable) {
        this.f27a.execute(runnable);
    }

    @Override // java.util.concurrent.ExecutorService
    @NonNull
    public final <T> List<Future<T>> invokeAll(@NonNull Collection<? extends Callable<T>> collection) throws InterruptedException {
        return this.f27a.invokeAll(collection);
    }

    @Override // java.util.concurrent.ExecutorService
    @NonNull
    public final <T> List<Future<T>> invokeAll(@NonNull Collection<? extends Callable<T>> collection, long j10, @NonNull TimeUnit timeUnit) throws InterruptedException {
        return this.f27a.invokeAll(collection, j10, timeUnit);
    }

    @Override // java.util.concurrent.ExecutorService
    @NonNull
    public final <T> T invokeAny(@NonNull Collection<? extends Callable<T>> collection) throws ExecutionException, InterruptedException {
        return (T) this.f27a.invokeAny(collection);
    }

    @Override // java.util.concurrent.ExecutorService
    public final <T> T invokeAny(@NonNull Collection<? extends Callable<T>> collection, long j10, @NonNull TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        return (T) this.f27a.invokeAny(collection, j10, timeUnit);
    }

    @Override // java.util.concurrent.ExecutorService
    public final boolean isShutdown() {
        return this.f27a.isShutdown();
    }

    @Override // java.util.concurrent.ExecutorService
    public final boolean isTerminated() {
        return this.f27a.isTerminated();
    }

    @Override // java.util.concurrent.ExecutorService
    public final void shutdown() {
        this.f27a.shutdown();
    }

    @Override // java.util.concurrent.ExecutorService
    @NonNull
    public final List<Runnable> shutdownNow() {
        return this.f27a.shutdownNow();
    }

    @Override // java.util.concurrent.ExecutorService
    @NonNull
    public final Future<?> submit(@NonNull Runnable runnable) {
        return this.f27a.submit(runnable);
    }

    @Override // java.util.concurrent.ExecutorService
    @NonNull
    public final <T> Future<T> submit(@NonNull Runnable runnable, T t10) {
        return this.f27a.submit(runnable, t10);
    }

    @Override // java.util.concurrent.ExecutorService
    public final <T> Future<T> submit(@NonNull Callable<T> callable) {
        return this.f27a.submit(callable);
    }

    public final String toString() {
        return this.f27a.toString();
    }
}
