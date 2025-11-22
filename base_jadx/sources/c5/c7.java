package c5;

import android.os.Bundle;
import android.os.SystemClock;
import androidx.annotation.WorkerThread;
import com.google.android.gms.internal.measurement.oa;

/* loaded from: classes.dex */
public final class c7 {

    /* renamed from: a, reason: collision with root package name */
    public long f1461a;

    /* renamed from: b, reason: collision with root package name */
    public long f1462b;

    /* renamed from: c, reason: collision with root package name */
    public final b7 f1463c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ e7 f1464d;

    public c7(e7 e7Var) {
        this.f1464d = e7Var;
        this.f1463c = new b7(this, (i4) e7Var.f2115a);
        ((i4) e7Var.f2115a).f1640p.getClass();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        this.f1461a = jElapsedRealtime;
        this.f1462b = jElapsedRealtime;
    }

    @WorkerThread
    public final boolean a(boolean z10, boolean z11, long j10) {
        e7 e7Var = this.f1464d;
        e7Var.b();
        e7Var.c();
        oa.f3665b.f3666a.a().a();
        z4 z4Var = e7Var.f2115a;
        if (!((i4) z4Var).f1633g.p(null, r2.f1905i0) || ((i4) z4Var).a()) {
            s3 s3Var = ((i4) z4Var).f1634h;
            i4.c(s3Var);
            ((i4) z4Var).f1640p.getClass();
            s3Var.f1973p.b(System.currentTimeMillis());
        }
        long j11 = j10 - this.f1461a;
        if (!z10 && j11 < 1000) {
            e3 e3Var = ((i4) z4Var).f1635j;
            i4.e(e3Var);
            e3Var.f1513p.b(Long.valueOf(j11), "Screen exposed for less than 1000 ms. Event not sent. time");
            return false;
        }
        if (!z11) {
            j11 = j10 - this.f1462b;
            this.f1462b = j10;
        }
        e3 e3Var2 = ((i4) z4Var).f1635j;
        i4.e(e3Var2);
        e3Var2.f1513p.b(Long.valueOf(j11), "Recording user engagement, ms");
        Bundle bundle = new Bundle();
        bundle.putLong("_et", j11);
        boolean zQ = ((i4) z4Var).f1633g.q();
        f6 f6Var = ((i4) z4Var).f1641q;
        i4.d(f6Var);
        v7.t(f6Var.o(!zQ), bundle, true);
        e eVar = ((i4) z4Var).f1633g;
        q2<Boolean> q2Var = r2.U;
        if (!eVar.p(null, q2Var) && z11) {
            bundle.putLong("_fr", 1L);
        }
        if (!((i4) z4Var).f1633g.p(null, q2Var) || !z11) {
            v5 v5Var = ((i4) z4Var).f1642r;
            i4.d(v5Var);
            v5Var.n("auto", "_e", bundle);
        }
        this.f1461a = j10;
        b7 b7Var = this.f1463c;
        b7Var.a();
        b7Var.c(3600000L);
        return true;
    }
}
