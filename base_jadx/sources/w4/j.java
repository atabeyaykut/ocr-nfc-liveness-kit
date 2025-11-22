package w4;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationResult;
import o3.h0;

/* loaded from: classes.dex */
public abstract class j extends m4.b implements k {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f18703a = 0;

    public j() {
        super("com.google.android.gms.location.ILocationCallback");
    }

    @Override // m4.b
    public final boolean w0(int r32, Parcel parcel) throws RemoteException {
        if (r32 == 1) {
            LocationResult locationResult = (LocationResult) m4.e.a(parcel, LocationResult.CREATOR);
            m4.e.b(parcel);
            o3.h hVar = ((m4.o) this).f10010b.f9998a;
            m4.l lVar = new m4.l(locationResult);
            hVar.getClass();
            hVar.f11139a.execute(new h0(hVar, lVar));
        } else if (r32 == 2) {
            LocationAvailability locationAvailability = (LocationAvailability) m4.e.a(parcel, LocationAvailability.CREATOR);
            m4.e.b(parcel);
            o3.h hVar2 = ((m4.o) this).f10010b.f9998a;
            m4.m mVar = new m4.m(locationAvailability);
            hVar2.getClass();
            hVar2.f11139a.execute(new h0(hVar2, mVar));
        } else {
            if (r32 != 3) {
                return false;
            }
            ((m4.o) this).k();
        }
        return true;
    }
}
