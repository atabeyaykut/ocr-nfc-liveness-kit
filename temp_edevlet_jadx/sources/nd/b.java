package nd;

import android.bluetooth.le.AdvertiseCallback;
import android.bluetooth.le.AdvertiseSettings;
import android.bluetooth.le.BluetoothLeAdvertiser;

/* loaded from: classes2.dex */
public final class b extends AdvertiseCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BluetoothLeAdvertiser f10865a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ c f10866b;

    public b(c cVar, BluetoothLeAdvertiser bluetoothLeAdvertiser) {
        this.f10866b = cVar;
        this.f10865a = bluetoothLeAdvertiser;
    }

    @Override // android.bluetooth.le.AdvertiseCallback
    public final void onStartFailure(int r52) {
        super.onStartFailure(r52);
        c cVar = c.f10867d;
        id.b.a("c", "Sending onStartFailure event", new Object[0]);
        c cVar2 = this.f10866b;
        cVar2.getClass();
        if (r52 == 4) {
            cVar2.f10869b = Boolean.FALSE;
            id.b.f("c", "Transmitter test failed in a way we consider a test failure", new Object[0]);
        } else {
            cVar2.f10869b = Boolean.TRUE;
            id.b.d("c", "Transmitter test failed, but not in a way we consider a test failure", new Object[0]);
        }
    }

    @Override // android.bluetooth.le.AdvertiseCallback
    public final void onStartSuccess(AdvertiseSettings advertiseSettings) {
        super.onStartSuccess(advertiseSettings);
        c cVar = c.f10867d;
        id.b.d("c", "Transmitter test succeeded", new Object[0]);
        this.f10865a.stopAdvertising(this);
        this.f10866b.f10869b = Boolean.TRUE;
    }
}
