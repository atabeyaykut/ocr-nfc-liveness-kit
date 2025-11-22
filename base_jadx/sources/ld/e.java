package ld;

import android.annotation.TargetApi;
import android.bluetooth.BluetoothAdapter;
import android.content.Context;
import android.os.Handler;
import android.os.SystemClock;
import androidx.annotation.MainThread;
import kd.k;

@TargetApi(18)
/* loaded from: classes2.dex */
public final class e extends b {

    /* renamed from: y, reason: collision with root package name */
    public h f9777y;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        @MainThread
        public final void run() {
            e.this.k(Boolean.TRUE);
        }
    }

    public e(Context context, boolean z10, k.a aVar) {
        super(context, z10, aVar);
    }

    @Override // ld.b
    public final boolean c() {
        long jElapsedRealtime = this.f9755d - SystemClock.elapsedRealtime();
        if (jElapsedRealtime <= 0) {
            return false;
        }
        id.b.a("CycledLeScannerForJellyBeanMr2", "Waiting to start next Bluetooth scan for another %s milliseconds", Long.valueOf(jElapsedRealtime));
        if (this.f9771u) {
            n();
        }
        Handler handler = this.f9767q;
        a aVar = new a();
        if (jElapsedRealtime > 1000) {
            jElapsedRealtime = 1000;
        }
        handler.postDelayed(aVar, jElapsedRealtime);
        return true;
    }

    @Override // ld.b
    public final void e() {
        BluetoothAdapter bluetoothAdapterG = g();
        if (bluetoothAdapterG != null) {
            if (this.f9777y == null) {
                this.f9777y = new h(this);
            }
            h hVar = this.f9777y;
            Handler handler = this.f9768r;
            handler.removeCallbacksAndMessages(null);
            handler.post(new g(bluetoothAdapterG, hVar));
        }
        this.f9759i = true;
    }

    @Override // ld.b
    public final void p() {
        BluetoothAdapter bluetoothAdapterG = g();
        if (bluetoothAdapterG == null) {
            return;
        }
        if (this.f9777y == null) {
            this.f9777y = new h(this);
        }
        h hVar = this.f9777y;
        Handler handler = this.f9768r;
        handler.removeCallbacksAndMessages(null);
        handler.post(new f(bluetoothAdapterG, hVar));
    }

    @Override // ld.b
    public final void r() {
        BluetoothAdapter bluetoothAdapterG = g();
        if (bluetoothAdapterG == null) {
            return;
        }
        if (this.f9777y == null) {
            this.f9777y = new h(this);
        }
        h hVar = this.f9777y;
        Handler handler = this.f9768r;
        handler.removeCallbacksAndMessages(null);
        handler.post(new g(bluetoothAdapterG, hVar));
    }
}
