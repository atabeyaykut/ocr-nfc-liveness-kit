package gd;

import android.annotation.TargetApi;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ResolveInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.Process;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.work.PeriodicWorkRequest;
import androidx.work.WorkRequest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArraySet;
import kd.n;
import org.altbeacon.beacon.service.BeaconService;

/* loaded from: classes2.dex */
public final class e {
    public static long A = 10000;

    /* renamed from: x, reason: collision with root package name */
    @Nullable
    public static volatile e f6637x = null;

    /* renamed from: y, reason: collision with root package name */
    public static boolean f6638y = false;

    /* renamed from: z, reason: collision with root package name */
    public static final Object f6639z = new Object();

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final Context f6640a;

    /* renamed from: i, reason: collision with root package name */
    @NonNull
    public final md.a f6647i;

    /* renamed from: m, reason: collision with root package name */
    public boolean f6651m;

    /* renamed from: o, reason: collision with root package name */
    public boolean f6653o;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final ConcurrentHashMap f6641b = new ConcurrentHashMap();

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    public Messenger f6642c = null;

    /* renamed from: d, reason: collision with root package name */
    @NonNull
    public final CopyOnWriteArraySet f6643d = new CopyOnWriteArraySet();

    /* renamed from: e, reason: collision with root package name */
    @NonNull
    public final CopyOnWriteArraySet f6644e = new CopyOnWriteArraySet();

    @NonNull
    public final CopyOnWriteArraySet f = new CopyOnWriteArraySet();

    /* renamed from: g, reason: collision with root package name */
    @NonNull
    public final HashSet f6645g = new HashSet();

    /* renamed from: h, reason: collision with root package name */
    @NonNull
    public final HashSet f6646h = new HashSet();

    /* renamed from: j, reason: collision with root package name */
    public final boolean f6648j = true;

    /* renamed from: k, reason: collision with root package name */
    public boolean f6649k = false;

    /* renamed from: l, reason: collision with root package name */
    public boolean f6650l = true;

    /* renamed from: n, reason: collision with root package name */
    @Nullable
    public Boolean f6652n = null;

    /* renamed from: p, reason: collision with root package name */
    public final Handler f6654p = new Handler(Looper.getMainLooper());

    /* renamed from: q, reason: collision with root package name */
    public boolean f6655q = false;

    /* renamed from: r, reason: collision with root package name */
    public final long f6656r = 1100;

    /* renamed from: s, reason: collision with root package name */
    public final long f6657s = WorkRequest.MIN_BACKOFF_MILLIS;

    /* renamed from: t, reason: collision with root package name */
    public final long f6658t = PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS;

    /* renamed from: u, reason: collision with root package name */
    public final HashMap<l, m> f6659u = new HashMap<>();

    /* renamed from: v, reason: collision with root package name */
    @Nullable
    public b f6660v = null;

    @Nullable
    public jd.a w = null;

    public class a implements md.b {
        public a() {
        }

        public final void a() {
            id.b.a("BeaconManager", "API Beacon parsers changed", new Object[0]);
            e.this.b();
        }
    }

    public class b implements i {
        public b() {
        }

        @Override // gd.i
        public final boolean a(Intent intent, c cVar) {
            return e.this.f6640a.bindService(intent, cVar, 1);
        }

        @Override // gd.i
        public final void b() {
            if (!e.this.i()) {
                id.b.f("BeaconManager", "Method invocation will be ignored -- no BLE.", new Object[0]);
                return;
            }
            synchronized (e.this.f6645g) {
                Iterator it = e.this.f6645g.iterator();
                while (it.hasNext()) {
                    try {
                        e.this.o((l) it.next());
                    } catch (RemoteException e10) {
                        id.b.c("BeaconManager", "Failed to start ranging", e10);
                    }
                }
                e.this.f6645g.clear();
            }
            synchronized (e.this.f6646h) {
                Iterator it2 = e.this.f6646h.iterator();
                while (it2.hasNext()) {
                    try {
                        e.this.m((l) it2.next());
                    } catch (RemoteException e11) {
                        id.b.c("BeaconManager", "Failed to start monitoring", e11);
                    }
                }
                e.this.f6646h.clear();
            }
        }

        @Override // gd.i
        public final Context c() {
            return e.this.f6640a;
        }
    }

    public class c implements ServiceConnection {
        public c() {
        }

        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            id.b.a("BeaconManager", "we have a connection to the service now", new Object[0]);
            e eVar = e.this;
            if (eVar.f6652n == null) {
                eVar.f6652n = Boolean.FALSE;
            }
            eVar.f6642c = new Messenger(iBinder);
            e.this.b();
            synchronized (e.this.f6641b) {
                for (Map.Entry entry : e.this.f6641b.entrySet()) {
                    if (!((d) entry.getValue()).f6664a) {
                        ((i) entry.getKey()).b();
                        ((d) entry.getValue()).f6664a = true;
                    }
                }
            }
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
            id.b.c("BeaconManager", "onServiceDisconnected", new Object[0]);
            e.this.f6642c = null;
        }
    }

    public class d {

        /* renamed from: a, reason: collision with root package name */
        public boolean f6664a = false;

        /* renamed from: b, reason: collision with root package name */
        @NonNull
        public final c f6665b;

        public d(e eVar) {
            this.f6665b = eVar.new c();
        }
    }

    /* renamed from: gd.e$e, reason: collision with other inner class name */
    public class C0114e extends RuntimeException {
        public C0114e() {
            super("The BeaconService is not properly declared in AndroidManifest.xml.  If using Eclipse, please verify that your project.properties has manifestmerger.enabled=true");
        }
    }

    public e(@NonNull Context context) {
        this.f6651m = false;
        this.f6653o = false;
        Context applicationContext = context.getApplicationContext();
        this.f6640a = applicationContext;
        md.c cVar = new md.c(applicationContext);
        String strA = cVar.a();
        String packageName = applicationContext.getApplicationContext().getPackageName();
        int r52 = Process.myPid();
        this.f6651m = applicationContext.getApplicationContext().getPackageName().equals(cVar.a());
        id.b.d("BeaconManager", "BeaconManager started up on pid " + r52 + " named '" + strA + "' for application package '" + packageName + "'.  isMainProcess=" + this.f6651m, new Object[0]);
        List<ResolveInfo> listQueryIntentServices = applicationContext.getPackageManager().queryIntentServices(new Intent(applicationContext, (Class<?>) BeaconService.class), 65536);
        if (listQueryIntentServices != null && listQueryIntentServices.isEmpty()) {
            throw new C0114e();
        }
        md.a aVar = new md.a();
        aVar.f10377a = new a();
        this.f6647i = aVar;
        aVar.add(new gd.b());
        this.f6653o = Build.VERSION.SDK_INT >= 26;
    }

    @NonNull
    public static e g(@NonNull Context context) {
        e eVar = f6637x;
        if (eVar == null) {
            synchronized (f6639z) {
                eVar = f6637x;
                if (eVar == null) {
                    eVar = new e(context);
                    f6637x = eVar;
                    id.b.a("BeaconManager", "API BeaconManager constructed ", new Object[0]);
                }
            }
        }
        return eVar;
    }

    @TargetApi(18)
    public final void a(int r19, l lVar) throws RemoteException {
        Bundle bundle;
        if (!h()) {
            id.b.f("BeaconManager", "The BeaconManager is not bound to the service.  Call beaconManager.bind(BeaconConsumer consumer) and wait for a callback to onBeaconServiceConnect()", new Object[0]);
            return;
        }
        boolean z10 = this.f6653o;
        Context context = this.f6640a;
        if (z10) {
            kd.l.c().a(context, this);
            return;
        }
        Message messageObtain = Message.obtain(null, r19, 0, 0);
        long j10 = this.f6658t;
        long j11 = this.f6657s;
        long j12 = this.f6656r;
        if (r19 == 6) {
            boolean z11 = this.f6649k;
            if (!z11) {
                j11 = j12;
            }
            long j13 = z11 ? j10 : 0L;
            bundle = new Bundle();
            bundle.putLong("scanPeriod", j11);
            bundle.putLong("betweenScanPeriod", j13);
            bundle.putBoolean("backgroundFlag", z11);
            bundle.putString("callbackPackageName", null);
        } else {
            if (r19 != 7) {
                String packageName = context.getPackageName();
                id.b.a("BeaconManager", "callback packageName: %s", packageName);
                boolean z12 = this.f6649k;
                if (!z12) {
                    j11 = j12;
                }
                long j14 = z12 ? j10 : 0L;
                Bundle bundle2 = new Bundle();
                bundle2.putLong("scanPeriod", j11);
                bundle2.putLong("betweenScanPeriod", j14);
                bundle2.putBoolean("backgroundFlag", z12);
                bundle2.putString("callbackPackageName", packageName);
                if (lVar != null) {
                    bundle2.putSerializable("region", lVar);
                }
                messageObtain.setData(bundle2);
                this.f6642c.send(messageObtain);
            }
            n nVar = new n();
            e eVarG = g(context);
            nVar.f8906a = new ArrayList<>(eVarG.f6647i);
            nVar.f8907b = Boolean.valueOf(eVarG.f6648j);
            nVar.f8908c = Boolean.valueOf(f6638y);
            nVar.f8909d = Long.valueOf(A);
            nVar.f8910e = Boolean.valueOf(kd.f.f8857c);
            nVar.f = Boolean.valueOf(gd.c.f6616z);
            bundle = new Bundle();
            bundle.putSerializable("SettingsData", nVar);
        }
        messageObtain.setData(bundle);
        this.f6642c.send(messageObtain);
    }

    public final void b() {
        id.b.a("BeaconManager", "API applySettings", new Object[0]);
        if (e()) {
            return;
        }
        if (!h()) {
            id.b.a("BeaconManager", "Not synchronizing settings to service, as it has not started up yet", new Object[0]);
            return;
        }
        synchronized (this) {
            if (this.f6653o) {
                kd.l.c().a(this.f6640a, this);
            } else if (!h()) {
                id.b.a("BeaconManager", "No settings sync to running service -- service not bound", new Object[0]);
            } else if (this.f6655q) {
                id.b.a("BeaconManager", "Already scheduled settings sync to running service.", new Object[0]);
            } else {
                this.f6655q = true;
                id.b.a("BeaconManager", "API Scheduling settings sync to running service.", new Object[0]);
                this.f6654p.postDelayed(new f(this), 100L);
            }
        }
    }

    public final synchronized void c() {
        if (this.f6660v == null) {
            this.f6660v = new b();
        }
        d(this.f6660v);
    }

    public final void d(@NonNull i iVar) {
        if (!i()) {
            id.b.f("BeaconManager", "Method invocation will be ignored.", new Object[0]);
            return;
        }
        synchronized (this.f6641b) {
            d dVar = new d(this);
            if (((d) this.f6641b.putIfAbsent(iVar, dVar)) == null) {
                id.b.a("BeaconManager", "This consumer is not bound.  Binding now: %s", iVar);
                if (this.f6653o) {
                    id.b.a("BeaconManager", "Not starting beacon scanning service. Using scheduled jobs", new Object[0]);
                    iVar.b();
                } else {
                    id.b.a("BeaconManager", "Binding to service", new Object[0]);
                    iVar.a(new Intent(iVar.c(), (Class<?>) BeaconService.class), dVar.f6665b);
                }
                id.b.a("BeaconManager", "consumer count is now: %s", Integer.valueOf(this.f6641b.size()));
            } else {
                id.b.a("BeaconManager", "This consumer is already bound", new Object[0]);
            }
        }
    }

    public final boolean e() {
        if (!j() || this.f6651m) {
            return false;
        }
        id.b.f("BeaconManager", "Ranging/Monitoring may not be controlled from a separate BeaconScanner process.  To remove this warning, please wrap this call in: if (beaconManager.isMainProcess())", new Object[0]);
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x0060, code lost:
    
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void f() throws java.lang.ClassNotFoundException {
        /*
            r11 = this;
            jd.a r0 = r11.w
            if (r0 != 0) goto L9d
            jd.a r0 = new jd.a
            android.content.Context r1 = r11.f6640a
            r0.<init>(r1)
            r11.w = r0
            gd.e r1 = r0.f8492a
            boolean r2 = r1.f6650l
            r3 = 0
            if (r2 == 0) goto L90
            java.lang.Thread r2 = java.lang.Thread.currentThread()
            java.lang.StackTraceElement[] r2 = r2.getStackTrace()
            java.lang.Class<android.app.Application> r4 = android.app.Application.class
            java.lang.String r4 = r4.getCanonicalName()
            int r5 = r2.length
            r6 = 0
        L24:
            r7 = 1
            if (r6 >= r5) goto L63
            r8 = r2[r6]
            java.lang.String r9 = r8.getMethodName()
            java.lang.String r10 = "onCreate"
            boolean r9 = r10.equals(r9)
            if (r9 == 0) goto L60
            java.lang.String r9 = r8.getClassName()
            boolean r9 = r4.equals(r9)
            if (r9 == 0) goto L40
            goto L5e
        L40:
            java.lang.String r9 = r8.getClassName()
            if (r9 == 0) goto L60
            java.lang.String r8 = r8.getClassName()     // Catch: java.lang.ClassNotFoundException -> L60
            java.lang.Class r8 = java.lang.Class.forName(r8)     // Catch: java.lang.ClassNotFoundException -> L60
        L4e:
            java.lang.Class r8 = r8.getSuperclass()     // Catch: java.lang.ClassNotFoundException -> L60
            if (r8 == 0) goto L60
            java.lang.String r9 = r8.getCanonicalName()     // Catch: java.lang.ClassNotFoundException -> L60
            boolean r9 = r4.equals(r9)     // Catch: java.lang.ClassNotFoundException -> L60
            if (r9 == 0) goto L4e
        L5e:
            r2 = 1
            goto L64
        L60:
            int r6 = r6 + 1
            goto L24
        L63:
            r2 = 0
        L64:
            if (r2 == 0) goto L69
            java.lang.String r2 = "application.onCreate in the call stack"
            goto L7c
        L69:
            java.lang.String r2 = "power"
            android.content.Context r4 = r0.f8493b
            java.lang.Object r2 = r4.getSystemService(r2)
            android.os.PowerManager r2 = (android.os.PowerManager) r2
            boolean r2 = r2.isInteractive()
            r2 = r2 ^ r7
            if (r2 == 0) goto L80
            java.lang.String r2 = "the screen being off"
        L7c:
            r0.a(r2)
            goto L90
        L80:
            android.content.IntentFilter r2 = new android.content.IntentFilter
            java.lang.String r5 = "android.intent.action.SCREEN_OFF"
            r2.<init>(r5)
            android.content.Context r4 = r4.getApplicationContext()
            jd.a$a r0 = r0.f8495d
            r4.registerReceiver(r0, r2)
        L90:
            boolean r0 = r1.f6650l
            if (r0 == 0) goto L9d
            java.lang.Object[] r0 = new java.lang.Object[r3]
            java.lang.String r1 = "BackgroundPowerSaver"
            java.lang.String r2 = "Background mode not set.  We assume we are in the foreground."
            id.b.d(r1, r2, r0)
        L9d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: gd.e.f():void");
    }

    public final boolean h() {
        boolean z10;
        synchronized (this.f6641b) {
            z10 = !this.f6641b.isEmpty() && (this.f6653o || this.f6642c != null);
        }
        return z10;
    }

    public final boolean i() {
        if (this.f6640a.getPackageManager().hasSystemFeature("android.hardware.bluetooth_le")) {
            return true;
        }
        id.b.f("BeaconManager", "This device does not support bluetooth LE.", new Object[0]);
        return false;
    }

    public final boolean j() {
        Boolean bool = this.f6652n;
        return (bool == null || bool.booleanValue()) ? false : true;
    }

    public final void k(boolean z10) {
        id.b.a("BeaconManager", "API setBackgroundModeIternal " + z10, new Object[0]);
        if (!i()) {
            id.b.f("BeaconManager", "Method invocation will be ignored.", new Object[0]);
            return;
        }
        this.f6650l = false;
        if (z10 != this.f6649k) {
            this.f6649k = z10;
            try {
                p();
            } catch (RemoteException unused) {
                id.b.c("BeaconManager", "Cannot contact service to set scan periods", new Object[0]);
            }
        }
    }

    public final void l() {
        id.b.a("BeaconManager", "API setScannerInSameProcess true", new Object[0]);
        this.f6652n = Boolean.TRUE;
    }

    @TargetApi(18)
    @Deprecated
    public final void m(@NonNull l lVar) throws RemoteException {
        id.b.a("BeaconManager", "API startMonitoringBeaconsInRegion " + lVar, new Object[0]);
        if (!i()) {
            id.b.f("BeaconManager", "Method invocation will be ignored.", new Object[0]);
            return;
        }
        if (e()) {
            return;
        }
        boolean zJ = j();
        Context context = this.f6640a;
        if (!zJ) {
            kd.e eVarC = kd.e.c(context);
            id.b.a("BeaconManager", "callback packageName: %s", context.getPackageName());
            eVarC.b(lVar, new kd.a());
        }
        a(4, lVar);
        if (j()) {
            kd.e.c(context).a(lVar, new kd.a());
        }
        if (e()) {
            return;
        }
        kd.h hVarJ = kd.e.c(context).j(lVar);
        if (hVarJ != null) {
            boolean z10 = hVarJ.f8866a;
        }
        Iterator it = this.f6644e.iterator();
        while (it.hasNext()) {
            ((j) it.next()).f();
        }
    }

    @TargetApi(18)
    public final void n(@NonNull l lVar) throws ClassNotFoundException {
        id.b.a("BeaconManager", "API startRangingBeacons " + lVar, new Object[0]);
        id.b.a("BeaconManager", "startRanging", new Object[0]);
        f();
        if (h()) {
            try {
                o(lVar);
                return;
            } catch (RemoteException e10) {
                id.b.c("BeaconManager", "Failed to start ranging", e10);
                return;
            }
        }
        synchronized (this.f6645g) {
            this.f6645g.remove(lVar);
            this.f6645g.add(lVar);
        }
        c();
    }

    @TargetApi(18)
    @Deprecated
    public final void o(@NonNull l lVar) throws RemoteException {
        id.b.a("BeaconManager", "API startRangingBeaconsInRegion " + lVar, new Object[0]);
        id.b.a("BeaconManager", "startRangingBeaconsInRegion", new Object[0]);
        if (!i()) {
            id.b.f("BeaconManager", "Method invocation will be ignored.", new Object[0]);
        } else {
            if (e()) {
                return;
            }
            CopyOnWriteArraySet copyOnWriteArraySet = this.f;
            copyOnWriteArraySet.remove(lVar);
            copyOnWriteArraySet.add(lVar);
            a(2, lVar);
        }
    }

    @TargetApi(18)
    public final void p() throws RemoteException {
        id.b.a("BeaconManager", "API updateScanPeriods", new Object[0]);
        if (!i()) {
            id.b.f("BeaconManager", "Method invocation will be ignored.", new Object[0]);
            return;
        }
        if (e()) {
            return;
        }
        id.b.a("BeaconManager", "updating background flag to %s", Boolean.valueOf(this.f6649k));
        Object[] objArr = new Object[2];
        objArr[0] = Long.valueOf(this.f6649k ? this.f6657s : this.f6656r);
        objArr[1] = Long.valueOf(this.f6649k ? this.f6658t : 0L);
        id.b.a("BeaconManager", "updating scan periods to %s, %s", objArr);
        if (h()) {
            a(6, null);
        }
    }
}
