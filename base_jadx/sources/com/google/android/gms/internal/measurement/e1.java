package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public final class e1 extends s3.a {
    public static final Parcelable.Creator<e1> CREATOR = new f1();

    /* renamed from: a, reason: collision with root package name */
    public final long f3451a;

    /* renamed from: b, reason: collision with root package name */
    public final long f3452b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f3453c;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    public final String f3454d;

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    public final String f3455e;

    @Nullable
    public final String f;

    /* renamed from: g, reason: collision with root package name */
    @Nullable
    public final Bundle f3456g;

    /* renamed from: h, reason: collision with root package name */
    @Nullable
    public final String f3457h;

    public e1(long j10, long j11, boolean z10, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable Bundle bundle, @Nullable String str4) {
        this.f3451a = j10;
        this.f3452b = j11;
        this.f3453c = z10;
        this.f3454d = str;
        this.f3455e = str2;
        this.f = str3;
        this.f3456g = bundle;
        this.f3457h = str4;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r52) {
        int r53 = s3.c.r(parcel, 20293);
        s3.c.l(parcel, 1, this.f3451a);
        s3.c.l(parcel, 2, this.f3452b);
        s3.c.a(parcel, 3, this.f3453c);
        s3.c.n(parcel, 4, this.f3454d);
        s3.c.n(parcel, 5, this.f3455e);
        s3.c.n(parcel, 6, this.f);
        s3.c.b(parcel, 7, this.f3456g);
        s3.c.n(parcel, 8, this.f3457h);
        s3.c.s(parcel, r53);
    }
}
