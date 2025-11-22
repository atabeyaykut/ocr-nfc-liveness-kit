package p4;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public final class ra extends s3.a {
    public static final Parcelable.Creator<ra> CREATOR = new lb();

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    public final String f12647a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    public final String f12648b;

    public ra(@Nullable String str, @Nullable String str2) {
        this.f12647a = str;
        this.f12648b = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r42) {
        int r43 = s3.c.r(parcel, 20293);
        s3.c.n(parcel, 1, this.f12647a);
        s3.c.n(parcel, 2, this.f12648b);
        s3.c.s(parcel, r43);
    }
}
