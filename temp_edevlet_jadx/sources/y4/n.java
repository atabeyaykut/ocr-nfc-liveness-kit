package y4;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.maps.GoogleMapOptions;
import z3.b;

/* loaded from: classes.dex */
public final class n extends n4.a implements c {
    public n(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.internal.IMapFragmentDelegate");
    }

    @Override // y4.c
    public final void B(x4.g gVar) throws RemoteException {
        Parcel parcelX0 = x0();
        n4.f.c(parcelX0, gVar);
        y0(parcelX0, 12);
    }

    @Override // y4.c
    public final void F() throws RemoteException {
        y0(x0(), 6);
    }

    @Override // y4.c
    public final void L(Bundle bundle) throws RemoteException {
        Parcel parcelX0 = x0();
        n4.f.b(parcelX0, bundle);
        Parcel parcelW0 = w0(parcelX0, 10);
        if (parcelW0.readInt() != 0) {
            bundle.readFromParcel(parcelW0);
        }
        parcelW0.recycle();
    }

    @Override // y4.c
    public final void O(z3.d dVar, GoogleMapOptions googleMapOptions, Bundle bundle) throws RemoteException {
        Parcel parcelX0 = x0();
        n4.f.c(parcelX0, dVar);
        n4.f.b(parcelX0, googleMapOptions);
        n4.f.b(parcelX0, bundle);
        y0(parcelX0, 2);
    }

    @Override // y4.c
    public final void g() throws RemoteException {
        y0(x0(), 8);
    }

    @Override // y4.c
    public final void i() throws RemoteException {
        y0(x0(), 16);
    }

    @Override // y4.c
    public final z3.b m0(z3.d dVar, z3.d dVar2, Bundle bundle) throws RemoteException {
        Parcel parcelX0 = x0();
        n4.f.c(parcelX0, dVar);
        n4.f.c(parcelX0, dVar2);
        n4.f.b(parcelX0, bundle);
        Parcel parcelW0 = w0(parcelX0, 4);
        z3.b bVarX0 = b.a.x0(parcelW0.readStrongBinder());
        parcelW0.recycle();
        return bVarX0;
    }

    @Override // y4.c
    public final void o0() throws RemoteException {
        y0(x0(), 7);
    }

    @Override // y4.c
    public final void onLowMemory() throws RemoteException {
        y0(x0(), 9);
    }

    @Override // y4.c
    public final void onResume() throws RemoteException {
        y0(x0(), 5);
    }

    @Override // y4.c
    public final void onStart() throws RemoteException {
        y0(x0(), 15);
    }

    @Override // y4.c
    public final void u0(Bundle bundle) throws RemoteException {
        Parcel parcelX0 = x0();
        n4.f.b(parcelX0, bundle);
        y0(parcelX0, 3);
    }
}
