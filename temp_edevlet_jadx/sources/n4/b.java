package n4;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.maps.model.LatLng;

/* loaded from: classes.dex */
public final class b extends a implements d {
    public b(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.model.internal.IMarkerDelegate");
    }

    @Override // n4.d
    public final boolean j0(d dVar) throws RemoteException {
        Parcel parcelX0 = x0();
        f.c(parcelX0, dVar);
        Parcel parcelW0 = w0(parcelX0, 16);
        boolean z10 = parcelW0.readInt() != 0;
        parcelW0.recycle();
        return z10;
    }

    @Override // n4.d
    public final int l() throws RemoteException {
        Parcel parcelW0 = w0(x0(), 17);
        int r12 = parcelW0.readInt();
        parcelW0.recycle();
        return r12;
    }

    @Override // n4.d
    public final LatLng m() throws RemoteException {
        Parcel parcelW0 = w0(x0(), 4);
        Parcelable.Creator<LatLng> creator = LatLng.CREATOR;
        int r22 = f.f10563a;
        LatLng latLngCreateFromParcel = parcelW0.readInt() == 0 ? null : creator.createFromParcel(parcelW0);
        parcelW0.recycle();
        return latLngCreateFromParcel;
    }
}
