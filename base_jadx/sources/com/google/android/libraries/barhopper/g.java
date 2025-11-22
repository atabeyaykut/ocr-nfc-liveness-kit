package com.google.android.libraries.barhopper;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.libraries.barhopper.Barcode;

/* loaded from: classes.dex */
public final class g implements Parcelable.Creator<Barcode.Email> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Barcode.Email createFromParcel(Parcel parcel) {
        return new Barcode.Email(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Barcode.Email[] newArray(int r12) {
        return new Barcode.Email[r12];
    }
}
