package g7;

import android.annotation.SuppressLint;
import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.util.Log;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import g7.x0;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

@SuppressLint({"UnwrappedWakefulBroadcastReceiver"})
/* loaded from: classes2.dex */
public abstract class g extends Service {

    /* renamed from: a, reason: collision with root package name */
    @VisibleForTesting
    public final ExecutorService f5857a;

    /* renamed from: b, reason: collision with root package name */
    public x0 f5858b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f5859c;

    /* renamed from: d, reason: collision with root package name */
    public int f5860d;

    /* renamed from: e, reason: collision with root package name */
    public int f5861e;

    public class a implements x0.a {
        public a() {
        }
    }

    public g() {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new x3.a("Firebase-Messaging-Intent-Handle"));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        this.f5857a = Executors.unconfigurableExecutorService(threadPoolExecutor);
        this.f5859c = new Object();
        this.f5861e = 0;
    }

    public final void a(Intent intent) {
        if (intent != null) {
            u0.b(intent);
        }
        synchronized (this.f5859c) {
            try {
                int r02 = this.f5861e - 1;
                this.f5861e = r02;
                if (r02 == 0) {
                    stopSelfResult(this.f5860d);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @NonNull
    public Intent b(@NonNull Intent intent) {
        return intent;
    }

    public abstract void c(@NonNull Intent intent);

    @Override // android.app.Service
    @NonNull
    public final synchronized IBinder onBind(@NonNull Intent intent) {
        if (Log.isLoggable("EnhancedIntentService", 3)) {
            Log.d("EnhancedIntentService", "Service received bind request");
        }
        if (this.f5858b == null) {
            this.f5858b = new x0(new a());
        }
        return this.f5858b;
    }

    @Override // android.app.Service
    @CallSuper
    public final void onDestroy() {
        this.f5857a.shutdown();
        super.onDestroy();
    }

    @Override // android.app.Service
    public final int onStartCommand(@NonNull final Intent intent, int r42, int r52) {
        synchronized (this.f5859c) {
            this.f5860d = r52;
            this.f5861e++;
        }
        Intent intentB = b(intent);
        if (intentB == null) {
            a(intent);
            return 2;
        }
        h5.l lVar = new h5.l();
        this.f5857a.execute(new e(this, intentB, lVar));
        h5.z zVar = lVar.f6841a;
        if (zVar.l()) {
            a(intent);
            return 2;
        }
        zVar.o(new Executor() { // from class: g7.f
            @Override // java.util.concurrent.Executor
            public final void execute(@NonNull Runnable runnable) {
                runnable.run();
            }
        }, new h5.e() { // from class: g7.d
            @Override // h5.e
            public final void b(@NonNull h5.k kVar) {
                this.f5842a.a(intent);
            }
        });
        return 3;
    }
}
