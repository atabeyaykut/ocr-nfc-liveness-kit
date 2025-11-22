package ld;

import android.bluetooth.BluetoothAdapter;
import androidx.annotation.WorkerThread;

/* loaded from: classes2.dex */
public final class g implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BluetoothAdapter f9781a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ BluetoothAdapter.LeScanCallback f9782b;

    public g(BluetoothAdapter bluetoothAdapter, BluetoothAdapter.LeScanCallback leScanCallback) {
        this.f9781a = bluetoothAdapter;
        this.f9782b = leScanCallback;
    }

    @Override // java.lang.Runnable
    @WorkerThread
    public final void run() {
        try {
            this.f9781a.stopLeScan(this.f9782b);
        } catch (Exception e10) {
            id.b.b(e10, "CycledLeScannerForJellyBeanMr2", "Internal Android exception in stopLeScan()", new Object[0]);
        }
    }
}
