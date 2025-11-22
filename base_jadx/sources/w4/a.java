package w4;

import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.WorkSource;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.location.LocationRequestCompat;
import c5.w;
import java.util.Arrays;
import m4.x;

/* loaded from: classes.dex */
public final class a extends s3.a {

    @NonNull
    public static final Parcelable.Creator<a> CREATOR = new g();

    /* renamed from: a, reason: collision with root package name */
    public final long f18681a;

    /* renamed from: b, reason: collision with root package name */
    public final int f18682b;

    /* renamed from: c, reason: collision with root package name */
    public final int f18683c;

    /* renamed from: d, reason: collision with root package name */
    public final long f18684d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f18685e;
    public final int f;

    /* renamed from: g, reason: collision with root package name */
    @Nullable
    public final String f18686g;

    /* renamed from: h, reason: collision with root package name */
    public final WorkSource f18687h;

    /* renamed from: j, reason: collision with root package name */
    @Nullable
    public final m4.p f18688j;

    public a(long j10, int r6, int r72, long j11, boolean z10, int r11, @Nullable String str, WorkSource workSource, @Nullable m4.p pVar) {
        boolean z11 = true;
        if (Build.VERSION.SDK_INT >= 30 && str != null) {
            z11 = false;
        }
        r3.r.a(z11);
        this.f18681a = j10;
        this.f18682b = r6;
        this.f18683c = r72;
        this.f18684d = j11;
        this.f18685e = z10;
        this.f = r11;
        this.f18686g = str;
        this.f18687h = workSource;
        this.f18688j = pVar;
    }

    public final boolean equals(@Nullable Object obj) {
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f18681a == aVar.f18681a && this.f18682b == aVar.f18682b && this.f18683c == aVar.f18683c && this.f18684d == aVar.f18684d && this.f18685e == aVar.f18685e && this.f == aVar.f && r3.p.a(this.f18686g, aVar.f18686g) && r3.p.a(this.f18687h, aVar.f18687h) && r3.p.a(this.f18688j, aVar.f18688j);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.f18681a), Integer.valueOf(this.f18682b), Integer.valueOf(this.f18683c), Long.valueOf(this.f18684d)});
    }

    @NonNull
    public final String toString() {
        String str;
        StringBuilder sbE = androidx.constraintlayout.core.a.e("CurrentLocationRequest[");
        sbE.append(x5.a.C(this.f18683c));
        long j10 = this.f18681a;
        if (j10 != LocationRequestCompat.PASSIVE_INTERVAL) {
            sbE.append(", maxAge=");
            x.a(j10, sbE);
        }
        long j11 = this.f18684d;
        if (j11 != LocationRequestCompat.PASSIVE_INTERVAL) {
            sbE.append(", duration=");
            sbE.append(j11);
            sbE.append("ms");
        }
        int r22 = this.f18682b;
        if (r22 != 0) {
            sbE.append(", ");
            sbE.append(w.R(r22));
        }
        if (this.f18685e) {
            sbE.append(", bypass");
        }
        int r23 = this.f;
        if (r23 != 0) {
            sbE.append(", ");
            if (r23 == 0) {
                str = "THROTTLE_BACKGROUND";
            } else if (r23 == 1) {
                str = "THROTTLE_ALWAYS";
            } else {
                if (r23 != 2) {
                    throw new IllegalArgumentException();
                }
                str = "THROTTLE_NEVER";
            }
            sbE.append(str);
        }
        String str2 = this.f18686g;
        if (str2 != null) {
            sbE.append(", moduleId=");
            sbE.append(str2);
        }
        WorkSource workSource = this.f18687h;
        if (!w3.h.b(workSource)) {
            sbE.append(", workSource=");
            sbE.append(workSource);
        }
        m4.p pVar = this.f18688j;
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
        s3.c.l(parcel, 1, this.f18681a);
        s3.c.j(parcel, 2, this.f18682b);
        s3.c.j(parcel, 3, this.f18683c);
        s3.c.l(parcel, 4, this.f18684d);
        s3.c.a(parcel, 5, this.f18685e);
        s3.c.m(parcel, 6, this.f18687h, r6);
        s3.c.j(parcel, 7, this.f);
        s3.c.n(parcel, 8, this.f18686g);
        s3.c.m(parcel, 9, this.f18688j, r6);
        s3.c.s(parcel, r02);
    }
}
