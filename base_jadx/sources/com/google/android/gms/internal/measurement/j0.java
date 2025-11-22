package com.google.android.gms.internal.measurement;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public class j0 extends Binder implements IInterface {
    public j0(String str) {
        attachInterface(this, str);
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this;
    }

    @Override // android.os.Binder
    public boolean onTransact(int r22, Parcel parcel, Parcel parcel2, int r52) throws RemoteException {
        if (r22 <= 16777215) {
            parcel.enforceInterface(getInterfaceDescriptor());
        } else if (super.onTransact(r22, parcel, parcel2, r52)) {
            return true;
        }
        return w0(r22, parcel, parcel2);
    }

    public boolean w0(int r12, Parcel parcel, Parcel parcel2) throws RemoteException {
        throw null;
    }
}
