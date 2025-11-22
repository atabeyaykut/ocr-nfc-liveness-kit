package ld;

import android.annotation.TargetApi;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothManager;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Process;
import android.os.SystemClock;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.WorkerThread;
import androidx.core.app.NotificationCompat;
import androidx.core.location.LocationRequestCompat;
import androidx.work.PeriodicWorkRequest;
import java.util.Date;
import kd.k;
import org.altbeacon.beacon.startup.StartupBroadcastReceiver;

@TargetApi(18)
/* loaded from: classes2.dex */
public abstract class b {

    /* renamed from: a, reason: collision with root package name */
    public BluetoothAdapter f9752a;

    /* renamed from: h, reason: collision with root package name */
    public boolean f9758h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f9759i;

    /* renamed from: l, reason: collision with root package name */
    public final Context f9762l;

    /* renamed from: r, reason: collision with root package name */
    @NonNull
    public final Handler f9768r;

    /* renamed from: s, reason: collision with root package name */
    @NonNull
    public final HandlerThread f9769s;

    /* renamed from: t, reason: collision with root package name */
    public final ld.a f9770t;

    /* renamed from: u, reason: collision with root package name */
    public boolean f9771u;

    /* renamed from: b, reason: collision with root package name */
    public long f9753b = 0;

    /* renamed from: c, reason: collision with root package name */
    public long f9754c = 0;

    /* renamed from: d, reason: collision with root package name */
    public long f9755d = 0;

    /* renamed from: e, reason: collision with root package name */
    public long f9756e = 0;
    public long f = 0;

    /* renamed from: g, reason: collision with root package name */
    public boolean f9757g = false;

    /* renamed from: j, reason: collision with root package name */
    public boolean f9760j = false;

    /* renamed from: k, reason: collision with root package name */
    public boolean f9761k = false;

    /* renamed from: n, reason: collision with root package name */
    public boolean f9764n = false;

    /* renamed from: o, reason: collision with root package name */
    public c f9765o = null;

    /* renamed from: q, reason: collision with root package name */
    @NonNull
    public final Handler f9767q = new Handler(Looper.getMainLooper());

    /* renamed from: v, reason: collision with root package name */
    public boolean f9772v = false;
    public volatile boolean w = false;

    /* renamed from: x, reason: collision with root package name */
    public PendingIntent f9773x = null;

    /* renamed from: m, reason: collision with root package name */
    public long f9763m = 1100;

    /* renamed from: p, reason: collision with root package name */
    public long f9766p = 0;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        @WorkerThread
        public final void run() {
            id.b.a("CycledLeScanner", "Quitting scan thread", new Object[0]);
            b.this.f9769s.quit();
        }
    }

    /* renamed from: ld.b$b, reason: collision with other inner class name */
    public class RunnableC0180b implements Runnable {
        public RunnableC0180b() {
        }

        @Override // java.lang.Runnable
        @MainThread
        public final void run() {
            b.this.l();
        }
    }

    public b(Context context, boolean z10, k.a aVar) {
        this.f9771u = false;
        this.f9762l = context;
        this.f9770t = aVar;
        this.f9771u = z10;
        HandlerThread handlerThread = new HandlerThread("CycledLeScannerThread");
        this.f9769s = handlerThread;
        handlerThread.start();
        this.f9768r = new Handler(handlerThread.getLooper());
    }

    public final void a() {
        id.b.a("CycledLeScanner", "cancel wakeup alarm: %s", this.f9773x);
        ((AlarmManager) this.f9762l.getSystemService(NotificationCompat.CATEGORY_ALARM)).set(2, LocationRequestCompat.PASSIVE_INTERVAL, i());
        id.b.a("CycledLeScanner", "Set a wakeup alarm to go off in %s ms: %s", Long.valueOf(LocationRequestCompat.PASSIVE_INTERVAL - SystemClock.elapsedRealtime()), i());
    }

    public final boolean b(String str) {
        return this.f9762l.checkPermission(str, Process.myPid(), Process.myUid()) == 0;
    }

    public abstract boolean c();

    @MainThread
    public final void d() {
        id.b.a("CycledLeScanner", "Destroying", new Object[0]);
        this.f9767q.removeCallbacksAndMessages(null);
        this.f9768r.post(new a());
        c cVar = this.f9765o;
        if (cVar != null) {
            try {
                this.f9762l.unregisterReceiver(cVar);
            } catch (IllegalArgumentException unused) {
            }
            this.f9765o = null;
        }
    }

    public abstract void e();

    @MainThread
    public final void f() {
        id.b.a("CycledLeScanner", "Done with scan cycle", new Object[0]);
        try {
            ((k.a) this.f9770t).a();
            if (this.f9758h) {
                if (g() != null) {
                    if (g().isEnabled() || Build.VERSION.SDK_INT >= 28) {
                        if (this.w && this.f9766p == 0 && !j()) {
                            id.b.a("CycledLeScanner", "Not stopping scanning.  Device capable of multiple indistinct detections per scan.", new Object[0]);
                        } else {
                            long jElapsedRealtime = SystemClock.elapsedRealtime();
                            if (Build.VERSION.SDK_INT < 24 || this.f9766p + this.f9763m >= 6000 || jElapsedRealtime - this.f9753b >= 6000) {
                                try {
                                    id.b.a("CycledLeScanner", "stopping bluetooth le scan", new Object[0]);
                                    e();
                                    this.f9764n = false;
                                } catch (Exception e10) {
                                    id.b.e(e10, "CycledLeScanner", "Internal Android exception scanning for beacons", new Object[0]);
                                }
                                this.f9754c = SystemClock.elapsedRealtime();
                            } else {
                                id.b.a("CycledLeScanner", "Not stopping scan because this is Android N and we keep scanning for a minimum of 6 seconds at a time. We will stop in " + (6000 - (jElapsedRealtime - this.f9753b)) + " millisconds.", new Object[0]);
                            }
                        }
                        this.f9764n = true;
                        this.f9754c = SystemClock.elapsedRealtime();
                    } else {
                        id.b.a("CycledLeScanner", "Bluetooth is disabled.  Cannot scan for beacons.", new Object[0]);
                        this.f9772v = true;
                    }
                }
                this.f9755d = h();
                if (this.f9761k) {
                    k(Boolean.TRUE);
                }
            }
            if (this.f9761k) {
                return;
            }
            id.b.a("CycledLeScanner", "Scanning disabled. ", new Object[0]);
            this.f9760j = false;
            a();
        } catch (SecurityException unused) {
            id.b.f("CycledLeScanner", "SecurityException working accessing bluetooth.", new Object[0]);
        }
    }

    public final BluetoothAdapter g() {
        try {
            if (this.f9752a == null) {
                BluetoothAdapter adapter = ((BluetoothManager) this.f9762l.getApplicationContext().getSystemService("bluetooth")).getAdapter();
                this.f9752a = adapter;
                if (adapter == null) {
                    id.b.f("CycledLeScanner", "Failed to construct a BluetoothAdapter", new Object[0]);
                }
            }
        } catch (SecurityException unused) {
            id.b.c("CycledLeScanner", "Cannot consruct bluetooth adapter.  Security Exception", new Object[0]);
        }
        return this.f9752a;
    }

    public final long h() {
        long j10 = this.f9766p;
        if (j10 == 0) {
            return SystemClock.elapsedRealtime();
        }
        long jElapsedRealtime = j10 - (SystemClock.elapsedRealtime() % (this.f9763m + j10));
        id.b.a("CycledLeScanner", "Normalizing between scan period from %s to %s", Long.valueOf(this.f9766p), Long.valueOf(jElapsedRealtime));
        return SystemClock.elapsedRealtime() + jElapsedRealtime;
    }

    public final PendingIntent i() {
        if (this.f9773x == null) {
            Context context = this.f9762l;
            Intent intent = new Intent(context, (Class<?>) StartupBroadcastReceiver.class);
            intent.putExtra("wakeup", true);
            this.f9773x = PendingIntent.getBroadcast(context, 0, intent, 201326592);
        }
        return this.f9773x;
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean j() {
        /*
            r9 = this;
            long r0 = android.os.SystemClock.elapsedRealtime()
            long r2 = r9.f9766p
            long r0 = r0 + r2
            long r2 = r9.f9763m
            long r0 = r0 + r2
            int r2 = android.os.Build.VERSION.SDK_INT
            r3 = 24
            r4 = 1
            r5 = 0
            if (r2 < r3) goto L24
            long r2 = r9.f
            r6 = 0
            int r8 = (r2 > r6 ? 1 : (r2 == r6 ? 0 : -1))
            if (r8 <= 0) goto L24
            long r0 = r0 - r2
            r2 = 1800000(0x1b7740, double:8.89318E-318)
            int r6 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r6 <= 0) goto L24
            r0 = 1
            goto L25
        L24:
            r0 = 0
        L25:
            if (r0 == 0) goto L43
            java.lang.String r0 = "The next scan cycle would go over the Android N max duration."
            java.lang.Object[] r1 = new java.lang.Object[r5]
            java.lang.String r2 = "CycledLeScanner"
            id.b.a(r2, r0, r1)
            boolean r0 = r9.f9757g
            if (r0 == 0) goto L3c
            java.lang.String r0 = "Stopping scan to prevent Android N scan timeout."
            java.lang.Object[] r1 = new java.lang.Object[r5]
            id.b.a(r2, r0, r1)
            return r4
        L3c:
            java.lang.String r0 = "Allowing a long running scan to be stopped by the OS.  To prevent this, set longScanForcingEnabled in the AndroidBeaconLibrary."
            java.lang.Object[] r1 = new java.lang.Object[r5]
            id.b.f(r2, r0, r1)
        L43:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: ld.b.j():boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x00bd A[Catch: Exception -> 0x00c7, TRY_LEAVE, TryCatch #1 {Exception -> 0x00c7, blocks: (B:36:0x0096, B:40:0x00a0, B:43:0x00a9, B:45:0x00b1, B:50:0x00bd), top: B:66:0x0096, outer: #0 }] */
    @androidx.annotation.MainThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void k(java.lang.Boolean r7) {
        /*
            Method dump skipped, instructions count: 293
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: ld.b.k(java.lang.Boolean):void");
    }

    @MainThread
    public final void l() {
        long jElapsedRealtime = this.f9756e - SystemClock.elapsedRealtime();
        if (!this.f9761k || jElapsedRealtime <= 0) {
            f();
            return;
        }
        id.b.a("CycledLeScanner", "Waiting to stop scan cycle for another %s milliseconds", Long.valueOf(jElapsedRealtime));
        if (this.f9771u) {
            n();
        }
        Handler handler = this.f9767q;
        RunnableC0180b runnableC0180b = new RunnableC0180b();
        if (jElapsedRealtime > 1000) {
            jElapsedRealtime = 1000;
        }
        handler.postDelayed(runnableC0180b, jElapsedRealtime);
    }

    @MainThread
    public final void m(long j10, long j11, boolean z10) {
        id.b.a("CycledLeScanner", "Set scan periods called with %s, %s Background mode must have changed.", Long.valueOf(j10), Long.valueOf(j11));
        if (this.f9771u != z10) {
            this.f9772v = true;
        }
        this.f9771u = z10;
        this.f9763m = j10;
        this.f9766p = j11;
        if (z10) {
            id.b.a("CycledLeScanner", "We are in the background.  Setting wakeup alarm", new Object[0]);
            n();
        } else {
            id.b.a("CycledLeScanner", "We are not in the background.  Cancelling wakeup alarm", new Object[0]);
            a();
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long j12 = this.f9755d;
        if (j12 > jElapsedRealtime) {
            long j13 = this.f9754c + j11;
            if (j13 < j12) {
                this.f9755d = j13;
                id.b.d("CycledLeScanner", "Adjusted nextScanStartTime to be %s", new Date(System.currentTimeMillis() + (this.f9755d - SystemClock.elapsedRealtime())));
            }
        }
        long j14 = this.f9756e;
        if (j14 > jElapsedRealtime) {
            long j15 = this.f9753b + j10;
            if (j15 < j14) {
                this.f9756e = j15;
                id.b.d("CycledLeScanner", "Adjusted scanStopTime to be %s", Long.valueOf(j15));
            }
        }
    }

    public final void n() {
        long j10 = this.f9766p;
        if (PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS >= j10) {
            j10 = 300000;
        }
        long j11 = this.f9763m;
        if (j10 < j11) {
            j10 = j11;
        }
        Context context = this.f9762l;
        ((AlarmManager) context.getSystemService(NotificationCompat.CATEGORY_ALARM)).set(2, SystemClock.elapsedRealtime() + j10, i());
        id.b.a("CycledLeScanner", "Set a wakeup alarm to go off in %s ms: %s", Long.valueOf(j10), i());
        if (this.f9765o == null) {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.USER_BACKGROUND");
            intentFilter.addAction("android.intent.action.USER_FOREGROUND");
            c cVar = new c(this);
            this.f9765o = cVar;
            context.registerReceiver(cVar, intentFilter);
        }
    }

    @MainThread
    public final void o() {
        id.b.a("CycledLeScanner", "start called", new Object[0]);
        this.f9761k = true;
        if (this.f9760j) {
            id.b.a("CycledLeScanner", "scanning already started", new Object[0]);
        } else {
            k(Boolean.TRUE);
        }
    }

    public abstract void p();

    @MainThread
    public void q() {
        id.b.a("CycledLeScanner", "stop called", new Object[0]);
        this.f9761k = false;
        if (!this.f9760j) {
            id.b.a("CycledLeScanner", "scanning already stopped", new Object[0]);
            return;
        }
        k(Boolean.FALSE);
        if (this.f9764n) {
            id.b.a("CycledLeScanner", "Stopping scanning previously left on.", new Object[0]);
            this.f9764n = false;
            try {
                id.b.a("CycledLeScanner", "stopping bluetooth le scan", new Object[0]);
                e();
            } catch (Exception e10) {
                id.b.e(e10, "CycledLeScanner", "Internal Android exception scanning for beacons", new Object[0]);
            }
        }
    }

    public abstract void r();
}
