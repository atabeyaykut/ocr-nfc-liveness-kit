package com.google.android.gms.internal.measurement;

import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.GuardedBy;
import java.util.ArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class d2 {

    /* renamed from: g, reason: collision with root package name */
    public static volatile d2 f3434g;

    /* renamed from: a, reason: collision with root package name */
    public final ExecutorService f3435a;

    /* renamed from: b, reason: collision with root package name */
    public final b5.a f3436b;

    /* renamed from: c, reason: collision with root package name */
    @GuardedBy("listenerList")
    public final ArrayList f3437c;

    /* renamed from: d, reason: collision with root package name */
    public int f3438d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f3439e;
    public volatile v0 f;

    public d2(Context context, Bundle bundle) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new u1());
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        this.f3435a = Executors.unconfigurableExecutorService(threadPoolExecutor);
        this.f3436b = new b5.a(this);
        this.f3437c = new ArrayList();
        try {
            b8.f.L0(context, c5.d4.a(context));
        } catch (IllegalStateException unused) {
        }
        b(new k1(this, context, bundle));
        Application application = (Application) context.getApplicationContext();
        if (application == null) {
            Log.w("FA", "Unable to register lifecycle notifications. Application null.");
        } else {
            application.registerActivityLifecycleCallbacks(new c2(this));
        }
    }

    public static d2 c(Context context, Bundle bundle) {
        r3.r.i(context);
        if (f3434g == null) {
            synchronized (d2.class) {
                if (f3434g == null) {
                    f3434g = new d2(context, bundle);
                }
            }
        }
        return f3434g;
    }

    public final void a(Exception exc, boolean z10, boolean z11) {
        this.f3439e |= z10;
        if (z10) {
            Log.w("FA", "Data collection startup failed. No data will be collected.", exc);
            return;
        }
        if (z11) {
            b(new t1(this, exc));
        }
        Log.w("FA", "Error with data collection. Data lost.", exc);
    }

    public final void b(y1 y1Var) {
        this.f3435a.execute(y1Var);
    }
}
