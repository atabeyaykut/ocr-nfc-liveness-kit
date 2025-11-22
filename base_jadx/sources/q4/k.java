package q4;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class k extends s3.a {
    public static final Parcelable.Creator<k> CREATOR = new l();

    /* renamed from: a, reason: collision with root package name */
    public final int f13344a;

    /* renamed from: b, reason: collision with root package name */
    public final int f13345b;

    /* renamed from: c, reason: collision with root package name */
    public final int f13346c;

    /* renamed from: d, reason: collision with root package name */
    public final int f13347d;

    /* renamed from: e, reason: collision with root package name */
    public final long f13348e;

    public k(int r12, int r22, int r32, int r42, long j10) {
        this.f13344a = r12;
        this.f13345b = r22;
        this.f13346c = r32;
        this.f13347d = r42;
        this.f13348e = j10;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r52) {
        int r53 = s3.c.r(parcel, 20293);
        s3.c.j(parcel, 1, this.f13344a);
        s3.c.j(parcel, 2, this.f13345b);
        s3.c.j(parcel, 3, this.f13346c);
        s3.c.j(parcel, 4, this.f13347d);
        s3.c.l(parcel, 5, this.f13348e);
        s3.c.s(parcel, r53);
    }
}
