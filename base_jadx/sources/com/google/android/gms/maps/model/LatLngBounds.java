package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import java.util.Arrays;
import r3.p;
import r3.r;
import s3.a;
import s3.c;
import z4.j;

/* loaded from: classes.dex */
public final class LatLngBounds extends a implements ReflectedParcelable {

    @NonNull
    public static final Parcelable.Creator<LatLngBounds> CREATOR = new j();

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final LatLng f4190a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final LatLng f4191b;

    public LatLngBounds(@NonNull LatLng latLng, @NonNull LatLng latLng2) {
        if (latLng == null) {
            throw new NullPointerException("southwest must not be null.");
        }
        if (latLng2 == null) {
            throw new NullPointerException("northeast must not be null.");
        }
        double d10 = latLng.f4188a;
        double d11 = latLng2.f4188a;
        r.c(d11 >= d10, "southern latitude exceeds northern latitude (%s > %s)", Double.valueOf(d10), Double.valueOf(d11));
        this.f4190a = latLng;
        this.f4191b = latLng2;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LatLngBounds)) {
            return false;
        }
        LatLngBounds latLngBounds = (LatLngBounds) obj;
        return this.f4190a.equals(latLngBounds.f4190a) && this.f4191b.equals(latLngBounds.f4191b);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f4190a, this.f4191b});
    }

    @NonNull
    public final String toString() {
        p.a aVar = new p.a(this);
        aVar.a(this.f4190a, "southwest");
        aVar.a(this.f4191b, "northeast");
        return aVar.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@NonNull Parcel parcel, int r52) {
        int r02 = c.r(parcel, 20293);
        c.m(parcel, 2, this.f4190a, r52);
        c.m(parcel, 3, this.f4191b, r52);
        c.s(parcel, r02);
    }
}
