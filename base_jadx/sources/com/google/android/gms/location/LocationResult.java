package com.google.android.gms.location;

import android.location.Location;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import r3.p;
import s3.a;
import s3.c;
import w4.r;

/* loaded from: classes.dex */
public final class LocationResult extends a implements ReflectedParcelable {

    /* renamed from: a, reason: collision with root package name */
    public final List f4164a;

    /* renamed from: b, reason: collision with root package name */
    public static final List f4163b = Collections.emptyList();

    @NonNull
    public static final Parcelable.Creator<LocationResult> CREATOR = new r();

    public LocationResult(List list) {
        this.f4164a = list;
    }

    public final boolean equals(@Nullable Object obj) {
        if (!(obj instanceof LocationResult)) {
            return false;
        }
        LocationResult locationResult = (LocationResult) obj;
        int r02 = Build.VERSION.SDK_INT;
        List<Location> list = this.f4164a;
        if (r02 >= 31) {
            return list.equals(locationResult.f4164a);
        }
        if (list.size() != locationResult.f4164a.size()) {
            return false;
        }
        Iterator it = locationResult.f4164a.iterator();
        for (Location location : list) {
            Location location2 = (Location) it.next();
            if (Double.compare(location.getLatitude(), location2.getLatitude()) != 0 || Double.compare(location.getLongitude(), location2.getLongitude()) != 0 || location.getTime() != location2.getTime() || location.getElapsedRealtimeNanos() != location2.getElapsedRealtimeNanos() || !p.a(location.getProvider(), location2.getProvider())) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f4164a});
    }

    @NonNull
    public final String toString() {
        return "LocationResult".concat(String.valueOf(this.f4164a));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@NonNull Parcel parcel, int r42) {
        int r43 = c.r(parcel, 20293);
        c.q(parcel, 1, this.f4164a);
        c.s(parcel, r43);
    }
}
