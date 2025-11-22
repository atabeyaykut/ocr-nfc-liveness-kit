package c5;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class y7 extends s3.a {
    public static final Parcelable.Creator<y7> CREATOR = new z7();

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    public final String f2153a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    public final String f2154b;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    public final String f2155c;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    public final String f2156d;

    /* renamed from: e, reason: collision with root package name */
    public final long f2157e;
    public final long f;

    /* renamed from: g, reason: collision with root package name */
    @Nullable
    public final String f2158g;

    /* renamed from: h, reason: collision with root package name */
    public final boolean f2159h;

    /* renamed from: j, reason: collision with root package name */
    public final boolean f2160j;

    /* renamed from: k, reason: collision with root package name */
    public final long f2161k;

    /* renamed from: l, reason: collision with root package name */
    @Nullable
    public final String f2162l;

    /* renamed from: m, reason: collision with root package name */
    public final long f2163m;

    /* renamed from: n, reason: collision with root package name */
    public final long f2164n;

    /* renamed from: p, reason: collision with root package name */
    public final int f2165p;

    /* renamed from: q, reason: collision with root package name */
    public final boolean f2166q;

    /* renamed from: r, reason: collision with root package name */
    public final boolean f2167r;

    /* renamed from: s, reason: collision with root package name */
    @Nullable
    public final String f2168s;

    /* renamed from: t, reason: collision with root package name */
    @Nullable
    public final Boolean f2169t;

    /* renamed from: v, reason: collision with root package name */
    public final long f2170v;

    @Nullable
    public final List<String> w;

    /* renamed from: x, reason: collision with root package name */
    @Nullable
    public final String f2171x;

    /* renamed from: y, reason: collision with root package name */
    public final String f2172y;

    public y7(@Nullable String str, @Nullable String str2, @Nullable String str3, long j10, @Nullable String str4, long j11, long j12, @Nullable String str5, boolean z10, boolean z11, @Nullable String str6, long j13, long j14, int r22, boolean z12, boolean z13, @Nullable String str7, @Nullable Boolean bool, long j15, @Nullable List<String> list, @Nullable String str8, String str9) {
        r3.r.f(str);
        this.f2153a = str;
        this.f2154b = true != TextUtils.isEmpty(str2) ? str2 : null;
        this.f2155c = str3;
        this.f2161k = j10;
        this.f2156d = str4;
        this.f2157e = j11;
        this.f = j12;
        this.f2158g = str5;
        this.f2159h = z10;
        this.f2160j = z11;
        this.f2162l = str6;
        this.f2163m = j13;
        this.f2164n = j14;
        this.f2165p = r22;
        this.f2166q = z12;
        this.f2167r = z13;
        this.f2168s = str7;
        this.f2169t = bool;
        this.f2170v = j15;
        this.w = list;
        this.f2171x = str8;
        this.f2172y = str9;
    }

    public y7(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, long j10, long j11, @Nullable String str5, boolean z10, boolean z11, long j12, @Nullable String str6, long j13, long j14, int r22, boolean z12, boolean z13, @Nullable String str7, @Nullable Boolean bool, long j15, @Nullable ArrayList arrayList, @Nullable String str8, String str9) {
        this.f2153a = str;
        this.f2154b = str2;
        this.f2155c = str3;
        this.f2161k = j12;
        this.f2156d = str4;
        this.f2157e = j10;
        this.f = j11;
        this.f2158g = str5;
        this.f2159h = z10;
        this.f2160j = z11;
        this.f2162l = str6;
        this.f2163m = j13;
        this.f2164n = j14;
        this.f2165p = r22;
        this.f2166q = z12;
        this.f2167r = z13;
        this.f2168s = str7;
        this.f2169t = bool;
        this.f2170v = j15;
        this.w = arrayList;
        this.f2171x = str8;
        this.f2172y = str9;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r52) {
        int r53 = s3.c.r(parcel, 20293);
        s3.c.n(parcel, 2, this.f2153a);
        s3.c.n(parcel, 3, this.f2154b);
        s3.c.n(parcel, 4, this.f2155c);
        s3.c.n(parcel, 5, this.f2156d);
        s3.c.l(parcel, 6, this.f2157e);
        s3.c.l(parcel, 7, this.f);
        s3.c.n(parcel, 8, this.f2158g);
        s3.c.a(parcel, 9, this.f2159h);
        s3.c.a(parcel, 10, this.f2160j);
        s3.c.l(parcel, 11, this.f2161k);
        s3.c.n(parcel, 12, this.f2162l);
        s3.c.l(parcel, 13, this.f2163m);
        s3.c.l(parcel, 14, this.f2164n);
        s3.c.j(parcel, 15, this.f2165p);
        s3.c.a(parcel, 16, this.f2166q);
        s3.c.a(parcel, 18, this.f2167r);
        s3.c.n(parcel, 19, this.f2168s);
        Boolean bool = this.f2169t;
        if (bool != null) {
            parcel.writeInt(262165);
            parcel.writeInt(bool.booleanValue() ? 1 : 0);
        }
        s3.c.l(parcel, 22, this.f2170v);
        List<String> list = this.w;
        if (list != null) {
            int r12 = s3.c.r(parcel, 23);
            parcel.writeStringList(list);
            s3.c.s(parcel, r12);
        }
        s3.c.n(parcel, 24, this.f2171x);
        s3.c.n(parcel, 25, this.f2172y);
        s3.c.s(parcel, r53);
    }
}
