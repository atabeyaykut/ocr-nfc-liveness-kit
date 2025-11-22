package com.google.firebase.analytics;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Keep;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresPermission;
import androidx.annotation.Size;
import androidx.work.WorkRequest;
import b7.c;
import b7.d;
import c5.w5;
import com.google.android.gms.internal.measurement.d2;
import com.google.android.gms.internal.measurement.j1;
import com.google.android.gms.internal.measurement.w1;
import h5.n;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import r3.r;
import y5.a;

/* loaded from: classes2.dex */
public final class FirebaseAnalytics {

    /* renamed from: b, reason: collision with root package name */
    public static volatile FirebaseAnalytics f4407b;

    /* renamed from: a, reason: collision with root package name */
    public final d2 f4408a;

    public FirebaseAnalytics(d2 d2Var) {
        r.i(d2Var);
        this.f4408a = d2Var;
    }

    @NonNull
    @RequiresPermission(allOf = {"android.permission.INTERNET", "android.permission.ACCESS_NETWORK_STATE", "android.permission.WAKE_LOCK"})
    @Keep
    public static FirebaseAnalytics getInstance(@NonNull Context context) {
        if (f4407b == null) {
            synchronized (FirebaseAnalytics.class) {
                if (f4407b == null) {
                    f4407b = new FirebaseAnalytics(d2.c(context, null));
                }
            }
        }
        return f4407b;
    }

    @Nullable
    @Keep
    public static w5 getScionFrontendApiImplementation(Context context, @Nullable Bundle bundle) {
        d2 d2VarC = d2.c(context, bundle);
        if (d2VarC == null) {
            return null;
        }
        return new a(d2VarC);
    }

    public final void a(@Nullable Bundle bundle, @NonNull @Size(max = 40, min = 1) String str) {
        d2 d2Var = this.f4408a;
        d2Var.getClass();
        d2Var.b(new w1(d2Var, null, str, bundle, false));
    }

    @NonNull
    @Keep
    public String getFirebaseInstanceId() {
        try {
            Object obj = c.f1149m;
            x5.c cVarB = x5.c.b();
            cVarB.a();
            return (String) n.b(((c) cVarB.f19168d.a(d.class)).getId(), WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e10) {
            throw new IllegalStateException(e10);
        } catch (ExecutionException e11) {
            throw new IllegalStateException(e11.getCause());
        } catch (TimeoutException unused) {
            throw new IllegalThreadStateException("Firebase Installations getId Task has timed out.");
        }
    }

    @Keep
    @MainThread
    @Deprecated
    public void setCurrentScreen(@NonNull Activity activity, @Nullable @Size(max = 36, min = 1) String str, @Nullable @Size(max = 36, min = 1) String str2) {
        d2 d2Var = this.f4408a;
        d2Var.getClass();
        d2Var.b(new j1(d2Var, activity, str, str2));
    }
}
