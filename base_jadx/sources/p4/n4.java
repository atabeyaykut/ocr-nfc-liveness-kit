package p4;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class n4 extends s3.a {
    public static final Parcelable.Creator<n4> CREATOR = new ub();

    /* renamed from: a, reason: collision with root package name */
    public final String f12517a;

    /* renamed from: b, reason: collision with root package name */
    public final String f12518b;

    /* renamed from: c, reason: collision with root package name */
    public final String f12519c;

    /* renamed from: d, reason: collision with root package name */
    public final String f12520d;

    /* renamed from: e, reason: collision with root package name */
    public final String f12521e;
    public final m3 f;

    /* renamed from: g, reason: collision with root package name */
    public final m3 f12522g;

    public n4() {
    }

    public n4(String str, String str2, String str3, String str4, String str5, m3 m3Var, m3 m3Var2) {
        this.f12517a = str;
        this.f12518b = str2;
        this.f12519c = str3;
        this.f12520d = str4;
        this.f12521e = str5;
        this.f = m3Var;
        this.f12522g = m3Var2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r52) {
        int r02 = s3.c.r(parcel, 20293);
        s3.c.n(parcel, 2, this.f12517a);
        s3.c.n(parcel, 3, this.f12518b);
        s3.c.n(parcel, 4, this.f12519c);
        s3.c.n(parcel, 5, this.f12520d);
        s3.c.n(parcel, 6, this.f12521e);
        s3.c.m(parcel, 7, this.f, r52);
        s3.c.m(parcel, 8, this.f12522g, r52);
        s3.c.s(parcel, r02);
    }
}
