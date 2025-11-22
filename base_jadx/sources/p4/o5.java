package p4;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class o5 extends s3.a {
    public static final Parcelable.Creator<o5> CREATOR = new vb();

    /* renamed from: a, reason: collision with root package name */
    public final j9 f12550a;

    /* renamed from: b, reason: collision with root package name */
    public final String f12551b;

    /* renamed from: c, reason: collision with root package name */
    public final String f12552c;

    /* renamed from: d, reason: collision with root package name */
    public final ea[] f12553d;

    /* renamed from: e, reason: collision with root package name */
    public final m7[] f12554e;
    public final String[] f;

    /* renamed from: g, reason: collision with root package name */
    public final l2[] f12555g;

    public o5() {
    }

    public o5(j9 j9Var, String str, String str2, ea[] eaVarArr, m7[] m7VarArr, String[] strArr, l2[] l2VarArr) {
        this.f12550a = j9Var;
        this.f12551b = str;
        this.f12552c = str2;
        this.f12553d = eaVarArr;
        this.f12554e = m7VarArr;
        this.f = strArr;
        this.f12555g = l2VarArr;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r52) {
        int r02 = s3.c.r(parcel, 20293);
        s3.c.m(parcel, 2, this.f12550a, r52);
        s3.c.n(parcel, 3, this.f12551b);
        s3.c.n(parcel, 4, this.f12552c);
        s3.c.p(parcel, 5, this.f12553d, r52);
        s3.c.p(parcel, 6, this.f12554e, r52);
        s3.c.o(parcel, 7, this.f);
        s3.c.p(parcel, 8, this.f12555g, r52);
        s3.c.s(parcel, r02);
    }
}
