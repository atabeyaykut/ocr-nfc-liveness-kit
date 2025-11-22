package com.google.android.gms.vision.face.internal.client;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import com.google.android.apps.common.proguard.UsedByNative;
import k5.c;
import s3.a;

@UsedByNative("wrapper.cc")
/* loaded from: classes.dex */
public class FaceParcel extends a {

    @RecentlyNonNull
    public static final Parcelable.Creator<FaceParcel> CREATOR = new c();

    /* renamed from: a, reason: collision with root package name */
    public final int f4199a;

    /* renamed from: b, reason: collision with root package name */
    public final int f4200b;

    /* renamed from: c, reason: collision with root package name */
    public final float f4201c;

    /* renamed from: d, reason: collision with root package name */
    public final float f4202d;

    /* renamed from: e, reason: collision with root package name */
    public final float f4203e;
    public final float f;

    /* renamed from: g, reason: collision with root package name */
    public final float f4204g;

    /* renamed from: h, reason: collision with root package name */
    public final float f4205h;

    /* renamed from: j, reason: collision with root package name */
    public final float f4206j;

    /* renamed from: k, reason: collision with root package name */
    @RecentlyNonNull
    public final LandmarkParcel[] f4207k;

    /* renamed from: l, reason: collision with root package name */
    public final float f4208l;

    /* renamed from: m, reason: collision with root package name */
    public final float f4209m;

    /* renamed from: n, reason: collision with root package name */
    public final float f4210n;

    /* renamed from: p, reason: collision with root package name */
    public final k5.a[] f4211p;

    /* renamed from: q, reason: collision with root package name */
    public final float f4212q;

    public FaceParcel(int r12, int r22, float f, float f10, float f11, float f12, float f13, float f14, float f15, LandmarkParcel[] landmarkParcelArr, float f16, float f17, float f18, k5.a[] aVarArr, float f19) {
        this.f4199a = r12;
        this.f4200b = r22;
        this.f4201c = f;
        this.f4202d = f10;
        this.f4203e = f11;
        this.f = f12;
        this.f4204g = f13;
        this.f4205h = f14;
        this.f4206j = f15;
        this.f4207k = landmarkParcelArr;
        this.f4208l = f16;
        this.f4209m = f17;
        this.f4210n = f18;
        this.f4211p = aVarArr;
        this.f4212q = f19;
    }

    @UsedByNative("wrapper.cc")
    public FaceParcel(int r17, int r18, float f, float f10, float f11, float f12, float f13, float f14, @RecentlyNonNull LandmarkParcel[] landmarkParcelArr, float f15, float f16, float f17) {
        this(r17, r18, f, f10, f11, f12, f13, f14, 0.0f, landmarkParcelArr, f15, f16, f17, new k5.a[0], -1.0f);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@RecentlyNonNull Parcel parcel, int r52) {
        int r02 = s3.c.r(parcel, 20293);
        s3.c.j(parcel, 1, this.f4199a);
        s3.c.j(parcel, 2, this.f4200b);
        s3.c.g(parcel, 3, this.f4201c);
        s3.c.g(parcel, 4, this.f4202d);
        s3.c.g(parcel, 5, this.f4203e);
        s3.c.g(parcel, 6, this.f);
        s3.c.g(parcel, 7, this.f4204g);
        s3.c.g(parcel, 8, this.f4205h);
        s3.c.p(parcel, 9, this.f4207k, r52);
        s3.c.g(parcel, 10, this.f4208l);
        s3.c.g(parcel, 11, this.f4209m);
        s3.c.g(parcel, 12, this.f4210n);
        s3.c.p(parcel, 13, this.f4211p, r52);
        s3.c.g(parcel, 14, this.f4206j);
        s3.c.g(parcel, 15, this.f4212q);
        s3.c.s(parcel, r02);
    }
}
