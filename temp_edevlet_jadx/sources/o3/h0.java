package o3;

import android.content.ComponentName;
import android.os.RemoteException;
import c5.e3;
import c5.i4;
import c5.q2;
import c5.r2;
import c5.s6;
import c5.t6;
import c5.v2;
import c5.v5;
import c5.y7;
import java.util.concurrent.atomic.AtomicReference;
import o3.h;

/* loaded from: classes.dex */
public final /* synthetic */ class h0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11144a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f11145b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f11146c;

    public /* synthetic */ h0(int r12, Object obj, Object obj2) {
        this.f11144a = r12;
        this.f11146c = obj;
        this.f11145b = obj2;
    }

    private final void a() {
        synchronized (((h5.u) this.f11146c).f6866b) {
            try {
                h5.e eVar = ((h5.u) this.f11146c).f6867c;
                if (eVar != null) {
                    eVar.b((h5.k) this.f11145b);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        String strF;
        switch (this.f11144a) {
            case 0:
                h hVar = (h) this.f11145b;
                h.b bVar = (h.b) this.f11146c;
                Object obj = hVar.f11140b;
                if (obj == null) {
                    bVar.b();
                    return;
                }
                try {
                    bVar.a(obj);
                    return;
                } catch (RuntimeException e10) {
                    bVar.b();
                    throw e10;
                }
            case 1:
                synchronized (((AtomicReference) this.f11145b)) {
                    try {
                        AtomicReference atomicReference = (AtomicReference) this.f11145b;
                        Object obj2 = this.f11146c;
                        c5.e eVar = ((i4) ((v5) obj2).f2115a).f1633g;
                        String strH = ((i4) ((v5) obj2).f2115a).o().h();
                        q2<String> q2Var = r2.L;
                        if (strH == null) {
                            eVar.getClass();
                            strF = null;
                        } else {
                            strF = eVar.f1485c.f(strH, q2Var.f1865a);
                        }
                        atomicReference.set(q2Var.a(strF));
                    } finally {
                        ((AtomicReference) this.f11145b).notify();
                    }
                }
                return;
            case 2:
                Object obj3 = this.f11145b;
                Object obj4 = this.f11146c;
                t6 t6Var = (t6) obj4;
                v2 v2Var = t6Var.f2003d;
                if (v2Var == null) {
                    e3 e3Var = ((i4) t6Var.f2115a).f1635j;
                    i4.e(e3Var);
                    e3Var.f.a("Failed to send measurementEnabled to service");
                    return;
                }
                try {
                    r3.r.i((y7) obj3);
                    v2Var.C((y7) obj3);
                    ((t6) obj4).s();
                    return;
                } catch (RemoteException e11) {
                    e3 e3Var2 = ((i4) t6Var.f2115a).f1635j;
                    i4.e(e3Var2);
                    e3Var2.f.b(e11, "Failed to send measurementEnabled to the service");
                    return;
                }
            case 3:
                t6.u(((s6) this.f11146c).f1992c, (ComponentName) this.f11145b);
                return;
            default:
                a();
                return;
        }
    }

    public /* synthetic */ h0(h hVar, h.b bVar) {
        this.f11144a = 0;
        this.f11145b = hVar;
        this.f11146c = bVar;
    }
}
