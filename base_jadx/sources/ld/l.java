package ld;

import android.bluetooth.BluetoothDevice;
import android.bluetooth.le.ScanCallback;
import android.bluetooth.le.ScanResult;
import android.os.ParcelUuid;
import android.os.SystemClock;
import androidx.annotation.MainThread;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public final class l extends ScanCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ i f9794a;

    public l(i iVar) {
        this.f9794a = iVar;
    }

    @Override // android.bluetooth.le.ScanCallback
    @MainThread
    public final void onBatchScanResults(List<ScanResult> list) {
        i iVar;
        id.b.a("CycledLeScannerForLollipop", "got batch records", new Object[0]);
        Iterator<ScanResult> it = list.iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            iVar = this.f9794a;
            if (!zHasNext) {
                break;
            }
            ScanResult next = it.next();
            a aVar = iVar.f9770t;
            BluetoothDevice device = next.getDevice();
            int rssi = next.getRssi();
            byte[] bytes = next.getScanRecord().getBytes();
            kd.k.this.d(rssi, (System.currentTimeMillis() - SystemClock.elapsedRealtime()) + (next.getTimestampNanos() / 1000000), device, bytes);
        }
        if (iVar.A > 0) {
            id.b.a("CycledLeScannerForLollipop", "got a filtered batch scan result in the background.", new Object[0]);
        }
    }

    @Override // android.bluetooth.le.ScanCallback
    @MainThread
    public final void onScanFailed(int r52) {
        if (nd.c.f10867d == null) {
            nd.c.f10867d = new nd.c();
        }
        nd.c.f10867d.getClass();
        if (r52 == 1) {
            id.b.c("CycledLeScannerForLollipop", "Scan failed: a BLE scan with the same settings is already started by the app", new Object[0]);
            return;
        }
        if (r52 == 2) {
            id.b.c("CycledLeScannerForLollipop", "Scan failed: app cannot be registered", new Object[0]);
            return;
        }
        if (r52 == 3) {
            id.b.c("CycledLeScannerForLollipop", "Scan failed: internal error", new Object[0]);
        } else if (r52 != 4) {
            id.b.c("CycledLeScannerForLollipop", androidx.appcompat.graphics.drawable.a.f("Scan failed with unknown error (errorCode=", r52, ")"), new Object[0]);
        } else {
            id.b.c("CycledLeScannerForLollipop", "Scan failed: power optimized scan feature is not supported", new Object[0]);
        }
    }

    @Override // android.bluetooth.le.ScanCallback
    @MainThread
    public final void onScanResult(int r14, ScanResult scanResult) {
        if (id.b.f7423b) {
            id.b.a("CycledLeScannerForLollipop", "got record", new Object[0]);
            List<ParcelUuid> serviceUuids = scanResult.getScanRecord().getServiceUuids();
            if (serviceUuids != null) {
                Iterator<ParcelUuid> it = serviceUuids.iterator();
                while (it.hasNext()) {
                    id.b.a("CycledLeScannerForLollipop", "with service uuid: " + it.next(), new Object[0]);
                }
            }
        }
        i iVar = this.f9794a;
        a aVar = iVar.f9770t;
        BluetoothDevice device = scanResult.getDevice();
        kd.k.this.d(scanResult.getRssi(), (System.currentTimeMillis() - SystemClock.elapsedRealtime()) + (scanResult.getTimestampNanos() / 1000000), device, scanResult.getScanRecord().getBytes());
        if (iVar.A > 0) {
            id.b.a("CycledLeScannerForLollipop", "got a filtered scan result in the background.", new Object[0]);
        }
    }
}
