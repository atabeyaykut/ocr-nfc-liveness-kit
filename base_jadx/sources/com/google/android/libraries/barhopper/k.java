package com.google.android.libraries.barhopper;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.libraries.barhopper.Barcode;

/* loaded from: classes.dex */
public final class k implements Parcelable.Creator<Barcode.Phone> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Barcode.Phone createFromParcel(Parcel parcel) {
        return new Barcode.Phone(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Barcode.Phone[] newArray(int r12) {
        return new Barcode.Phone[r12];
    }
}
