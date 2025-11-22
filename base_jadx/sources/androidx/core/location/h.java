package androidx.core.location;

import android.location.Location;
import androidx.core.location.LocationManagerCompat;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final /* synthetic */ class h implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f920a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f921b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f922c;

    public /* synthetic */ h(int r12, Object obj, Object obj2) {
        this.f920a = r12;
        this.f921b = obj;
        this.f922c = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int r02 = this.f920a;
        Object obj = this.f922c;
        Object obj2 = this.f921b;
        switch (r02) {
            case 0:
                ((LocationManagerCompat.GpsStatusTransport) obj2).lambda$onGpsStatusChanged$0((Executor) obj);
                break;
            default:
                ((LocationManagerCompat.LocationListenerTransport) obj2).lambda$onLocationChanged$0((Location) obj);
                break;
        }
    }
}
