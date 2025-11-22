package c5;

/* loaded from: classes.dex */
public final class n6 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ y7 f1777a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ boolean f1778b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ b f1779c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ t6 f1780d;

    public n6(t6 t6Var, y7 y7Var, boolean z10, b bVar) {
        this.f1780d = t6Var;
        this.f1777a = y7Var;
        this.f1778b = z10;
        this.f1779c = bVar;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        t6 t6Var = this.f1780d;
        v2 v2Var = t6Var.f2003d;
        if (v2Var == null) {
            e3 e3Var = ((i4) t6Var.f2115a).f1635j;
            i4.e(e3Var);
            e3Var.f.a("Discarding data. Failed to send conditional user property to service");
        } else {
            y7 y7Var = this.f1777a;
            r3.r.i(y7Var);
            t6Var.g(v2Var, this.f1778b ? null : this.f1779c, y7Var);
            t6Var.s();
        }
    }
}
