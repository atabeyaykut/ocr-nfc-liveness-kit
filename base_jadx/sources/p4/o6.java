package p4;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class o6 extends s3.a {
    public static final Parcelable.Creator<o6> CREATOR = new wb();

    /* renamed from: a, reason: collision with root package name */
    public final String f12556a;

    /* renamed from: b, reason: collision with root package name */
    public final String f12557b;

    /* renamed from: c, reason: collision with root package name */
    public final String f12558c;

    /* renamed from: d, reason: collision with root package name */
    public final String f12559d;

    /* renamed from: e, reason: collision with root package name */
    public final String f12560e;
    public final String f;

    /* renamed from: g, reason: collision with root package name */
    public final String f12561g;

    /* renamed from: h, reason: collision with root package name */
    public final String f12562h;

    /* renamed from: j, reason: collision with root package name */
    public final String f12563j;

    /* renamed from: k, reason: collision with root package name */
    public final String f12564k;

    /* renamed from: l, reason: collision with root package name */
    public final String f12565l;

    /* renamed from: m, reason: collision with root package name */
    public final String f12566m;

    /* renamed from: n, reason: collision with root package name */
    public final String f12567n;

    /* renamed from: p, reason: collision with root package name */
    public final String f12568p;

    public o6() {
    }

    public o6(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14) {
        this.f12556a = str;
        this.f12557b = str2;
        this.f12558c = str3;
        this.f12559d = str4;
        this.f12560e = str5;
        this.f = str6;
        this.f12561g = str7;
        this.f12562h = str8;
        this.f12563j = str9;
        this.f12564k = str10;
        this.f12565l = str11;
        this.f12566m = str12;
        this.f12567n = str13;
        this.f12568p = str14;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r42) {
        int r43 = s3.c.r(parcel, 20293);
        s3.c.n(parcel, 2, this.f12556a);
        s3.c.n(parcel, 3, this.f12557b);
        s3.c.n(parcel, 4, this.f12558c);
        s3.c.n(parcel, 5, this.f12559d);
        s3.c.n(parcel, 6, this.f12560e);
        s3.c.n(parcel, 7, this.f);
        s3.c.n(parcel, 8, this.f12561g);
        s3.c.n(parcel, 9, this.f12562h);
        s3.c.n(parcel, 10, this.f12563j);
        s3.c.n(parcel, 11, this.f12564k);
        s3.c.n(parcel, 12, this.f12565l);
        s3.c.n(parcel, 13, this.f12566m);
        s3.c.n(parcel, 14, this.f12567n);
        s3.c.n(parcel, 15, this.f12568p);
        s3.c.s(parcel, r43);
    }
}
