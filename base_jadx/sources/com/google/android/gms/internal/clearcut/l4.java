package com.google.android.gms.internal.clearcut;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class l4 implements k4, IInterface {

    /* renamed from: a, reason: collision with root package name */
    public final IBinder f3176a;

    public l4(IBinder iBinder) {
        this.f3176a = iBinder;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f3176a;
    }

    @Override // com.google.android.gms.internal.clearcut.k4
    public final void p0(h4 h4Var, k3.f fVar) throws RemoteException {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken("com.google.android.gms.clearcut.internal.IClearcutLoggerService");
        int r12 = p0.f3254a;
        parcelObtain.writeStrongBinder(h4Var);
        if (fVar == null) {
            parcelObtain.writeInt(0);
        } else {
            parcelObtain.writeInt(1);
            fVar.writeToParcel(parcelObtain, 0);
        }
        try {
            this.f3176a.transact(1, parcelObtain, null, 1);
        } finally {
            parcelObtain.recycle();
        }
    }
}
