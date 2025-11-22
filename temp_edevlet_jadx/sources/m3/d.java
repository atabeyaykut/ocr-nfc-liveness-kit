package m3;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Arrays;
import r3.p;

/* loaded from: classes.dex */
public final class d extends s3.a {

    @NonNull
    public static final Parcelable.Creator<d> CREATOR = new o();

    /* renamed from: a, reason: collision with root package name */
    public final String f9936a;

    /* renamed from: b, reason: collision with root package name */
    @Deprecated
    public final int f9937b;

    /* renamed from: c, reason: collision with root package name */
    public final long f9938c;

    public d(@NonNull String str, long j10) {
        this.f9936a = str;
        this.f9938c = j10;
        this.f9937b = -1;
    }

    public d(@NonNull String str, long j10, int r42) {
        this.f9936a = str;
        this.f9937b = r42;
        this.f9938c = j10;
    }

    public final long E() {
        long j10 = this.f9938c;
        return j10 == -1 ? this.f9937b : j10;
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj instanceof d) {
            d dVar = (d) obj;
            String str = this.f9936a;
            if (((str != null && str.equals(dVar.f9936a)) || (str == null && dVar.f9936a == null)) && E() == dVar.E()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f9936a, Long.valueOf(E())});
    }

    @NonNull
    public final String toString() {
        p.a aVar = new p.a(this);
        aVar.a(this.f9936a, "name");
        aVar.a(Long.valueOf(E()), "version");
        return aVar.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@NonNull Parcel parcel, int r52) {
        int r53 = s3.c.r(parcel, 20293);
        s3.c.n(parcel, 1, this.f9936a);
        s3.c.j(parcel, 2, this.f9937b);
        s3.c.l(parcel, 3, E());
        s3.c.s(parcel, r53);
    }
}
