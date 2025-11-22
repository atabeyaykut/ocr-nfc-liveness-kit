package org.altbeacon.beacon.service;

import android.app.ActivityManager;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.PackageItemInfo;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.Process;
import androidx.annotation.MainThread;
import androidx.core.app.NotificationCompat;
import gd.d;
import gd.l;
import id.b;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import kd.c;
import kd.e;
import kd.f;
import kd.k;
import kd.n;
import kd.o;
import org.altbeacon.beacon.startup.StartupBroadcastReceiver;

/* loaded from: classes2.dex */
public class BeaconService extends Service {

    /* renamed from: b, reason: collision with root package name */
    public k f11346b;

    /* renamed from: c, reason: collision with root package name */
    public d f11347c;

    /* renamed from: a, reason: collision with root package name */
    public final Handler f11345a = new Handler();

    /* renamed from: d, reason: collision with root package name */
    public final Messenger f11348d = new Messenger(new a(this));

    public static class a extends Handler {

        /* renamed from: a, reason: collision with root package name */
        public final WeakReference<BeaconService> f11349a;

        public a(BeaconService beaconService) {
            super(Looper.getMainLooper());
            this.f11349a = new WeakReference<>(beaconService);
        }

        @Override // android.os.Handler
        @MainThread
        public final void handleMessage(Message message) {
            boolean z10;
            BeaconService beaconService = this.f11349a.get();
            if (beaconService != null) {
                Bundle data = message.getData();
                data.setClassLoader(l.class.getClassLoader());
                o oVar = new o();
                if (data.containsKey("region")) {
                    oVar.f8911a = (l) data.getSerializable("region");
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (data.containsKey("scanPeriod")) {
                    oVar.f8912b = ((Long) data.get("scanPeriod")).longValue();
                    z10 = true;
                }
                if (data.containsKey("betweenScanPeriod")) {
                    oVar.f8913c = ((Long) data.get("betweenScanPeriod")).longValue();
                }
                if (data.containsKey("backgroundFlag")) {
                    oVar.f8914d = ((Boolean) data.get("backgroundFlag")).booleanValue();
                }
                if (data.containsKey("callbackPackageName")) {
                    oVar.f8915e = (String) data.get("callbackPackageName");
                }
                if (!z10) {
                    oVar = null;
                }
                if (oVar == null) {
                    if (message.what != 7) {
                        b.d("BeaconService", "Received unknown message from other process : " + message.what, new Object[0]);
                        return;
                    }
                    b.d("BeaconService", "Received settings update", new Object[0]);
                    Bundle data2 = message.getData();
                    int r22 = n.f8905g;
                    data2.setClassLoader(l.class.getClassLoader());
                    n nVar = data2.get("SettingsData") != null ? (n) data2.getSerializable("SettingsData") : null;
                    if (nVar != null) {
                        nVar.a(beaconService);
                        return;
                    } else {
                        b.f("BeaconService", "Settings data missing", new Object[0]);
                        return;
                    }
                }
                int r02 = message.what;
                if (r02 == 2) {
                    b.d("BeaconService", "start ranging received", new Object[0]);
                    l lVar = oVar.f8911a;
                    kd.a aVar = new kd.a();
                    synchronized (beaconService.f11346b.f8878e) {
                        if (beaconService.f11346b.f8878e.containsKey(lVar)) {
                            b.d("BeaconService", "Already ranging that region -- will replace existing region.", new Object[0]);
                            beaconService.f11346b.f8878e.remove(lVar);
                        }
                        beaconService.f11346b.f8878e.put(lVar, new f(aVar));
                        b.a("BeaconService", "Currently ranging %s regions.", Integer.valueOf(beaconService.f11346b.f8878e.size()));
                    }
                    ld.b bVar = beaconService.f11346b.f8876c;
                    if (bVar != null) {
                        bVar.o();
                    }
                } else if (r02 == 3) {
                    b.d("BeaconService", "stop ranging received", new Object[0]);
                    beaconService.c(oVar.f8911a);
                } else if (r02 == 4) {
                    b.d("BeaconService", "start monitoring received", new Object[0]);
                    l lVar2 = oVar.f8911a;
                    kd.a aVar2 = new kd.a();
                    b.a("BeaconService", "startMonitoring called", new Object[0]);
                    beaconService.f11346b.f8877d.b(lVar2, aVar2);
                    b.a("BeaconService", "Currently monitoring %s regions.", Integer.valueOf(beaconService.f11346b.f8877d.g()));
                    ld.b bVar2 = beaconService.f11346b.f8876c;
                    if (bVar2 != null) {
                        bVar2.o();
                    }
                } else if (r02 == 5) {
                    b.d("BeaconService", "stop monitoring received", new Object[0]);
                    beaconService.b(oVar.f8911a);
                } else {
                    if (r02 != 6) {
                        super.handleMessage(message);
                        return;
                    }
                    b.d("BeaconService", "set scan intervals received", new Object[0]);
                }
                beaconService.a(oVar.f8912b, oVar.f8913c, oVar.f8914d);
            }
        }
    }

    @MainThread
    public final void a(long j10, long j11, boolean z10) {
        ld.b bVar = this.f11346b.f8876c;
        if (bVar != null) {
            bVar.m(j10, j11, z10);
        }
    }

    @MainThread
    public final void b(l lVar) {
        ld.b bVar;
        b.a("BeaconService", "stopMonitoring called", new Object[0]);
        e eVar = this.f11346b.f8877d;
        synchronized (eVar) {
            eVar.d().remove(lVar);
            eVar.i();
        }
        b.a("BeaconService", "Currently monitoring %s regions.", Integer.valueOf(this.f11346b.f8877d.g()));
        if (this.f11346b.f8877d.g() == 0 && this.f11346b.f8878e.size() == 0 && (bVar = this.f11346b.f8876c) != null) {
            bVar.q();
        }
    }

    @MainThread
    public final void c(l lVar) {
        int size;
        ld.b bVar;
        synchronized (this.f11346b.f8878e) {
            this.f11346b.f8878e.remove(lVar);
            size = this.f11346b.f8878e.size();
            b.a("BeaconService", "Currently ranging %s regions.", Integer.valueOf(this.f11346b.f8878e.size()));
        }
        if (size == 0 && this.f11346b.f8877d.g() == 0 && (bVar = this.f11346b.f8876c) != null) {
            bVar.q();
        }
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        b.d("BeaconService", "binding", new Object[0]);
        return this.f11348d.getBinder();
    }

    @Override // android.app.Service
    @MainThread
    public final void onCreate() throws PackageManager.NameNotFoundException {
        String str;
        ServiceInfo serviceInfo;
        Bundle bundle;
        d dVar;
        gd.e.g(getApplicationContext());
        k kVar = new k(this);
        this.f11346b = kVar;
        if (kVar.f8876c == null) {
            kVar.b(false);
        }
        this.f11346b.f8877d = e.c(this);
        this.f11346b.g(new HashMap());
        this.f11346b.f(new HashSet());
        this.f11346b.f8879g = new c(true);
        gd.e eVarG = gd.e.g(getApplicationContext());
        eVarG.l();
        if (eVarG.f6651m) {
            b.d("BeaconService", "beaconService version %s is starting up on the main process", "2.20.4");
            if (this.f11347c == null) {
                synchronized (d.class) {
                    if (d.f6635b == null) {
                        d.f6635b = new d();
                    }
                    dVar = d.f6635b;
                }
                this.f11347c = dVar;
                dVar.c();
            }
        } else {
            b.d("BeaconService", "beaconService version %s is starting up on a separate process", "2.20.4");
            StringBuilder sb2 = new StringBuilder("beaconService PID is ");
            sb2.append(Process.myPid());
            sb2.append(" with process name ");
            List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) getSystemService("activity")).getRunningAppProcesses();
            if (runningAppProcesses != null) {
                for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                    if (runningAppProcessInfo.pid == Process.myPid()) {
                        str = runningAppProcessInfo.processName;
                        break;
                    }
                }
                str = null;
                sb2.append(str);
                b.d("BeaconService", sb2.toString(), new Object[0]);
            } else {
                str = null;
                sb2.append(str);
                b.d("BeaconService", sb2.toString(), new Object[0]);
            }
        }
        try {
            serviceInfo = getPackageManager().getServiceInfo(new ComponentName(this, (Class<?>) BeaconService.class), 128);
        } catch (PackageManager.NameNotFoundException unused) {
        }
        String string = (serviceInfo == null || (bundle = ((PackageItemInfo) serviceInfo).metaData) == null || bundle.get("longScanForcingEnabled") == null) ? null : ((PackageItemInfo) serviceInfo).metaData.get("longScanForcingEnabled").toString();
        if (string != null && string.equals("true")) {
            b.d("BeaconService", "longScanForcingEnabled to keep scans going on Android N for > 30 minutes", new Object[0]);
            ld.b bVar = this.f11346b.f8876c;
            if (bVar != null) {
                bVar.f9757g = true;
            }
        }
        this.f11346b.e();
        gd.e eVar = gd.e.f6637x;
        gd.c.A = new hd.f(this);
        try {
            this.f11346b.f8881i = (List) Class.forName("org.altbeacon.beacon.SimulatedScanData").getField("beacons").get(null);
        } catch (ClassNotFoundException unused2) {
            b.a("BeaconService", "No org.altbeacon.beacon.SimulatedScanData class exists.", new Object[0]);
        } catch (Exception e10) {
            b.b(e10, "BeaconService", "Cannot get simulated Scan data.  Make sure your org.altbeacon.beacon.SimulatedScanData class defines a field with the signature 'public static List<Beacon> beacons'", new Object[0]);
        }
    }

    @Override // android.app.Service
    @MainThread
    public final void onDestroy() {
        b.c("BeaconService", "onDestroy()", new Object[0]);
        if (this.f11347c != null) {
            r1.f6636a--;
        }
        b.d("BeaconService", "onDestroy called.  stopping scanning", new Object[0]);
        this.f11345a.removeCallbacksAndMessages(null);
        ld.b bVar = this.f11346b.f8876c;
        if (bVar != null) {
            bVar.q();
            this.f11346b.f8876c.d();
        }
        this.f11346b.f8877d.k();
        this.f11346b.i();
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int r52, int r6) {
        String str;
        if (intent == null) {
            str = "starting with null intent";
        } else {
            str = "starting with intent " + intent.toString();
        }
        b.d("BeaconService", str, new Object[0]);
        return super.onStartCommand(intent, r52, r6);
    }

    @Override // android.app.Service
    public final void onTaskRemoved(Intent intent) {
        super.onTaskRemoved(intent);
        b.a("BeaconService", "task removed", new Object[0]);
        String str = Build.VERSION.RELEASE;
        if (str.contains("4.4.1") || str.contains("4.4.2") || str.contains("4.4.3")) {
            ((AlarmManager) getApplicationContext().getSystemService(NotificationCompat.CATEGORY_ALARM)).set(0, System.currentTimeMillis() + 1000, PendingIntent.getBroadcast(getApplicationContext(), 1, new Intent(getApplicationContext(), (Class<?>) StartupBroadcastReceiver.class), 1140850688));
            b.a("BeaconService", "Setting a wakeup alarm to go off due to Android 4.4.2 service restarting bug.", new Object[0]);
        }
    }

    @Override // android.app.Service
    public final boolean onUnbind(Intent intent) {
        b.d("BeaconService", "unbinding so destroying self", new Object[0]);
        stopForeground(true);
        stopSelf();
        return false;
    }
}
