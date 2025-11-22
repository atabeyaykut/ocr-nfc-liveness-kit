package y4;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public abstract class f extends n4.e {
    public f() {
        super("com.google.android.gms.maps.internal.IOnMapReadyCallback");
    }

    @Override // n4.e
    public final boolean w0(int r42, Parcel parcel, Parcel parcel2) throws RemoteException {
        b mVar;
        if (r42 != 1) {
            return false;
        }
        IBinder strongBinder = parcel.readStrongBinder();
        if (strongBinder == null) {
            mVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
            mVar = iInterfaceQueryLocalInterface instanceof b ? (b) iInterfaceQueryLocalInterface : new m(strongBinder);
        }
        n4.f.a(parcel);
        ((x4.g) this).f19141a.a(new x4.c(mVar));
        parcel2.writeNoException();
        return true;
    }
}
