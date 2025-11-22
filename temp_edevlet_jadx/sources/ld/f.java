package ld;

import android.bluetooth.BluetoothAdapter;
import androidx.annotation.WorkerThread;

/* loaded from: classes2.dex */
public final class f implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BluetoothAdapter f9779a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ BluetoothAdapter.LeScanCallback f9780b;

    public f(BluetoothAdapter bluetoothAdapter, BluetoothAdapter.LeScanCallback leScanCallback) {
        this.f9779a = bluetoothAdapter;
        this.f9780b = leScanCallback;
    }

    @Override // java.lang.Runnable
    @WorkerThread
    public final void run() {
        try {
            this.f9779a.startLeScan(this.f9780b);
        } catch (Exception e10) {
            id.b.b(e10, "CycledLeScannerForJellyBeanMr2", "Internal Android exception in startLeScan()", new Object[0]);
        }
    }
}
