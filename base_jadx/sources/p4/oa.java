package p4;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public final class oa extends s3.a {
    public static final Parcelable.Creator<oa> CREATOR = new ib();

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    public final String f12575a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    public final String f12576b;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    public final String f12577c;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    public final String f12578d;

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    public final String f12579e;

    @Nullable
    public final String f;

    /* renamed from: g, reason: collision with root package name */
    @Nullable
    public final String f12580g;

    public oa(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable String str7) {
        this.f12575a = str;
        this.f12576b = str2;
        this.f12577c = str3;
        this.f12578d = str4;
        this.f12579e = str5;
        this.f = str6;
        this.f12580g = str7;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r42) {
        int r43 = s3.c.r(parcel, 20293);
        s3.c.n(parcel, 1, this.f12575a);
        s3.c.n(parcel, 2, this.f12576b);
        s3.c.n(parcel, 3, this.f12577c);
        s3.c.n(parcel, 4, this.f12578d);
        s3.c.n(parcel, 5, this.f12579e);
        s3.c.n(parcel, 6, this.f);
        s3.c.n(parcel, 7, this.f12580g);
        s3.c.s(parcel, r43);
    }
}
