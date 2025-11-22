package u2;

import android.util.Log;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;

/* loaded from: classes.dex */
public final class q implements Executor {

    /* renamed from: a, reason: collision with root package name */
    public final Executor f17851a;

    public static class a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        public final Runnable f17852a;

        public a(Runnable runnable) {
            this.f17852a = runnable;
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                this.f17852a.run();
            } catch (Exception e10) {
                Log.e(c5.w.u("Executor"), "Background execution failure.", e10);
            }
        }
    }

    public q(ExecutorService executorService) {
        this.f17851a = executorService;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f17851a.execute(new a(runnable));
    }
}
