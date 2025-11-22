package m4;

import android.location.Location;
import android.os.RemoteException;
import com.google.android.gms.location.LocationResult;
import java.util.List;
import o3.h;

/* loaded from: classes.dex */
public final class f extends w4.c {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ h5.l f9996a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ q f9997b;

    public f(q qVar, h5.l lVar) {
        this.f9997b = qVar;
        this.f9996a = lVar;
    }

    @Override // w4.c
    public final void a(LocationResult locationResult) {
        List list = locationResult.f4164a;
        int size = list.size();
        this.f9996a.d(size == 0 ? null : (Location) list.get(size - 1));
        try {
            q qVar = this.f9997b;
            r3.r.g("Listener type must not be empty", "GetCurrentLocation");
            qVar.E(new h.a(this), false, new h5.l());
        } catch (RemoteException unused) {
        }
    }
}
