package com.google.android.libraries.barhopper;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.libraries.barhopper.Barcode;

/* loaded from: classes.dex */
public final class n implements Parcelable.Creator<Barcode.WiFi> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Barcode.WiFi createFromParcel(Parcel parcel) {
        return new Barcode.WiFi(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Barcode.WiFi[] newArray(int r12) {
        return new Barcode.WiFi[r12];
    }
}
