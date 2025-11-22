package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import java.util.Arrays;
import s3.a;
import s3.c;
import w4.e;
import w4.p;

/* loaded from: classes.dex */
public final class LocationAvailability extends a implements ReflectedParcelable {

    @NonNull
    public static final Parcelable.Creator<LocationAvailability> CREATOR;

    /* renamed from: a, reason: collision with root package name */
    public final int f4130a;

    /* renamed from: b, reason: collision with root package name */
    public final int f4131b;

    /* renamed from: c, reason: collision with root package name */
    public final long f4132c;

    /* renamed from: d, reason: collision with root package name */
    public final int f4133d;

    /* renamed from: e, reason: collision with root package name */
    public final e[] f4134e;

    static {
        new LocationAvailability(0, 1, 1, 0L, null);
        new LocationAvailability(1000, 1, 1, 0L, null);
        CREATOR = new p();
    }

    public LocationAvailability(int r22, int r32, int r42, long j10, e[] eVarArr) {
        this.f4133d = r22 < 1000 ? 0 : 1000;
        this.f4130a = r32;
        this.f4131b = r42;
        this.f4132c = j10;
        this.f4134e = eVarArr;
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj instanceof LocationAvailability) {
            LocationAvailability locationAvailability = (LocationAvailability) obj;
            if (this.f4130a == locationAvailability.f4130a && this.f4131b == locationAvailability.f4131b && this.f4132c == locationAvailability.f4132c && this.f4133d == locationAvailability.f4133d && Arrays.equals(this.f4134e, locationAvailability.f4134e)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f4133d)});
    }

    @NonNull
    public final String toString() {
        return "LocationAvailability[" + (this.f4133d < 1000) + "]";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@NonNull Parcel parcel, int r72) {
        int r02 = c.r(parcel, 20293);
        c.j(parcel, 1, this.f4130a);
        c.j(parcel, 2, this.f4131b);
        c.l(parcel, 3, this.f4132c);
        int r32 = this.f4133d;
        c.j(parcel, 4, r32);
        c.p(parcel, 5, this.f4134e, r72);
        c.a(parcel, 6, r32 < 1000);
        c.s(parcel, r02);
    }
}
