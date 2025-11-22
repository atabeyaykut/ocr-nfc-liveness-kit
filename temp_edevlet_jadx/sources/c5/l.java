package c5;

import android.os.Handler;

/* loaded from: classes.dex */
public abstract class l {

    /* renamed from: d, reason: collision with root package name */
    public static volatile com.google.android.gms.internal.measurement.q0 f1687d;

    /* renamed from: a, reason: collision with root package name */
    public final z4 f1688a;

    /* renamed from: b, reason: collision with root package name */
    public final k f1689b;

    /* renamed from: c, reason: collision with root package name */
    public volatile long f1690c;

    public l(z4 z4Var) {
        r3.r.i(z4Var);
        this.f1688a = z4Var;
        this.f1689b = new k(0, this, z4Var);
    }

    public final void a() {
        this.f1690c = 0L;
        d().removeCallbacks(this.f1689b);
    }

    public abstract void b();

    public final void c(long j10) {
        a();
        if (j10 >= 0) {
            ((w) this.f1688a.i()).getClass();
            this.f1690c = System.currentTimeMillis();
            if (d().postDelayed(this.f1689b, j10)) {
                return;
            }
            this.f1688a.m().f.b(Long.valueOf(j10), "Failed to schedule delayed post. time");
        }
    }

    public final Handler d() {
        com.google.android.gms.internal.measurement.q0 q0Var;
        if (f1687d != null) {
            return f1687d;
        }
        synchronized (l.class) {
            if (f1687d == null) {
                f1687d = new com.google.android.gms.internal.measurement.q0(this.f1688a.k().getMainLooper());
            }
            q0Var = f1687d;
        }
        return q0Var;
    }
}
