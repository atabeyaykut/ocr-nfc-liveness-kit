package p4;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class k extends s3.a {
    public static final Parcelable.Creator<k> CREATOR = new l();

    /* renamed from: a, reason: collision with root package name */
    public int f12442a;

    /* renamed from: b, reason: collision with root package name */
    public final int f12443b;

    /* renamed from: c, reason: collision with root package name */
    public final int f12444c;

    /* renamed from: d, reason: collision with root package name */
    public final long f12445d;

    /* renamed from: e, reason: collision with root package name */
    public final int f12446e;

    public k(int r12, int r22, int r32, int r42, long j10) {
        this.f12442a = r12;
        this.f12443b = r22;
        this.f12444c = r32;
        this.f12445d = j10;
        this.f12446e = r42;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r52) {
        int r53 = s3.c.r(parcel, 20293);
        s3.c.j(parcel, 2, this.f12442a);
        s3.c.j(parcel, 3, this.f12443b);
        s3.c.j(parcel, 4, this.f12444c);
        s3.c.l(parcel, 5, this.f12445d);
        s3.c.j(parcel, 6, this.f12446e);
        s3.c.s(parcel, r53);
    }
}
