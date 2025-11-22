package ld;

import android.bluetooth.le.BluetoothLeScanner;
import android.bluetooth.le.ScanCallback;
import android.bluetooth.le.ScanSettings;
import androidx.annotation.WorkerThread;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public final class j implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BluetoothLeScanner f9788a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ List f9789b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ScanSettings f9790c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ ScanCallback f9791d;

    public j(BluetoothLeScanner bluetoothLeScanner, ArrayList arrayList, ScanSettings scanSettings, ScanCallback scanCallback) {
        this.f9788a = bluetoothLeScanner;
        this.f9789b = arrayList;
        this.f9790c = scanSettings;
        this.f9791d = scanCallback;
    }

    @Override // java.lang.Runnable
    @WorkerThread
    public final void run() {
        try {
            this.f9788a.startScan(this.f9789b, this.f9790c, this.f9791d);
        } catch (IllegalStateException unused) {
            id.b.f("CycledLeScannerForLollipop", "Cannot start scan. Bluetooth may be turned off.", new Object[0]);
        } catch (NullPointerException e10) {
            id.b.b(e10, "CycledLeScannerForLollipop", "Cannot start scan. Unexpected NPE.", new Object[0]);
        } catch (SecurityException e11) {
            id.b.c("CycledLeScannerForLollipop", "Cannot start scan.  Security Exception: " + e11.getMessage(), e11);
        }
    }
}
