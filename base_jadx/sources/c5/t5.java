package c5;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.SystemClock;
import androidx.annotation.MainThread;

@TargetApi(14)
@MainThread
/* loaded from: classes.dex */
public final class t5 implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ v5 f2001a;

    public /* synthetic */ t5(v5 v5Var) {
        this.f2001a = v5Var;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        f6 f6Var;
        Uri data;
        v5 v5Var = this.f2001a;
        try {
            try {
                e3 e3Var = ((i4) v5Var.f2115a).f1635j;
                i4.e(e3Var);
                e3Var.f1513p.a("onActivityCreated");
                Intent intent = activity.getIntent();
                z4 z4Var = v5Var.f2115a;
                if (intent != null && (data = intent.getData()) != null && data.isHierarchical()) {
                    i4.c(((i4) z4Var).f1638m);
                    String stringExtra = intent.getStringExtra("android.intent.extra.REFERRER_NAME");
                    boolean z10 = true;
                    String str = true != ("android-app://com.google.android.googlequicksearchbox/https/www.google.com".equals(stringExtra) || "https://www.google.com".equals(stringExtra) || "android-app://com.google.appcrawler".equals(stringExtra)) ? "auto" : "gs";
                    String queryParameter = data.getQueryParameter("referrer");
                    if (bundle != null) {
                        z10 = false;
                    }
                    h4 h4Var = ((i4) z4Var).f1636k;
                    i4.e(h4Var);
                    h4Var.p(new l3.i(this, z10, data, str, queryParameter));
                }
                f6Var = ((i4) z4Var).f1641q;
            } catch (RuntimeException e10) {
                e3 e3Var2 = ((i4) v5Var.f2115a).f1635j;
                i4.e(e3Var2);
                e3Var2.f.b(e10, "Throwable caught in onActivityCreated");
                f6Var = ((i4) v5Var.f2115a).f1641q;
            }
            i4.d(f6Var);
            f6Var.q(activity, bundle);
        } catch (Throwable th2) {
            f6 f6Var2 = ((i4) v5Var.f2115a).f1641q;
            i4.d(f6Var2);
            f6Var2.q(activity, bundle);
            throw th2;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        f6 f6Var = ((i4) this.f2001a.f2115a).f1641q;
        i4.d(f6Var);
        synchronized (f6Var.f1555m) {
            if (activity == f6Var.f1550g) {
                f6Var.f1550g = null;
            }
        }
        if (((i4) f6Var.f2115a).f1633g.q()) {
            f6Var.f.remove(activity);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    @MainThread
    public final void onActivityPaused(Activity activity) throws IllegalStateException {
        int r22;
        f6 f6Var = ((i4) this.f2001a.f2115a).f1641q;
        i4.d(f6Var);
        synchronized (f6Var.f1555m) {
            f6Var.f1554l = false;
            r22 = 1;
            f6Var.f1551h = true;
        }
        ((i4) f6Var.f2115a).f1640p.getClass();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (((i4) f6Var.f2115a).f1633g.q()) {
            b6 b6VarS = f6Var.s(activity);
            f6Var.f1548d = f6Var.f1547c;
            f6Var.f1547c = null;
            h4 h4Var = ((i4) f6Var.f2115a).f1636k;
            i4.e(h4Var);
            h4Var.p(new e6(f6Var, b6VarS, jElapsedRealtime));
        } else {
            f6Var.f1547c = null;
            h4 h4Var2 = ((i4) f6Var.f2115a).f1636k;
            i4.e(h4Var2);
            h4Var2.p(new m5(f6Var, jElapsedRealtime, r22));
        }
        e7 e7Var = ((i4) this.f2001a.f2115a).f1637l;
        i4.d(e7Var);
        ((i4) e7Var.f2115a).f1640p.getClass();
        long jElapsedRealtime2 = SystemClock.elapsedRealtime();
        h4 h4Var3 = ((i4) e7Var.f2115a).f1636k;
        i4.e(h4Var3);
        h4Var3.p(new m5(e7Var, jElapsedRealtime2, 2));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    @MainThread
    public final void onActivityResumed(Activity activity) throws IllegalStateException {
        int r22;
        e7 e7Var = ((i4) this.f2001a.f2115a).f1637l;
        i4.d(e7Var);
        ((i4) e7Var.f2115a).f1640p.getClass();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        h4 h4Var = ((i4) e7Var.f2115a).f1636k;
        i4.e(h4Var);
        h4Var.p(new y6(e7Var, jElapsedRealtime));
        f6 f6Var = ((i4) this.f2001a.f2115a).f1641q;
        i4.d(f6Var);
        synchronized (f6Var.f1555m) {
            r22 = 1;
            f6Var.f1554l = true;
            if (activity != f6Var.f1550g) {
                synchronized (f6Var.f1555m) {
                    f6Var.f1550g = activity;
                    f6Var.f1551h = false;
                }
                if (((i4) f6Var.f2115a).f1633g.q()) {
                    f6Var.f1552j = null;
                    h4 h4Var2 = ((i4) f6Var.f2115a).f1636k;
                    i4.e(h4Var2);
                    h4Var2.p(new l3.l(2, f6Var));
                }
            }
        }
        if (!((i4) f6Var.f2115a).f1633g.q()) {
            f6Var.f1547c = f6Var.f1552j;
            h4 h4Var3 = ((i4) f6Var.f2115a).f1636k;
            i4.e(h4Var3);
            h4Var3.p(new d5(f6Var, r22));
            return;
        }
        f6Var.g(activity, f6Var.s(activity), false);
        u1 u1VarG = ((i4) f6Var.f2115a).g();
        ((i4) u1VarG.f2115a).f1640p.getClass();
        long jElapsedRealtime2 = SystemClock.elapsedRealtime();
        h4 h4Var4 = ((i4) u1VarG.f2115a).f1636k;
        i4.e(h4Var4);
        h4Var4.p(new t0(u1VarG, jElapsedRealtime2));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        b6 b6Var;
        f6 f6Var = ((i4) this.f2001a.f2115a).f1641q;
        i4.d(f6Var);
        if (!((i4) f6Var.f2115a).f1633g.q() || bundle == null || (b6Var = (b6) f6Var.f.get(activity)) == null) {
            return;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putLong("id", b6Var.f1421c);
        bundle2.putString("name", b6Var.f1419a);
        bundle2.putString("referrer_name", b6Var.f1420b);
        bundle.putBundle("com.google.app_measurement.screen_service", bundle2);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }
}
