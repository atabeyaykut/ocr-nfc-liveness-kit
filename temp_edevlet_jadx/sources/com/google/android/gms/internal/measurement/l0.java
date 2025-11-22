package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class l0 extends i0 implements n0 {
    public l0(IBinder iBinder) {
        super(iBinder, "com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
    }

    @Override // com.google.android.gms.internal.measurement.n0
    public final Bundle a(Bundle bundle) throws RemoteException {
        Parcel parcelW0 = w0();
        k0.b(parcelW0, bundle);
        Parcel parcelX0 = x0(parcelW0, 1);
        Bundle bundle2 = (Bundle) k0.a(parcelX0, Bundle.CREATOR);
        parcelX0.recycle();
        return bundle2;
    }
}
