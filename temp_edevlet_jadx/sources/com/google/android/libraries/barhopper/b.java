package com.google.android.libraries.barhopper;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.libraries.barhopper.Barcode;

/* loaded from: classes.dex */
public final class b implements Parcelable.Creator<Barcode.BoardingPass> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Barcode.BoardingPass createFromParcel(Parcel parcel) {
        return new Barcode.BoardingPass(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Barcode.BoardingPass[] newArray(int r12) {
        return new Barcode.BoardingPass[r12];
    }
}
