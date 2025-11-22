package q4;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public final class y extends s3.a {
    public static final Parcelable.Creator<y> CREATOR = new h();

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    public final String f13398a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    public final String f13399b;

    public y(@Nullable String str, @Nullable String str2) {
        this.f13398a = str;
        this.f13399b = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r42) {
        int r43 = s3.c.r(parcel, 20293);
        s3.c.n(parcel, 1, this.f13398a);
        s3.c.n(parcel, 2, this.f13399b);
        s3.c.s(parcel, r43);
    }
}
