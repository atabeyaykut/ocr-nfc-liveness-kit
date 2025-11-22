package p4;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class l2 extends s3.a {
    public static final Parcelable.Creator<l2> CREATOR = new m1();

    /* renamed from: a, reason: collision with root package name */
    public final int f12472a;

    /* renamed from: b, reason: collision with root package name */
    public final String[] f12473b;

    public l2() {
    }

    public l2(int r12, String[] strArr) {
        this.f12472a = r12;
        this.f12473b = strArr;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r42) {
        int r43 = s3.c.r(parcel, 20293);
        s3.c.j(parcel, 2, this.f12472a);
        s3.c.o(parcel, 3, this.f12473b);
        s3.c.s(parcel, r43);
    }
}
