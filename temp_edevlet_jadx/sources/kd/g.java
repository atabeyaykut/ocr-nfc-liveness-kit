package kd;

import android.os.SystemClock;
import java.io.Serializable;

/* loaded from: classes2.dex */
public final class g implements Serializable {

    /* renamed from: c, reason: collision with root package name */
    public gd.c f8862c;

    /* renamed from: a, reason: collision with root package name */
    public boolean f8860a = true;

    /* renamed from: b, reason: collision with root package name */
    public long f8861b = 0;

    /* renamed from: d, reason: collision with root package name */
    public transient i f8863d = null;

    /* renamed from: e, reason: collision with root package name */
    public int f8864e = 0;
    public long f = 0;

    /* renamed from: g, reason: collision with root package name */
    public long f8865g = 0;

    public g(gd.c cVar) {
        c(cVar);
    }

    public final void a() {
        if (b().a()) {
            id.b.a("RangedBeacon", "No measurements available to calculate running average", new Object[0]);
        } else {
            double dB = b().b();
            gd.c cVar = this.f8862c;
            cVar.f6625k = Double.valueOf(dB);
            cVar.f6620d = null;
            this.f8862c.f6623h = b().d();
            id.b.a("RangedBeacon", "calculated new runningAverageRssi: %s", Double.valueOf(dB));
        }
        gd.c cVar2 = this.f8862c;
        cVar2.f6624j = this.f8864e;
        cVar2.f6633t = this.f;
        cVar2.f6634v = this.f8865g;
        this.f8864e = 0;
        this.f = 0L;
        this.f8865g = 0L;
    }

    public final i b() {
        if (this.f8863d == null) {
            try {
                gd.e eVar = gd.e.f6637x;
                this.f8863d = (i) j.class.getConstructors()[0].newInstance(new Object[0]);
            } catch (Exception unused) {
                gd.e eVar2 = gd.e.f6637x;
                id.b.c("RangedBeacon", "Could not construct RssiFilterImplClass %s", j.class.getName());
            }
        }
        return this.f8863d;
    }

    public final void c(gd.c cVar) {
        this.f8864e++;
        this.f8862c = cVar;
        if (this.f == 0) {
            this.f = cVar.f6633t;
        }
        this.f8865g = cVar.f6634v;
        Integer numValueOf = Integer.valueOf(cVar.f6621e);
        if (numValueOf.intValue() != 127) {
            this.f8860a = true;
            this.f8861b = SystemClock.elapsedRealtime();
            b().c(numValueOf);
        }
    }
}
