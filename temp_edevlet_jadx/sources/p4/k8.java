package p4;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class k8 extends s3.a {
    public static final Parcelable.Creator<k8> CREATOR = new yb();

    /* renamed from: a, reason: collision with root package name */
    public final double f12452a;

    /* renamed from: b, reason: collision with root package name */
    public final double f12453b;

    public k8() {
    }

    public k8(double d10, double d11) {
        this.f12452a = d10;
        this.f12453b = d11;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r52) {
        int r53 = s3.c.r(parcel, 20293);
        s3.c.f(parcel, 2, this.f12452a);
        s3.c.f(parcel, 3, this.f12453b);
        s3.c.s(parcel, r53);
    }
}
