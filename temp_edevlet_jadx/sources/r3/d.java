package r3;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public final class d extends s3.a {

    @NonNull
    public static final Parcelable.Creator<d> CREATOR = new x();

    /* renamed from: a, reason: collision with root package name */
    public final int f13942a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    public final String f13943b;

    public d(int r12, @Nullable String str) {
        this.f13942a = r12;
        this.f13943b = str;
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return dVar.f13942a == this.f13942a && p.a(dVar.f13943b, this.f13943b);
    }

    public final int hashCode() {
        return this.f13942a;
    }

    @NonNull
    public final String toString() {
        return this.f13942a + ":" + this.f13943b;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@NonNull Parcel parcel, int r42) {
        int r43 = s3.c.r(parcel, 20293);
        s3.c.j(parcel, 1, this.f13942a);
        s3.c.n(parcel, 2, this.f13943b);
        s3.c.s(parcel, r43);
    }
}
