package ld;

import android.annotation.TargetApi;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.le.BluetoothLeScanner;
import android.bluetooth.le.ScanFilter;
import android.bluetooth.le.ScanSettings;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Handler;
import android.os.PowerManager;
import android.os.SystemClock;
import androidx.annotation.MainThread;
import androidx.work.WorkRequest;
import java.util.ArrayList;
import kd.k;

@TargetApi(21)
/* loaded from: classes2.dex */
public class i extends ld.b {
    public long A;
    public long B;
    public boolean C;
    public final gd.e D;
    public final PowerManager E;
    public final b F;

    /* renamed from: y, reason: collision with root package name */
    public BluetoothLeScanner f9784y;

    /* renamed from: z, reason: collision with root package name */
    public l f9785z;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        @MainThread
        public final void run() {
            i.this.k(Boolean.TRUE);
        }
    }

    public class b extends BroadcastReceiver {
        public b() {
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            i iVar = i.this;
            if (!iVar.C) {
                id.b.a("CycledLeScannerForLollipop", "Screen has gone off while outside the main scan cycle.  We will do nothing.", new Object[0]);
                return;
            }
            id.b.a("CycledLeScannerForLollipop", "Screen has gone off while using a wildcard scan filter.  Restarting scanner with non-empty filters.", new Object[0]);
            iVar.r();
            iVar.p();
        }
    }

    public i(Context context, boolean z10, k.a aVar) {
        super(context, z10, aVar);
        this.A = 0L;
        this.B = 0L;
        this.C = false;
        this.F = new b();
        this.D = gd.e.g(this.f9762l);
        this.E = (PowerManager) context.getSystemService("power");
    }

    @Override // ld.b
    public final boolean c() {
        long jElapsedRealtime = this.f9755d - SystemClock.elapsedRealtime();
        int r32 = 1;
        char c10 = 0;
        boolean z10 = jElapsedRealtime > 0;
        boolean z11 = this.C;
        this.C = !z10;
        if (z10) {
            long jElapsedRealtime2 = SystemClock.elapsedRealtime();
            kd.b bVar = kd.b.f8846b;
            long j10 = jElapsedRealtime2 - bVar.f8847a;
            if (z11) {
                if (j10 > WorkRequest.MIN_BACKOFF_MILLIS) {
                    this.A = SystemClock.elapsedRealtime();
                    this.B = 0L;
                    id.b.a("CycledLeScannerForLollipop", "This is Android L. Preparing to do a filtered scan for the background.", new Object[0]);
                    if (this.f9766p > 6000) {
                        p();
                    } else {
                        id.b.a("CycledLeScannerForLollipop", "Suppressing scan between cycles because the between scan cycle is too short.", new Object[0]);
                    }
                } else {
                    id.b.a("CycledLeScannerForLollipop", "This is Android L, but we last saw a beacon only %s ago, so we will not keep scanning in background.", Long.valueOf(j10));
                }
            }
            long j11 = this.A;
            if (j11 > 0) {
                long j12 = bVar.f8847a;
                if (j12 > j11) {
                    if (this.B == 0) {
                        this.B = j12;
                    }
                    if (SystemClock.elapsedRealtime() - this.B >= WorkRequest.MIN_BACKOFF_MILLIS) {
                        c10 = 0;
                        id.b.a("CycledLeScannerForLollipop", "We've been detecting for a bit.  Stopping Android L background scanning", new Object[0]);
                        r();
                        this.A = 0L;
                    } else {
                        c10 = 0;
                        id.b.a("CycledLeScannerForLollipop", "Delivering Android L background scanning results", new Object[0]);
                        ((k.a) this.f9770t).a();
                    }
                } else {
                    c10 = 0;
                }
                r32 = 1;
            }
            Object[] objArr = new Object[r32];
            objArr[c10] = Long.valueOf(jElapsedRealtime);
            id.b.a("CycledLeScannerForLollipop", "Waiting to start full Bluetooth scan for another %s milliseconds", objArr);
            if (z11 && this.f9771u) {
                n();
            }
            Handler handler = this.f9767q;
            a aVar = new a();
            if (jElapsedRealtime > 1000) {
                jElapsedRealtime = 1000;
            }
            handler.postDelayed(aVar, jElapsedRealtime);
        } else if (this.A > 0) {
            r();
            this.A = 0L;
        }
        return z10;
    }

    @Override // ld.b
    public final void e() {
        id.b.a("CycledLeScannerForLollipop", "Stopping scan", new Object[0]);
        r();
        this.f9759i = true;
    }

    @Override // ld.b
    public final void p() {
        ArrayList arrayListA;
        ScanSettings scanSettingsBuild;
        BluetoothLeScanner bluetoothLeScannerS;
        if (!t() && Build.VERSION.SDK_INT < 28) {
            id.b.a("CycledLeScannerForLollipop", "Not starting scan because bluetooth is off", new Object[0]);
            return;
        }
        ArrayList arrayList = new ArrayList();
        boolean z10 = this.C;
        gd.e eVar = this.D;
        if (z10) {
            id.b.a("CycledLeScannerForLollipop", "starting a scan in SCAN_MODE_LOW_LATENCY", new Object[0]);
            ScanSettings scanSettingsBuild2 = new ScanSettings.Builder().setScanMode(2).build();
            int r52 = Build.VERSION.SDK_INT;
            if (r52 >= 27) {
                String str = Build.MANUFACTURER;
                if ((str.equalsIgnoreCase("samsung") || r52 >= 34) && !this.E.isInteractive()) {
                    id.b.a("CycledLeScannerForLollipop", "Using a non-empty scan filter since this is 14.0 or Samsung 8.1+", new Object[0]);
                    arrayList = n.a(eVar.f6647i);
                } else {
                    if (str.equalsIgnoreCase("samsung")) {
                        id.b.a("CycledLeScannerForLollipop", "Using a wildcard scan filter because the screen is on.  We will switch to a non-empty filter if the screen goes off", new Object[0]);
                        IntentFilter intentFilter = new IntentFilter("android.intent.action.SCREEN_OFF");
                        Context applicationContext = this.f9762l.getApplicationContext();
                        b bVar = this.F;
                        applicationContext.registerReceiver(bVar, intentFilter);
                        id.b.a("CycledLeScannerForLollipop", "registering ScreenOffReceiver " + bVar, new Object[0]);
                    }
                    arrayList = new ArrayList();
                    arrayList.add(new ScanFilter.Builder().build());
                }
            } else {
                id.b.a("CycledLeScannerForLollipop", "Using no scan filter since this is pre-8.1", new Object[0]);
            }
            arrayListA = arrayList;
            scanSettingsBuild = scanSettingsBuild2;
        } else {
            id.b.a("CycledLeScannerForLollipop", "starting filtered scan in SCAN_MODE_LOW_POWER", new Object[0]);
            scanSettingsBuild = new ScanSettings.Builder().setScanMode(0).build();
            arrayListA = n.a(eVar.f6647i);
        }
        if (scanSettingsBuild == null || (bluetoothLeScannerS = s()) == null) {
            return;
        }
        if (this.f9785z == null) {
            this.f9785z = new l(this);
        }
        l lVar = this.f9785z;
        Handler handler = this.f9768r;
        handler.removeCallbacksAndMessages(null);
        handler.post(new j(bluetoothLeScannerS, arrayListA, scanSettingsBuild, lVar));
    }

    @Override // ld.b
    @MainThread
    public final void q() {
        super.q();
        id.b.a("CycledLeScannerForLollipop", "unregistering ScreenOffReceiver as we stop the cycled scanner", new Object[0]);
        try {
            this.f9762l.getApplicationContext().unregisterReceiver(this.F);
        } catch (IllegalArgumentException unused) {
        }
    }

    @Override // ld.b
    public final void r() {
        if (!t() && Build.VERSION.SDK_INT < 28) {
            id.b.a("CycledLeScannerForLollipop", "Not stopping scan because bluetooth is off", new Object[0]);
            return;
        }
        BluetoothLeScanner bluetoothLeScannerS = s();
        if (bluetoothLeScannerS == null) {
            return;
        }
        if (this.f9785z == null) {
            this.f9785z = new l(this);
        }
        l lVar = this.f9785z;
        Handler handler = this.f9768r;
        handler.removeCallbacksAndMessages(null);
        handler.post(new k(bluetoothLeScannerS, lVar));
    }

    public final BluetoothLeScanner s() {
        try {
            if (this.f9784y == null) {
                id.b.a("CycledLeScannerForLollipop", "Making new Android L scanner", new Object[0]);
                if (g() != null) {
                    this.f9784y = g().getBluetoothLeScanner();
                }
                if (this.f9784y == null) {
                    id.b.f("CycledLeScannerForLollipop", "Failed to make new Android L scanner", new Object[0]);
                }
            }
        } catch (SecurityException e10) {
            id.b.f("CycledLeScannerForLollipop", "SecurityException making new Android L scanner", e10);
        }
        return this.f9784y;
    }

    public final boolean t() {
        BluetoothAdapter bluetoothAdapterG;
        try {
            bluetoothAdapterG = g();
        } catch (SecurityException e10) {
            id.b.f("CycledLeScannerForLollipop", "SecurityException checking if bluetooth is on", e10);
        }
        if (bluetoothAdapterG != null) {
            return bluetoothAdapterG.getState() == 12;
        }
        id.b.f("CycledLeScannerForLollipop", "Cannot get bluetooth adapter", new Object[0]);
        return false;
    }
}
