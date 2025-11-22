package p4;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class eb extends s3.a {
    public static final Parcelable.Creator<eb> CREATOR = new b();

    /* renamed from: a, reason: collision with root package name */
    public final String f12337a;

    /* renamed from: b, reason: collision with root package name */
    public final String f12338b;

    public eb() {
    }

    public eb(String str, String str2) {
        this.f12337a = str;
        this.f12338b = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r42) {
        int r43 = s3.c.r(parcel, 20293);
        s3.c.n(parcel, 2, this.f12337a);
        s3.c.n(parcel, 3, this.f12338b);
        s3.c.s(parcel, r43);
    }
}
