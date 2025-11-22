package w4;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.location.LocationRequestCompat;
import c5.w;
import java.util.Arrays;
import m4.x;

/* loaded from: classes.dex */
public final class b extends s3.a {

    @NonNull
    public static final Parcelable.Creator<b> CREATOR = new o();

    /* renamed from: a, reason: collision with root package name */
    public final long f18689a;

    /* renamed from: b, reason: collision with root package name */
    public final int f18690b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f18691c;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    public final String f18692d;

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    public final m4.p f18693e;

    public b(long j10, int r32, boolean z10, @Nullable String str, @Nullable m4.p pVar) {
        this.f18689a = j10;
        this.f18690b = r32;
        this.f18691c = z10;
        this.f18692d = str;
        this.f18693e = pVar;
    }

    public final boolean equals(@Nullable Object obj) {
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f18689a == bVar.f18689a && this.f18690b == bVar.f18690b && this.f18691c == bVar.f18691c && r3.p.a(this.f18692d, bVar.f18692d) && r3.p.a(this.f18693e, bVar.f18693e);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.f18689a), Integer.valueOf(this.f18690b), Boolean.valueOf(this.f18691c)});
    }

    @NonNull
    public final String toString() {
        StringBuilder sbE = androidx.constraintlayout.core.a.e("LastLocationRequest[");
        long j10 = this.f18689a;
        if (j10 != LocationRequestCompat.PASSIVE_INTERVAL) {
            sbE.append("maxAge=");
            x.a(j10, sbE);
        }
        int r12 = this.f18690b;
        if (r12 != 0) {
            sbE.append(", ");
            sbE.append(w.R(r12));
        }
        if (this.f18691c) {
            sbE.append(", bypass");
        }
        String str = this.f18692d;
        if (str != null) {
            sbE.append(", moduleId=");
            sbE.append(str);
        }
        m4.p pVar = this.f18693e;
        if (pVar != null) {
            sbE.append(", impersonation=");
            sbE.append(pVar);
        }
        sbE.append(']');
        return sbE.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@NonNull Parcel parcel, int r6) {
        int r02 = s3.c.r(parcel, 20293);
        s3.c.l(parcel, 1, this.f18689a);
        s3.c.j(parcel, 2, this.f18690b);
        s3.c.a(parcel, 3, this.f18691c);
        s3.c.n(parcel, 4, this.f18692d);
        s3.c.m(parcel, 5, this.f18693e, r6);
        s3.c.s(parcel, r02);
    }
}
