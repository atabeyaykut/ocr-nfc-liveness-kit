package p4;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public final class ka extends s3.a {
    public static final Parcelable.Creator<ka> CREATOR = new za();

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    public final oa f12455a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    public final String f12456b;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    public final String f12457c;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    public final pa[] f12458d;

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    public final ma[] f12459e;

    @Nullable
    public final String[] f;

    /* renamed from: g, reason: collision with root package name */
    @Nullable
    public final ha[] f12460g;

    public ka(@Nullable oa oaVar, @Nullable String str, @Nullable String str2, @Nullable pa[] paVarArr, @Nullable ma[] maVarArr, @Nullable String[] strArr, @Nullable ha[] haVarArr) {
        this.f12455a = oaVar;
        this.f12456b = str;
        this.f12457c = str2;
        this.f12458d = paVarArr;
        this.f12459e = maVarArr;
        this.f = strArr;
        this.f12460g = haVarArr;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r52) {
        int r02 = s3.c.r(parcel, 20293);
        s3.c.m(parcel, 1, this.f12455a, r52);
        s3.c.n(parcel, 2, this.f12456b);
        s3.c.n(parcel, 3, this.f12457c);
        s3.c.p(parcel, 4, this.f12458d, r52);
        s3.c.p(parcel, 5, this.f12459e, r52);
        s3.c.o(parcel, 6, this.f);
        s3.c.p(parcel, 7, this.f12460g, r52);
        s3.c.s(parcel, r02);
    }
}
