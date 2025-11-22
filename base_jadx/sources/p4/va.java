package p4;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class va extends s3.a {
    public static final Parcelable.Creator<va> CREATOR = new wa();

    /* renamed from: a, reason: collision with root package name */
    public final int f12755a;

    public va(int r12) {
        this.f12755a = r12;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r42) {
        int r43 = s3.c.r(parcel, 20293);
        s3.c.j(parcel, 1, this.f12755a);
        s3.c.s(parcel, r43);
    }
}
