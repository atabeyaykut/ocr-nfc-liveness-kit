package p4;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class j9 extends s3.a {
    public static final Parcelable.Creator<j9> CREATOR = new zb();

    /* renamed from: a, reason: collision with root package name */
    public final String f12430a;

    /* renamed from: b, reason: collision with root package name */
    public final String f12431b;

    /* renamed from: c, reason: collision with root package name */
    public final String f12432c;

    /* renamed from: d, reason: collision with root package name */
    public final String f12433d;

    /* renamed from: e, reason: collision with root package name */
    public final String f12434e;
    public final String f;

    /* renamed from: g, reason: collision with root package name */
    public final String f12435g;

    public j9() {
    }

    public j9(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        this.f12430a = str;
        this.f12431b = str2;
        this.f12432c = str3;
        this.f12433d = str4;
        this.f12434e = str5;
        this.f = str6;
        this.f12435g = str7;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r42) {
        int r43 = s3.c.r(parcel, 20293);
        s3.c.n(parcel, 2, this.f12430a);
        s3.c.n(parcel, 3, this.f12431b);
        s3.c.n(parcel, 4, this.f12432c);
        s3.c.n(parcel, 5, this.f12433d);
        s3.c.n(parcel, 6, this.f12434e);
        s3.c.n(parcel, 7, this.f);
        s3.c.n(parcel, 8, this.f12435g);
        s3.c.s(parcel, r43);
    }
}
