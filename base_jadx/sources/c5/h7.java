package c5;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.job.JobScheduler;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import androidx.core.app.NotificationCompat;

/* loaded from: classes.dex */
public final class h7 extends j7 {

    /* renamed from: d, reason: collision with root package name */
    public final AlarmManager f1609d;

    /* renamed from: e, reason: collision with root package name */
    public g7 f1610e;
    public Integer f;

    public h7(o7 o7Var) {
        super(o7Var);
        this.f1609d = (AlarmManager) ((i4) this.f2115a).f1628a.getSystemService(NotificationCompat.CATEGORY_ALARM);
    }

    @Override // c5.j7
    public final void e() {
        JobScheduler jobScheduler;
        AlarmManager alarmManager = this.f1609d;
        if (alarmManager != null) {
            alarmManager.cancel(n());
        }
        if (Build.VERSION.SDK_INT < 24 || (jobScheduler = (JobScheduler) ((i4) this.f2115a).f1628a.getSystemService("jobscheduler")) == null) {
            return;
        }
        jobScheduler.cancel(h());
    }

    public final void g() {
        JobScheduler jobScheduler;
        c();
        z4 z4Var = this.f2115a;
        e3 e3Var = ((i4) z4Var).f1635j;
        i4.e(e3Var);
        e3Var.f1513p.a("Unscheduling upload");
        AlarmManager alarmManager = this.f1609d;
        if (alarmManager != null) {
            alarmManager.cancel(n());
        }
        o().a();
        if (Build.VERSION.SDK_INT < 24 || (jobScheduler = (JobScheduler) ((i4) z4Var).f1628a.getSystemService("jobscheduler")) == null) {
            return;
        }
        jobScheduler.cancel(h());
    }

    public final int h() {
        if (this.f == null) {
            String strValueOf = String.valueOf(((i4) this.f2115a).f1628a.getPackageName());
            this.f = Integer.valueOf((strValueOf.length() != 0 ? "measurement".concat(strValueOf) : new String("measurement")).hashCode());
        }
        return this.f.intValue();
    }

    public final PendingIntent n() {
        Context context = ((i4) this.f2115a).f1628a;
        return PendingIntent.getBroadcast(context, 0, new Intent().setClassName(context, "com.google.android.gms.measurement.AppMeasurementReceiver").setAction("com.google.android.gms.measurement.UPLOAD"), com.google.android.gms.internal.measurement.o0.f3656a);
    }

    public final l o() {
        if (this.f1610e == null) {
            this.f1610e = new g7(this, this.f1653b.f1828m);
        }
        return this.f1610e;
    }
}
