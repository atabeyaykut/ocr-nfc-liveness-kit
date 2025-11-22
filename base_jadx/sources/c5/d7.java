package c5;

import android.app.ActivityManager;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.WorkerThread;
import com.google.android.gms.internal.measurement.fa;

/* loaded from: classes.dex */
public final class d7 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ e7 f1481a;

    public d7(e7 e7Var) {
        this.f1481a = e7Var;
    }

    @WorkerThread
    public final void a() {
        e7 e7Var = this.f1481a;
        e7Var.b();
        z4 z4Var = e7Var.f2115a;
        s3 s3Var = ((i4) z4Var).f1634h;
        i4.c(s3Var);
        ((i4) z4Var).f1640p.getClass();
        if (s3Var.r(System.currentTimeMillis())) {
            s3 s3Var2 = ((i4) z4Var).f1634h;
            i4.c(s3Var2);
            s3Var2.f1970l.a(true);
            ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
            ActivityManager.getMyMemoryState(runningAppProcessInfo);
            if (runningAppProcessInfo.importance == 100) {
                e3 e3Var = ((i4) z4Var).f1635j;
                i4.e(e3Var);
                e3Var.f1513p.a("Detected application was in foreground");
                ((i4) z4Var).f1640p.getClass();
                c(System.currentTimeMillis(), false);
            }
        }
    }

    @WorkerThread
    public final void b(long j10, boolean z10) {
        e7 e7Var = this.f1481a;
        e7Var.b();
        e7Var.g();
        z4 z4Var = e7Var.f2115a;
        s3 s3Var = ((i4) z4Var).f1634h;
        i4.c(s3Var);
        if (s3Var.r(j10)) {
            s3 s3Var2 = ((i4) z4Var).f1634h;
            i4.c(s3Var2);
            s3Var2.f1970l.a(true);
        }
        s3 s3Var3 = ((i4) z4Var).f1634h;
        i4.c(s3Var3);
        s3Var3.f1973p.b(j10);
        s3 s3Var4 = ((i4) z4Var).f1634h;
        i4.c(s3Var4);
        if (s3Var4.f1970l.b()) {
            c(j10, z10);
        }
    }

    @WorkerThread
    public final void c(long j10, boolean z10) throws IllegalStateException {
        e7 e7Var = this.f1481a;
        e7Var.b();
        z4 z4Var = e7Var.f2115a;
        if (((i4) z4Var).a()) {
            s3 s3Var = ((i4) z4Var).f1634h;
            i4.c(s3Var);
            s3Var.f1973p.b(j10);
            ((i4) z4Var).f1640p.getClass();
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            e3 e3Var = ((i4) z4Var).f1635j;
            i4.e(e3Var);
            e3Var.f1513p.b(Long.valueOf(jElapsedRealtime), "Session started, time");
            Long lValueOf = Long.valueOf(j10 / 1000);
            v5 v5Var = ((i4) z4Var).f1642r;
            i4.d(v5Var);
            v5Var.w(j10, lValueOf, "auto", "_sid");
            s3 s3Var2 = ((i4) z4Var).f1634h;
            i4.c(s3Var2);
            s3Var2.f1970l.a(false);
            Bundle bundle = new Bundle();
            bundle.putLong("_sid", lValueOf.longValue());
            if (((i4) z4Var).f1633g.p(null, r2.f1896d0) && z10) {
                bundle.putLong("_aib", 1L);
            }
            v5 v5Var2 = ((i4) z4Var).f1642r;
            i4.d(v5Var2);
            v5Var2.o(j10, bundle, "auto", "_s");
            fa.f3473b.f3474a.a().a();
            if (((i4) z4Var).f1633g.p(null, r2.f1903h0)) {
                s3 s3Var3 = ((i4) z4Var).f1634h;
                i4.c(s3Var3);
                String strA = s3Var3.f1978v.a();
                if (TextUtils.isEmpty(strA)) {
                    return;
                }
                Bundle bundle2 = new Bundle();
                bundle2.putString("_ffr", strA);
                v5 v5Var3 = ((i4) z4Var).f1642r;
                i4.d(v5Var3);
                v5Var3.o(j10, bundle2, "auto", "_ssr");
            }
        }
    }
}
