package s4;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public class a implements IInterface {

    /* renamed from: a, reason: collision with root package name */
    public final IBinder f14870a;

    /* renamed from: b, reason: collision with root package name */
    public final String f14871b;

    public a(IBinder iBinder, String str) {
        this.f14870a = iBinder;
        this.f14871b = str;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f14870a;
    }

    public final Parcel w0() {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(this.f14871b);
        return parcelObtain;
    }

    public final Parcel x0(Parcel parcel, int r52) throws RemoteException {
        Parcel parcelObtain = Parcel.obtain();
        try {
            try {
                this.f14870a.transact(r52, parcel, parcelObtain, 0);
                parcelObtain.readException();
                return parcelObtain;
            } catch (RuntimeException e10) {
                parcelObtain.recycle();
                throw e10;
            }
        } finally {
            parcel.recycle();
        }
    }

    public final void y0(Parcel parcel, int r52) throws RemoteException {
        Parcel parcelObtain = Parcel.obtain();
        try {
            this.f14870a.transact(r52, parcel, parcelObtain, 0);
            parcelObtain.readException();
        } finally {
            parcel.recycle();
            parcelObtain.recycle();
        }
    }
}
