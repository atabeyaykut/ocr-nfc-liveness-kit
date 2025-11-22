package q4;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class v extends s3.a {
    public static final Parcelable.Creator<v> CREATOR = new k0();

    /* renamed from: a, reason: collision with root package name */
    public final double f13388a;

    /* renamed from: b, reason: collision with root package name */
    public final double f13389b;

    public v(double d10, double d11) {
        this.f13388a = d10;
        this.f13389b = d11;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r52) {
        int r53 = s3.c.r(parcel, 20293);
        s3.c.f(parcel, 1, this.f13388a);
        s3.c.f(parcel, 2, this.f13389b);
        s3.c.s(parcel, r53);
    }
}
