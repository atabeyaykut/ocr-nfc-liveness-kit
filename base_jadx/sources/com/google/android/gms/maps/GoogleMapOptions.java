package com.google.android.gms.maps;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import c5.u;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import r3.p;
import s3.a;
import s3.c;
import x4.f;
import y4.d;

/* loaded from: classes.dex */
public final class GoogleMapOptions extends a implements ReflectedParcelable {

    @NonNull
    public static final Parcelable.Creator<GoogleMapOptions> CREATOR = new f();
    public static final Integer w = Integer.valueOf(Color.argb(255, 236, 233, 225));

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    public Boolean f4165a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    public Boolean f4166b;

    /* renamed from: c, reason: collision with root package name */
    public int f4167c;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    public CameraPosition f4168d;

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    public Boolean f4169e;

    @Nullable
    public Boolean f;

    /* renamed from: g, reason: collision with root package name */
    @Nullable
    public Boolean f4170g;

    /* renamed from: h, reason: collision with root package name */
    @Nullable
    public Boolean f4171h;

    /* renamed from: j, reason: collision with root package name */
    @Nullable
    public Boolean f4172j;

    /* renamed from: k, reason: collision with root package name */
    @Nullable
    public Boolean f4173k;

    /* renamed from: l, reason: collision with root package name */
    @Nullable
    public Boolean f4174l;

    /* renamed from: m, reason: collision with root package name */
    @Nullable
    public Boolean f4175m;

    /* renamed from: n, reason: collision with root package name */
    @Nullable
    public Boolean f4176n;

    /* renamed from: p, reason: collision with root package name */
    @Nullable
    public Float f4177p;

    /* renamed from: q, reason: collision with root package name */
    @Nullable
    public Float f4178q;

    /* renamed from: r, reason: collision with root package name */
    @Nullable
    public LatLngBounds f4179r;

    /* renamed from: s, reason: collision with root package name */
    @Nullable
    public Boolean f4180s;

    /* renamed from: t, reason: collision with root package name */
    @Nullable
    @ColorInt
    public Integer f4181t;

    /* renamed from: v, reason: collision with root package name */
    @Nullable
    public String f4182v;

    public GoogleMapOptions() {
        this.f4167c = -1;
        this.f4177p = null;
        this.f4178q = null;
        this.f4179r = null;
        this.f4181t = null;
        this.f4182v = null;
    }

    public GoogleMapOptions(byte b10, byte b11, int r52, @Nullable CameraPosition cameraPosition, byte b12, byte b13, byte b14, byte b15, byte b16, byte b17, byte b18, byte b19, byte b20, @Nullable Float f, @Nullable Float f10, @Nullable LatLngBounds latLngBounds, byte b21, @Nullable @ColorInt Integer num, @Nullable String str) {
        this.f4167c = -1;
        this.f4177p = null;
        this.f4178q = null;
        this.f4179r = null;
        this.f4181t = null;
        this.f4182v = null;
        this.f4165a = d.b(b10);
        this.f4166b = d.b(b11);
        this.f4167c = r52;
        this.f4168d = cameraPosition;
        this.f4169e = d.b(b12);
        this.f = d.b(b13);
        this.f4170g = d.b(b14);
        this.f4171h = d.b(b15);
        this.f4172j = d.b(b16);
        this.f4173k = d.b(b17);
        this.f4174l = d.b(b18);
        this.f4175m = d.b(b19);
        this.f4176n = d.b(b20);
        this.f4177p = f;
        this.f4178q = f10;
        this.f4179r = latLngBounds;
        this.f4180s = d.b(b21);
        this.f4181t = num;
        this.f4182v = str;
    }

    @Nullable
    public static GoogleMapOptions E(@Nullable Context context, @Nullable AttributeSet attributeSet) {
        String string;
        LatLngBounds latLngBounds = null;
        if (context == null || attributeSet == null) {
            return null;
        }
        Resources resources = context.getResources();
        int[] r22 = u.f2028s;
        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(attributeSet, r22);
        GoogleMapOptions googleMapOptions = new GoogleMapOptions();
        if (typedArrayObtainAttributes.hasValue(15)) {
            googleMapOptions.f4167c = typedArrayObtainAttributes.getInt(15, -1);
        }
        if (typedArrayObtainAttributes.hasValue(25)) {
            googleMapOptions.f4165a = Boolean.valueOf(typedArrayObtainAttributes.getBoolean(25, false));
        }
        if (typedArrayObtainAttributes.hasValue(24)) {
            googleMapOptions.f4166b = Boolean.valueOf(typedArrayObtainAttributes.getBoolean(24, false));
        }
        if (typedArrayObtainAttributes.hasValue(16)) {
            googleMapOptions.f = Boolean.valueOf(typedArrayObtainAttributes.getBoolean(16, true));
        }
        if (typedArrayObtainAttributes.hasValue(18)) {
            googleMapOptions.f4173k = Boolean.valueOf(typedArrayObtainAttributes.getBoolean(18, true));
        }
        if (typedArrayObtainAttributes.hasValue(20)) {
            googleMapOptions.f4180s = Boolean.valueOf(typedArrayObtainAttributes.getBoolean(20, true));
        }
        if (typedArrayObtainAttributes.hasValue(19)) {
            googleMapOptions.f4170g = Boolean.valueOf(typedArrayObtainAttributes.getBoolean(19, true));
        }
        if (typedArrayObtainAttributes.hasValue(21)) {
            googleMapOptions.f4172j = Boolean.valueOf(typedArrayObtainAttributes.getBoolean(21, true));
        }
        if (typedArrayObtainAttributes.hasValue(23)) {
            googleMapOptions.f4171h = Boolean.valueOf(typedArrayObtainAttributes.getBoolean(23, true));
        }
        if (typedArrayObtainAttributes.hasValue(22)) {
            googleMapOptions.f4169e = Boolean.valueOf(typedArrayObtainAttributes.getBoolean(22, true));
        }
        if (typedArrayObtainAttributes.hasValue(13)) {
            googleMapOptions.f4174l = Boolean.valueOf(typedArrayObtainAttributes.getBoolean(13, false));
        }
        if (typedArrayObtainAttributes.hasValue(17)) {
            googleMapOptions.f4175m = Boolean.valueOf(typedArrayObtainAttributes.getBoolean(17, true));
        }
        if (typedArrayObtainAttributes.hasValue(0)) {
            googleMapOptions.f4176n = Boolean.valueOf(typedArrayObtainAttributes.getBoolean(0, false));
        }
        if (typedArrayObtainAttributes.hasValue(4)) {
            googleMapOptions.f4177p = Float.valueOf(typedArrayObtainAttributes.getFloat(4, Float.NEGATIVE_INFINITY));
        }
        if (typedArrayObtainAttributes.hasValue(4)) {
            googleMapOptions.f4178q = Float.valueOf(typedArrayObtainAttributes.getFloat(3, Float.POSITIVE_INFINITY));
        }
        if (typedArrayObtainAttributes.hasValue(1)) {
            googleMapOptions.f4181t = Integer.valueOf(typedArrayObtainAttributes.getColor(1, w.intValue()));
        }
        if (typedArrayObtainAttributes.hasValue(14) && (string = typedArrayObtainAttributes.getString(14)) != null && !string.isEmpty()) {
            googleMapOptions.f4182v = string;
        }
        TypedArray typedArrayObtainAttributes2 = context.getResources().obtainAttributes(attributeSet, r22);
        Float fValueOf = typedArrayObtainAttributes2.hasValue(11) ? Float.valueOf(typedArrayObtainAttributes2.getFloat(11, 0.0f)) : null;
        Float fValueOf2 = typedArrayObtainAttributes2.hasValue(12) ? Float.valueOf(typedArrayObtainAttributes2.getFloat(12, 0.0f)) : null;
        Float fValueOf3 = typedArrayObtainAttributes2.hasValue(9) ? Float.valueOf(typedArrayObtainAttributes2.getFloat(9, 0.0f)) : null;
        Float fValueOf4 = typedArrayObtainAttributes2.hasValue(10) ? Float.valueOf(typedArrayObtainAttributes2.getFloat(10, 0.0f)) : null;
        typedArrayObtainAttributes2.recycle();
        if (fValueOf != null && fValueOf2 != null && fValueOf3 != null && fValueOf4 != null) {
            latLngBounds = new LatLngBounds(new LatLng(fValueOf.floatValue(), fValueOf2.floatValue()), new LatLng(fValueOf3.floatValue(), fValueOf4.floatValue()));
        }
        googleMapOptions.f4179r = latLngBounds;
        TypedArray typedArrayObtainAttributes3 = context.getResources().obtainAttributes(attributeSet, r22);
        LatLng latLng = new LatLng(typedArrayObtainAttributes3.hasValue(5) ? typedArrayObtainAttributes3.getFloat(5, 0.0f) : 0.0f, typedArrayObtainAttributes3.hasValue(6) ? typedArrayObtainAttributes3.getFloat(6, 0.0f) : 0.0f);
        float f = typedArrayObtainAttributes3.hasValue(8) ? typedArrayObtainAttributes3.getFloat(8, 0.0f) : 0.0f;
        float f10 = typedArrayObtainAttributes3.hasValue(2) ? typedArrayObtainAttributes3.getFloat(2, 0.0f) : 0.0f;
        float f11 = typedArrayObtainAttributes3.hasValue(7) ? typedArrayObtainAttributes3.getFloat(7, 0.0f) : 0.0f;
        typedArrayObtainAttributes3.recycle();
        googleMapOptions.f4168d = new CameraPosition(latLng, f, f11, f10);
        typedArrayObtainAttributes.recycle();
        return googleMapOptions;
    }

    @NonNull
    public final String toString() {
        p.a aVar = new p.a(this);
        aVar.a(Integer.valueOf(this.f4167c), "MapType");
        aVar.a(this.f4174l, "LiteMode");
        aVar.a(this.f4168d, "Camera");
        aVar.a(this.f, "CompassEnabled");
        aVar.a(this.f4169e, "ZoomControlsEnabled");
        aVar.a(this.f4170g, "ScrollGesturesEnabled");
        aVar.a(this.f4171h, "ZoomGesturesEnabled");
        aVar.a(this.f4172j, "TiltGesturesEnabled");
        aVar.a(this.f4173k, "RotateGesturesEnabled");
        aVar.a(this.f4180s, "ScrollGesturesEnabledDuringRotateOrZoom");
        aVar.a(this.f4175m, "MapToolbarEnabled");
        aVar.a(this.f4176n, "AmbientEnabled");
        aVar.a(this.f4177p, "MinZoomPreference");
        aVar.a(this.f4178q, "MaxZoomPreference");
        aVar.a(this.f4181t, "BackgroundColor");
        aVar.a(this.f4179r, "LatLngBoundsForCameraTarget");
        aVar.a(this.f4165a, "ZOrderOnTop");
        aVar.a(this.f4166b, "UseViewLifecycleInFragment");
        return aVar.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@NonNull Parcel parcel, int r52) {
        int r02 = c.r(parcel, 20293);
        c.c(parcel, 2, d.a(this.f4165a));
        c.c(parcel, 3, d.a(this.f4166b));
        c.j(parcel, 4, this.f4167c);
        c.m(parcel, 5, this.f4168d, r52);
        c.c(parcel, 6, d.a(this.f4169e));
        c.c(parcel, 7, d.a(this.f));
        c.c(parcel, 8, d.a(this.f4170g));
        c.c(parcel, 9, d.a(this.f4171h));
        c.c(parcel, 10, d.a(this.f4172j));
        c.c(parcel, 11, d.a(this.f4173k));
        c.c(parcel, 12, d.a(this.f4174l));
        c.c(parcel, 14, d.a(this.f4175m));
        c.c(parcel, 15, d.a(this.f4176n));
        c.h(parcel, 16, this.f4177p);
        c.h(parcel, 17, this.f4178q);
        c.m(parcel, 18, this.f4179r, r52);
        c.c(parcel, 19, d.a(this.f4180s));
        Integer num = this.f4181t;
        if (num != null) {
            parcel.writeInt(262164);
            parcel.writeInt(num.intValue());
        }
        c.n(parcel, 21, this.f4182v);
        c.s(parcel, r02);
    }
}
