package ld;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;

/* loaded from: classes2.dex */
public final class h implements BluetoothAdapter.LeScanCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ e f9783a;

    public h(e eVar) {
        this.f9783a = eVar;
    }

    @Override // android.bluetooth.BluetoothAdapter.LeScanCallback
    public final void onLeScan(BluetoothDevice bluetoothDevice, int r92, byte[] bArr) {
        id.b.a("CycledLeScannerForJellyBeanMr2", "got record", new Object[0]);
        a aVar = this.f9783a.f9770t;
        kd.k.this.d(r92, System.currentTimeMillis(), bluetoothDevice, bArr);
        this.f9783a.getClass();
    }
}
