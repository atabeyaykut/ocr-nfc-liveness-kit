package q4;

import android.graphics.Point;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public final class b0 extends s3.a {
    public static final Parcelable.Creator<b0> CREATOR = new c0();

    /* renamed from: a, reason: collision with root package name */
    public final int f13328a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    public final String f13329b;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    public final String f13330c;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    public final byte[] f13331d;

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    public final Point[] f13332e;
    public final int f;

    /* renamed from: g, reason: collision with root package name */
    @Nullable
    public final u f13333g;

    /* renamed from: h, reason: collision with root package name */
    @Nullable
    public final x f13334h;

    /* renamed from: j, reason: collision with root package name */
    @Nullable
    public final y f13335j;

    /* renamed from: k, reason: collision with root package name */
    @Nullable
    public final a0 f13336k;

    /* renamed from: l, reason: collision with root package name */
    @Nullable
    public final z f13337l;

    /* renamed from: m, reason: collision with root package name */
    @Nullable
    public final v f13338m;

    /* renamed from: n, reason: collision with root package name */
    @Nullable
    public final r f13339n;

    /* renamed from: p, reason: collision with root package name */
    @Nullable
    public final s f13340p;

    /* renamed from: q, reason: collision with root package name */
    @Nullable
    public final t f13341q;

    public b0(int r12, @Nullable String str, @Nullable String str2, @Nullable byte[] bArr, @Nullable Point[] pointArr, int r6, @Nullable u uVar, @Nullable x xVar, @Nullable y yVar, @Nullable a0 a0Var, @Nullable z zVar, @Nullable v vVar, @Nullable r rVar, @Nullable s sVar, @Nullable t tVar) {
        this.f13328a = r12;
        this.f13329b = str;
        this.f13330c = str2;
        this.f13331d = bArr;
        this.f13332e = pointArr;
        this.f = r6;
        this.f13333g = uVar;
        this.f13334h = xVar;
        this.f13335j = yVar;
        this.f13336k = a0Var;
        this.f13337l = zVar;
        this.f13338m = vVar;
        this.f13339n = rVar;
        this.f13340p = sVar;
        this.f13341q = tVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r52) {
        int r02 = s3.c.r(parcel, 20293);
        s3.c.j(parcel, 1, this.f13328a);
        s3.c.n(parcel, 2, this.f13329b);
        s3.c.n(parcel, 3, this.f13330c);
        s3.c.d(parcel, 4, this.f13331d);
        s3.c.p(parcel, 5, this.f13332e, r52);
        s3.c.j(parcel, 6, this.f);
        s3.c.m(parcel, 7, this.f13333g, r52);
        s3.c.m(parcel, 8, this.f13334h, r52);
        s3.c.m(parcel, 9, this.f13335j, r52);
        s3.c.m(parcel, 10, this.f13336k, r52);
        s3.c.m(parcel, 11, this.f13337l, r52);
        s3.c.m(parcel, 12, this.f13338m, r52);
        s3.c.m(parcel, 13, this.f13339n, r52);
        s3.c.m(parcel, 14, this.f13340p, r52);
        s3.c.m(parcel, 15, this.f13341q, r52);
        s3.c.s(parcel, r02);
    }
}
