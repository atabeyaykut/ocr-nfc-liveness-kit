package org.altbeacon.beacon.service;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.app.PendingIntent;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothManager;
import android.bluetooth.le.BluetoothLeScanner;
import android.bluetooth.le.ScanRecord;
import android.bluetooth.le.ScanResult;
import android.bluetooth.le.ScanSettings;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageItemInfo;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Process;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import gd.c;
import gd.e;
import hd.f;
import id.b;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import kd.h;
import kd.k;
import kd.l;
import kd.m;
import ld.n;
import org.altbeacon.beacon.startup.StartupBroadcastReceiver;

@TargetApi(21)
/* loaded from: classes2.dex */
public class ScanJob extends JobService {
    public static final /* synthetic */ int f = 0;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    public k f11352c;

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    public m f11350a = null;

    /* renamed from: b, reason: collision with root package name */
    public final Handler f11351b = new Handler();

    /* renamed from: d, reason: collision with root package name */
    public boolean f11353d = false;

    /* renamed from: e, reason: collision with root package name */
    public boolean f11354e = false;

    public class a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ JobParameters f11355a;

        /* renamed from: org.altbeacon.beacon.service.ScanJob$a$a, reason: collision with other inner class name */
        public class RunnableC0212a implements Runnable {

            /* renamed from: org.altbeacon.beacon.service.ScanJob$a$a$a, reason: collision with other inner class name */
            public class RunnableC0213a implements Runnable {
                public RunnableC0213a() {
                }

                @Override // java.lang.Runnable
                public final void run() {
                    ScanJob scanJob = ScanJob.this;
                    m mVar = scanJob.f11350a;
                    if (mVar != null) {
                        if (mVar.a().booleanValue()) {
                            scanJob.d();
                        } else {
                            b.a("ScanJob", "In foreground mode, schedule next scan", new Object[0]);
                            l.c().d(scanJob, m.d(scanJob), false);
                        }
                    }
                }
            }

            public RunnableC0212a() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                int r02 = ScanJob.f;
                StringBuilder sb2 = new StringBuilder("Scan job runtime expired: ");
                a aVar = a.this;
                sb2.append(ScanJob.this);
                b.d("ScanJob", sb2.toString(), new Object[0]);
                ScanJob.this.e();
                ScanJob.this.f11350a.e();
                ScanJob.this.jobFinished(aVar.f11355a, false);
                ScanJob.this.f11351b.post(new RunnableC0213a());
            }
        }

        public a(JobParameters jobParameters) {
            this.f11355a = jobParameters;
        }

        @Override // java.lang.Runnable
        public final void run() {
            boolean z10;
            boolean zA;
            k kVar;
            e.g(ScanJob.this);
            ScanJob scanJob = ScanJob.this;
            int r12 = ScanJob.f;
            scanJob.getClass();
            scanJob.f11350a = m.d(scanJob);
            k kVar2 = new k(scanJob);
            m mVar = scanJob.f11350a;
            System.currentTimeMillis();
            mVar.getClass();
            m mVar2 = scanJob.f11350a;
            kVar2.f8877d = mVar2.f8898b;
            kVar2.g(mVar2.f8897a);
            kVar2.f(scanJob.f11350a.f8899c);
            m mVar3 = scanJob.f11350a;
            kVar2.f8879g = mVar3.f8900d;
            if (kVar2.f8876c == null) {
                try {
                    kVar2.b(mVar3.a().booleanValue());
                    scanJob.f11352c = kVar2;
                    z10 = true;
                } catch (OutOfMemoryError unused) {
                    b.f("ScanJob", "Failed to create CycledLeScanner thread.", new Object[0]);
                    z10 = false;
                }
            } else {
                scanJob.f11352c = kVar2;
                z10 = true;
            }
            if (!z10) {
                int r02 = ScanJob.f;
                b.c("ScanJob", "Cannot allocate a scanner to look for beacons.  System resources are low.", new Object[0]);
                ScanJob.this.jobFinished(this.f11355a, false);
            }
            l lVarC = l.c();
            ScanJob.this.getApplicationContext();
            lVarC.b();
            if (this.f11355a.getJobId() == ScanJob.b(ScanJob.this, "immediateScanJobId")) {
                b.d("ScanJob", "Running immediate scan job: instance is " + ScanJob.this, new Object[0]);
            } else {
                b.d("ScanJob", "Running periodic scan job: instance is " + ScanJob.this, new Object[0]);
            }
            l lVarC2 = l.c();
            ArrayList arrayList = lVarC2.f8894b;
            lVarC2.f8894b = new ArrayList();
            ArrayList arrayList2 = new ArrayList(arrayList);
            b.a("ScanJob", "Processing %d queued scan results", Integer.valueOf(arrayList2.size()));
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                ScanResult scanResult = (ScanResult) it.next();
                ScanRecord scanRecord = scanResult.getScanRecord();
                if (scanRecord != null && (kVar = ScanJob.this.f11352c) != null) {
                    kVar.d(scanResult.getRssi(), (scanResult.getTimestampNanos() / 1000000) + (System.currentTimeMillis() - SystemClock.elapsedRealtime()), scanResult.getDevice(), scanRecord.getBytes());
                }
            }
            int r03 = ScanJob.f;
            b.a("ScanJob", "Done processing queued scan results", new Object[0]);
            synchronized (ScanJob.this) {
                ScanJob scanJob2 = ScanJob.this;
                if (scanJob2.f11354e) {
                    b.a("ScanJob", "Quitting scan job before we even start.  Somebody told us to stop.", new Object[0]);
                    ScanJob.this.jobFinished(this.f11355a, false);
                    return;
                }
                if (scanJob2.f11353d) {
                    b.a("ScanJob", "Scanning already started.  Resetting for current parameters", new Object[0]);
                    zA = ScanJob.this.c();
                } else {
                    zA = ScanJob.a(scanJob2);
                }
                ScanJob.this.f11351b.removeCallbacksAndMessages(null);
                if (!zA) {
                    b.d("ScanJob", "Scanning not started so Scan job is complete.", new Object[0]);
                    ScanJob.this.e();
                    ScanJob.this.f11350a.e();
                    b.a("ScanJob", "ScanJob Lifecycle STOP (start fail): " + ScanJob.this, new Object[0]);
                    ScanJob.this.jobFinished(this.f11355a, false);
                } else if (ScanJob.this.f11350a != null) {
                    b.d("ScanJob", "Scan job running for " + ScanJob.this.f11350a.c() + " millis", new Object[0]);
                    ScanJob scanJob3 = ScanJob.this;
                    scanJob3.f11351b.postDelayed(new RunnableC0212a(), (long) scanJob3.f11350a.c());
                }
            }
        }
    }

    public static boolean a(ScanJob scanJob) {
        String str;
        e eVarG = e.g(scanJob.getApplicationContext());
        eVarG.l();
        if (eVarG.f6651m) {
            b.d("ScanJob", "scanJob version %s is starting up on the main process", "2.20.4");
        } else {
            b.d("ScanJob", "beaconScanJob library version %s is starting up on a separate process", "2.20.4");
            StringBuilder sb2 = new StringBuilder("beaconScanJob PID is ");
            sb2.append(Process.myPid());
            sb2.append(" with process name ");
            List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) scanJob.getSystemService("activity")).getRunningAppProcesses();
            if (runningAppProcesses != null) {
                for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                    if (runningAppProcessInfo.pid == Process.myPid()) {
                        str = runningAppProcessInfo.processName;
                        break;
                    }
                }
                str = null;
                sb2.append(str);
                b.d("ScanJob", sb2.toString(), new Object[0]);
            } else {
                str = null;
                sb2.append(str);
                b.d("ScanJob", sb2.toString(), new Object[0]);
            }
        }
        c.A = new f(scanJob);
        return scanJob.c();
    }

    public static int b(Context context, String str) throws PackageManager.NameNotFoundException {
        ServiceInfo serviceInfo;
        Bundle bundle;
        try {
            serviceInfo = context.getPackageManager().getServiceInfo(new ComponentName(context, (Class<?>) ScanJob.class), 128);
        } catch (PackageManager.NameNotFoundException unused) {
            serviceInfo = null;
        }
        if (serviceInfo == null || (bundle = ((PackageItemInfo) serviceInfo).metaData) == null || bundle.get(str) == null) {
            throw new RuntimeException(androidx.browser.browseractions.a.a("Cannot get job id from manifest.  Make sure that the ", str, " is configured in the manifest for the ScanJob."));
        }
        int r32 = ((PackageItemInfo) serviceInfo).metaData.getInt(str);
        b.d("ScanJob", "Using " + str + " from manifest: " + r32, new Object[0]);
        return r32;
    }

    public final boolean c() {
        k kVar;
        Long lValueOf;
        if (this.f11350a == null || (kVar = this.f11352c) == null) {
            return false;
        }
        if (Build.VERSION.SDK_INT >= 26) {
            kVar.h();
        }
        long jLongValue = (this.f11350a.a().booleanValue() ? Long.valueOf(this.f11350a.f8902g) : Long.valueOf(this.f11350a.f)).longValue();
        if (this.f11350a.a().booleanValue()) {
            lValueOf = Long.valueOf(this.f11350a.f8901e);
        } else {
            this.f11350a.getClass();
            lValueOf = 0L;
        }
        long jLongValue2 = lValueOf.longValue();
        ld.b bVar = this.f11352c.f8876c;
        if (bVar != null) {
            bVar.m(jLongValue, jLongValue2, this.f11350a.a().booleanValue());
        }
        this.f11353d = true;
        if (jLongValue <= 0) {
            b.f("ScanJob", "Starting scan with scan period of zero.  Exiting ScanJob.", new Object[0]);
            ld.b bVar2 = this.f11352c.f8876c;
            if (bVar2 != null) {
                bVar2.q();
            }
            return false;
        }
        if (this.f11352c.f8878e.size() > 0 || this.f11352c.f8877d.f().size() > 0) {
            ld.b bVar3 = this.f11352c.f8876c;
            if (bVar3 != null) {
                bVar3.o();
            }
            return true;
        }
        ld.b bVar4 = this.f11352c.f8876c;
        if (bVar4 != null) {
            bVar4.q();
        }
        return false;
    }

    public final void d() {
        boolean z10;
        if (this.f11350a != null) {
            b.a("ScanJob", "Checking to see if we need to start a passive scan", new Object[0]);
            kd.e eVar = this.f11350a.f8898b;
            synchronized (eVar) {
                Iterator<gd.l> it = eVar.f().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        z10 = false;
                        break;
                    }
                    h hVarJ = eVar.j(it.next());
                    if (hVarJ != null && hVarJ.f8866a) {
                        z10 = true;
                        break;
                    }
                }
            }
            if (z10) {
                b.d("ScanJob", "We are inside a beacon region.  We will not scan between cycles.", new Object[0]);
                return;
            }
            int r02 = Build.VERSION.SDK_INT;
            if (r02 < 26) {
                b.a("ScanJob", "This is not Android O.  No scanning between cycles when using ScanJob", new Object[0]);
                return;
            }
            k kVar = this.f11352c;
            if (kVar != null) {
                HashSet hashSet = this.f11350a.f8899c;
                ScanSettings scanSettingsBuild = new ScanSettings.Builder().setScanMode(0).build();
                ArrayList arrayListA = n.a(new ArrayList(hashSet));
                try {
                    BluetoothAdapter adapter = ((BluetoothManager) kVar.f8882j.getApplicationContext().getSystemService("bluetooth")).getAdapter();
                    if (adapter == null) {
                        b.f("k", "Failed to construct a BluetoothAdapter", new Object[0]);
                    } else if (adapter.isEnabled() || r02 >= 28) {
                        BluetoothLeScanner bluetoothLeScanner = adapter.getBluetoothLeScanner();
                        if (bluetoothLeScanner != null) {
                            Context context = kVar.f8882j;
                            Intent intent = new Intent(context, (Class<?>) StartupBroadcastReceiver.class);
                            intent.putExtra("o-scan", true);
                            int r03 = bluetoothLeScanner.startScan(arrayListA, scanSettingsBuild, PendingIntent.getBroadcast(context, 0, intent, 167772160));
                            if (r03 != 0) {
                                b.c("k", "Failed to start background scan on Android O.  Code: " + r03, new Object[0]);
                            } else {
                                b.a("k", "Started passive beacon scan", new Object[0]);
                            }
                        } else {
                            b.c("k", "Failed to start background scan on Android O: scanner is null", new Object[0]);
                        }
                    } else {
                        b.f("k", "Failed to start background scan on Android O: BluetoothAdapter is not enabled", new Object[0]);
                    }
                } catch (NullPointerException e10) {
                    b.c("k", "NullPointerException starting Android O background scanner", e10);
                } catch (SecurityException unused) {
                    b.c("k", "SecurityException making Android O background scanner", new Object[0]);
                } catch (RuntimeException e11) {
                    b.c("k", "Unexpected runtime exception starting Android O background scanner", e11);
                }
            }
        }
    }

    public final void e() {
        this.f11353d = false;
        k kVar = this.f11352c;
        if (kVar != null) {
            if (Build.VERSION.SDK_INT >= 26) {
                kVar.h();
            }
            ld.b bVar = this.f11352c.f8876c;
            if (bVar != null) {
                bVar.q();
                this.f11352c.f8876c.d();
            }
        }
        b.a("ScanJob", "Scanning stopped", new Object[0]);
    }

    @Override // android.app.job.JobService
    public final boolean onStartJob(JobParameters jobParameters) {
        b.d("ScanJob", "ScanJob Lifecycle START: " + this, new Object[0]);
        this.f11354e = false;
        new Thread(new a(jobParameters)).start();
        return true;
    }

    @Override // android.app.job.JobService
    public final boolean onStopJob(JobParameters jobParameters) {
        b.a("ScanJob", "onStopJob called", new Object[0]);
        synchronized (this) {
            this.f11354e = true;
            if (jobParameters.getJobId() == b(this, "periodicScanJobId")) {
                b.d("ScanJob", "onStopJob called for periodic scan " + this, new Object[0]);
            } else {
                b.d("ScanJob", "onStopJob called for immediate scan " + this, new Object[0]);
            }
            b.d("ScanJob", "ScanJob Lifecycle STOP: " + this, new Object[0]);
            this.f11351b.removeCallbacksAndMessages(null);
            e.g(this);
            e();
            d();
            k kVar = this.f11352c;
            if (kVar != null) {
                kVar.i();
            }
        }
        return false;
    }
}
