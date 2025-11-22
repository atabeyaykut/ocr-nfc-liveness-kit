package com.google.android.libraries.barhopper;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.libraries.barhopper.Barcode;

/* loaded from: classes.dex */
public final class f implements Parcelable.Creator<Barcode.DriverLicense> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Barcode.DriverLicense createFromParcel(Parcel parcel) {
        return new Barcode.DriverLicense(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Barcode.DriverLicense[] newArray(int r12) {
        return new Barcode.DriverLicense[r12];
    }
}
