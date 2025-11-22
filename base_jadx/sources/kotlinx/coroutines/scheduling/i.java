package kotlinx.coroutines.scheduling;

import nc.c0;

/* loaded from: classes2.dex */
public final class i extends g {

    /* renamed from: c, reason: collision with root package name */
    public final Runnable f9214c;

    public i(Runnable runnable, long j10, h hVar) {
        super(j10, hVar);
        this.f9214c = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f9214c.run();
        } finally {
            this.f9213b.a();
        }
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("Task[");
        Runnable runnable = this.f9214c;
        sb2.append(runnable.getClass().getSimpleName());
        sb2.append('@');
        sb2.append(c0.c(runnable));
        sb2.append(", ");
        sb2.append(this.f9212a);
        sb2.append(", ");
        sb2.append(this.f9213b);
        sb2.append(']');
        return sb2.toString();
    }
}
