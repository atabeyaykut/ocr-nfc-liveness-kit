package w4;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import java.util.Arrays;

@Deprecated
/* loaded from: classes.dex */
public final class e extends s3.a {
    public static final Parcelable.Creator<e> CREATOR = new f();

    /* renamed from: a, reason: collision with root package name */
    public final int f18695a;

    /* renamed from: b, reason: collision with root package name */
    public final int f18696b;

    /* renamed from: c, reason: collision with root package name */
    public final long f18697c;

    /* renamed from: d, reason: collision with root package name */
    public final long f18698d;

    public e(int r12, int r22, long j10, long j11) {
        this.f18695a = r12;
        this.f18696b = r22;
        this.f18697c = j10;
        this.f18698d = j11;
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj instanceof e) {
            e eVar = (e) obj;
            if (this.f18695a == eVar.f18695a && this.f18696b == eVar.f18696b && this.f18697c == eVar.f18697c && this.f18698d == eVar.f18698d) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f18696b), Integer.valueOf(this.f18695a), Long.valueOf(this.f18698d), Long.valueOf(this.f18697c)});
    }

    public final String toString() {
        return "NetworkLocationStatus: Wifi status: " + this.f18695a + " Cell status: " + this.f18696b + " elapsed time NS: " + this.f18698d + " system time ms: " + this.f18697c;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r52) {
        int r53 = s3.c.r(parcel, 20293);
        s3.c.j(parcel, 1, this.f18695a);
        s3.c.j(parcel, 2, this.f18696b);
        s3.c.l(parcel, 3, this.f18697c);
        s3.c.l(parcel, 4, this.f18698d);
        s3.c.s(parcel, r53);
    }
}
