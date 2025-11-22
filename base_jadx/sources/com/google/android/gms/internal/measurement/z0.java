package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class z0 extends i0 implements b1 {
    public z0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
    }

    @Override // com.google.android.gms.internal.measurement.b1
    public final int d() throws RemoteException {
        Parcel parcelX0 = x0(w0(), 2);
        int r12 = parcelX0.readInt();
        parcelX0.recycle();
        return r12;
    }

    @Override // com.google.android.gms.internal.measurement.b1
    public final void w(long j10, Bundle bundle, String str, String str2) throws RemoteException {
        Parcel parcelW0 = w0();
        parcelW0.writeString(str);
        parcelW0.writeString(str2);
        k0.b(parcelW0, bundle);
        parcelW0.writeLong(j10);
        y0(parcelW0, 1);
    }
}
