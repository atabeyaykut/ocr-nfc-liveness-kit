package g4;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class d implements c, IInterface {

    /* renamed from: a, reason: collision with root package name */
    public final IBinder f5805a;

    public d(IBinder iBinder) {
        this.f5805a = iBinder;
    }

    @Override // g4.c
    public final void a0(i iVar) throws RemoteException {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken("com.google.android.gms.auth.api.phone.internal.ISmsRetrieverApiService");
        int r12 = b.f5804a;
        parcelObtain.writeStrongBinder(iVar);
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            this.f5805a.transact(1, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain.recycle();
            parcelObtain2.recycle();
        }
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f5805a;
    }
}
