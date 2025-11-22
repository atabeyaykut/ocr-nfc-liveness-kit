package s4;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public final class y9 extends s3.a {
    public static final Parcelable.Creator<y9> CREATOR = new z9();

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    public final String f15258a;

    public y9(@Nullable String str) {
        this.f15258a = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r42) {
        int r43 = s3.c.r(parcel, 20293);
        s3.c.n(parcel, 2, this.f15258a);
        s3.c.s(parcel, r43);
    }
}
