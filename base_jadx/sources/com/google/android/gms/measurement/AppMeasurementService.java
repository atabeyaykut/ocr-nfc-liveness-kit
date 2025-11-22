package com.google.android.gms.measurement;

import android.app.Service;
import android.app.job.JobParameters;
import android.content.Intent;
import android.os.IBinder;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.legacy.content.WakefulBroadcastReceiver;
import c5.e3;
import c5.i4;
import c5.o7;
import c5.r6;
import c5.w4;
import c5.w6;
import c5.x6;

/* loaded from: classes.dex */
public final class AppMeasurementService extends Service implements w6 {

    /* renamed from: a, reason: collision with root package name */
    public x6<AppMeasurementService> f4196a;

    @Override // c5.w6
    public final boolean a(int r12) {
        return stopSelfResult(r12);
    }

    @Override // c5.w6
    public final void b(@NonNull Intent intent) {
        WakefulBroadcastReceiver.completeWakefulIntent(intent);
    }

    @Override // c5.w6
    public final void c(@NonNull JobParameters jobParameters) {
        throw new UnsupportedOperationException();
    }

    public final x6<AppMeasurementService> d() {
        if (this.f4196a == null) {
            this.f4196a = new x6<>(this);
        }
        return this.f4196a;
    }

    @Override // android.app.Service
    @NonNull
    @MainThread
    public final IBinder onBind(@NonNull Intent intent) {
        x6<AppMeasurementService> x6VarD = d();
        if (intent == null) {
            x6VarD.c().f.a("onBind called with null intent");
        } else {
            x6VarD.getClass();
            String action = intent.getAction();
            if ("com.google.android.gms.measurement.START".equals(action)) {
                return new w4(o7.O(x6VarD.f2121a));
            }
            x6VarD.c().f1508j.b(action, "onBind received unknown action");
        }
        return null;
    }

    @Override // android.app.Service
    @MainThread
    public final void onCreate() {
        super.onCreate();
        e3 e3Var = i4.r(d().f2121a, null, null).f1635j;
        i4.e(e3Var);
        e3Var.f1513p.a("Local AppMeasurementService is starting up");
    }

    @Override // android.app.Service
    @MainThread
    public final void onDestroy() {
        e3 e3Var = i4.r(d().f2121a, null, null).f1635j;
        i4.e(e3Var);
        e3Var.f1513p.a("Local AppMeasurementService is shutting down");
        super.onDestroy();
    }

    @Override // android.app.Service
    @MainThread
    public final void onRebind(@NonNull Intent intent) {
        d().a(intent);
    }

    @Override // android.app.Service
    @MainThread
    public final int onStartCommand(@NonNull final Intent intent, int r72, final int r82) throws IllegalStateException {
        final x6<AppMeasurementService> x6VarD = d();
        final e3 e3Var = i4.r(x6VarD.f2121a, null, null).f1635j;
        i4.e(e3Var);
        if (intent == null) {
            e3Var.f1508j.a("AppMeasurementService started with null intent");
            return 2;
        }
        String action = intent.getAction();
        e3Var.f1513p.c(Integer.valueOf(r82), "Local AppMeasurementService called. startId, action", action);
        if (!"com.google.android.gms.measurement.UPLOAD".equals(action)) {
            return 2;
        }
        Runnable runnable = new Runnable() { // from class: c5.v6
            @Override // java.lang.Runnable
            public final void run() {
                x6 x6Var = x6VarD;
                w6 w6Var = x6Var.f2121a;
                int r22 = r82;
                if (w6Var.a(r22)) {
                    e3Var.f1513p.b(Integer.valueOf(r22), "Local AppMeasurementService processed last upload request. StartId");
                    x6Var.c().f1513p.a("Completed wakeful intent.");
                    w6Var.b(intent);
                }
            }
        };
        o7 o7VarO = o7.O(x6VarD.f2121a);
        o7VarO.l().p(new r6(o7VarO, runnable));
        return 2;
    }

    @Override // android.app.Service
    @MainThread
    public final boolean onUnbind(@NonNull Intent intent) {
        d().b(intent);
        return true;
    }
}
