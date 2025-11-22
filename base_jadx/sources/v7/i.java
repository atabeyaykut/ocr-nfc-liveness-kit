package v7;

import androidx.annotation.RecentlyNonNull;
import java.util.Deque;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import o3.w;

/* loaded from: classes2.dex */
public final class i extends o4.h {

    /* renamed from: b, reason: collision with root package name */
    public static final ThreadLocal<Deque<Runnable>> f18269b = new ThreadLocal<>();

    /* renamed from: a, reason: collision with root package name */
    public final ThreadPoolExecutor f18270a;

    public i() {
        final ThreadFactory threadFactoryDefaultThreadFactory = Executors.defaultThreadFactory();
        int r42 = Runtime.getRuntime().availableProcessors();
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(r42, r42, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new ThreadFactory() { // from class: v7.r
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                return threadFactoryDefaultThreadFactory.newThread(new w(1, runnable));
            }
        });
        this.f18270a = threadPoolExecutor;
        threadPoolExecutor.allowCoreThreadTimeOut(true);
    }

    @Override // java.util.concurrent.Executor
    public final void execute(@RecentlyNonNull Runnable runnable) {
        Deque<Runnable> deque = f18269b.get();
        if (deque == null || deque.size() > 1) {
            this.f18270a.execute(new x3.b(1, runnable));
            return;
        }
        deque.add(runnable);
        if (deque.size() <= 1) {
            do {
                runnable.run();
                deque.removeFirst();
                runnable = deque.peekFirst();
            } while (runnable != null);
        }
    }
}
