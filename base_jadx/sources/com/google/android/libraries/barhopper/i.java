package com.google.android.libraries.barhopper;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.libraries.barhopper.Barcode;

/* loaded from: classes.dex */
public final class i implements Parcelable.Creator<Barcode.GeoPoint> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Barcode.GeoPoint createFromParcel(Parcel parcel) {
        return new Barcode.GeoPoint(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Barcode.GeoPoint[] newArray(int r12) {
        return new Barcode.GeoPoint[r12];
    }
}
