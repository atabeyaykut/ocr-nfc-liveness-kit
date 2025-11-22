package p4;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public final class qa extends s3.a {
    public static final Parcelable.Creator<qa> CREATOR = new kb();

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    public final String f12626a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    public final String f12627b;

    public qa(@Nullable String str, @Nullable String str2) {
        this.f12626a = str;
        this.f12627b = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r42) {
        int r43 = s3.c.r(parcel, 20293);
        s3.c.n(parcel, 1, this.f12626a);
        s3.c.n(parcel, 2, this.f12627b);
        s3.c.s(parcel, r43);
    }
}
