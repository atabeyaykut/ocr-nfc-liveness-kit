package c5;

import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class m5 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1746a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ long f1747b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ r3 f1748c;

    public /* synthetic */ m5(r3 r3Var, long j10, int r42) {
        this.f1746a = r42;
        this.f1748c = r3Var;
        this.f1747b = j10;
    }

    @Override // java.lang.Runnable
    public final void run() throws IllegalStateException {
        long j10 = this.f1747b;
        int r02 = this.f1746a;
        r3 r3Var = this.f1748c;
        switch (r02) {
            case 0:
                v5 v5Var = (v5) r3Var;
                v5Var.q(j10, true);
                ((i4) v5Var.f2115a).s().x(new AtomicReference<>());
                break;
            case 1:
                f6 f6Var = (f6) r3Var;
                ((i4) f6Var.f2115a).g().e(j10);
                f6Var.f1549e = null;
                break;
            default:
                e7 e7Var = (e7) r3Var;
                e7Var.b();
                e7Var.g();
                i4 i4Var = (i4) e7Var.f2115a;
                e3 e3Var = i4Var.f1635j;
                i4.e(e3Var);
                e3Var.f1513p.b(Long.valueOf(j10), "Activity paused, time");
                a7 a7Var = e7Var.f;
                e7 e7Var2 = a7Var.f1398b;
                ((i4) e7Var2.f2115a).f1640p.getClass();
                z6 z6Var = new z6(a7Var, System.currentTimeMillis(), j10);
                a7Var.f1397a = z6Var;
                e7Var2.f1522c.postDelayed(z6Var, 2000L);
                if (i4Var.f1633g.q()) {
                    e7Var.f1524e.f1463c.a();
                    break;
                }
                break;
        }
    }
}
