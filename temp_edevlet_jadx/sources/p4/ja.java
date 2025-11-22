package p4;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public final class ja extends s3.a {
    public static final Parcelable.Creator<ja> CREATOR = new ya();

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    public final String f12436a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    public final String f12437b;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    public final String f12438c;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    public final String f12439d;

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    public final String f12440e;

    @Nullable
    public final ia f;

    /* renamed from: g, reason: collision with root package name */
    @Nullable
    public final ia f12441g;

    public ja(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable ia iaVar, @Nullable ia iaVar2) {
        this.f12436a = str;
        this.f12437b = str2;
        this.f12438c = str3;
        this.f12439d = str4;
        this.f12440e = str5;
        this.f = iaVar;
        this.f12441g = iaVar2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r52) {
        int r02 = s3.c.r(parcel, 20293);
        s3.c.n(parcel, 1, this.f12436a);
        s3.c.n(parcel, 2, this.f12437b);
        s3.c.n(parcel, 3, this.f12438c);
        s3.c.n(parcel, 4, this.f12439d);
        s3.c.n(parcel, 5, this.f12440e);
        s3.c.m(parcel, 6, this.f, r52);
        s3.c.m(parcel, 7, this.f12441g, r52);
        s3.c.s(parcel, r02);
    }
}
