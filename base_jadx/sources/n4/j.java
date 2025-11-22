package n4;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.maps.model.LatLng;

/* loaded from: classes.dex */
public final class j extends a implements l {
    public j(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.model.internal.ICircleDelegate");
    }

    @Override // n4.l
    public final boolean W(l lVar) throws RemoteException {
        Parcel parcelX0 = x0();
        f.c(parcelX0, lVar);
        Parcel parcelW0 = w0(parcelX0, 17);
        boolean z10 = parcelW0.readInt() != 0;
        parcelW0.recycle();
        return z10;
    }

    @Override // n4.l
    public final double d() throws RemoteException {
        Parcel parcelW0 = w0(x0(), 6);
        double d10 = parcelW0.readDouble();
        parcelW0.recycle();
        return d10;
    }

    @Override // n4.l
    public final LatLng f() throws RemoteException {
        Parcel parcelW0 = w0(x0(), 4);
        Parcelable.Creator<LatLng> creator = LatLng.CREATOR;
        int r22 = f.f10563a;
        LatLng latLngCreateFromParcel = parcelW0.readInt() == 0 ? null : creator.createFromParcel(parcelW0);
        parcelW0.recycle();
        return latLngCreateFromParcel;
    }

    @Override // n4.l
    public final int h() throws RemoteException {
        Parcel parcelW0 = w0(x0(), 18);
        int r12 = parcelW0.readInt();
        parcelW0.recycle();
        return r12;
    }
}
