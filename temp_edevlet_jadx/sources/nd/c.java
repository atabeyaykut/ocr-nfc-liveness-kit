package nd;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothManager;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import org.altbeacon.bluetooth.BluetoothTestJob;

/* loaded from: classes2.dex */
public final class c {

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    public static c f10867d;

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    public BluetoothAdapter f10868a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    public Boolean f10869b;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    public Boolean f10870c;

    public c() {
        new Handler(Looper.getMainLooper());
        this.f10869b = null;
        this.f10870c = null;
    }

    @RequiresApi(21)
    public static void b() {
        id.b.c("c", "congtext is unexpectedly null", new Object[0]);
    }

    @RequiresApi(21)
    public final void a(BluetoothTestJob bluetoothTestJob) {
        if (this.f10868a == null) {
            BluetoothManager bluetoothManager = (BluetoothManager) bluetoothTestJob.getSystemService("bluetooth");
            if (bluetoothManager == null) {
                throw new NullPointerException("Cannot get BluetoothManager");
            }
            this.f10868a = bluetoothManager.getAdapter();
        }
    }
}
