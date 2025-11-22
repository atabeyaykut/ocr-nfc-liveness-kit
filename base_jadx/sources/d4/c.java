package d4;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class c extends a implements e {
    public c(IBinder iBinder) {
        super(iBinder);
    }

    @Override // d4.e
    public final String c() throws RemoteException {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
        parcelObtain = Parcel.obtain();
        try {
            this.f4655a.transact(1, parcelObtain, parcelObtain, 0);
            parcelObtain.readException();
            parcelObtain.recycle();
            return parcelObtain.readString();
        } catch (RuntimeException e10) {
            throw e10;
        } finally {
            parcelObtain.recycle();
        }
    }

    @Override // d4.e
    public final boolean e() throws RemoteException {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
        int r12 = b.f4656a;
        parcelObtain.writeInt(1);
        parcelObtain = Parcel.obtain();
        try {
            this.f4655a.transact(2, parcelObtain, parcelObtain, 0);
            parcelObtain.readException();
            parcelObtain.recycle();
            return parcelObtain.readInt() != 0;
        } catch (RuntimeException e10) {
            throw e10;
        } finally {
            parcelObtain.recycle();
        }
    }
}
