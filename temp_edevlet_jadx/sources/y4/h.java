package y4;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.maps.model.LatLng;
import z3.b;

/* loaded from: classes.dex */
public final class h extends n4.a implements a {
    public h(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
    }

    @Override // y4.a
    public final z3.b v(LatLng latLng) throws RemoteException {
        Parcel parcelX0 = x0();
        n4.f.b(parcelX0, latLng);
        parcelX0.writeFloat(17.0f);
        Parcel parcelW0 = w0(parcelX0, 9);
        z3.b bVarX0 = b.a.x0(parcelW0.readStrongBinder());
        parcelW0.recycle();
        return bVarX0;
    }
}
