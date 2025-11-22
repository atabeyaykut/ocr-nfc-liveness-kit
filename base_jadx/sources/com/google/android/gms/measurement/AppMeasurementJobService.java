package com.google.android.gms.measurement;

import android.annotation.TargetApi;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.content.Intent;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import c5.e3;
import c5.i4;
import c5.o7;
import c5.r4;
import c5.r6;
import c5.w6;
import c5.x6;

@TargetApi(24)
/* loaded from: classes.dex */
public final class AppMeasurementJobService extends JobService implements w6 {

    /* renamed from: a, reason: collision with root package name */
    public x6<AppMeasurementJobService> f4194a;

    @Override // c5.w6
    public final boolean a(int r12) {
        throw new UnsupportedOperationException();
    }

    @Override // c5.w6
    public final void b(@NonNull Intent intent) {
    }

    @Override // c5.w6
    @TargetApi(24)
    public final void c(@NonNull JobParameters jobParameters) {
        jobFinished(jobParameters, false);
    }

    public final x6<AppMeasurementJobService> d() {
        if (this.f4194a == null) {
            this.f4194a = new x6<>(this);
        }
        return this.f4194a;
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

    @Override // android.app.job.JobService
    public final boolean onStartJob(@NonNull JobParameters jobParameters) throws IllegalStateException {
        x6<AppMeasurementJobService> x6VarD = d();
        e3 e3Var = i4.r(x6VarD.f2121a, null, null).f1635j;
        i4.e(e3Var);
        String string = jobParameters.getExtras().getString("action");
        e3Var.f1513p.b(string, "Local AppMeasurementJobService called. action");
        if (!"com.google.android.gms.measurement.UPLOAD".equals(string)) {
            return true;
        }
        r4 r4Var = new r4(x6VarD, e3Var, jobParameters);
        o7 o7VarO = o7.O(x6VarD.f2121a);
        o7VarO.l().p(new r6(o7VarO, r4Var));
        return true;
    }

    @Override // android.app.job.JobService
    public final boolean onStopJob(@NonNull JobParameters jobParameters) {
        return false;
    }

    @Override // android.app.Service
    @MainThread
    public final boolean onUnbind(@NonNull Intent intent) {
        d().b(intent);
        return true;
    }
}
