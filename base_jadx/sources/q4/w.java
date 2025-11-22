package q4;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public final class w extends s3.a {
    public static final Parcelable.Creator<w> CREATOR = new f();

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    public final String f13390a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    public final String f13391b;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    public final String f13392c;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    public final String f13393d;

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    public final String f13394e;

    @Nullable
    public final String f;

    /* renamed from: g, reason: collision with root package name */
    @Nullable
    public final String f13395g;

    public w(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable String str7) {
        this.f13390a = str;
        this.f13391b = str2;
        this.f13392c = str3;
        this.f13393d = str4;
        this.f13394e = str5;
        this.f = str6;
        this.f13395g = str7;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r42) {
        int r43 = s3.c.r(parcel, 20293);
        s3.c.n(parcel, 1, this.f13390a);
        s3.c.n(parcel, 2, this.f13391b);
        s3.c.n(parcel, 3, this.f13392c);
        s3.c.n(parcel, 4, this.f13393d);
        s3.c.n(parcel, 5, this.f13394e);
        s3.c.n(parcel, 6, this.f);
        s3.c.n(parcel, 7, this.f13395g);
        s3.c.s(parcel, r43);
    }
}
