package r3;

import android.content.Context;
import android.os.HandlerThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public abstract class i {

    /* renamed from: a, reason: collision with root package name */
    public static final Object f13992a = new Object();

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    public static j1 f13993b;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    public static HandlerThread f13994c;

    @NonNull
    public static j1 a(@NonNull Context context) {
        synchronized (f13992a) {
            if (f13993b == null) {
                f13993b = new j1(context.getApplicationContext(), context.getMainLooper());
            }
        }
        return f13993b;
    }

    @NonNull
    public static HandlerThread b() {
        synchronized (f13992a) {
            HandlerThread handlerThread = f13994c;
            if (handlerThread != null) {
                return handlerThread;
            }
            HandlerThread handlerThread2 = new HandlerThread("GoogleApiHandler", 9);
            f13994c = handlerThread2;
            handlerThread2.start();
            return f13994c;
        }
    }

    public final void c(@NonNull String str, @NonNull String str2, int r52, @NonNull y0 y0Var, boolean z10) {
        f1 f1Var = new f1(str, str2, z10, r52);
        j1 j1Var = (j1) this;
        synchronized (j1Var.f14005d) {
            h1 h1Var = (h1) j1Var.f14005d.get(f1Var);
            if (h1Var == null) {
                throw new IllegalStateException("Nonexistent connection status for service config: ".concat(f1Var.toString()));
            }
            if (!h1Var.f13986a.containsKey(y0Var)) {
                throw new IllegalStateException("Trying to unbind a GmsServiceConnection  that was not bound before.  config=".concat(f1Var.toString()));
            }
            h1Var.f13986a.remove(y0Var);
            if (h1Var.f13986a.isEmpty()) {
                j1Var.f.sendMessageDelayed(j1Var.f.obtainMessage(0, f1Var), j1Var.f14008h);
            }
        }
    }

    public abstract boolean d(f1 f1Var, y0 y0Var, String str, @Nullable Executor executor);
}
