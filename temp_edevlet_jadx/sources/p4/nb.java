package p4;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class nb extends s3.a {
    public static final Parcelable.Creator<nb> CREATOR = new ob();

    /* renamed from: a, reason: collision with root package name */
    public final int f12529a;

    /* renamed from: b, reason: collision with root package name */
    public final int f12530b;

    /* renamed from: c, reason: collision with root package name */
    public final int f12531c;

    /* renamed from: d, reason: collision with root package name */
    public final int f12532d;

    /* renamed from: e, reason: collision with root package name */
    public final long f12533e;

    public nb(int r12, int r22, int r32, int r42, long j10) {
        this.f12529a = r12;
        this.f12530b = r22;
        this.f12531c = r32;
        this.f12532d = r42;
        this.f12533e = j10;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r52) {
        int r53 = s3.c.r(parcel, 20293);
        s3.c.j(parcel, 1, this.f12529a);
        s3.c.j(parcel, 2, this.f12530b);
        s3.c.j(parcel, 3, this.f12531c);
        s3.c.j(parcel, 4, this.f12532d);
        s3.c.l(parcel, 5, this.f12533e);
        s3.c.s(parcel, r53);
    }
}
