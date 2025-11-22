package r3;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public final class o extends s3.a {

    @NonNull
    public static final Parcelable.Creator<o> CREATOR = new h0();

    /* renamed from: a, reason: collision with root package name */
    public final int f14025a;

    /* renamed from: b, reason: collision with root package name */
    public final int f14026b;

    /* renamed from: c, reason: collision with root package name */
    public final int f14027c;

    /* renamed from: d, reason: collision with root package name */
    public final long f14028d;

    /* renamed from: e, reason: collision with root package name */
    public final long f14029e;

    @Nullable
    public final String f;

    /* renamed from: g, reason: collision with root package name */
    @Nullable
    public final String f14030g;

    /* renamed from: h, reason: collision with root package name */
    public final int f14031h;

    /* renamed from: j, reason: collision with root package name */
    public final int f14032j;

    public o(int r12, int r22, int r32, long j10, long j11, @Nullable String str, @Nullable String str2, int r10, int r11) {
        this.f14025a = r12;
        this.f14026b = r22;
        this.f14027c = r32;
        this.f14028d = j10;
        this.f14029e = j11;
        this.f = str;
        this.f14030g = str2;
        this.f14031h = r10;
        this.f14032j = r11;
    }

    @Deprecated
    public o(int r13, int r14, long j10, long j11) {
        this(r13, r14, 0, j10, j11, null, null, 0, -1);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@NonNull Parcel parcel, int r52) {
        int r53 = s3.c.r(parcel, 20293);
        s3.c.j(parcel, 1, this.f14025a);
        s3.c.j(parcel, 2, this.f14026b);
        s3.c.j(parcel, 3, this.f14027c);
        s3.c.l(parcel, 4, this.f14028d);
        s3.c.l(parcel, 5, this.f14029e);
        s3.c.n(parcel, 6, this.f);
        s3.c.n(parcel, 7, this.f14030g);
        s3.c.j(parcel, 8, this.f14031h);
        s3.c.j(parcel, 9, this.f14032j);
        s3.c.s(parcel, r53);
    }
}
