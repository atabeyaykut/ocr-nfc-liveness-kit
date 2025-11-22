package com.google.android.libraries.barhopper;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.libraries.barhopper.Barcode;

/* loaded from: classes.dex */
public final class m implements Parcelable.Creator<Barcode.UrlBookmark> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Barcode.UrlBookmark createFromParcel(Parcel parcel) {
        return new Barcode.UrlBookmark(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Barcode.UrlBookmark[] newArray(int r12) {
        return new Barcode.UrlBookmark[r12];
    }
}
