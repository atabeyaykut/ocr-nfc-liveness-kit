package p4;

import android.graphics.Point;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class rb extends s3.a {
    public static final Parcelable.Creator<rb> CREATOR = new sb();

    /* renamed from: a, reason: collision with root package name */
    public final int f12649a;

    /* renamed from: b, reason: collision with root package name */
    public final String f12650b;

    /* renamed from: c, reason: collision with root package name */
    public final String f12651c;

    /* renamed from: d, reason: collision with root package name */
    public final int f12652d;

    /* renamed from: e, reason: collision with root package name */
    public final Point[] f12653e;
    public final m7 f;

    /* renamed from: g, reason: collision with root package name */
    public final ea f12654g;

    /* renamed from: h, reason: collision with root package name */
    public final eb f12655h;

    /* renamed from: j, reason: collision with root package name */
    public final qb f12656j;

    /* renamed from: k, reason: collision with root package name */
    public final pb f12657k;

    /* renamed from: l, reason: collision with root package name */
    public final k8 f12658l;

    /* renamed from: m, reason: collision with root package name */
    public final n4 f12659m;

    /* renamed from: n, reason: collision with root package name */
    public final o5 f12660n;

    /* renamed from: p, reason: collision with root package name */
    public final o6 f12661p;

    /* renamed from: q, reason: collision with root package name */
    public final byte[] f12662q;

    /* renamed from: r, reason: collision with root package name */
    public final boolean f12663r;

    /* renamed from: s, reason: collision with root package name */
    public final double f12664s;

    public rb() {
    }

    public rb(int r42, String str, String str2, int r72, Point[] pointArr, m7 m7Var, ea eaVar, eb ebVar, qb qbVar, pb pbVar, k8 k8Var, n4 n4Var, o5 o5Var, o6 o6Var, byte[] bArr, boolean z10, double d10) {
        this.f12649a = r42;
        this.f12650b = str;
        this.f12662q = bArr;
        this.f12651c = str2;
        this.f12652d = r72;
        this.f12653e = pointArr;
        this.f12663r = z10;
        this.f12664s = d10;
        this.f = m7Var;
        this.f12654g = eaVar;
        this.f12655h = ebVar;
        this.f12656j = qbVar;
        this.f12657k = pbVar;
        this.f12658l = k8Var;
        this.f12659m = n4Var;
        this.f12660n = o5Var;
        this.f12661p = o6Var;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r52) {
        int r02 = s3.c.r(parcel, 20293);
        s3.c.j(parcel, 2, this.f12649a);
        s3.c.n(parcel, 3, this.f12650b);
        s3.c.n(parcel, 4, this.f12651c);
        s3.c.j(parcel, 5, this.f12652d);
        s3.c.p(parcel, 6, this.f12653e, r52);
        s3.c.m(parcel, 7, this.f, r52);
        s3.c.m(parcel, 8, this.f12654g, r52);
        s3.c.m(parcel, 9, this.f12655h, r52);
        s3.c.m(parcel, 10, this.f12656j, r52);
        s3.c.m(parcel, 11, this.f12657k, r52);
        s3.c.m(parcel, 12, this.f12658l, r52);
        s3.c.m(parcel, 13, this.f12659m, r52);
        s3.c.m(parcel, 14, this.f12660n, r52);
        s3.c.m(parcel, 15, this.f12661p, r52);
        s3.c.d(parcel, 16, this.f12662q);
        s3.c.a(parcel, 17, this.f12663r);
        s3.c.f(parcel, 18, this.f12664s);
        s3.c.s(parcel, r02);
    }
}
