package androidx.core.location;

import android.location.GnssStatus;
import androidx.core.location.LocationManagerCompat;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final /* synthetic */ class k implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f928a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Executor f929b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f930c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f931d;

    public /* synthetic */ k(Object obj, Executor executor, Object obj2, int r42) {
        this.f928a = r42;
        this.f930c = obj;
        this.f929b = executor;
        this.f931d = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int r02 = this.f928a;
        Executor executor = this.f929b;
        Object obj = this.f931d;
        Object obj2 = this.f930c;
        switch (r02) {
            case 0:
                ((LocationManagerCompat.GpsStatusTransport) obj2).lambda$onGpsStatusChanged$3(executor, (GnssStatusCompat) obj);
                break;
            default:
                ((LocationManagerCompat.PreRGnssStatusTransport) obj2).lambda$onSatelliteStatusChanged$3(executor, (GnssStatus) obj);
                break;
        }
    }
}
