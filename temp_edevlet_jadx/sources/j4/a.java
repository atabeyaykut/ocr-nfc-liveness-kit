package j4;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public class a implements IInterface {

    /* renamed from: a, reason: collision with root package name */
    public final IBinder f7997a;

    /* renamed from: b, reason: collision with root package name */
    public final String f7998b;

    public a(IBinder iBinder, String str) {
        this.f7997a = iBinder;
        this.f7998b = str;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f7997a;
    }

    public final Parcel w0(Parcel parcel, int r52) throws RemoteException {
        Parcel parcelObtain = Parcel.obtain();
        try {
            try {
                this.f7997a.transact(r52, parcel, parcelObtain, 0);
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

    public final Parcel x0() {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(this.f7998b);
        return parcelObtain;
    }
}
