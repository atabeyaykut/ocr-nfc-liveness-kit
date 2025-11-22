package q4;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public final class t extends s3.a {
    public static final Parcelable.Creator<t> CREATOR = new i0();

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    public final String f13371a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    public final String f13372b;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    public final String f13373c;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    public final String f13374d;

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    public final String f13375e;

    @Nullable
    public final String f;

    /* renamed from: g, reason: collision with root package name */
    @Nullable
    public final String f13376g;

    /* renamed from: h, reason: collision with root package name */
    @Nullable
    public final String f13377h;

    /* renamed from: j, reason: collision with root package name */
    @Nullable
    public final String f13378j;

    /* renamed from: k, reason: collision with root package name */
    @Nullable
    public final String f13379k;

    /* renamed from: l, reason: collision with root package name */
    @Nullable
    public final String f13380l;

    /* renamed from: m, reason: collision with root package name */
    @Nullable
    public final String f13381m;

    /* renamed from: n, reason: collision with root package name */
    @Nullable
    public final String f13382n;

    /* renamed from: p, reason: collision with root package name */
    @Nullable
    public final String f13383p;

    public t(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable String str7, @Nullable String str8, @Nullable String str9, @Nullable String str10, @Nullable String str11, @Nullable String str12, @Nullable String str13, @Nullable String str14) {
        this.f13371a = str;
        this.f13372b = str2;
        this.f13373c = str3;
        this.f13374d = str4;
        this.f13375e = str5;
        this.f = str6;
        this.f13376g = str7;
        this.f13377h = str8;
        this.f13378j = str9;
        this.f13379k = str10;
        this.f13380l = str11;
        this.f13381m = str12;
        this.f13382n = str13;
        this.f13383p = str14;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r42) {
        int r43 = s3.c.r(parcel, 20293);
        s3.c.n(parcel, 1, this.f13371a);
        s3.c.n(parcel, 2, this.f13372b);
        s3.c.n(parcel, 3, this.f13373c);
        s3.c.n(parcel, 4, this.f13374d);
        s3.c.n(parcel, 5, this.f13375e);
        s3.c.n(parcel, 6, this.f);
        s3.c.n(parcel, 7, this.f13376g);
        s3.c.n(parcel, 8, this.f13377h);
        s3.c.n(parcel, 9, this.f13378j);
        s3.c.n(parcel, 10, this.f13379k);
        s3.c.n(parcel, 11, this.f13380l);
        s3.c.n(parcel, 12, this.f13381m);
        s3.c.n(parcel, 13, this.f13382n);
        s3.c.n(parcel, 14, this.f13383p);
        s3.c.s(parcel, r43);
    }
}
