package gd;

import android.bluetooth.BluetoothDevice;

/* loaded from: classes2.dex */
public final class b extends g {
    public b() throws NumberFormatException {
        this.f6687z = new int[]{280};
        h("m:2-3=beac,i:4-19,i:20-21,i:22-23,p:24-24,d:25-25");
        this.f6686y = "altbeacon";
    }

    @Override // gd.g
    public final c e(int r82, long j10, BluetoothDevice bluetoothDevice, byte[] bArr) {
        return f(bArr, r82, bluetoothDevice, j10, new a());
    }
}
