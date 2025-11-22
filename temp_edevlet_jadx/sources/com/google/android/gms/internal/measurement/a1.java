package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public abstract class a1 extends j0 implements b1 {
    public a1() {
        super("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
    }

    @Override // com.google.android.gms.internal.measurement.j0
    public final boolean w0(int r82, Parcel parcel, Parcel parcel2) throws RemoteException {
        if (r82 == 1) {
            String string = parcel.readString();
            String string2 = parcel.readString();
            z1 z1Var = (z1) this;
            z1Var.w(parcel.readLong(), (Bundle) k0.a(parcel, Bundle.CREATOR), string, string2);
            parcel2.writeNoException();
        } else {
            if (r82 != 2) {
                return false;
            }
            int r83 = ((z1) this).d();
            parcel2.writeNoException();
            parcel2.writeInt(r83);
        }
        return true;
    }
}
