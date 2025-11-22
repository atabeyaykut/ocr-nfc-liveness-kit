package com.google.android.gms.internal.vision;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class h4 extends s3.a {
    public static final Parcelable.Creator<h4> CREATOR = new i4();

    /* renamed from: a, reason: collision with root package name */
    public final int f3980a;

    /* renamed from: b, reason: collision with root package name */
    public final int f3981b;

    /* renamed from: c, reason: collision with root package name */
    public final int f3982c;

    /* renamed from: d, reason: collision with root package name */
    public final long f3983d;

    /* renamed from: e, reason: collision with root package name */
    public final int f3984e;

    public h4(int r12, int r22, int r32, int r42, long j10) {
        this.f3980a = r12;
        this.f3981b = r22;
        this.f3982c = r32;
        this.f3983d = j10;
        this.f3984e = r42;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r52) {
        int r53 = s3.c.r(parcel, 20293);
        s3.c.j(parcel, 2, this.f3980a);
        s3.c.j(parcel, 3, this.f3981b);
        s3.c.j(parcel, 4, this.f3982c);
        s3.c.l(parcel, 5, this.f3983d);
        s3.c.j(parcel, 6, this.f3984e);
        s3.c.s(parcel, r53);
    }
}
