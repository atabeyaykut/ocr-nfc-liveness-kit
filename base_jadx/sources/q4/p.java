package q4;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class p extends s3.a {
    public static final Parcelable.Creator<p> CREATOR = new o();

    /* renamed from: a, reason: collision with root package name */
    public final int f13350a;

    /* renamed from: b, reason: collision with root package name */
    public final String[] f13351b;

    public p(int r12, String[] strArr) {
        this.f13350a = r12;
        this.f13351b = strArr;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r42) {
        int r43 = s3.c.r(parcel, 20293);
        s3.c.j(parcel, 1, this.f13350a);
        s3.c.o(parcel, 2, this.f13351b);
        s3.c.s(parcel, r43);
    }
}
