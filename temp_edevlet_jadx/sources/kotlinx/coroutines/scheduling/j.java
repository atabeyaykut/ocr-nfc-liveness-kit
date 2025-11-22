package kotlinx.coroutines.scheduling;

import androidx.core.location.LocationRequestCompat;
import c5.v;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class j {

    /* renamed from: a, reason: collision with root package name */
    public static final long f9215a = v.I(100000, 1, LocationRequestCompat.PASSIVE_INTERVAL, "kotlinx.coroutines.scheduler.resolution.ns");

    /* renamed from: b, reason: collision with root package name */
    public static final int f9216b;

    /* renamed from: c, reason: collision with root package name */
    public static final int f9217c;

    /* renamed from: d, reason: collision with root package name */
    public static final long f9218d;

    /* renamed from: e, reason: collision with root package name */
    public static final e f9219e;
    public static final gd.d f;

    /* renamed from: g, reason: collision with root package name */
    public static final gd.d f9220g;

    static {
        int r02 = kotlinx.coroutines.internal.v.f9177a;
        if (r02 < 2) {
            r02 = 2;
        }
        f9216b = v.J("kotlinx.coroutines.scheduler.core.pool.size", r02, 1, 0, 8);
        f9217c = v.J("kotlinx.coroutines.scheduler.max.pool.size", 2097150, 0, 2097150, 4);
        f9218d = TimeUnit.SECONDS.toNanos(v.I(60L, 1L, LocationRequestCompat.PASSIVE_INTERVAL, "kotlinx.coroutines.scheduler.keep.alive.sec"));
        f9219e = e.f9210a;
        f = new gd.d(0);
        f9220g = new gd.d(1);
    }
}
