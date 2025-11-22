package g5;

import android.os.PowerManager;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.core.location.LocationRequestCompat;
import c5.w;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import l3.l;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: n, reason: collision with root package name */
    public static final long f5808n = TimeUnit.DAYS.toMillis(366);

    /* renamed from: o, reason: collision with root package name */
    public static volatile ScheduledExecutorService f5809o = null;

    /* renamed from: p, reason: collision with root package name */
    public static final Object f5810p = new Object();

    /* renamed from: a, reason: collision with root package name */
    public final Object f5811a;

    /* renamed from: b, reason: collision with root package name */
    @GuardedBy("acquireReleaseLock")
    public final PowerManager.WakeLock f5812b;

    /* renamed from: c, reason: collision with root package name */
    @GuardedBy("acquireReleaseLock")
    public int f5813c;

    /* renamed from: d, reason: collision with root package name */
    @GuardedBy("acquireReleaseLock")
    public ScheduledFuture f5814d;

    /* renamed from: e, reason: collision with root package name */
    @GuardedBy("acquireReleaseLock")
    public long f5815e;

    @GuardedBy("acquireReleaseLock")
    public final HashSet f;

    /* renamed from: g, reason: collision with root package name */
    @GuardedBy("acquireReleaseLock")
    public boolean f5816g;

    /* renamed from: h, reason: collision with root package name */
    @GuardedBy("acquireReleaseLock")
    public u4.a f5817h;

    /* renamed from: i, reason: collision with root package name */
    public final w f5818i;

    /* renamed from: j, reason: collision with root package name */
    public final String f5819j;

    /* renamed from: k, reason: collision with root package name */
    @GuardedBy("acquireReleaseLock")
    public final HashMap f5820k;

    /* renamed from: l, reason: collision with root package name */
    public final AtomicInteger f5821l;

    /* renamed from: m, reason: collision with root package name */
    public final ScheduledExecutorService f5822m;

    /* JADX WARN: Removed duplicated region for block: B:18:0x008f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public a(@androidx.annotation.NonNull android.content.Context r8) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        /*
            Method dump skipped, instructions count: 270
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: g5.a.<init>(android.content.Context):void");
    }

    public final void a(long j10) {
        this.f5821l.incrementAndGet();
        long j11 = f5808n;
        long j12 = LocationRequestCompat.PASSIVE_INTERVAL;
        long jMax = Math.max(Math.min(LocationRequestCompat.PASSIVE_INTERVAL, j11), 1L);
        if (j10 > 0) {
            jMax = Math.min(j10, jMax);
        }
        synchronized (this.f5811a) {
            try {
                if (!b()) {
                    this.f5817h = u4.a.f17874a;
                    this.f5812b.acquire();
                    this.f5818i.getClass();
                    SystemClock.elapsedRealtime();
                }
                this.f5813c++;
                if (this.f5816g) {
                    TextUtils.isEmpty(null);
                }
                b bVar = (b) this.f5820k.get(null);
                if (bVar == null) {
                    bVar = new b(0);
                    this.f5820k.put(null, bVar);
                }
                bVar.f5823a++;
                this.f5818i.getClass();
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                if (LocationRequestCompat.PASSIVE_INTERVAL - jElapsedRealtime > jMax) {
                    j12 = jElapsedRealtime + jMax;
                }
                if (j12 > this.f5815e) {
                    this.f5815e = j12;
                    ScheduledFuture scheduledFuture = this.f5814d;
                    if (scheduledFuture != null) {
                        scheduledFuture.cancel(false);
                    }
                    this.f5814d = this.f5822m.schedule(new l(4, this), jMax, TimeUnit.MILLISECONDS);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final boolean b() {
        boolean z10;
        synchronized (this.f5811a) {
            z10 = this.f5813c > 0;
        }
        return z10;
    }

    public final void c() {
        if (this.f5821l.decrementAndGet() < 0) {
            Log.e("WakeLock", String.valueOf(this.f5819j).concat(" release without a matched acquire!"));
        }
        synchronized (this.f5811a) {
            try {
                if (this.f5816g) {
                    TextUtils.isEmpty(null);
                }
                if (this.f5820k.containsKey(null)) {
                    b bVar = (b) this.f5820k.get(null);
                    if (bVar != null) {
                        int r32 = bVar.f5823a - 1;
                        bVar.f5823a = r32;
                        if (r32 == 0) {
                            this.f5820k.remove(null);
                        }
                    }
                } else {
                    Log.w("WakeLock", String.valueOf(this.f5819j).concat(" counter does not exist"));
                }
                e();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @GuardedBy("acquireReleaseLock")
    public final void d() {
        HashSet hashSet = this.f;
        if (hashSet.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList(hashSet);
        hashSet.clear();
        if (arrayList.size() <= 0) {
            return;
        }
        throw null;
    }

    public final void e() {
        synchronized (this.f5811a) {
            if (b()) {
                if (this.f5816g) {
                    int r12 = this.f5813c - 1;
                    this.f5813c = r12;
                    if (r12 > 0) {
                        return;
                    }
                } else {
                    this.f5813c = 0;
                }
                d();
                Iterator it = this.f5820k.values().iterator();
                while (it.hasNext()) {
                    ((b) it.next()).f5823a = 0;
                }
                this.f5820k.clear();
                ScheduledFuture scheduledFuture = this.f5814d;
                if (scheduledFuture != null) {
                    scheduledFuture.cancel(false);
                    this.f5814d = null;
                    this.f5815e = 0L;
                }
                if (this.f5812b.isHeld()) {
                    try {
                        try {
                            this.f5812b.release();
                        } catch (RuntimeException e10) {
                            if (!e10.getClass().equals(RuntimeException.class)) {
                                throw e10;
                            }
                            Log.e("WakeLock", String.valueOf(this.f5819j).concat(" failed to release!"), e10);
                        }
                        if (this.f5817h != null) {
                        }
                    } finally {
                        if (this.f5817h != null) {
                            this.f5817h = null;
                        }
                    }
                } else {
                    Log.e("WakeLock", String.valueOf(this.f5819j).concat(" should be held!"));
                }
            }
        }
    }
}
