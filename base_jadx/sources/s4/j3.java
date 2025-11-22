package s4;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class j3 extends s3.a {
    public static final Parcelable.Creator<j3> CREATOR = new k4();

    /* renamed from: a, reason: collision with root package name */
    public final int f15045a;

    /* renamed from: b, reason: collision with root package name */
    public final int f15046b;

    /* renamed from: c, reason: collision with root package name */
    public final int f15047c;

    /* renamed from: d, reason: collision with root package name */
    public final int f15048d;

    /* renamed from: e, reason: collision with root package name */
    public final float f15049e;

    public j3(int r12, int r22, int r32, int r42, float f) {
        this.f15045a = r12;
        this.f15046b = r22;
        this.f15047c = r32;
        this.f15048d = r42;
        this.f15049e = f;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r42) {
        int r43 = s3.c.r(parcel, 20293);
        s3.c.j(parcel, 2, this.f15045a);
        s3.c.j(parcel, 3, this.f15046b);
        s3.c.j(parcel, 4, this.f15047c);
        s3.c.j(parcel, 5, this.f15048d);
        s3.c.g(parcel, 6, this.f15049e);
        s3.c.s(parcel, r43);
    }
}
