package com.google.android.libraries.barhopper;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.libraries.barhopper.Barcode;

/* loaded from: classes.dex */
public final class h implements Parcelable.Creator<Barcode.FlightSegment> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Barcode.FlightSegment createFromParcel(Parcel parcel) {
        return new Barcode.FlightSegment(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Barcode.FlightSegment[] newArray(int r12) {
        return new Barcode.FlightSegment[r12];
    }
}
