package com.google.android.gms.internal.clearcut;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
public class v extends Binder implements IInterface {
    public v() {
        attachInterface(this, "com.google.android.gms.clearcut.internal.IClearcutLoggerCallbacks");
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }

    @Override // android.os.Binder
    public final boolean onTransact(int r32, Parcel parcel, Parcel parcel2, int r6) throws RemoteException {
        boolean zOnTransact;
        if (r32 > 16777215) {
            zOnTransact = super.onTransact(r32, parcel, parcel2, r6);
        } else {
            parcel.enforceInterface(getInterfaceDescriptor());
            zOnTransact = false;
        }
        if (zOnTransact) {
            return true;
        }
        j4 j4Var = (j4) this;
        switch (r32) {
            case 1:
                ((h4) j4Var).f3156a.e((Status) p0.a(parcel, Status.CREATOR));
                return true;
            case 2:
                throw new UnsupportedOperationException();
            case 3:
                parcel.readLong();
                throw new UnsupportedOperationException();
            case 4:
                throw new UnsupportedOperationException();
            case 5:
                parcel.readLong();
                throw new UnsupportedOperationException();
            case 6:
                throw new UnsupportedOperationException();
            case 7:
                throw new UnsupportedOperationException();
            case 8:
                throw new UnsupportedOperationException();
            case 9:
                throw new UnsupportedOperationException();
            default:
                return false;
        }
    }
}
