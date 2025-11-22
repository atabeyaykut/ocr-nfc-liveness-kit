package l3;

import android.content.Context;
import android.util.Log;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import h5.z;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class u {

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    public static u f9377e;

    /* renamed from: a, reason: collision with root package name */
    public final Context f9378a;

    /* renamed from: b, reason: collision with root package name */
    public final ScheduledExecutorService f9379b;

    /* renamed from: c, reason: collision with root package name */
    public o f9380c = new o(this);

    /* renamed from: d, reason: collision with root package name */
    public int f9381d = 1;

    @VisibleForTesting
    public u(Context context, ScheduledExecutorService scheduledExecutorService) {
        this.f9379b = scheduledExecutorService;
        this.f9378a = context.getApplicationContext();
    }

    public static synchronized u a(Context context) {
        if (f9377e == null) {
            f9377e = new u(context, Executors.unconfigurableScheduledExecutorService(Executors.newScheduledThreadPool(1, new x3.a("MessengerIpcClient"))));
        }
        return f9377e;
    }

    public final synchronized int b() {
        int r02;
        r02 = this.f9381d;
        this.f9381d = r02 + 1;
        return r02;
    }

    public final synchronized z c(r rVar) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            String strValueOf = String.valueOf(rVar);
            StringBuilder sb2 = new StringBuilder(strValueOf.length() + 9);
            sb2.append("Queueing ");
            sb2.append(strValueOf);
            Log.d("MessengerIpcClient", sb2.toString());
        }
        if (!this.f9380c.d(rVar)) {
            o oVar = new o(this);
            this.f9380c = oVar;
            oVar.d(rVar);
        }
        return rVar.f9374b.f6841a;
    }
}
