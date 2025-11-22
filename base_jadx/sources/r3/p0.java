package r3;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public final class p0 implements m {

    /* renamed from: a, reason: collision with root package name */
    public final IBinder f14035a;

    public p0(IBinder iBinder) {
        this.f14035a = iBinder;
    }

    @Override // r3.m
    public final void U(x0 x0Var, @Nullable g gVar) throws RemoteException {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            parcelObtain.writeStrongBinder(x0Var);
            parcelObtain.writeInt(1);
            e1.a(gVar, parcelObtain, 0);
            this.f14035a.transact(46, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f14035a;
    }
}
