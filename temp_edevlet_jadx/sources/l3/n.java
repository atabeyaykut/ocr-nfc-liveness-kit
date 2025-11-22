package l3;

import android.util.Log;
import java.util.concurrent.CancellationException;

/* loaded from: classes.dex */
public final /* synthetic */ class n implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f9363a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f9364b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f9365c;

    public /* synthetic */ n(int r12, Object obj, Object obj2) {
        this.f9363a = r12;
        this.f9364b = obj;
        this.f9365c = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        h5.t tVar;
        h5.k kVarC;
        switch (this.f9363a) {
            case 0:
                o oVar = (o) this.f9364b;
                int r12 = ((r) this.f9365c).f9373a;
                synchronized (oVar) {
                    r<?> rVar = oVar.f9370e.get(r12);
                    if (rVar != null) {
                        StringBuilder sb2 = new StringBuilder(31);
                        sb2.append("Timing out request: ");
                        sb2.append(r12);
                        Log.w("MessengerIpcClient", sb2.toString());
                        oVar.f9370e.remove(r12);
                        rVar.c(new s("Timed out waiting for response", null));
                        oVar.c();
                    }
                }
                return;
            case 1:
                Object obj = this.f9365c;
                try {
                    kVarC = ((h5.j) ((h5.t) obj).f6863c).c(((h5.k) this.f9364b).i());
                } catch (h5.i e10) {
                    e = e10;
                    tVar = (h5.t) obj;
                    if (e.getCause() instanceof Exception) {
                        e = (Exception) e.getCause();
                    }
                } catch (CancellationException unused) {
                    ((h5.t) obj).a();
                    return;
                } catch (Exception e11) {
                    e = e11;
                    tVar = (h5.t) obj;
                }
                if (kVarC == null) {
                    tVar = (h5.t) obj;
                    e = new NullPointerException("Continuation returned null");
                    tVar.e(e);
                    return;
                } else {
                    h5.x xVar = h5.m.f6843b;
                    h5.t tVar2 = (h5.t) obj;
                    kVarC.d(xVar, tVar2);
                    kVarC.c(xVar, tVar2);
                    kVarC.a(xVar, tVar2);
                    return;
                }
            default:
                ((nc.i) this.f9365c).j((nc.y) this.f9364b, l9.m.f9594a);
                return;
        }
    }

    public n(h5.t tVar, h5.k kVar) {
        this.f9363a = 1;
        this.f9365c = tVar;
        this.f9364b = kVar;
    }
}
