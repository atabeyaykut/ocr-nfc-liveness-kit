package r3;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public final class f extends s3.a {

    @NonNull
    public static final Parcelable.Creator<f> CREATOR = new d1();

    /* renamed from: a, reason: collision with root package name */
    public final t f13956a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f13957b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f13958c;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    public final int[] f13959d;

    /* renamed from: e, reason: collision with root package name */
    public final int f13960e;

    @Nullable
    public final int[] f;

    public f(@NonNull t tVar, boolean z10, boolean z11, @Nullable int[] r42, int r52, @Nullable int[] r6) {
        this.f13956a = tVar;
        this.f13957b = z10;
        this.f13958c = z11;
        this.f13959d = r42;
        this.f13960e = r52;
        this.f = r6;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@NonNull Parcel parcel, int r52) {
        int r02 = s3.c.r(parcel, 20293);
        s3.c.m(parcel, 1, this.f13956a, r52);
        s3.c.a(parcel, 2, this.f13957b);
        s3.c.a(parcel, 3, this.f13958c);
        s3.c.k(parcel, 4, this.f13959d);
        s3.c.j(parcel, 5, this.f13960e);
        s3.c.k(parcel, 6, this.f);
        s3.c.s(parcel, r02);
    }
}
