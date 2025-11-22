package com.google.android.gms.measurement.internal;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.collection.ArrayMap;
import b8.f;
import c5.b5;
import c5.b6;
import c5.e3;
import c5.e5;
import c5.f5;
import c5.f6;
import c5.h4;
import c5.h5;
import c5.i4;
import c5.j5;
import c5.k;
import c5.m5;
import c5.o5;
import c5.p5;
import c5.q;
import c5.r2;
import c5.s;
import c5.t5;
import c5.u5;
import c5.v5;
import c5.v7;
import c5.w7;
import c5.x7;
import c5.z4;
import com.google.android.gms.common.util.DynamiteApi;
import com.google.android.gms.internal.measurement.b1;
import com.google.android.gms.internal.measurement.d1;
import com.google.android.gms.internal.measurement.e1;
import com.google.android.gms.internal.measurement.ia;
import com.google.android.gms.internal.measurement.u0;
import com.google.android.gms.internal.measurement.y0;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import o3.h0;
import o3.n0;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import r3.r;
import z3.b;
import z3.d;

@DynamiteApi
/* loaded from: classes.dex */
public class AppMeasurementDynamiteService extends u0 {

    /* renamed from: a, reason: collision with root package name */
    public i4 f4197a = null;

    /* renamed from: b, reason: collision with root package name */
    @GuardedBy("listenerMap")
    public final ArrayMap f4198b = new ArrayMap();

    @Override // com.google.android.gms.internal.measurement.v0
    public void beginAdUnitExposure(@NonNull String str, long j10) throws IllegalStateException, RemoteException {
        x0();
        this.f4197a.g().c(j10, str);
    }

    @Override // com.google.android.gms.internal.measurement.v0
    public void clearConditionalUserProperty(@NonNull String str, @NonNull String str2, @NonNull Bundle bundle) throws IllegalStateException, RemoteException {
        x0();
        v5 v5Var = this.f4197a.f1642r;
        i4.d(v5Var);
        v5Var.D(str, str2, bundle);
    }

    @Override // com.google.android.gms.internal.measurement.v0
    public void clearMeasurementEnabled(long j10) throws IllegalStateException, RemoteException {
        x0();
        v5 v5Var = this.f4197a.f1642r;
        i4.d(v5Var);
        v5Var.c();
        h4 h4Var = ((i4) v5Var.f2115a).f1636k;
        i4.e(h4Var);
        h4Var.p(new n0(3, v5Var, null));
    }

    @Override // com.google.android.gms.internal.measurement.v0
    public void endAdUnitExposure(@NonNull String str, long j10) throws IllegalStateException, RemoteException {
        x0();
        this.f4197a.g().d(j10, str);
    }

    @Override // com.google.android.gms.internal.measurement.v0
    public void generateEventId(y0 y0Var) throws RemoteException {
        x0();
        v7 v7Var = this.f4197a.f1638m;
        i4.c(v7Var);
        long jL0 = v7Var.l0();
        x0();
        v7 v7Var2 = this.f4197a.f1638m;
        i4.c(v7Var2);
        v7Var2.D(y0Var, jL0);
    }

    @Override // com.google.android.gms.internal.measurement.v0
    public void getAppInstanceId(y0 y0Var) throws IllegalStateException, RemoteException {
        x0();
        h4 h4Var = this.f4197a.f1636k;
        i4.e(h4Var);
        h4Var.p(new e5(0, this, y0Var));
    }

    @Override // com.google.android.gms.internal.measurement.v0
    public void getCachedAppInstanceId(y0 y0Var) throws RemoteException {
        x0();
        v5 v5Var = this.f4197a.f1642r;
        i4.d(v5Var);
        y0(v5Var.A(), y0Var);
    }

    @Override // com.google.android.gms.internal.measurement.v0
    public void getConditionalUserProperties(String str, String str2, y0 y0Var) throws IllegalStateException, RemoteException {
        x0();
        h4 h4Var = this.f4197a.f1636k;
        i4.e(h4Var);
        h4Var.p(new w7(this, y0Var, str, str2));
    }

    @Override // com.google.android.gms.internal.measurement.v0
    public void getCurrentScreenClass(y0 y0Var) throws RemoteException {
        x0();
        v5 v5Var = this.f4197a.f1642r;
        i4.d(v5Var);
        f6 f6Var = ((i4) v5Var.f2115a).f1641q;
        i4.d(f6Var);
        b6 b6Var = f6Var.f1547c;
        y0(b6Var != null ? b6Var.f1420b : null, y0Var);
    }

    @Override // com.google.android.gms.internal.measurement.v0
    public void getCurrentScreenName(y0 y0Var) throws RemoteException {
        x0();
        v5 v5Var = this.f4197a.f1642r;
        i4.d(v5Var);
        f6 f6Var = ((i4) v5Var.f2115a).f1641q;
        i4.d(f6Var);
        b6 b6Var = f6Var.f1547c;
        y0(b6Var != null ? b6Var.f1419a : null, y0Var);
    }

    @Override // com.google.android.gms.internal.measurement.v0
    public void getGmpAppId(y0 y0Var) throws RemoteException {
        x0();
        v5 v5Var = this.f4197a.f1642r;
        i4.d(v5Var);
        z4 z4Var = v5Var.f2115a;
        String strL0 = ((i4) z4Var).f1629b;
        if (strL0 == null) {
            try {
                strL0 = f.L0(((i4) z4Var).f1628a, ((i4) z4Var).f1645v);
            } catch (IllegalStateException e10) {
                e3 e3Var = ((i4) z4Var).f1635j;
                i4.e(e3Var);
                e3Var.f.b(e10, "getGoogleAppId failed with exception");
                strL0 = null;
            }
        }
        y0(strL0, y0Var);
    }

    @Override // com.google.android.gms.internal.measurement.v0
    public void getMaxUserProperties(String str, y0 y0Var) throws RemoteException {
        x0();
        v5 v5Var = this.f4197a.f1642r;
        i4.d(v5Var);
        r.f(str);
        ((i4) v5Var.f2115a).getClass();
        x0();
        v7 v7Var = this.f4197a.f1638m;
        i4.c(v7Var);
        v7Var.C(y0Var, 25);
    }

    @Override // com.google.android.gms.internal.measurement.v0
    public void getTestFlag(y0 y0Var, int r10) throws RemoteException {
        x0();
        int r02 = 1;
        if (r10 == 0) {
            v7 v7Var = this.f4197a.f1638m;
            i4.c(v7Var);
            v5 v5Var = this.f4197a.f1642r;
            i4.d(v5Var);
            AtomicReference atomicReference = new AtomicReference();
            h4 h4Var = ((i4) v5Var.f2115a).f1636k;
            i4.e(h4Var);
            v7Var.E((String) h4Var.h(atomicReference, 15000L, "String test flag value", new h0(1, v5Var, atomicReference)), y0Var);
            return;
        }
        if (r10 == 1) {
            v7 v7Var2 = this.f4197a.f1638m;
            i4.c(v7Var2);
            v5 v5Var2 = this.f4197a.f1642r;
            i4.d(v5Var2);
            AtomicReference atomicReference2 = new AtomicReference();
            h4 h4Var2 = ((i4) v5Var2.f2115a).f1636k;
            i4.e(h4Var2);
            v7Var2.D(y0Var, ((Long) h4Var2.h(atomicReference2, 15000L, "long test flag value", new e5(r02, v5Var2, atomicReference2))).longValue());
            return;
        }
        int r03 = 3;
        int r12 = 2;
        if (r10 == 2) {
            v7 v7Var3 = this.f4197a.f1638m;
            i4.c(v7Var3);
            v5 v5Var3 = this.f4197a.f1642r;
            i4.d(v5Var3);
            AtomicReference atomicReference3 = new AtomicReference();
            h4 h4Var3 = ((i4) v5Var3.f2115a).f1636k;
            i4.e(h4Var3);
            double dDoubleValue = ((Double) h4Var3.h(atomicReference3, 15000L, "double test flag value", new k(r03, v5Var3, atomicReference3))).doubleValue();
            Bundle bundle = new Bundle();
            bundle.putDouble("r", dDoubleValue);
            try {
                y0Var.a(bundle);
                return;
            } catch (RemoteException e10) {
                e3 e3Var = ((i4) v7Var3.f2115a).f1635j;
                i4.e(e3Var);
                e3Var.f1508j.b(e10, "Error returning double value to wrapper");
                return;
            }
        }
        if (r10 == 3) {
            v7 v7Var4 = this.f4197a.f1638m;
            i4.c(v7Var4);
            v5 v5Var4 = this.f4197a.f1642r;
            i4.d(v5Var4);
            AtomicReference atomicReference4 = new AtomicReference();
            h4 h4Var4 = ((i4) v5Var4.f2115a).f1636k;
            i4.e(h4Var4);
            v7Var4.C(y0Var, ((Integer) h4Var4.h(atomicReference4, 15000L, "int test flag value", new p5(v5Var4, atomicReference4, 0))).intValue());
            return;
        }
        if (r10 != 4) {
            return;
        }
        v7 v7Var5 = this.f4197a.f1638m;
        i4.c(v7Var5);
        v5 v5Var5 = this.f4197a.f1642r;
        i4.d(v5Var5);
        AtomicReference atomicReference5 = new AtomicReference();
        h4 h4Var5 = ((i4) v5Var5.f2115a).f1636k;
        i4.e(h4Var5);
        v7Var5.y(y0Var, ((Boolean) h4Var5.h(atomicReference5, 15000L, "boolean test flag value", new n0(r12, v5Var5, atomicReference5))).booleanValue());
    }

    @Override // com.google.android.gms.internal.measurement.v0
    public void getUserProperties(String str, String str2, boolean z10, y0 y0Var) throws IllegalStateException, RemoteException {
        x0();
        h4 h4Var = this.f4197a.f1636k;
        i4.e(h4Var);
        h4Var.p(new o5(this, y0Var, str, str2, z10));
    }

    @Override // com.google.android.gms.internal.measurement.v0
    public void initForTests(@NonNull Map map) throws RemoteException {
        x0();
    }

    @Override // com.google.android.gms.internal.measurement.v0
    public void initialize(b bVar, e1 e1Var, long j10) throws RemoteException {
        i4 i4Var = this.f4197a;
        if (i4Var == null) {
            Context context = (Context) d.y0(bVar);
            r.i(context);
            this.f4197a = i4.r(context, e1Var, Long.valueOf(j10));
        } else {
            e3 e3Var = i4Var.f1635j;
            i4.e(e3Var);
            e3Var.f1508j.a("Attempting to initialize multiple times");
        }
    }

    @Override // com.google.android.gms.internal.measurement.v0
    public void isDataCollectionEnabled(y0 y0Var) throws IllegalStateException, RemoteException {
        x0();
        h4 h4Var = this.f4197a.f1636k;
        i4.e(h4Var);
        h4Var.p(new n0(5, this, y0Var));
    }

    @Override // com.google.android.gms.internal.measurement.v0
    public void logEvent(@NonNull String str, @NonNull String str2, @NonNull Bundle bundle, boolean z10, boolean z11, long j10) throws IllegalStateException, RemoteException {
        x0();
        v5 v5Var = this.f4197a.f1642r;
        i4.d(v5Var);
        v5Var.h(str, str2, bundle, z10, z11, j10);
    }

    @Override // com.google.android.gms.internal.measurement.v0
    public void logEventAndBundle(String str, String str2, Bundle bundle, y0 y0Var, long j10) throws IllegalStateException, RemoteException {
        x0();
        r.f(str2);
        (bundle != null ? new Bundle(bundle) : new Bundle()).putString("_o", "app");
        s sVar = new s(str2, new q(bundle), "app", j10);
        h4 h4Var = this.f4197a.f1636k;
        i4.e(h4Var);
        h4Var.p(new u5(this, y0Var, sVar, str));
    }

    @Override // com.google.android.gms.internal.measurement.v0
    public void logHealthData(int r10, @NonNull String str, @NonNull b bVar, @NonNull b bVar2, @NonNull b bVar3) throws RemoteException {
        x0();
        Object objY0 = bVar == null ? null : d.y0(bVar);
        Object objY02 = bVar2 == null ? null : d.y0(bVar2);
        Object objY03 = bVar3 != null ? d.y0(bVar3) : null;
        e3 e3Var = this.f4197a.f1635j;
        i4.e(e3Var);
        e3Var.u(r10, true, false, str, objY0, objY02, objY03);
    }

    @Override // com.google.android.gms.internal.measurement.v0
    public void onActivityCreated(@NonNull b bVar, @NonNull Bundle bundle, long j10) throws RemoteException {
        x0();
        v5 v5Var = this.f4197a.f1642r;
        i4.d(v5Var);
        t5 t5Var = v5Var.f2060c;
        if (t5Var != null) {
            v5 v5Var2 = this.f4197a.f1642r;
            i4.d(v5Var2);
            v5Var2.g();
            t5Var.onActivityCreated((Activity) d.y0(bVar), bundle);
        }
    }

    @Override // com.google.android.gms.internal.measurement.v0
    public void onActivityDestroyed(@NonNull b bVar, long j10) throws RemoteException {
        x0();
        v5 v5Var = this.f4197a.f1642r;
        i4.d(v5Var);
        t5 t5Var = v5Var.f2060c;
        if (t5Var != null) {
            v5 v5Var2 = this.f4197a.f1642r;
            i4.d(v5Var2);
            v5Var2.g();
            t5Var.onActivityDestroyed((Activity) d.y0(bVar));
        }
    }

    @Override // com.google.android.gms.internal.measurement.v0
    public void onActivityPaused(@NonNull b bVar, long j10) throws IllegalStateException, RemoteException {
        x0();
        v5 v5Var = this.f4197a.f1642r;
        i4.d(v5Var);
        t5 t5Var = v5Var.f2060c;
        if (t5Var != null) {
            v5 v5Var2 = this.f4197a.f1642r;
            i4.d(v5Var2);
            v5Var2.g();
            t5Var.onActivityPaused((Activity) d.y0(bVar));
        }
    }

    @Override // com.google.android.gms.internal.measurement.v0
    public void onActivityResumed(@NonNull b bVar, long j10) throws IllegalStateException, RemoteException {
        x0();
        v5 v5Var = this.f4197a.f1642r;
        i4.d(v5Var);
        t5 t5Var = v5Var.f2060c;
        if (t5Var != null) {
            v5 v5Var2 = this.f4197a.f1642r;
            i4.d(v5Var2);
            v5Var2.g();
            t5Var.onActivityResumed((Activity) d.y0(bVar));
        }
    }

    @Override // com.google.android.gms.internal.measurement.v0
    public void onActivitySaveInstanceState(b bVar, y0 y0Var, long j10) throws RemoteException {
        x0();
        v5 v5Var = this.f4197a.f1642r;
        i4.d(v5Var);
        t5 t5Var = v5Var.f2060c;
        Bundle bundle = new Bundle();
        if (t5Var != null) {
            v5 v5Var2 = this.f4197a.f1642r;
            i4.d(v5Var2);
            v5Var2.g();
            t5Var.onActivitySaveInstanceState((Activity) d.y0(bVar), bundle);
        }
        try {
            y0Var.a(bundle);
        } catch (RemoteException e10) {
            e3 e3Var = this.f4197a.f1635j;
            i4.e(e3Var);
            e3Var.f1508j.b(e10, "Error returning bundle value to wrapper");
        }
    }

    @Override // com.google.android.gms.internal.measurement.v0
    public void onActivityStarted(@NonNull b bVar, long j10) throws RemoteException {
        x0();
        v5 v5Var = this.f4197a.f1642r;
        i4.d(v5Var);
        if (v5Var.f2060c != null) {
            v5 v5Var2 = this.f4197a.f1642r;
            i4.d(v5Var2);
            v5Var2.g();
        }
    }

    @Override // com.google.android.gms.internal.measurement.v0
    public void onActivityStopped(@NonNull b bVar, long j10) throws RemoteException {
        x0();
        v5 v5Var = this.f4197a.f1642r;
        i4.d(v5Var);
        if (v5Var.f2060c != null) {
            v5 v5Var2 = this.f4197a.f1642r;
            i4.d(v5Var2);
            v5Var2.g();
        }
    }

    @Override // com.google.android.gms.internal.measurement.v0
    public void performAction(Bundle bundle, y0 y0Var, long j10) throws RemoteException {
        x0();
        y0Var.a(null);
    }

    @Override // com.google.android.gms.internal.measurement.v0
    public void registerOnMeasurementEventListener(b1 b1Var) throws RemoteException {
        Object x7Var;
        x0();
        synchronized (this.f4198b) {
            x7Var = (b5) this.f4198b.get(Integer.valueOf(b1Var.d()));
            if (x7Var == null) {
                x7Var = new x7(this, b1Var);
                this.f4198b.put(Integer.valueOf(b1Var.d()), x7Var);
            }
        }
        v5 v5Var = this.f4197a.f1642r;
        i4.d(v5Var);
        v5Var.c();
        if (v5Var.f2062e.add(x7Var)) {
            return;
        }
        e3 e3Var = ((i4) v5Var.f2115a).f1635j;
        i4.e(e3Var);
        e3Var.f1508j.a("OnEventListener already registered");
    }

    @Override // com.google.android.gms.internal.measurement.v0
    public void resetAnalyticsData(long j10) throws IllegalStateException, RemoteException {
        x0();
        v5 v5Var = this.f4197a.f1642r;
        i4.d(v5Var);
        v5Var.f2063g.set(null);
        h4 h4Var = ((i4) v5Var.f2115a).f1636k;
        i4.e(h4Var);
        h4Var.p(new m5(v5Var, j10, 0));
    }

    @Override // com.google.android.gms.internal.measurement.v0
    public void setConditionalUserProperty(@NonNull Bundle bundle, long j10) throws IllegalStateException, RemoteException {
        x0();
        if (bundle == null) {
            e3 e3Var = this.f4197a.f1635j;
            i4.e(e3Var);
            e3Var.f.a("Conditional user property must not be null");
        } else {
            v5 v5Var = this.f4197a.f1642r;
            i4.d(v5Var);
            v5Var.r(bundle, j10);
        }
    }

    @Override // com.google.android.gms.internal.measurement.v0
    public void setConsent(@NonNull final Bundle bundle, final long j10) throws IllegalStateException, RemoteException {
        x0();
        final v5 v5Var = this.f4197a.f1642r;
        i4.d(v5Var);
        ia.f3556b.f3557a.a().a();
        i4 i4Var = (i4) v5Var.f2115a;
        if (!i4Var.f1633g.p(null, r2.f1919p0)) {
            v5Var.x(bundle, j10);
            return;
        }
        h4 h4Var = i4Var.f1636k;
        i4.e(h4Var);
        h4Var.q(new Runnable() { // from class: c5.g5
            @Override // java.lang.Runnable
            public final void run() throws IllegalStateException {
                v5Var.x(bundle, j10);
            }
        });
    }

    @Override // com.google.android.gms.internal.measurement.v0
    public void setConsentThirdParty(@NonNull Bundle bundle, long j10) throws IllegalStateException, RemoteException {
        x0();
        v5 v5Var = this.f4197a.f1642r;
        i4.d(v5Var);
        v5Var.s(bundle, -20, j10);
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x00c0, code lost:
    
        if (r5.length() <= 100) goto L35;
     */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00ad  */
    @Override // com.google.android.gms.internal.measurement.v0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setCurrentScreen(@androidx.annotation.NonNull z3.b r3, @androidx.annotation.NonNull java.lang.String r4, @androidx.annotation.NonNull java.lang.String r5, long r6) throws java.lang.IllegalStateException, android.os.RemoteException {
        /*
            Method dump skipped, instructions count: 270
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.AppMeasurementDynamiteService.setCurrentScreen(z3.b, java.lang.String, java.lang.String, long):void");
    }

    @Override // com.google.android.gms.internal.measurement.v0
    public void setDataCollectionEnabled(boolean z10) throws IllegalStateException, RemoteException {
        x0();
        v5 v5Var = this.f4197a.f1642r;
        i4.d(v5Var);
        v5Var.c();
        h4 h4Var = ((i4) v5Var.f2115a).f1636k;
        i4.e(h4Var);
        h4Var.p(new h5(v5Var, z10));
    }

    @Override // com.google.android.gms.internal.measurement.v0
    public void setDefaultEventParameters(@NonNull Bundle bundle) throws IllegalStateException {
        x0();
        v5 v5Var = this.f4197a.f1642r;
        i4.d(v5Var);
        Bundle bundle2 = bundle == null ? null : new Bundle(bundle);
        h4 h4Var = ((i4) v5Var.f2115a).f1636k;
        i4.e(h4Var);
        h4Var.p(new f5(v5Var, bundle2, 0));
    }

    @Override // com.google.android.gms.internal.measurement.v0
    public void setEventInterceptor(b1 b1Var) throws IllegalStateException, RemoteException {
        x0();
        com.google.android.gms.internal.clearcut.f fVar = new com.google.android.gms.internal.clearcut.f(this, b1Var);
        h4 h4Var = this.f4197a.f1636k;
        i4.e(h4Var);
        if (!h4Var.r()) {
            h4 h4Var2 = this.f4197a.f1636k;
            i4.e(h4Var2);
            h4Var2.p(new n0(4, this, fVar));
            return;
        }
        v5 v5Var = this.f4197a.f1642r;
        i4.d(v5Var);
        v5Var.b();
        v5Var.c();
        com.google.android.gms.internal.clearcut.f fVar2 = v5Var.f2061d;
        if (fVar != fVar2) {
            r.k("EventInterceptor already set.", fVar2 == null);
        }
        v5Var.f2061d = fVar;
    }

    @Override // com.google.android.gms.internal.measurement.v0
    public void setInstanceIdProvider(d1 d1Var) throws RemoteException {
        x0();
    }

    @Override // com.google.android.gms.internal.measurement.v0
    public void setMeasurementEnabled(boolean z10, long j10) throws IllegalStateException, RemoteException {
        x0();
        v5 v5Var = this.f4197a.f1642r;
        i4.d(v5Var);
        Boolean boolValueOf = Boolean.valueOf(z10);
        v5Var.c();
        h4 h4Var = ((i4) v5Var.f2115a).f1636k;
        i4.e(h4Var);
        h4Var.p(new n0(3, v5Var, boolValueOf));
    }

    @Override // com.google.android.gms.internal.measurement.v0
    public void setMinimumSessionDuration(long j10) throws RemoteException {
        x0();
    }

    @Override // com.google.android.gms.internal.measurement.v0
    public void setSessionTimeoutDuration(long j10) throws IllegalStateException, RemoteException {
        x0();
        v5 v5Var = this.f4197a.f1642r;
        i4.d(v5Var);
        h4 h4Var = ((i4) v5Var.f2115a).f1636k;
        i4.e(h4Var);
        h4Var.p(new j5(v5Var, j10));
    }

    @Override // com.google.android.gms.internal.measurement.v0
    public void setUserId(@NonNull String str, long j10) throws IllegalStateException, RemoteException {
        x0();
        if (str == null || str.length() != 0) {
            v5 v5Var = this.f4197a.f1642r;
            i4.d(v5Var);
            v5Var.v(null, "_id", str, true, j10);
        } else {
            e3 e3Var = this.f4197a.f1635j;
            i4.e(e3Var);
            e3Var.f1508j.a("User ID must be non-empty");
        }
    }

    @Override // com.google.android.gms.internal.measurement.v0
    public void setUserProperty(@NonNull String str, @NonNull String str2, @NonNull b bVar, boolean z10, long j10) throws IllegalStateException, SecurityException, RemoteException {
        x0();
        Object objY0 = d.y0(bVar);
        v5 v5Var = this.f4197a.f1642r;
        i4.d(v5Var);
        v5Var.v(str, str2, objY0, z10, j10);
    }

    @Override // com.google.android.gms.internal.measurement.v0
    public void unregisterOnMeasurementEventListener(b1 b1Var) throws RemoteException {
        Object x7Var;
        x0();
        synchronized (this.f4198b) {
            x7Var = (b5) this.f4198b.remove(Integer.valueOf(b1Var.d()));
        }
        if (x7Var == null) {
            x7Var = new x7(this, b1Var);
        }
        v5 v5Var = this.f4197a.f1642r;
        i4.d(v5Var);
        v5Var.c();
        if (v5Var.f2062e.remove(x7Var)) {
            return;
        }
        e3 e3Var = ((i4) v5Var.f2115a).f1635j;
        i4.e(e3Var);
        e3Var.f1508j.a("OnEventListener had not been registered");
    }

    @EnsuresNonNull({"scion"})
    public final void x0() {
        if (this.f4197a == null) {
            throw new IllegalStateException("Attempting to perform action before initialize.");
        }
    }

    public final void y0(String str, y0 y0Var) {
        x0();
        v7 v7Var = this.f4197a.f1638m;
        i4.c(v7Var);
        v7Var.E(str, y0Var);
    }
}
