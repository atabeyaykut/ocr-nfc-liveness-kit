package h5;

import java.util.concurrent.Executor;
import o3.k0;

/* loaded from: classes.dex */
public final class r implements v {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6853a;

    /* renamed from: b, reason: collision with root package name */
    public final Executor f6854b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f6855c;

    /* renamed from: d, reason: collision with root package name */
    public final Object f6856d;

    public r(Executor executor, b bVar, z zVar) {
        this.f6853a = 0;
        this.f6854b = executor;
        this.f6855c = bVar;
        this.f6856d = zVar;
    }

    @Override // h5.v
    public final void b(k kVar) {
        switch (this.f6853a) {
            case 0:
                this.f6854b.execute(new k0(this, kVar, 1));
                return;
            default:
                if (kVar.m() || kVar.k()) {
                    return;
                }
                synchronized (this.f6855c) {
                    if (((f) this.f6856d) != null) {
                        this.f6854b.execute(new k0(this, kVar, 2));
                    }
                }
                return;
        }
    }

    public r(Executor executor, f fVar) {
        this.f6853a = 1;
        this.f6855c = new Object();
        this.f6854b = executor;
        this.f6856d = fVar;
    }
}
