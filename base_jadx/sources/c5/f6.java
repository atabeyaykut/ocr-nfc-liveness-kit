package c5;

import android.app.Activity;
import android.os.Bundle;
import android.os.SystemClock;
import androidx.annotation.GuardedBy;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.WorkerThread;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public final class f6 extends r3 {

    /* renamed from: c, reason: collision with root package name */
    public volatile b6 f1547c;

    /* renamed from: d, reason: collision with root package name */
    public volatile b6 f1548d;

    /* renamed from: e, reason: collision with root package name */
    public b6 f1549e;
    public final ConcurrentHashMap f;

    /* renamed from: g, reason: collision with root package name */
    @GuardedBy("activityLock")
    public Activity f1550g;

    /* renamed from: h, reason: collision with root package name */
    @GuardedBy("activityLock")
    public volatile boolean f1551h;

    /* renamed from: j, reason: collision with root package name */
    public volatile b6 f1552j;

    /* renamed from: k, reason: collision with root package name */
    public b6 f1553k;

    /* renamed from: l, reason: collision with root package name */
    @GuardedBy("activityLock")
    public boolean f1554l;

    /* renamed from: m, reason: collision with root package name */
    public final Object f1555m;

    /* renamed from: n, reason: collision with root package name */
    @GuardedBy("this")
    public String f1556n;

    public f6(i4 i4Var) {
        super(i4Var);
        this.f1555m = new Object();
        this.f = new ConcurrentHashMap();
    }

    @Override // c5.r3
    public final boolean e() {
        return false;
    }

    @MainThread
    public final void g(Activity activity, b6 b6Var, boolean z10) throws IllegalStateException {
        b6 b6Var2;
        b6 b6Var3 = this.f1547c == null ? this.f1548d : this.f1547c;
        if (b6Var.f1420b == null) {
            b6Var2 = new b6(b6Var.f1419a, activity != null ? p(activity.getClass()) : null, b6Var.f1421c, b6Var.f1423e, b6Var.f);
        } else {
            b6Var2 = b6Var;
        }
        this.f1548d = this.f1547c;
        this.f1547c = b6Var2;
        ((i4) this.f2115a).f1640p.getClass();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        h4 h4Var = ((i4) this.f2115a).f1636k;
        i4.e(h4Var);
        h4Var.p(new d6(this, b6Var2, b6Var3, jElapsedRealtime, z10));
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00b7  */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void h(c5.b6 r18, c5.b6 r19, long r20, boolean r22, android.os.Bundle r23) throws java.lang.IllegalStateException {
        /*
            Method dump skipped, instructions count: 232
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: c5.f6.h(c5.b6, c5.b6, long, boolean, android.os.Bundle):void");
    }

    @WorkerThread
    public final void n(b6 b6Var, boolean z10, long j10) {
        i4 i4Var = (i4) this.f2115a;
        u1 u1VarG = i4Var.g();
        i4Var.f1640p.getClass();
        u1VarG.e(SystemClock.elapsedRealtime());
        boolean z11 = b6Var != null && b6Var.f1422d;
        e7 e7Var = i4Var.f1637l;
        i4.d(e7Var);
        if (!e7Var.f1524e.a(z11, z10, j10) || b6Var == null) {
            return;
        }
        b6Var.f1422d = false;
    }

    @WorkerThread
    public final b6 o(boolean z10) {
        c();
        b();
        if (!z10) {
            return this.f1549e;
        }
        b6 b6Var = this.f1549e;
        return b6Var != null ? b6Var : this.f1553k;
    }

    public final String p(Class cls) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName == null) {
            return "Activity";
        }
        String[] strArrSplit = canonicalName.split("\\.");
        int length = strArrSplit.length;
        String str = length > 0 ? strArrSplit[length - 1] : "";
        int length2 = str.length();
        i4 i4Var = (i4) this.f2115a;
        i4Var.getClass();
        if (length2 <= 100) {
            return str;
        }
        i4Var.getClass();
        return str.substring(0, 100);
    }

    @MainThread
    public final void q(Activity activity, Bundle bundle) {
        Bundle bundle2;
        if (!((i4) this.f2115a).f1633g.q() || bundle == null || (bundle2 = bundle.getBundle("com.google.app_measurement.screen_service")) == null) {
            return;
        }
        this.f.put(activity, new b6(bundle2.getString("name"), bundle2.getString("referrer_name"), bundle2.getLong("id")));
    }

    @WorkerThread
    public final void r(String str) {
        b();
        synchronized (this) {
            String str2 = this.f1556n;
            if (str2 == null || str2.equals(str)) {
                this.f1556n = str;
            }
        }
    }

    @MainThread
    public final b6 s(@NonNull Activity activity) {
        r3.r.i(activity);
        b6 b6Var = (b6) this.f.get(activity);
        if (b6Var == null) {
            String strP = p(activity.getClass());
            v7 v7Var = ((i4) this.f2115a).f1638m;
            i4.c(v7Var);
            b6 b6Var2 = new b6(null, strP, v7Var.l0());
            this.f.put(activity, b6Var2);
            b6Var = b6Var2;
        }
        return this.f1552j != null ? this.f1552j : b6Var;
    }
}
