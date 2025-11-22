package n4;

import android.graphics.Bitmap;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import z3.b;

/* loaded from: classes.dex */
public final class g extends a implements i {
    public g(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
    }

    @Override // n4.i
    public final z3.b y(Bitmap bitmap) throws RemoteException {
        Parcel parcelX0 = x0();
        f.b(parcelX0, bitmap);
        Parcel parcelW0 = w0(parcelX0, 6);
        z3.b bVarX0 = b.a.x0(parcelW0.readStrongBinder());
        parcelW0.recycle();
        return bVarX0;
    }
}
