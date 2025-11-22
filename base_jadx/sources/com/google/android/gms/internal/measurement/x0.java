package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public abstract class x0 extends j0 implements y0 {
    public x0() {
        super("com.google.android.gms.measurement.api.internal.IBundleReceiver");
    }

    @Override // com.google.android.gms.internal.measurement.j0
    public final boolean w0(int r22, Parcel parcel, Parcel parcel2) throws RemoteException {
        if (r22 != 1) {
            return false;
        }
        ((r0) this).a((Bundle) k0.a(parcel, Bundle.CREATOR));
        parcel2.writeNoException();
        return true;
    }
}
