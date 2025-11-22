package m4;

import android.location.Location;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.location.LocationRequest;
import r3.l;
import r3.o1;

/* loaded from: classes.dex */
public final class l0 extends a implements m0 {
    public l0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.location.internal.IGoogleLocationManagerService");
    }

    @Override // m4.m0
    public final void E(v vVar) throws RemoteException {
        Parcel parcelW0 = w0();
        e.c(parcelW0, vVar);
        x0(parcelW0, 59);
    }

    @Override // m4.m0
    public final void R(r rVar, LocationRequest locationRequest, h hVar) throws RemoteException {
        Parcel parcelW0 = w0();
        e.c(parcelW0, rVar);
        e.c(parcelW0, locationRequest);
        parcelW0.writeStrongBinder(hVar);
        x0(parcelW0, 88);
    }

    @Override // m4.m0
    public final r3.l X(w4.a aVar, i iVar) throws RemoteException {
        r3.l o1Var;
        Parcel parcelW0 = w0();
        e.c(parcelW0, aVar);
        parcelW0.writeStrongBinder(iVar);
        Parcel parcelObtain = Parcel.obtain();
        try {
            try {
                this.f9984a.transact(87, parcelW0, parcelObtain, 0);
                parcelObtain.readException();
                parcelW0.recycle();
                IBinder strongBinder = parcelObtain.readStrongBinder();
                int r02 = l.a.f14011a;
                if (strongBinder == null) {
                    o1Var = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.common.internal.ICancelToken");
                    o1Var = iInterfaceQueryLocalInterface instanceof r3.l ? (r3.l) iInterfaceQueryLocalInterface : new o1(strongBinder);
                }
                parcelObtain.recycle();
                return o1Var;
            } catch (RuntimeException e10) {
                parcelObtain.recycle();
                throw e10;
            }
        } catch (Throwable th2) {
            parcelW0.recycle();
            throw th2;
        }
    }

    @Override // m4.m0
    public final Location d() throws RemoteException {
        Parcel parcelW0 = w0();
        Parcel parcelObtain = Parcel.obtain();
        try {
            try {
                this.f9984a.transact(7, parcelW0, parcelObtain, 0);
                parcelObtain.readException();
                parcelW0.recycle();
                Location location = (Location) e.a(parcelObtain, Location.CREATOR);
                parcelObtain.recycle();
                return location;
            } catch (RuntimeException e10) {
                parcelObtain.recycle();
                throw e10;
            }
        } catch (Throwable th2) {
            parcelW0.recycle();
            throw th2;
        }
    }

    @Override // m4.m0
    public final void g0(w4.b bVar, i iVar) throws RemoteException {
        Parcel parcelW0 = w0();
        e.c(parcelW0, bVar);
        parcelW0.writeStrongBinder(iVar);
        x0(parcelW0, 82);
    }

    @Override // m4.m0
    public final void j(r rVar, h hVar) throws RemoteException {
        Parcel parcelW0 = w0();
        e.c(parcelW0, rVar);
        parcelW0.writeStrongBinder(hVar);
        x0(parcelW0, 89);
    }
}
