package a4;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import z3.b;

/* loaded from: classes.dex */
public final class g extends j4.a {
    public g(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.dynamite.IDynamiteLoaderV2");
    }

    public final z3.b y0(z3.d dVar, String str, int r42, z3.d dVar2) throws RemoteException {
        Parcel parcelX0 = x0();
        j4.c.c(parcelX0, dVar);
        parcelX0.writeString(str);
        parcelX0.writeInt(r42);
        j4.c.c(parcelX0, dVar2);
        Parcel parcelW0 = w0(parcelX0, 2);
        z3.b bVarX0 = b.a.x0(parcelW0.readStrongBinder());
        parcelW0.recycle();
        return bVarX0;
    }

    public final z3.b z0(z3.d dVar, String str, int r42, z3.d dVar2) throws RemoteException {
        Parcel parcelX0 = x0();
        j4.c.c(parcelX0, dVar);
        parcelX0.writeString(str);
        parcelX0.writeInt(r42);
        j4.c.c(parcelX0, dVar2);
        Parcel parcelW0 = w0(parcelX0, 3);
        z3.b bVarX0 = b.a.x0(parcelW0.readStrongBinder());
        parcelW0.recycle();
        return bVarX0;
    }
}
