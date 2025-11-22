package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class w0 extends i0 implements y0 {
    public w0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.api.internal.IBundleReceiver");
    }

    @Override // com.google.android.gms.internal.measurement.y0
    public final void a(Bundle bundle) throws RemoteException {
        Parcel parcelW0 = w0();
        k0.b(parcelW0, bundle);
        y0(parcelW0, 1);
    }
}
