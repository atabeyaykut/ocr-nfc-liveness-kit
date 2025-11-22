package p4;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class qb extends s3.a {
    public static final Parcelable.Creator<qb> CREATOR = new d();

    /* renamed from: a, reason: collision with root package name */
    public final String f12628a;

    /* renamed from: b, reason: collision with root package name */
    public final String f12629b;

    /* renamed from: c, reason: collision with root package name */
    public final int f12630c;

    public qb() {
    }

    public qb(String str, String str2, int r32) {
        this.f12628a = str;
        this.f12629b = str2;
        this.f12630c = r32;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r42) {
        int r43 = s3.c.r(parcel, 20293);
        s3.c.n(parcel, 2, this.f12628a);
        s3.c.n(parcel, 3, this.f12629b);
        s3.c.j(parcel, 4, this.f12630c);
        s3.c.s(parcel, r43);
    }
}
