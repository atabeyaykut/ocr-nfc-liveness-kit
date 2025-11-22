package q4;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public final class q extends s3.a {
    public static final Parcelable.Creator<q> CREATOR = new f0();

    /* renamed from: a, reason: collision with root package name */
    public final int f13352a;

    /* renamed from: b, reason: collision with root package name */
    public final int f13353b;

    /* renamed from: c, reason: collision with root package name */
    public final int f13354c;

    /* renamed from: d, reason: collision with root package name */
    public final int f13355d;

    /* renamed from: e, reason: collision with root package name */
    public final int f13356e;
    public final int f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f13357g;

    /* renamed from: h, reason: collision with root package name */
    @Nullable
    public final String f13358h;

    public q(@Nullable String str, int r22, int r32, int r42, int r52, boolean z10, int r72, int r82) {
        this.f13352a = r22;
        this.f13353b = r32;
        this.f13354c = r42;
        this.f13355d = r52;
        this.f13356e = r72;
        this.f = r82;
        this.f13357g = z10;
        this.f13358h = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r42) {
        int r43 = s3.c.r(parcel, 20293);
        s3.c.j(parcel, 1, this.f13352a);
        s3.c.j(parcel, 2, this.f13353b);
        s3.c.j(parcel, 3, this.f13354c);
        s3.c.j(parcel, 4, this.f13355d);
        s3.c.j(parcel, 5, this.f13356e);
        s3.c.j(parcel, 6, this.f);
        s3.c.a(parcel, 7, this.f13357g);
        s3.c.n(parcel, 8, this.f13358h);
        s3.c.s(parcel, r43);
    }
}
