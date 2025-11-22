package m4;

import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.WorkSource;
import androidx.annotation.Nullable;
import androidx.core.location.LocationRequestCompat;
import com.google.android.gms.location.LocationRequest;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Iterator;

@Deprecated
/* loaded from: classes.dex */
public final class t extends s3.a {
    public static final Parcelable.Creator<t> CREATOR = new u();

    /* renamed from: a, reason: collision with root package name */
    public final LocationRequest f10023a;

    public t(LocationRequest locationRequest, @Nullable ArrayList arrayList, boolean z10, boolean z11, @Nullable String str, boolean z12, boolean z13, @Nullable String str2, long j10) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        WorkSource workSource;
        LocationRequest.a aVar = new LocationRequest.a(locationRequest);
        if (arrayList != null) {
            if (arrayList.isEmpty()) {
                workSource = null;
            } else {
                workSource = new WorkSource();
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    r3.d dVar = (r3.d) it.next();
                    w3.h.a(workSource, dVar.f13942a, dVar.f13943b);
                }
            }
            aVar.f4161n = workSource;
        }
        boolean z14 = true;
        if (z10) {
            aVar.b(1);
        }
        if (z11) {
            aVar.c(2);
        }
        if (str != null) {
            if (Build.VERSION.SDK_INT < 30) {
                aVar.f4159l = str;
            }
        } else if (str2 != null && Build.VERSION.SDK_INT < 30) {
            aVar.f4159l = str2;
        }
        if (z12) {
            aVar.f4160m = true;
        }
        if (z13) {
            aVar.f4155h = true;
        }
        if (j10 != LocationRequestCompat.PASSIVE_INTERVAL) {
            if (j10 != -1 && j10 < 0) {
                z14 = false;
            }
            r3.r.b(z14, "maxUpdateAgeMillis must be greater than or equal to 0, or IMPLICIT_MAX_UPDATE_AGE");
            aVar.f4156i = j10;
        }
        this.f10023a = aVar.a();
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj instanceof t) {
            return r3.p.a(this.f10023a, ((t) obj).f10023a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f10023a.hashCode();
    }

    public final String toString() {
        return this.f10023a.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r52) {
        int r02 = s3.c.r(parcel, 20293);
        s3.c.m(parcel, 1, this.f10023a, r52);
        s3.c.s(parcel, r02);
    }
}
