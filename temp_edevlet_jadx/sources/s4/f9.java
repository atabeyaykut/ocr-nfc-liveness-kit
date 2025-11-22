package s4;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class f9 extends s3.a {
    public static final Parcelable.Creator<f9> CREATOR = new g9();

    /* renamed from: a, reason: collision with root package name */
    public final int f14977a;

    /* renamed from: b, reason: collision with root package name */
    public final int f14978b;

    /* renamed from: c, reason: collision with root package name */
    public final int f14979c;

    /* renamed from: d, reason: collision with root package name */
    public final int f14980d;

    /* renamed from: e, reason: collision with root package name */
    public final long f14981e;

    public f9(int r12, int r22, int r32, int r42, long j10) {
        this.f14977a = r12;
        this.f14978b = r22;
        this.f14979c = r32;
        this.f14980d = r42;
        this.f14981e = j10;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r52) {
        int r53 = s3.c.r(parcel, 20293);
        s3.c.j(parcel, 1, this.f14977a);
        s3.c.j(parcel, 2, this.f14978b);
        s3.c.j(parcel, 3, this.f14979c);
        s3.c.j(parcel, 4, this.f14980d);
        s3.c.l(parcel, 5, this.f14981e);
        s3.c.s(parcel, r53);
    }
}
