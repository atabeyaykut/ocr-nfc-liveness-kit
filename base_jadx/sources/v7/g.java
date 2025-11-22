package v7;

import android.os.HandlerThread;
import android.os.Looper;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.RecentlyNonNull;
import h5.z;
import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
public final class g {

    /* renamed from: b, reason: collision with root package name */
    public static final Object f18264b = new Object();

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    @GuardedBy("lock")
    public static g f18265c;

    /* renamed from: a, reason: collision with root package name */
    public final o4.a f18266a;

    public g(Looper looper) {
        this.f18266a = new o4.a(looper);
    }

    @RecentlyNonNull
    public static g a() {
        g gVar;
        synchronized (f18264b) {
            if (f18265c == null) {
                HandlerThread handlerThread = new HandlerThread("MLHandler", 9);
                handlerThread.start();
                f18265c = new g(handlerThread.getLooper());
            }
            gVar = f18265c;
        }
        return gVar;
    }

    @RecentlyNonNull
    public static z b(@RecentlyNonNull Callable callable) {
        h5.l lVar = new h5.l();
        q.f18286a.execute(new p(callable, lVar));
        return lVar.f6841a;
    }
}
