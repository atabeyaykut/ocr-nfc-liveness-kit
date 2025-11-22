package c5;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public final class b extends s3.a {
    public static final Parcelable.Creator<b> CREATOR = new c();

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    public String f1400a;

    /* renamed from: b, reason: collision with root package name */
    public String f1401b;

    /* renamed from: c, reason: collision with root package name */
    public r7 f1402c;

    /* renamed from: d, reason: collision with root package name */
    public long f1403d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f1404e;

    @Nullable
    public String f;

    /* renamed from: g, reason: collision with root package name */
    @Nullable
    public final s f1405g;

    /* renamed from: h, reason: collision with root package name */
    public long f1406h;

    /* renamed from: j, reason: collision with root package name */
    @Nullable
    public s f1407j;

    /* renamed from: k, reason: collision with root package name */
    public final long f1408k;

    /* renamed from: l, reason: collision with root package name */
    @Nullable
    public final s f1409l;

    public b(b bVar) {
        r3.r.i(bVar);
        this.f1400a = bVar.f1400a;
        this.f1401b = bVar.f1401b;
        this.f1402c = bVar.f1402c;
        this.f1403d = bVar.f1403d;
        this.f1404e = bVar.f1404e;
        this.f = bVar.f;
        this.f1405g = bVar.f1405g;
        this.f1406h = bVar.f1406h;
        this.f1407j = bVar.f1407j;
        this.f1408k = bVar.f1408k;
        this.f1409l = bVar.f1409l;
    }

    public b(@Nullable String str, String str2, r7 r7Var, long j10, boolean z10, @Nullable String str3, @Nullable s sVar, long j11, @Nullable s sVar2, long j12, @Nullable s sVar3) {
        this.f1400a = str;
        this.f1401b = str2;
        this.f1402c = r7Var;
        this.f1403d = j10;
        this.f1404e = z10;
        this.f = str3;
        this.f1405g = sVar;
        this.f1406h = j11;
        this.f1407j = sVar2;
        this.f1408k = j12;
        this.f1409l = sVar3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r6) {
        int r02 = s3.c.r(parcel, 20293);
        s3.c.n(parcel, 2, this.f1400a);
        s3.c.n(parcel, 3, this.f1401b);
        s3.c.m(parcel, 4, this.f1402c, r6);
        s3.c.l(parcel, 5, this.f1403d);
        s3.c.a(parcel, 6, this.f1404e);
        s3.c.n(parcel, 7, this.f);
        s3.c.m(parcel, 8, this.f1405g, r6);
        s3.c.l(parcel, 9, this.f1406h);
        s3.c.m(parcel, 10, this.f1407j, r6);
        s3.c.l(parcel, 11, this.f1408k);
        s3.c.m(parcel, 12, this.f1409l, r6);
        s3.c.s(parcel, r02);
    }
}
