package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import s3.a;
import s3.c;
import z4.k;

/* loaded from: classes.dex */
public final class LatLng extends a implements ReflectedParcelable {

    @NonNull
    public static final Parcelable.Creator<LatLng> CREATOR = new k();

    /* renamed from: a, reason: collision with root package name */
    public final double f4188a;

    /* renamed from: b, reason: collision with root package name */
    public final double f4189b;

    public LatLng(double d10, double d11) {
        this.f4189b = (d11 < -180.0d || d11 >= 180.0d) ? ((((d11 - 180.0d) % 360.0d) + 360.0d) % 360.0d) - 180.0d : d11;
        this.f4188a = Math.max(-90.0d, Math.min(90.0d, d10));
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LatLng)) {
            return false;
        }
        LatLng latLng = (LatLng) obj;
        return Double.doubleToLongBits(this.f4188a) == Double.doubleToLongBits(latLng.f4188a) && Double.doubleToLongBits(this.f4189b) == Double.doubleToLongBits(latLng.f4189b);
    }

    public final int hashCode() {
        long jDoubleToLongBits = Double.doubleToLongBits(this.f4188a);
        long j10 = jDoubleToLongBits ^ (jDoubleToLongBits >>> 32);
        long jDoubleToLongBits2 = Double.doubleToLongBits(this.f4189b);
        return ((((int) j10) + 31) * 31) + ((int) (jDoubleToLongBits2 ^ (jDoubleToLongBits2 >>> 32)));
    }

    @NonNull
    public final String toString() {
        return "lat/lng: (" + this.f4188a + "," + this.f4189b + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@NonNull Parcel parcel, int r52) {
        int r53 = c.r(parcel, 20293);
        c.f(parcel, 2, this.f4188a);
        c.f(parcel, 3, this.f4189b);
        c.s(parcel, r53);
    }
}
