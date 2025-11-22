package qd;

import java.util.logging.Level;

/* loaded from: classes2.dex */
public final class a implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final h f13541a = new h();

    /* renamed from: b, reason: collision with root package name */
    public final b f13542b;

    /* renamed from: c, reason: collision with root package name */
    public volatile boolean f13543c;

    public a(b bVar) {
        this.f13542b = bVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        while (true) {
            try {
                g gVarC = this.f13541a.c();
                if (gVarC == null) {
                    synchronized (this) {
                        gVarC = this.f13541a.b();
                        if (gVarC == null) {
                            return;
                        }
                    }
                }
                this.f13542b.d(gVarC);
            } catch (InterruptedException e10) {
                this.f13542b.f13561p.b(Level.WARNING, Thread.currentThread().getName() + " was interruppted", e10);
                return;
            } finally {
                this.f13543c = false;
            }
        }
    }
}
