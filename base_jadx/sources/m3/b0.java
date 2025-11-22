package m3;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class b0 extends s3.a {
    public static final Parcelable.Creator<b0> CREATOR = new c0();

    /* renamed from: a, reason: collision with root package name */
    public final boolean f9929a;

    /* renamed from: b, reason: collision with root package name */
    public final String f9930b;

    /* renamed from: c, reason: collision with root package name */
    public final int f9931c;

    /* renamed from: d, reason: collision with root package name */
    public final int f9932d;

    public b0(String str, int r22, int r32, boolean z10) {
        this.f9929a = z10;
        this.f9930b = str;
        this.f9931c = b8.f.s0(r22) - 1;
        this.f9932d = c5.w.J(r32) - 1;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r42) {
        int r43 = s3.c.r(parcel, 20293);
        s3.c.a(parcel, 1, this.f9929a);
        s3.c.n(parcel, 2, this.f9930b);
        s3.c.j(parcel, 3, this.f9931c);
        s3.c.j(parcel, 4, this.f9932d);
        s3.c.s(parcel, r43);
    }
}
