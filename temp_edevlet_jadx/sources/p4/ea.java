package p4;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class ea extends s3.a {
    public static final Parcelable.Creator<ea> CREATOR = new ac();

    /* renamed from: a, reason: collision with root package name */
    public final int f12335a;

    /* renamed from: b, reason: collision with root package name */
    public final String f12336b;

    public ea() {
    }

    public ea(int r12, String str) {
        this.f12335a = r12;
        this.f12336b = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r42) {
        int r43 = s3.c.r(parcel, 20293);
        s3.c.j(parcel, 2, this.f12335a);
        s3.c.n(parcel, 3, this.f12336b);
        s3.c.s(parcel, r43);
    }
}
