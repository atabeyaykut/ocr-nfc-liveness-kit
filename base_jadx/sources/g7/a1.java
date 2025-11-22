package g7;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import g7.a1;
import java.util.ArrayDeque;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class a1 implements ServiceConnection {

    /* renamed from: a, reason: collision with root package name */
    public final Context f5830a;

    /* renamed from: b, reason: collision with root package name */
    public final Intent f5831b;

    /* renamed from: c, reason: collision with root package name */
    public final ScheduledExecutorService f5832c;

    /* renamed from: d, reason: collision with root package name */
    public final ArrayDeque f5833d;

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    public x0 f5834e;

    @GuardedBy("this")
    public boolean f;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public final Intent f5835a;

        /* renamed from: b, reason: collision with root package name */
        public final h5.l<Void> f5836b = new h5.l<>();

        public a(Intent intent) {
            this.f5835a = intent;
        }
    }

    public a1(Context context) {
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(0, new x3.a("Firebase-FirebaseInstanceIdServiceConnection"));
        this.f5833d = new ArrayDeque();
        this.f = false;
        Context applicationContext = context.getApplicationContext();
        this.f5830a = applicationContext;
        this.f5831b = new Intent("com.google.firebase.MESSAGING_EVENT").setPackage(applicationContext.getPackageName());
        this.f5832c = scheduledThreadPoolExecutor;
    }

    public final synchronized void a() {
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "flush queue called");
        }
        while (!this.f5833d.isEmpty()) {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                Log.d("FirebaseMessaging", "found intent to be delivered");
            }
            x0 x0Var = this.f5834e;
            if (x0Var == null || !x0Var.isBinderAlive()) {
                c();
                return;
            }
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                Log.d("FirebaseMessaging", "binder is alive, sending the intent.");
            }
            this.f5834e.a((a) this.f5833d.poll());
        }
    }

    public final synchronized h5.z b(Intent intent) {
        final a aVar;
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "new intent queued in the bind-strategy delivery");
        }
        aVar = new a(intent);
        ScheduledExecutorService scheduledExecutorService = this.f5832c;
        final ScheduledFuture<?> scheduledFutureSchedule = scheduledExecutorService.schedule(new Runnable() { // from class: g7.z0
            @Override // java.lang.Runnable
            public final void run() {
                a1.a aVar2 = aVar;
                String action = aVar2.f5835a.getAction();
                StringBuilder sb2 = new StringBuilder(String.valueOf(action).length() + 61);
                sb2.append("Service took too long to process intent: ");
                sb2.append(action);
                sb2.append(" App may get closed.");
                Log.w("FirebaseMessaging", sb2.toString());
                aVar2.f5836b.d(null);
            }
        }, 9000L, TimeUnit.MILLISECONDS);
        aVar.f5836b.f6841a.o(scheduledExecutorService, new h5.e() { // from class: g7.y0
            @Override // h5.e
            public final void b(@NonNull h5.k kVar) {
                scheduledFutureSchedule.cancel(false);
            }
        });
        this.f5833d.add(aVar);
        a();
        return aVar.f5836b.f6841a;
    }

    @GuardedBy("this")
    public final void c() {
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            boolean z10 = this.f;
            StringBuilder sb2 = new StringBuilder(39);
            sb2.append("binder is dead. start connection? ");
            sb2.append(!z10);
            Log.d("FirebaseMessaging", sb2.toString());
        }
        if (this.f) {
            return;
        }
        this.f = true;
        try {
        } catch (SecurityException e10) {
            Log.e("FirebaseMessaging", "Exception while binding the service", e10);
        }
        if (v3.a.b().a(this.f5830a, this.f5831b, this, 65)) {
            return;
        }
        Log.e("FirebaseMessaging", "binding to the service failed");
        this.f = false;
        while (true) {
            ArrayDeque arrayDeque = this.f5833d;
            if (arrayDeque.isEmpty()) {
                return;
            } else {
                ((a) arrayDeque.poll()).f5836b.d(null);
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final synchronized void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "onServiceConnected: ".concat(String.valueOf(componentName)));
        }
        this.f = false;
        if (iBinder instanceof x0) {
            this.f5834e = (x0) iBinder;
            a();
        } else {
            Log.e("FirebaseMessaging", "Invalid service connection: ".concat(String.valueOf(iBinder)));
            while (true) {
                ArrayDeque arrayDeque = this.f5833d;
                if (arrayDeque.isEmpty()) {
                    return;
                } else {
                    ((a) arrayDeque.poll()).f5836b.d(null);
                }
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "onServiceDisconnected: ".concat(String.valueOf(componentName)));
        }
        a();
    }
}
