package p4;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public final class la extends s3.a {
    public static final Parcelable.Creator<la> CREATOR = new ab();

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    public final String f12481a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    public final String f12482b;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    public final String f12483c;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    public final String f12484d;

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    public final String f12485e;

    @Nullable
    public final String f;

    /* renamed from: g, reason: collision with root package name */
    @Nullable
    public final String f12486g;

    /* renamed from: h, reason: collision with root package name */
    @Nullable
    public final String f12487h;

    /* renamed from: j, reason: collision with root package name */
    @Nullable
    public final String f12488j;

    /* renamed from: k, reason: collision with root package name */
    @Nullable
    public final String f12489k;

    /* renamed from: l, reason: collision with root package name */
    @Nullable
    public final String f12490l;

    /* renamed from: m, reason: collision with root package name */
    @Nullable
    public final String f12491m;

    /* renamed from: n, reason: collision with root package name */
    @Nullable
    public final String f12492n;

    /* renamed from: p, reason: collision with root package name */
    @Nullable
    public final String f12493p;

    public la(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable String str7, @Nullable String str8, @Nullable String str9, @Nullable String str10, @Nullable String str11, @Nullable String str12, @Nullable String str13, @Nullable String str14) {
        this.f12481a = str;
        this.f12482b = str2;
        this.f12483c = str3;
        this.f12484d = str4;
        this.f12485e = str5;
        this.f = str6;
        this.f12486g = str7;
        this.f12487h = str8;
        this.f12488j = str9;
        this.f12489k = str10;
        this.f12490l = str11;
        this.f12491m = str12;
        this.f12492n = str13;
        this.f12493p = str14;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r42) {
        int r43 = s3.c.r(parcel, 20293);
        s3.c.n(parcel, 1, this.f12481a);
        s3.c.n(parcel, 2, this.f12482b);
        s3.c.n(parcel, 3, this.f12483c);
        s3.c.n(parcel, 4, this.f12484d);
        s3.c.n(parcel, 5, this.f12485e);
        s3.c.n(parcel, 6, this.f);
        s3.c.n(parcel, 7, this.f12486g);
        s3.c.n(parcel, 8, this.f12487h);
        s3.c.n(parcel, 9, this.f12488j);
        s3.c.n(parcel, 10, this.f12489k);
        s3.c.n(parcel, 11, this.f12490l);
        s3.c.n(parcel, 12, this.f12491m);
        s3.c.n(parcel, 13, this.f12492n);
        s3.c.n(parcel, 14, this.f12493p);
        s3.c.s(parcel, r43);
    }
}
