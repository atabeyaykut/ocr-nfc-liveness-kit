package c5;

/* loaded from: classes.dex */
public final class h6 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ y7 f1605a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ boolean f1606b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ r7 f1607c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ t6 f1608d;

    public h6(t6 t6Var, y7 y7Var, boolean z10, r7 r7Var) {
        this.f1608d = t6Var;
        this.f1605a = y7Var;
        this.f1606b = z10;
        this.f1607c = r7Var;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        t6 t6Var = this.f1608d;
        v2 v2Var = t6Var.f2003d;
        if (v2Var == null) {
            e3 e3Var = ((i4) t6Var.f2115a).f1635j;
            i4.e(e3Var);
            e3Var.f.a("Discarding data. Failed to set user property");
        } else {
            y7 y7Var = this.f1605a;
            r3.r.i(y7Var);
            t6Var.g(v2Var, this.f1606b ? null : this.f1607c, y7Var);
            t6Var.s();
        }
    }
}
