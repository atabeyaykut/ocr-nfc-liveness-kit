package com.google.android.libraries.barhopper;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.libraries.barhopper.Barcode;

/* loaded from: classes.dex */
public final class l implements Parcelable.Creator<Barcode.Sms> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Barcode.Sms createFromParcel(Parcel parcel) {
        return new Barcode.Sms(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Barcode.Sms[] newArray(int r12) {
        return new Barcode.Sms[r12];
    }
}
