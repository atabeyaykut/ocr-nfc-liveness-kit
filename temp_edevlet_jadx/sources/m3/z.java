package m3;

import android.content.Context;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import z3.b;

/* loaded from: classes.dex */
public final class z extends s3.a {
    public static final Parcelable.Creator<z> CREATOR = new a0();

    /* renamed from: a, reason: collision with root package name */
    public final String f9979a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f9980b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f9981c;

    /* renamed from: d, reason: collision with root package name */
    public final Context f9982d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f9983e;

    public z(String str, boolean z10, boolean z11, IBinder iBinder, boolean z12) {
        this.f9979a = str;
        this.f9980b = z10;
        this.f9981c = z11;
        this.f9982d = (Context) z3.d.y0(b.a.x0(iBinder));
        this.f9983e = z12;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r42) {
        int r43 = s3.c.r(parcel, 20293);
        s3.c.n(parcel, 1, this.f9979a);
        s3.c.a(parcel, 2, this.f9980b);
        s3.c.a(parcel, 3, this.f9981c);
        s3.c.i(parcel, 4, new z3.d(this.f9982d));
        s3.c.a(parcel, 5, this.f9983e);
        s3.c.s(parcel, r43);
    }
}
