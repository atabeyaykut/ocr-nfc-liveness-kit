package k3;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class d extends s3.a {
    public static final Parcelable.Creator<d> CREATOR = new e();

    /* renamed from: a, reason: collision with root package name */
    public final boolean f8713a;

    /* renamed from: b, reason: collision with root package name */
    public final long f8714b;

    /* renamed from: c, reason: collision with root package name */
    public final long f8715c;

    public d(long j10, long j11, boolean z10) {
        this.f8713a = z10;
        this.f8714b = j10;
        this.f8715c = j11;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof d) {
            d dVar = (d) obj;
            if (this.f8713a == dVar.f8713a && this.f8714b == dVar.f8714b && this.f8715c == dVar.f8715c) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Boolean.valueOf(this.f8713a), Long.valueOf(this.f8714b), Long.valueOf(this.f8715c)});
    }

    public final String toString() {
        return "CollectForDebugParcelable[skipPersistentStorage: " + this.f8713a + ",collectForDebugStartTimeMillis: " + this.f8714b + ",collectForDebugExpiryTimeMillis: " + this.f8715c + "]";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r52) {
        int r53 = s3.c.r(parcel, 20293);
        s3.c.a(parcel, 1, this.f8713a);
        s3.c.l(parcel, 2, this.f8715c);
        s3.c.l(parcel, 3, this.f8714b);
        s3.c.s(parcel, r53);
    }
}
