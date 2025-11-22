package s4;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class aa extends s3.a {
    public static final Parcelable.Creator<aa> CREATOR = new ba();

    /* renamed from: a, reason: collision with root package name */
    public final w9[] f14898a;

    /* renamed from: b, reason: collision with root package name */
    public final j3 f14899b;

    /* renamed from: c, reason: collision with root package name */
    public final j3 f14900c;

    /* renamed from: d, reason: collision with root package name */
    public final String f14901d;

    /* renamed from: e, reason: collision with root package name */
    public final float f14902e;
    public final String f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f14903g;

    public aa(w9[] w9VarArr, j3 j3Var, j3 j3Var2, String str, float f, String str2, boolean z10) {
        this.f14898a = w9VarArr;
        this.f14899b = j3Var;
        this.f14900c = j3Var2;
        this.f14901d = str;
        this.f14902e = f;
        this.f = str2;
        this.f14903g = z10;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r52) {
        int r02 = s3.c.r(parcel, 20293);
        s3.c.p(parcel, 2, this.f14898a, r52);
        s3.c.m(parcel, 3, this.f14899b, r52);
        s3.c.m(parcel, 4, this.f14900c, r52);
        s3.c.n(parcel, 5, this.f14901d);
        s3.c.g(parcel, 6, this.f14902e);
        s3.c.n(parcel, 7, this.f);
        s3.c.a(parcel, 8, this.f14903g);
        s3.c.s(parcel, r02);
    }
}
