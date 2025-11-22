package ld;

import android.bluetooth.le.BluetoothLeScanner;
import android.bluetooth.le.ScanCallback;
import androidx.annotation.WorkerThread;

/* loaded from: classes2.dex */
public final class k implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BluetoothLeScanner f9792a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ScanCallback f9793b;

    public k(BluetoothLeScanner bluetoothLeScanner, ScanCallback scanCallback) {
        this.f9792a = bluetoothLeScanner;
        this.f9793b = scanCallback;
    }

    @Override // java.lang.Runnable
    @WorkerThread
    public final void run() {
        try {
            id.b.a("CycledLeScannerForLollipop", "Stopping LE scan on scan handler", new Object[0]);
            this.f9792a.stopScan(this.f9793b);
        } catch (IllegalStateException unused) {
            id.b.f("CycledLeScannerForLollipop", "Cannot stop scan. Bluetooth may be turned off.", new Object[0]);
        } catch (NullPointerException e10) {
            id.b.b(e10, "CycledLeScannerForLollipop", "Cannot stop scan. Unexpected NPE.", new Object[0]);
        } catch (SecurityException e11) {
            id.b.c("CycledLeScannerForLollipop", "Cannot stop scan.  Security Exception", e11);
        }
    }
}
