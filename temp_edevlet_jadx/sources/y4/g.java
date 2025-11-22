package y4;

import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public abstract class g extends n4.e {
    public g() {
        super("com.google.android.gms.maps.internal.IOnMarkerDragListener");
    }

    @Override // n4.e
    public final boolean w0(int r32, Parcel parcel, Parcel parcel2) throws RemoteException {
        if (r32 == 1) {
            n4.d dVarX0 = n4.c.x0(parcel.readStrongBinder());
            n4.f.a(parcel);
            ((x4.j) this).f19147a.b(new z4.d(dVarX0));
        } else if (r32 == 2) {
            n4.d dVarX02 = n4.c.x0(parcel.readStrongBinder());
            n4.f.a(parcel);
            ((x4.j) this).f19147a.c(new z4.d(dVarX02));
        } else {
            if (r32 != 3) {
                return false;
            }
            n4.d dVarX03 = n4.c.x0(parcel.readStrongBinder());
            n4.f.a(parcel);
            ((x4.j) this).f19147a.a(new z4.d(dVarX03));
        }
        parcel2.writeNoException();
        return true;
    }
}
