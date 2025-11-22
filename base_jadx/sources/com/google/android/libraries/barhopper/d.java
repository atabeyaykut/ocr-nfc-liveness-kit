package com.google.android.libraries.barhopper;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.libraries.barhopper.Barcode;

/* loaded from: classes.dex */
public final class d implements Parcelable.Creator<Barcode.CalendarEvent> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Barcode.CalendarEvent createFromParcel(Parcel parcel) {
        return new Barcode.CalendarEvent(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Barcode.CalendarEvent[] newArray(int r12) {
        return new Barcode.CalendarEvent[r12];
    }
}
