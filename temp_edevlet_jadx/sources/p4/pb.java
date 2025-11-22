package p4;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class pb extends s3.a {
    public static final Parcelable.Creator<pb> CREATOR = new c();

    /* renamed from: a, reason: collision with root package name */
    public final String f12605a;

    /* renamed from: b, reason: collision with root package name */
    public final String f12606b;

    public pb() {
    }

    public pb(String str, String str2) {
        this.f12605a = str;
        this.f12606b = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r42) {
        int r43 = s3.c.r(parcel, 20293);
        s3.c.n(parcel, 2, this.f12605a);
        s3.c.n(parcel, 3, this.f12606b);
        s3.c.s(parcel, r43);
    }
}
