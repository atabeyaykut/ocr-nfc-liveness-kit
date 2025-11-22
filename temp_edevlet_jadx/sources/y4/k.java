package y4;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class k extends n4.a implements l {
    public k(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.internal.ICreator");
    }

    @Override // y4.l
    public final void D(z3.d dVar) throws RemoteException {
        Parcel parcelX0 = x0();
        n4.f.c(parcelX0, dVar);
        parcelX0.writeInt(18020000);
        y0(parcelX0, 6);
    }

    @Override // y4.l
    public final void P(z3.d dVar) throws RemoteException {
        Parcel parcelX0 = x0();
        n4.f.c(parcelX0, dVar);
        y0(parcelX0, 11);
    }

    @Override // y4.l
    public final c c0(z3.d dVar) throws RemoteException {
        c nVar;
        Parcel parcelX0 = x0();
        n4.f.c(parcelX0, dVar);
        Parcel parcelW0 = w0(parcelX0, 2);
        IBinder strongBinder = parcelW0.readStrongBinder();
        if (strongBinder == null) {
            nVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.maps.internal.IMapFragmentDelegate");
            nVar = iInterfaceQueryLocalInterface instanceof c ? (c) iInterfaceQueryLocalInterface : new n(strongBinder);
        }
        parcelW0.recycle();
        return nVar;
    }

    @Override // y4.l
    public final int d() throws RemoteException {
        Parcel parcelW0 = w0(x0(), 9);
        int r12 = parcelW0.readInt();
        parcelW0.recycle();
        return r12;
    }

    @Override // y4.l
    public final a e() throws RemoteException {
        a hVar;
        Parcel parcelW0 = w0(x0(), 4);
        IBinder strongBinder = parcelW0.readStrongBinder();
        if (strongBinder == null) {
            hVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
            hVar = iInterfaceQueryLocalInterface instanceof a ? (a) iInterfaceQueryLocalInterface : new h(strongBinder);
        }
        parcelW0.recycle();
        return hVar;
    }

    @Override // y4.l
    public final void k0(z3.d dVar, int r32) throws RemoteException {
        Parcel parcelX0 = x0();
        n4.f.c(parcelX0, dVar);
        parcelX0.writeInt(r32);
        y0(parcelX0, 10);
    }

    @Override // y4.l
    public final n4.i m() throws RemoteException {
        n4.i gVar;
        Parcel parcelW0 = w0(x0(), 5);
        IBinder strongBinder = parcelW0.readStrongBinder();
        int r22 = n4.h.f10564a;
        if (strongBinder == null) {
            gVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
            gVar = iInterfaceQueryLocalInterface instanceof n4.i ? (n4.i) iInterfaceQueryLocalInterface : new n4.g(strongBinder);
        }
        parcelW0.recycle();
        return gVar;
    }
}
