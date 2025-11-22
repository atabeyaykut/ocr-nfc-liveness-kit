package androidx.core.location;

import android.location.Location;
import androidx.core.location.LocationManagerCompat;
import androidx.core.util.Consumer;

/* loaded from: classes.dex */
public final /* synthetic */ class g implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f917a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f918b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f919c;

    public /* synthetic */ g(int r12, Object obj, Object obj2) {
        this.f917a = r12;
        this.f918b = obj;
        this.f919c = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int r02 = this.f917a;
        Object obj = this.f919c;
        Object obj2 = this.f918b;
        switch (r02) {
            case 0:
                ((Consumer) obj2).accept((Location) obj);
                break;
            case 1:
                ((Consumer) obj2).accept((Location) obj);
                break;
            default:
                ((LocationManagerCompat.LocationListenerTransport) obj2).lambda$onProviderDisabled$5((String) obj);
                break;
        }
    }
}
