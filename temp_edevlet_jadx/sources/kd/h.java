package kd;

import android.os.SystemClock;
import java.io.Serializable;

/* loaded from: classes2.dex */
public final class h implements Serializable {

    /* renamed from: c, reason: collision with root package name */
    public final a f8868c;

    /* renamed from: a, reason: collision with root package name */
    public boolean f8866a = false;

    /* renamed from: b, reason: collision with root package name */
    public long f8867b = 0;

    /* renamed from: d, reason: collision with root package name */
    public transient boolean f8869d = false;

    public h(a aVar) {
        this.f8868c = aVar;
    }

    public final boolean a() {
        if (this.f8866a && this.f8867b > 0) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            long j10 = this.f8867b;
            if (jElapsedRealtime - j10 > gd.e.A) {
                id.b.a("h", "We are newly outside the region because the lastSeenTime of %s was %s seconds ago, and that is over the expiration duration of %s", Long.valueOf(j10), Long.valueOf(SystemClock.elapsedRealtime() - this.f8867b), Long.valueOf(gd.e.A));
                this.f8866a = false;
                this.f8867b = 0L;
                return true;
            }
        }
        return false;
    }
}
