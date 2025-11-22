package r3;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;

/* loaded from: classes.dex */
public final class t extends s3.a {

    @NonNull
    public static final Parcelable.Creator<t> CREATOR = new u0();

    /* renamed from: a, reason: collision with root package name */
    public final int f14041a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f14042b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f14043c;

    /* renamed from: d, reason: collision with root package name */
    public final int f14044d;

    /* renamed from: e, reason: collision with root package name */
    public final int f14045e;

    public t(int r12, boolean z10, boolean z11, int r42, int r52) {
        this.f14041a = r12;
        this.f14042b = z10;
        this.f14043c = z11;
        this.f14044d = r42;
        this.f14045e = r52;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@NonNull Parcel parcel, int r42) {
        int r43 = s3.c.r(parcel, 20293);
        s3.c.j(parcel, 1, this.f14041a);
        s3.c.a(parcel, 2, this.f14042b);
        s3.c.a(parcel, 3, this.f14043c);
        s3.c.j(parcel, 4, this.f14044d);
        s3.c.j(parcel, 5, this.f14045e);
        s3.c.s(parcel, r43);
    }
}
