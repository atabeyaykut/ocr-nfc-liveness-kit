package com.google.android.libraries.barhopper;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.libraries.barhopper.Barcode;

/* loaded from: classes.dex */
public final class j implements Parcelable.Creator<Barcode.PersonName> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Barcode.PersonName createFromParcel(Parcel parcel) {
        return new Barcode.PersonName(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Barcode.PersonName[] newArray(int r12) {
        return new Barcode.PersonName[r12];
    }
}
