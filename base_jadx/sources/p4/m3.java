package p4;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class m3 extends s3.a {
    public static final Parcelable.Creator<m3> CREATOR = new tb();

    /* renamed from: a, reason: collision with root package name */
    public final int f12495a;

    /* renamed from: b, reason: collision with root package name */
    public final int f12496b;

    /* renamed from: c, reason: collision with root package name */
    public final int f12497c;

    /* renamed from: d, reason: collision with root package name */
    public final int f12498d;

    /* renamed from: e, reason: collision with root package name */
    public final int f12499e;
    public final int f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f12500g;

    /* renamed from: h, reason: collision with root package name */
    public final String f12501h;

    public m3() {
    }

    public m3(String str, int r22, int r32, int r42, int r52, boolean z10, int r72, int r82) {
        this.f12495a = r22;
        this.f12496b = r32;
        this.f12497c = r42;
        this.f12498d = r52;
        this.f12499e = r72;
        this.f = r82;
        this.f12500g = z10;
        this.f12501h = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r42) {
        int r43 = s3.c.r(parcel, 20293);
        s3.c.j(parcel, 2, this.f12495a);
        s3.c.j(parcel, 3, this.f12496b);
        s3.c.j(parcel, 4, this.f12497c);
        s3.c.j(parcel, 5, this.f12498d);
        s3.c.j(parcel, 6, this.f12499e);
        s3.c.j(parcel, 7, this.f);
        s3.c.a(parcel, 8, this.f12500g);
        s3.c.n(parcel, 9, this.f12501h);
        s3.c.s(parcel, r43);
    }
}
