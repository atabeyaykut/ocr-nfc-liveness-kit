package r3;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class o1 extends j4.a implements l {
    public o1(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.ICancelToken");
    }

    @Override // r3.l
    public final void cancel() throws RemoteException {
        Parcel parcelX0 = x0();
        try {
            this.f7997a.transact(2, parcelX0, null, 1);
        } finally {
            parcelX0.recycle();
        }
    }
}
