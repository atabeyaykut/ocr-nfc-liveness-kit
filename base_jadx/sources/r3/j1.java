package r3;

import android.content.Context;
import android.os.Looper;
import androidx.annotation.Nullable;
import androidx.lifecycle.CoroutineLiveDataKt;
import androidx.work.PeriodicWorkRequest;
import java.util.HashMap;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class j1 extends i {

    /* renamed from: d, reason: collision with root package name */
    public final HashMap f14005d = new HashMap();

    /* renamed from: e, reason: collision with root package name */
    public final Context f14006e;
    public volatile j4.e f;

    /* renamed from: g, reason: collision with root package name */
    public final v3.a f14007g;

    /* renamed from: h, reason: collision with root package name */
    public final long f14008h;

    /* renamed from: i, reason: collision with root package name */
    public final long f14009i;

    public j1(Context context, Looper looper) {
        i1 i1Var = new i1(this);
        this.f14006e = context.getApplicationContext();
        this.f = new j4.e(looper, i1Var);
        this.f14007g = v3.a.b();
        this.f14008h = CoroutineLiveDataKt.DEFAULT_TIMEOUT;
        this.f14009i = PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS;
    }

    @Override // r3.i
    public final boolean d(f1 f1Var, y0 y0Var, String str, @Nullable Executor executor) {
        boolean z10;
        synchronized (this.f14005d) {
            try {
                h1 h1Var = (h1) this.f14005d.get(f1Var);
                if (h1Var == null) {
                    h1Var = new h1(this, f1Var);
                    h1Var.f13986a.put(y0Var, y0Var);
                    h1Var.a(str, executor);
                    this.f14005d.put(f1Var, h1Var);
                } else {
                    this.f.removeMessages(0, f1Var);
                    if (h1Var.f13986a.containsKey(y0Var)) {
                        throw new IllegalStateException("Trying to bind a GmsServiceConnection that was already connected before.  config=".concat(f1Var.toString()));
                    }
                    h1Var.f13986a.put(y0Var, y0Var);
                    int r6 = h1Var.f13987b;
                    if (r6 == 1) {
                        y0Var.onServiceConnected(h1Var.f, h1Var.f13989d);
                    } else if (r6 == 2) {
                        h1Var.a(str, executor);
                    }
                }
                z10 = h1Var.f13988c;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return z10;
    }
}
