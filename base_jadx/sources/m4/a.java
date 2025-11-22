package m4;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public class a implements IInterface {

    /* renamed from: a, reason: collision with root package name */
    public final IBinder f9984a;

    /* renamed from: b, reason: collision with root package name */
    public final String f9985b;

    public a(IBinder iBinder, String str) {
        this.f9984a = iBinder;
        this.f9985b = str;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f9984a;
    }

    public final Parcel w0() {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(this.f9985b);
        return parcelObtain;
    }

    public final void x0(Parcel parcel, int r52) throws RemoteException {
        Parcel parcelObtain = Parcel.obtain();
        try {
            this.f9984a.transact(r52, parcel, parcelObtain, 0);
            parcelObtain.readException();
        } finally {
            parcel.recycle();
            parcelObtain.recycle();
        }
    }
}
