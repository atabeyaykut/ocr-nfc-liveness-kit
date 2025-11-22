package v7;

import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
public final /* synthetic */ class p implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f18283a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f18284b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f18285c;

    public /* synthetic */ p(Callable callable, h5.l lVar) {
        this.f18283a = 0;
        this.f18284b = callable;
        this.f18285c = lVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int r02 = this.f18283a;
        Object obj = this.f18285c;
        Object obj2 = this.f18284b;
        switch (r02) {
            case 0:
                h5.l lVar = (h5.l) obj;
                try {
                    lVar.b(((Callable) obj2).call());
                    return;
                } catch (r7.a e10) {
                    lVar.a(e10);
                    return;
                } catch (Exception e11) {
                    lVar.a(new r7.a("Internal error has occurred when executing ML Kit tasks", e11));
                    return;
                }
            default:
                qd.g gVarB = ((qd.h) obj2).b();
                if (gVarB == null) {
                    throw new IllegalStateException("No pending post available");
                }
                ((qd.b) obj).d(gVarB);
                return;
        }
    }

    public p(qd.b bVar) {
        this.f18283a = 1;
        this.f18285c = bVar;
        this.f18284b = new qd.h();
    }
}
