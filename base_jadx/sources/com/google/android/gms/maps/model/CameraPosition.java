package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.android.gms.common.internal.ReflectedParcelable;
import java.util.Arrays;
import r3.p;
import r3.r;
import s3.a;
import s3.c;
import z4.h;

/* loaded from: classes.dex */
public final class CameraPosition extends a implements ReflectedParcelable {

    @NonNull
    public static final Parcelable.Creator<CameraPosition> CREATOR = new h();

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final LatLng f4184a;

    /* renamed from: b, reason: collision with root package name */
    public final float f4185b;

    /* renamed from: c, reason: collision with root package name */
    public final float f4186c;

    /* renamed from: d, reason: collision with root package name */
    public final float f4187d;

    public CameraPosition(@NonNull LatLng latLng, float f, float f10, float f11) {
        if (latLng == null) {
            throw new NullPointerException("camera target must not be null.");
        }
        r.c(f10 >= 0.0f && f10 <= 90.0f, "Tilt needs to be between 0 and 90 inclusive: %s", Float.valueOf(f10));
        this.f4184a = latLng;
        this.f4185b = f;
        this.f4186c = f10 + 0.0f;
        this.f4187d = (((double) f11) <= 0.0d ? (f11 % 360.0f) + 360.0f : f11) % 360.0f;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CameraPosition)) {
            return false;
        }
        CameraPosition cameraPosition = (CameraPosition) obj;
        return this.f4184a.equals(cameraPosition.f4184a) && Float.floatToIntBits(this.f4185b) == Float.floatToIntBits(cameraPosition.f4185b) && Float.floatToIntBits(this.f4186c) == Float.floatToIntBits(cameraPosition.f4186c) && Float.floatToIntBits(this.f4187d) == Float.floatToIntBits(cameraPosition.f4187d);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f4184a, Float.valueOf(this.f4185b), Float.valueOf(this.f4186c), Float.valueOf(this.f4187d)});
    }

    @NonNull
    public final String toString() {
        p.a aVar = new p.a(this);
        aVar.a(this.f4184a, TypedValues.AttributesType.S_TARGET);
        aVar.a(Float.valueOf(this.f4185b), "zoom");
        aVar.a(Float.valueOf(this.f4186c), "tilt");
        aVar.a(Float.valueOf(this.f4187d), "bearing");
        return aVar.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@NonNull Parcel parcel, int r52) {
        int r02 = c.r(parcel, 20293);
        c.m(parcel, 2, this.f4184a, r52);
        c.g(parcel, 3, this.f4185b);
        c.g(parcel, 4, this.f4186c);
        c.g(parcel, 5, this.f4187d);
        c.s(parcel, r02);
    }
}
