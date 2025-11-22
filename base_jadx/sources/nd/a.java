package nd;

import android.annotation.SuppressLint;
import android.bluetooth.le.BluetoothLeScanner;
import android.bluetooth.le.ScanCallback;
import android.bluetooth.le.ScanResult;
import java.util.List;

/* loaded from: classes2.dex */
public final class a extends ScanCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BluetoothLeScanner f10863a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ c f10864b;

    public a(c cVar, BluetoothLeScanner bluetoothLeScanner) {
        this.f10864b = cVar;
        this.f10863a = bluetoothLeScanner;
    }

    @Override // android.bluetooth.le.ScanCallback
    public final void onBatchScanResults(List<ScanResult> list) {
        super.onBatchScanResults(list);
    }

    @Override // android.bluetooth.le.ScanCallback
    public final void onScanFailed(int r52) {
        Boolean bool;
        super.onScanFailed(r52);
        c cVar = c.f10867d;
        id.b.a("c", "Sending onScanFailed event", new Object[0]);
        c cVar2 = this.f10864b;
        cVar2.getClass();
        if (r52 == 2) {
            id.b.f("c", "Scan test failed in a way we consider a failure", new Object[0]);
            c.b();
            bool = Boolean.FALSE;
        } else {
            id.b.d("c", "Scan test failed in a way we do not consider a failure", new Object[0]);
            bool = Boolean.TRUE;
        }
        cVar2.f10870c = bool;
    }

    @Override // android.bluetooth.le.ScanCallback
    @SuppressLint({"MissingPermission"})
    public final void onScanResult(int r22, ScanResult scanResult) {
        super.onScanResult(r22, scanResult);
        this.f10864b.f10870c = Boolean.TRUE;
        c cVar = c.f10867d;
        id.b.d("c", "Scan test succeeded", new Object[0]);
        try {
            this.f10863a.stopScan(this);
        } catch (IllegalStateException unused) {
        }
    }
}
