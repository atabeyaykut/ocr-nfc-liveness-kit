package x0;

import x0.c;

/* loaded from: classes.dex */
public final class b implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ c f18934a;

    public b(c cVar) {
        this.f18934a = cVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        c cVar = this.f18934a;
        cVar.getClass();
        while (true) {
            try {
                cVar.b((c.a) cVar.f18943c.remove());
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
        }
    }
}
