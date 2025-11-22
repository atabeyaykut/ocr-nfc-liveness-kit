package com.google.android.libraries.barhopper;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.libraries.barhopper.Barcode;

/* loaded from: classes.dex */
public final class c implements Parcelable.Creator<Barcode.CalendarDateTime> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Barcode.CalendarDateTime createFromParcel(Parcel parcel) {
        return new Barcode.CalendarDateTime(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Barcode.CalendarDateTime[] newArray(int r12) {
        return new Barcode.CalendarDateTime[r12];
    }
}
