package m3;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import androidx.annotation.NonNull;
import androidx.work.WorkRequest;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes.dex */
public final class a implements ServiceConnection {

    /* renamed from: a, reason: collision with root package name */
    public boolean f9922a = false;

    /* renamed from: b, reason: collision with root package name */
    public final LinkedBlockingQueue f9923b = new LinkedBlockingQueue();

    @NonNull
    public final IBinder a(@NonNull TimeUnit timeUnit) throws InterruptedException, TimeoutException {
        r3.r.h("BlockingServiceConnection.getServiceWithTimeout() called on main thread");
        if (this.f9922a) {
            throw new IllegalStateException("Cannot call get on this connection more than once");
        }
        this.f9922a = true;
        IBinder iBinder = (IBinder) this.f9923b.poll(WorkRequest.MIN_BACKOFF_MILLIS, timeUnit);
        if (iBinder != null) {
            return iBinder;
        }
        throw new TimeoutException("Timed out waiting for the service connection");
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(@NonNull ComponentName componentName, @NonNull IBinder iBinder) {
        this.f9923b.add(iBinder);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(@NonNull ComponentName componentName) {
    }
}
