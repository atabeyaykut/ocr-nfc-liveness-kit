package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.os.WorkSource;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.location.LocationRequestCompat;
import c5.w;
import com.google.android.gms.common.internal.ReflectedParcelable;
import java.util.Arrays;
import m4.p;
import m4.x;
import org.checkerframework.dataflow.qual.Pure;
import r3.r;
import s3.c;
import w3.h;
import w4.q;

/* loaded from: classes.dex */
public final class LocationRequest extends s3.a implements ReflectedParcelable {

    @NonNull
    public static final Parcelable.Creator<LocationRequest> CREATOR = new q();

    /* renamed from: a, reason: collision with root package name */
    public final int f4135a;

    /* renamed from: b, reason: collision with root package name */
    public final long f4136b;

    /* renamed from: c, reason: collision with root package name */
    public final long f4137c;

    /* renamed from: d, reason: collision with root package name */
    public final long f4138d;

    /* renamed from: e, reason: collision with root package name */
    public final long f4139e;
    public final int f;

    /* renamed from: g, reason: collision with root package name */
    public final float f4140g;

    /* renamed from: h, reason: collision with root package name */
    public final boolean f4141h;

    /* renamed from: j, reason: collision with root package name */
    public final long f4142j;

    /* renamed from: k, reason: collision with root package name */
    public final int f4143k;

    /* renamed from: l, reason: collision with root package name */
    public final int f4144l;

    /* renamed from: m, reason: collision with root package name */
    @Nullable
    public final String f4145m;

    /* renamed from: n, reason: collision with root package name */
    public final boolean f4146n;

    /* renamed from: p, reason: collision with root package name */
    public final WorkSource f4147p;

    /* renamed from: q, reason: collision with root package name */
    @Nullable
    public final p f4148q;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final int f4149a;

        /* renamed from: b, reason: collision with root package name */
        public final long f4150b;

        /* renamed from: c, reason: collision with root package name */
        public long f4151c;

        /* renamed from: d, reason: collision with root package name */
        public final long f4152d;

        /* renamed from: e, reason: collision with root package name */
        public long f4153e;
        public final int f;

        /* renamed from: g, reason: collision with root package name */
        public final float f4154g;

        /* renamed from: h, reason: collision with root package name */
        public boolean f4155h;

        /* renamed from: i, reason: collision with root package name */
        public long f4156i;

        /* renamed from: j, reason: collision with root package name */
        public int f4157j;

        /* renamed from: k, reason: collision with root package name */
        public int f4158k;

        /* renamed from: l, reason: collision with root package name */
        @Nullable
        public String f4159l;

        /* renamed from: m, reason: collision with root package name */
        public boolean f4160m;

        /* renamed from: n, reason: collision with root package name */
        @Nullable
        public WorkSource f4161n;

        /* renamed from: o, reason: collision with root package name */
        @Nullable
        public final p f4162o;

        public a(int r52) {
            x5.a.y(r52);
            this.f4149a = r52;
            this.f4150b = 0L;
            this.f4151c = -1L;
            this.f4152d = 0L;
            this.f4153e = LocationRequestCompat.PASSIVE_INTERVAL;
            this.f = Integer.MAX_VALUE;
            this.f4154g = 0.0f;
            this.f4155h = true;
            this.f4156i = -1L;
            this.f4157j = 0;
            this.f4158k = 0;
            this.f4159l = null;
            this.f4160m = false;
            this.f4161n = null;
            this.f4162o = null;
        }

        public a(@NonNull LocationRequest locationRequest) {
            this.f4149a = locationRequest.f4135a;
            this.f4150b = locationRequest.f4136b;
            this.f4151c = locationRequest.f4137c;
            this.f4152d = locationRequest.f4138d;
            this.f4153e = locationRequest.f4139e;
            this.f = locationRequest.f;
            this.f4154g = locationRequest.f4140g;
            this.f4155h = locationRequest.f4141h;
            this.f4156i = locationRequest.f4142j;
            this.f4157j = locationRequest.f4143k;
            this.f4158k = locationRequest.f4144l;
            this.f4159l = locationRequest.f4145m;
            this.f4160m = locationRequest.f4146n;
            this.f4161n = locationRequest.f4147p;
            this.f4162o = locationRequest.f4148q;
        }

        @NonNull
        public final LocationRequest a() {
            int r22 = this.f4149a;
            long j10 = this.f4150b;
            long jMin = this.f4151c;
            if (jMin == -1) {
                jMin = j10;
            } else if (r22 != 105) {
                jMin = Math.min(jMin, j10);
            }
            long j11 = this.f4152d;
            long j12 = this.f4150b;
            long jMax = Math.max(j11, j12);
            long j13 = this.f4153e;
            int r15 = this.f;
            float f = this.f4154g;
            boolean z10 = this.f4155h;
            long j14 = this.f4156i;
            return new LocationRequest(r22, j10, jMin, jMax, LocationRequestCompat.PASSIVE_INTERVAL, j13, r15, f, z10, j14 == -1 ? j12 : j14, this.f4157j, this.f4158k, this.f4159l, this.f4160m, new WorkSource(this.f4161n), this.f4162o);
        }

        @NonNull
        public final void b(int r52) {
            int r22;
            boolean z10;
            if (r52 != 0 && r52 != 1) {
                r22 = 2;
                if (r52 != 2) {
                    r22 = r52;
                    z10 = false;
                }
                r.c(z10, "granularity %d must be a Granularity.GRANULARITY_* constant", Integer.valueOf(r22));
                this.f4157j = r52;
            }
            r22 = r52;
            z10 = true;
            r.c(z10, "granularity %d must be a Granularity.GRANULARITY_* constant", Integer.valueOf(r22));
            this.f4157j = r52;
        }

        @NonNull
        public final void c(int r6) {
            int r22;
            boolean z10;
            int r23;
            if (r6 == 0 || r6 == 1) {
                r22 = r6;
            } else {
                r22 = 2;
                if (r6 != 2) {
                    r23 = r6;
                    z10 = false;
                    r.c(z10, "throttle behavior %d must be a ThrottleBehavior.THROTTLE_* constant", Integer.valueOf(r6));
                    this.f4158k = r23;
                }
                r6 = 2;
            }
            z10 = true;
            int r42 = r22;
            r23 = r6;
            r6 = r42;
            r.c(z10, "throttle behavior %d must be a ThrottleBehavior.THROTTLE_* constant", Integer.valueOf(r6));
            this.f4158k = r23;
        }
    }

    @Deprecated
    public LocationRequest() {
        this(102, 3600000L, 600000L, 0L, LocationRequestCompat.PASSIVE_INTERVAL, LocationRequestCompat.PASSIVE_INTERVAL, Integer.MAX_VALUE, 0.0f, true, 3600000L, 0, 0, null, false, new WorkSource(), null);
    }

    public LocationRequest(int r82, long j10, long j11, long j12, long j13, long j14, int r19, float f, boolean z10, long j15, int r24, int r25, @Nullable String str, boolean z11, WorkSource workSource, @Nullable p pVar) {
        this.f4135a = r82;
        long j16 = j10;
        this.f4136b = j16;
        this.f4137c = j11;
        this.f4138d = j12;
        this.f4139e = j13 == LocationRequestCompat.PASSIVE_INTERVAL ? j14 : Math.min(Math.max(1L, j13 - SystemClock.elapsedRealtime()), j14);
        this.f = r19;
        this.f4140g = f;
        this.f4141h = z10;
        this.f4142j = j15 != -1 ? j15 : j16;
        this.f4143k = r24;
        this.f4144l = r25;
        this.f4145m = str;
        this.f4146n = z11;
        this.f4147p = workSource;
        this.f4148q = pVar;
    }

    public static String Z(long j10) {
        String string;
        if (j10 == LocationRequestCompat.PASSIVE_INTERVAL) {
            return "∞";
        }
        StringBuilder sb2 = x.f10030a;
        synchronized (sb2) {
            sb2.setLength(0);
            x.a(j10, sb2);
            string = sb2.toString();
        }
        return string;
    }

    @Pure
    public final boolean E() {
        long j10 = this.f4138d;
        return j10 > 0 && (j10 >> 1) >= this.f4136b;
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj instanceof LocationRequest) {
            LocationRequest locationRequest = (LocationRequest) obj;
            int r02 = locationRequest.f4135a;
            int r22 = this.f4135a;
            if (r22 == r02) {
                if (((r22 == 105) || this.f4136b == locationRequest.f4136b) && this.f4137c == locationRequest.f4137c && E() == locationRequest.E() && ((!E() || this.f4138d == locationRequest.f4138d) && this.f4139e == locationRequest.f4139e && this.f == locationRequest.f && this.f4140g == locationRequest.f4140g && this.f4141h == locationRequest.f4141h && this.f4143k == locationRequest.f4143k && this.f4144l == locationRequest.f4144l && this.f4146n == locationRequest.f4146n && this.f4147p.equals(locationRequest.f4147p) && r3.p.a(this.f4145m, locationRequest.f4145m) && r3.p.a(this.f4148q, locationRequest.f4148q))) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f4135a), Long.valueOf(this.f4136b), Long.valueOf(this.f4137c), this.f4147p});
    }

    @NonNull
    public final String toString() {
        String str;
        StringBuilder sbE = androidx.constraintlayout.core.a.e("Request[");
        int r32 = this.f4135a;
        boolean z10 = r32 == 105;
        long j10 = this.f4136b;
        if (!z10) {
            sbE.append("@");
            boolean zE = E();
            x.a(j10, sbE);
            if (zE) {
                sbE.append("/");
                x.a(this.f4138d, sbE);
            }
            sbE.append(" ");
        }
        sbE.append(x5.a.C(r32));
        boolean z11 = r32 == 105;
        long j11 = this.f4137c;
        if (z11 || j11 != j10) {
            sbE.append(", minUpdateInterval=");
            sbE.append(Z(j11));
        }
        float f = this.f4140g;
        if (f > 0.0d) {
            sbE.append(", minUpdateDistance=");
            sbE.append(f);
        }
        boolean z12 = r32 == 105;
        long j12 = this.f4142j;
        if (!z12 ? j12 != j10 : j12 != LocationRequestCompat.PASSIVE_INTERVAL) {
            sbE.append(", maxUpdateAge=");
            sbE.append(Z(j12));
        }
        long j13 = this.f4139e;
        if (j13 != LocationRequestCompat.PASSIVE_INTERVAL) {
            sbE.append(", duration=");
            x.a(j13, sbE);
        }
        int r22 = this.f;
        if (r22 != Integer.MAX_VALUE) {
            sbE.append(", maxUpdates=");
            sbE.append(r22);
        }
        int r12 = this.f4144l;
        if (r12 != 0) {
            sbE.append(", ");
            if (r12 == 0) {
                str = "THROTTLE_BACKGROUND";
            } else if (r12 == 1) {
                str = "THROTTLE_ALWAYS";
            } else {
                if (r12 != 2) {
                    throw new IllegalArgumentException();
                }
                str = "THROTTLE_NEVER";
            }
            sbE.append(str);
        }
        int r13 = this.f4143k;
        if (r13 != 0) {
            sbE.append(", ");
            sbE.append(w.R(r13));
        }
        if (this.f4141h) {
            sbE.append(", waitForAccurateLocation");
        }
        if (this.f4146n) {
            sbE.append(", bypass");
        }
        String str2 = this.f4145m;
        if (str2 != null) {
            sbE.append(", moduleId=");
            sbE.append(str2);
        }
        WorkSource workSource = this.f4147p;
        if (!h.b(workSource)) {
            sbE.append(", ");
            sbE.append(workSource);
        }
        p pVar = this.f4148q;
        if (pVar != null) {
            sbE.append(", impersonation=");
            sbE.append(pVar);
        }
        sbE.append(']');
        return sbE.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@NonNull Parcel parcel, int r6) {
        int r02 = c.r(parcel, 20293);
        c.j(parcel, 1, this.f4135a);
        c.l(parcel, 2, this.f4136b);
        c.l(parcel, 3, this.f4137c);
        c.j(parcel, 6, this.f);
        c.g(parcel, 7, this.f4140g);
        c.l(parcel, 8, this.f4138d);
        c.a(parcel, 9, this.f4141h);
        c.l(parcel, 10, this.f4139e);
        c.l(parcel, 11, this.f4142j);
        c.j(parcel, 12, this.f4143k);
        c.j(parcel, 13, this.f4144l);
        c.n(parcel, 14, this.f4145m);
        c.a(parcel, 15, this.f4146n);
        c.m(parcel, 16, this.f4147p, r6);
        c.m(parcel, 17, this.f4148q, r6);
        c.s(parcel, r02);
    }
}
