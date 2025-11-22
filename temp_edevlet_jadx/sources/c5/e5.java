package c5;

import com.google.android.gms.measurement.internal.AppMeasurementDynamiteService;
import java.lang.ref.ReferenceQueue;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class e5 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1516a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f1517b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f1518c;

    public /* synthetic */ e5(int r12, Object obj, Object obj2) {
        this.f1516a = r12;
        this.f1518c = obj;
        this.f1517b = obj2;
    }

    private final void a() {
        synchronized (((s6) this.f1518c)) {
            try {
                ((s6) this.f1518c).f1990a = false;
                if (!((s6) this.f1518c).f1992c.n()) {
                    e3 e3Var = ((i4) ((s6) this.f1518c).f1992c.f2115a).f1635j;
                    i4.e(e3Var);
                    e3Var.f1512n.a("Connected to remote service");
                    t6 t6Var = ((s6) this.f1518c).f1992c;
                    v2 v2Var = (v2) this.f1517b;
                    t6Var.b();
                    r3.r.i(v2Var);
                    t6Var.f2003d = v2Var;
                    t6Var.s();
                    t6Var.r();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // java.lang.Runnable
    public final void run() throws IllegalStateException {
        switch (this.f1516a) {
            case 0:
                t6 t6VarS = ((AppMeasurementDynamiteService) this.f1518c).f4197a.s();
                com.google.android.gms.internal.measurement.y0 y0Var = (com.google.android.gms.internal.measurement.y0) this.f1517b;
                t6VarS.b();
                t6VarS.c();
                t6VarS.t(new i6(t6VarS, t6VarS.q(false), y0Var));
                return;
            case 1:
                synchronized (((AtomicReference) this.f1517b)) {
                    try {
                        AtomicReference atomicReference = (AtomicReference) this.f1517b;
                        Object obj = this.f1518c;
                        atomicReference.set(Long.valueOf(((i4) ((v5) obj).f2115a).f1633g.h(((i4) ((v5) obj).f2115a).o().h(), r2.M)));
                    } finally {
                        ((AtomicReference) this.f1517b).notify();
                    }
                }
                return;
            case 2:
                a();
                return;
            default:
                ReferenceQueue referenceQueue = (ReferenceQueue) this.f1517b;
                Set set = (Set) this.f1518c;
                while (!set.isEmpty()) {
                    try {
                        v7.o oVar = (v7.o) referenceQueue.remove();
                        if (oVar.f18281a.remove(oVar)) {
                            oVar.clear();
                            oVar.f18282b.run();
                        }
                    } catch (InterruptedException unused) {
                    }
                }
                return;
        }
    }

    public /* synthetic */ e5(ReferenceQueue referenceQueue, Set set) {
        this.f1516a = 3;
        this.f1517b = referenceQueue;
        this.f1518c = set;
    }
}
