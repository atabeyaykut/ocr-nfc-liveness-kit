package r3;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import z3.b;

/* loaded from: classes.dex */
public final class p1 extends j4.a implements r1 {
    public p1(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.ICertData");
    }

    @Override // r3.r1
    public final int c() throws RemoteException {
        Parcel parcelW0 = w0(x0(), 2);
        int r12 = parcelW0.readInt();
        parcelW0.recycle();
        return r12;
    }

    @Override // r3.r1
    public final z3.b d() throws RemoteException {
        Parcel parcelW0 = w0(x0(), 1);
        z3.b bVarX0 = b.a.x0(parcelW0.readStrongBinder());
        parcelW0.recycle();
        return bVarX0;
    }
}
