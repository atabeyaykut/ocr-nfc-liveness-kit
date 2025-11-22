package k5;

import android.graphics.PointF;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class a extends s3.a {
    public static final Parcelable.Creator<a> CREATOR = new b();

    /* renamed from: a, reason: collision with root package name */
    public final PointF[] f8769a;

    /* renamed from: b, reason: collision with root package name */
    public final int f8770b;

    public a(PointF[] pointFArr, int r22) {
        this.f8769a = pointFArr;
        this.f8770b = r22;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r52) {
        int r02 = s3.c.r(parcel, 20293);
        s3.c.p(parcel, 2, this.f8769a, r52);
        s3.c.j(parcel, 3, this.f8770b);
        s3.c.s(parcel, r02);
    }
}
