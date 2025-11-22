package z4;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Arrays;
import r3.p;
import r3.r;

/* loaded from: classes.dex */
public final class f extends s3.a {

    @NonNull
    public static final Parcelable.Creator<f> CREATOR = new m();

    /* renamed from: a, reason: collision with root package name */
    public final int f19842a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    public final Float f19843b;

    public f(int r42, @Nullable Float f) {
        boolean z10 = true;
        if (r42 != 1 && (f == null || f.floatValue() < 0.0f)) {
            z10 = false;
        }
        r.b(z10, "Invalid PatternItem: type=" + r42 + " length=" + f);
        this.f19842a = r42;
        this.f19843b = f;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return this.f19842a == fVar.f19842a && p.a(this.f19843b, fVar.f19843b);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f19842a), this.f19843b});
    }

    @NonNull
    public final String toString() {
        return "[PatternItem: type=" + this.f19842a + " length=" + this.f19843b + "]";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@NonNull Parcel parcel, int r42) {
        int r43 = s3.c.r(parcel, 20293);
        s3.c.j(parcel, 2, this.f19842a);
        s3.c.h(parcel, 3, this.f19843b);
        s3.c.s(parcel, r43);
    }
}
