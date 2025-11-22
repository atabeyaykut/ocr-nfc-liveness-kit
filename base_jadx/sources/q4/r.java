package q4;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public final class r extends s3.a {
    public static final Parcelable.Creator<r> CREATOR = new g0();

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    public final String f13359a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    public final String f13360b;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    public final String f13361c;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    public final String f13362d;

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    public final String f13363e;

    @Nullable
    public final q f;

    /* renamed from: g, reason: collision with root package name */
    @Nullable
    public final q f13364g;

    public r(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable q qVar, @Nullable q qVar2) {
        this.f13359a = str;
        this.f13360b = str2;
        this.f13361c = str3;
        this.f13362d = str4;
        this.f13363e = str5;
        this.f = qVar;
        this.f13364g = qVar2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r52) {
        int r02 = s3.c.r(parcel, 20293);
        s3.c.n(parcel, 1, this.f13359a);
        s3.c.n(parcel, 2, this.f13360b);
        s3.c.n(parcel, 3, this.f13361c);
        s3.c.n(parcel, 4, this.f13362d);
        s3.c.n(parcel, 5, this.f13363e);
        s3.c.m(parcel, 6, this.f, r52);
        s3.c.m(parcel, 7, this.f13364g, r52);
        s3.c.s(parcel, r02);
    }
}
