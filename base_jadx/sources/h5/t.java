package h5;

import androidx.annotation.NonNull;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class t implements v, g, f, d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6861a;

    /* renamed from: b, reason: collision with root package name */
    public final Executor f6862b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f6863c;

    /* renamed from: d, reason: collision with root package name */
    public final Object f6864d;

    public t(x xVar, d dVar) {
        this.f6861a = 0;
        this.f6863c = new Object();
        this.f6862b = xVar;
        this.f6864d = dVar;
    }

    @Override // h5.d
    public final void a() {
        ((z) this.f6864d).s();
    }

    @Override // h5.v
    public final void b(k kVar) {
        switch (this.f6861a) {
            case 0:
                if (kVar.k()) {
                    synchronized (this.f6863c) {
                        if (((d) this.f6864d) != null) {
                            this.f6862b.execute(new l3.x(1, this));
                        }
                    }
                    return;
                }
                return;
            default:
                this.f6862b.execute(new l3.n(this, kVar));
                return;
        }
    }

    @Override // h5.f
    public final void e(@NonNull Exception exc) {
        ((z) this.f6864d).q(exc);
    }

    @Override // h5.g
    public final void onSuccess(Object obj) {
        ((z) this.f6864d).r(obj);
    }

    public t(Executor executor, j jVar, z zVar) {
        this.f6861a = 1;
        this.f6862b = executor;
        this.f6863c = jVar;
        this.f6864d = zVar;
    }
}
