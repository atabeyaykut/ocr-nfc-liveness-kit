package p4;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public final class ia extends s3.a {
    public static final Parcelable.Creator<ia> CREATOR = new xa();

    /* renamed from: a, reason: collision with root package name */
    public final int f12416a;

    /* renamed from: b, reason: collision with root package name */
    public final int f12417b;

    /* renamed from: c, reason: collision with root package name */
    public final int f12418c;

    /* renamed from: d, reason: collision with root package name */
    public final int f12419d;

    /* renamed from: e, reason: collision with root package name */
    public final int f12420e;
    public final int f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f12421g;

    /* renamed from: h, reason: collision with root package name */
    @Nullable
    public final String f12422h;

    public ia(@Nullable String str, int r22, int r32, int r42, int r52, boolean z10, int r72, int r82) {
        this.f12416a = r22;
        this.f12417b = r32;
        this.f12418c = r42;
        this.f12419d = r52;
        this.f12420e = r72;
        this.f = r82;
        this.f12421g = z10;
        this.f12422h = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r42) {
        int r43 = s3.c.r(parcel, 20293);
        s3.c.j(parcel, 1, this.f12416a);
        s3.c.j(parcel, 2, this.f12417b);
        s3.c.j(parcel, 3, this.f12418c);
        s3.c.j(parcel, 4, this.f12419d);
        s3.c.j(parcel, 5, this.f12420e);
        s3.c.j(parcel, 6, this.f);
        s3.c.a(parcel, 7, this.f12421g);
        s3.c.n(parcel, 8, this.f12422h);
        s3.c.s(parcel, r43);
    }
}
