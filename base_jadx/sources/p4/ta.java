package p4;

import android.graphics.Point;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public final class ta extends s3.a {
    public static final Parcelable.Creator<ta> CREATOR = new ua();

    /* renamed from: a, reason: collision with root package name */
    public final int f12686a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    public final String f12687b;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    public final String f12688c;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    public final byte[] f12689d;

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    public final Point[] f12690e;
    public final int f;

    /* renamed from: g, reason: collision with root package name */
    @Nullable
    public final ma f12691g;

    /* renamed from: h, reason: collision with root package name */
    @Nullable
    public final pa f12692h;

    /* renamed from: j, reason: collision with root package name */
    @Nullable
    public final qa f12693j;

    /* renamed from: k, reason: collision with root package name */
    @Nullable
    public final sa f12694k;

    /* renamed from: l, reason: collision with root package name */
    @Nullable
    public final ra f12695l;

    /* renamed from: m, reason: collision with root package name */
    @Nullable
    public final na f12696m;

    /* renamed from: n, reason: collision with root package name */
    @Nullable
    public final ja f12697n;

    /* renamed from: p, reason: collision with root package name */
    @Nullable
    public final ka f12698p;

    /* renamed from: q, reason: collision with root package name */
    @Nullable
    public final la f12699q;

    public ta(int r12, @Nullable String str, @Nullable String str2, @Nullable byte[] bArr, @Nullable Point[] pointArr, int r6, @Nullable ma maVar, @Nullable pa paVar, @Nullable qa qaVar, @Nullable sa saVar, @Nullable ra raVar, @Nullable na naVar, @Nullable ja jaVar, @Nullable ka kaVar, @Nullable la laVar) {
        this.f12686a = r12;
        this.f12687b = str;
        this.f12688c = str2;
        this.f12689d = bArr;
        this.f12690e = pointArr;
        this.f = r6;
        this.f12691g = maVar;
        this.f12692h = paVar;
        this.f12693j = qaVar;
        this.f12694k = saVar;
        this.f12695l = raVar;
        this.f12696m = naVar;
        this.f12697n = jaVar;
        this.f12698p = kaVar;
        this.f12699q = laVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r52) {
        int r02 = s3.c.r(parcel, 20293);
        s3.c.j(parcel, 1, this.f12686a);
        s3.c.n(parcel, 2, this.f12687b);
        s3.c.n(parcel, 3, this.f12688c);
        s3.c.d(parcel, 4, this.f12689d);
        s3.c.p(parcel, 5, this.f12690e, r52);
        s3.c.j(parcel, 6, this.f);
        s3.c.m(parcel, 7, this.f12691g, r52);
        s3.c.m(parcel, 8, this.f12692h, r52);
        s3.c.m(parcel, 9, this.f12693j, r52);
        s3.c.m(parcel, 10, this.f12694k, r52);
        s3.c.m(parcel, 11, this.f12695l, r52);
        s3.c.m(parcel, 12, this.f12696m, r52);
        s3.c.m(parcel, 13, this.f12697n, r52);
        s3.c.m(parcel, 14, this.f12698p, r52);
        s3.c.m(parcel, 15, this.f12699q, r52);
        s3.c.s(parcel, r02);
    }
}
