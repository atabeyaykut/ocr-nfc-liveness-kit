package y4;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class m extends n4.a implements b {
    public m(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.internal.IGoogleMapDelegate");
    }

    @Override // y4.b
    public final void H(x4.j jVar) throws RemoteException {
        Parcel parcelX0 = x0();
        n4.f.c(parcelX0, jVar);
        y0(parcelX0, 31);
    }

    @Override // y4.b
    public final void Z(x4.k kVar) throws RemoteException {
        Parcel parcelX0 = x0();
        n4.f.c(parcelX0, kVar);
        y0(parcelX0, 28);
    }

    @Override // y4.b
    public final void clear() throws RemoteException {
        y0(x0(), 14);
    }

    @Override // y4.b
    public final void n0(z3.b bVar) throws RemoteException {
        Parcel parcelX0 = x0();
        n4.f.c(parcelX0, bVar);
        y0(parcelX0, 5);
    }

    @Override // y4.b
    public final n4.l t(z4.c cVar) throws RemoteException {
        n4.l jVar;
        Parcel parcelX0 = x0();
        n4.f.b(parcelX0, cVar);
        Parcel parcelW0 = w0(parcelX0, 35);
        IBinder strongBinder = parcelW0.readStrongBinder();
        int r12 = n4.k.f10565a;
        if (strongBinder == null) {
            jVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.maps.model.internal.ICircleDelegate");
            jVar = iInterfaceQueryLocalInterface instanceof n4.l ? (n4.l) iInterfaceQueryLocalInterface : new n4.j(strongBinder);
        }
        parcelW0.recycle();
        return jVar;
    }

    @Override // y4.b
    public final n4.d t0(z4.e eVar) throws RemoteException {
        Parcel parcelX0 = x0();
        n4.f.b(parcelX0, eVar);
        Parcel parcelW0 = w0(parcelX0, 11);
        n4.d dVarX0 = n4.c.x0(parcelW0.readStrongBinder());
        parcelW0.recycle();
        return dVarX0;
    }
}
