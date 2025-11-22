package com.google.android.gms.vision.face.internal.client;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import com.google.android.apps.common.proguard.UsedByNative;
import k5.d;
import s3.a;
import s3.c;

@UsedByNative("wrapper.cc")
/* loaded from: classes.dex */
public final class LandmarkParcel extends a {

    @RecentlyNonNull
    public static final Parcelable.Creator<LandmarkParcel> CREATOR = new d();

    /* renamed from: a, reason: collision with root package name */
    public final int f4213a;

    /* renamed from: b, reason: collision with root package name */
    public final float f4214b;

    /* renamed from: c, reason: collision with root package name */
    public final float f4215c;

    /* renamed from: d, reason: collision with root package name */
    public final int f4216d;

    @UsedByNative("wrapper.cc")
    public LandmarkParcel(int r12, float f, float f10, int r42) {
        this.f4213a = r12;
        this.f4214b = f;
        this.f4215c = f10;
        this.f4216d = r42;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@RecentlyNonNull Parcel parcel, int r42) {
        int r43 = c.r(parcel, 20293);
        c.j(parcel, 1, this.f4213a);
        c.g(parcel, 2, this.f4214b);
        c.g(parcel, 3, this.f4215c);
        c.j(parcel, 4, this.f4216d);
        c.s(parcel, r43);
    }
}
