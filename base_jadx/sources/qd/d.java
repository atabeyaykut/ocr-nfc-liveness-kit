package qd;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import com.airbnb.epoxy.d0;

/* loaded from: classes2.dex */
public final class d extends Handler {

    /* renamed from: a, reason: collision with root package name */
    public final h f13569a;

    /* renamed from: b, reason: collision with root package name */
    public final int f13570b;

    /* renamed from: c, reason: collision with root package name */
    public final b f13571c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f13572d;

    public d(b bVar, Looper looper) {
        super(looper);
        this.f13571c = bVar;
        this.f13570b = 10;
        this.f13569a = new h();
    }

    public final void a(Object obj, m mVar) {
        g gVarA = g.a(obj, mVar);
        synchronized (this) {
            this.f13569a.a(gVarA);
            if (!this.f13572d) {
                this.f13572d = true;
                if (!sendMessage(obtainMessage())) {
                    throw new d0("Could not send handler message");
                }
            }
        }
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        try {
            long jUptimeMillis = SystemClock.uptimeMillis();
            do {
                g gVarB = this.f13569a.b();
                if (gVarB == null) {
                    synchronized (this) {
                        gVarB = this.f13569a.b();
                        if (gVarB == null) {
                            return;
                        }
                    }
                }
                this.f13571c.d(gVarB);
            } while (SystemClock.uptimeMillis() - jUptimeMillis < this.f13570b);
            if (!sendMessage(obtainMessage())) {
                throw new d0("Could not send handler message");
            }
            this.f13572d = true;
        } finally {
            this.f13572d = false;
        }
    }
}
