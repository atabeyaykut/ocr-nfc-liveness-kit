package q4;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class d0 extends s3.a {
    public static final Parcelable.Creator<d0> CREATOR = new e0();

    /* renamed from: a, reason: collision with root package name */
    public final int f13343a;

    public d0(int r12) {
        this.f13343a = r12;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r42) {
        int r43 = s3.c.r(parcel, 20293);
        s3.c.j(parcel, 1, this.f13343a);
        s3.c.s(parcel, r43);
    }
}
