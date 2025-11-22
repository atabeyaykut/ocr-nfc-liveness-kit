package p4;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class na extends s3.a {
    public static final Parcelable.Creator<na> CREATOR = new cb();

    /* renamed from: a, reason: collision with root package name */
    public final double f12527a;

    /* renamed from: b, reason: collision with root package name */
    public final double f12528b;

    public na(double d10, double d11) {
        this.f12527a = d10;
        this.f12528b = d11;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r52) {
        int r53 = s3.c.r(parcel, 20293);
        s3.c.f(parcel, 1, this.f12527a);
        s3.c.f(parcel, 2, this.f12528b);
        s3.c.s(parcel, r53);
    }
}
