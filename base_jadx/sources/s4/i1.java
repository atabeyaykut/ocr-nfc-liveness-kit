package s4;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class i1 extends s3.a {
    public static final Parcelable.Creator<i1> CREATOR = new i2();

    /* renamed from: a, reason: collision with root package name */
    public final int f15031a;

    /* renamed from: b, reason: collision with root package name */
    public final int f15032b;

    /* renamed from: c, reason: collision with root package name */
    public final int f15033c;

    /* renamed from: d, reason: collision with root package name */
    public final long f15034d;

    /* renamed from: e, reason: collision with root package name */
    public final int f15035e;

    public i1(int r12, int r22, int r32, int r42, long j10) {
        this.f15031a = r12;
        this.f15032b = r22;
        this.f15033c = r32;
        this.f15034d = j10;
        this.f15035e = r42;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r52) {
        int r53 = s3.c.r(parcel, 20293);
        s3.c.j(parcel, 2, this.f15031a);
        s3.c.j(parcel, 3, this.f15032b);
        s3.c.j(parcel, 4, this.f15033c);
        s3.c.l(parcel, 5, this.f15034d);
        s3.c.j(parcel, 6, this.f15035e);
        s3.c.s(parcel, r53);
    }
}
