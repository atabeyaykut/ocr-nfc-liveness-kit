package c5;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class r6 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1947a = 1;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f1948b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f1949c;

    public r6(s6 s6Var, v2 v2Var) {
        this.f1949c = s6Var;
        this.f1948b = v2Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f1947a) {
            case 0:
                synchronized (((s6) this.f1949c)) {
                    ((s6) this.f1949c).f1990a = false;
                    if (!((s6) this.f1949c).f1992c.n()) {
                        e3 e3Var = ((i4) ((s6) this.f1949c).f1992c.f2115a).f1635j;
                        i4.e(e3Var);
                        e3Var.f1513p.a("Connected to service");
                        t6 t6Var = ((s6) this.f1949c).f1992c;
                        v2 v2Var = (v2) this.f1948b;
                        t6Var.b();
                        r3.r.i(v2Var);
                        t6Var.f2003d = v2Var;
                        t6Var.s();
                        t6Var.r();
                    }
                }
                return;
            default:
                o7 o7Var = (o7) this.f1948b;
                o7Var.a();
                Runnable runnable = (Runnable) this.f1949c;
                o7Var.l().b();
                if (o7Var.f1832r == null) {
                    o7Var.f1832r = new ArrayList();
                }
                o7Var.f1832r.add(runnable);
                o7Var.t();
                return;
        }
    }

    public r6(o7 o7Var, Runnable runnable) {
        this.f1948b = o7Var;
        this.f1949c = runnable;
    }
}
