package h5;

import androidx.annotation.NonNull;
import java.util.concurrent.Executor;
import o3.n0;

/* loaded from: classes.dex */
public final class s implements g, f, d, v {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6857a;

    /* renamed from: b, reason: collision with root package name */
    public final Executor f6858b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f6859c;

    /* renamed from: d, reason: collision with root package name */
    public final Object f6860d;

    public s(Executor executor, b bVar, z zVar) {
        this.f6857a = 0;
        this.f6858b = executor;
        this.f6859c = bVar;
        this.f6860d = zVar;
    }

    @Override // h5.d
    public final void a() {
        ((z) this.f6860d).s();
    }

    @Override // h5.v
    public final void b(k kVar) {
        switch (this.f6857a) {
            case 0:
                this.f6858b.execute(new n0(6, this, kVar));
                return;
            default:
                if (kVar.m()) {
                    synchronized (this.f6859c) {
                        if (((g) this.f6860d) != null) {
                            this.f6858b.execute(new n0(7, this, kVar));
                        }
                    }
                    return;
                }
                return;
        }
    }

    @Override // h5.f
    public final void e(@NonNull Exception exc) {
        ((z) this.f6860d).q(exc);
    }

    @Override // h5.g
    public final void onSuccess(Object obj) {
        ((z) this.f6860d).r(obj);
    }

    public s(Executor executor, g gVar) {
        this.f6857a = 1;
        this.f6859c = new Object();
        this.f6858b = executor;
        this.f6860d = gVar;
    }
}
