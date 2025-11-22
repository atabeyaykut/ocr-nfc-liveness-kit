package u;

import c5.w;
import java.io.IOException;
import rc.b0;

/* loaded from: classes.dex */
public final class d implements rc.e, x9.l<Throwable, l9.m> {

    /* renamed from: a, reason: collision with root package name */
    public final rc.d f17730a;

    /* renamed from: b, reason: collision with root package name */
    public final nc.i<b0> f17731b;

    public d(rc.d dVar, nc.j jVar) {
        this.f17730a = dVar;
        this.f17731b = jVar;
    }

    @Override // rc.e
    public final void a(vc.e eVar, IOException iOException) {
        if (eVar.f18509n) {
            return;
        }
        this.f17731b.resumeWith(w.j(iOException));
    }

    @Override // rc.e
    public final void b(b0 b0Var) {
        this.f17731b.resumeWith(b0Var);
    }

    @Override // x9.l
    public final l9.m invoke(Throwable th2) {
        try {
            this.f17730a.cancel();
        } catch (Throwable unused) {
        }
        return l9.m.f9594a;
    }
}
