package com.google.android.libraries.barhopper;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.libraries.barhopper.Barcode;

/* loaded from: classes.dex */
public final class e implements Parcelable.Creator<Barcode.ContactInfo> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Barcode.ContactInfo createFromParcel(Parcel parcel) {
        return new Barcode.ContactInfo(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Barcode.ContactInfo[] newArray(int r12) {
        return new Barcode.ContactInfo[r12];
    }
}
