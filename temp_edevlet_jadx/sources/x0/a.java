package x0;

import android.os.Process;
import androidx.annotation.NonNull;
import java.util.concurrent.ThreadFactory;

/* loaded from: classes.dex */
public final class a implements ThreadFactory {

    /* renamed from: x0.a$a, reason: collision with other inner class name */
    public class RunnableC0298a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Runnable f18931a;

        public RunnableC0298a(Runnable runnable) {
            this.f18931a = runnable;
        }

        @Override // java.lang.Runnable
        public final void run() throws SecurityException, IllegalArgumentException {
            Process.setThreadPriority(10);
            this.f18931a.run();
        }
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(@NonNull Runnable runnable) {
        return new Thread(new RunnableC0298a(runnable), "glide-active-resources");
    }
}
