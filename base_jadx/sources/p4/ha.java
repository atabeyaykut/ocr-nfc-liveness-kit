package p4;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class ha extends s3.a {
    public static final Parcelable.Creator<ha> CREATOR = new ga();

    /* renamed from: a, reason: collision with root package name */
    public final int f12393a;

    /* renamed from: b, reason: collision with root package name */
    public final String[] f12394b;

    public ha(int r12, String[] strArr) {
        this.f12393a = r12;
        this.f12394b = strArr;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r42) {
        int r43 = s3.c.r(parcel, 20293);
        s3.c.j(parcel, 1, this.f12393a);
        s3.c.o(parcel, 2, this.f12394b);
        s3.c.s(parcel, r43);
    }
}
