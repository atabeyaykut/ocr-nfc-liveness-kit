package c5;

/* loaded from: classes.dex */
public final class m6 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ y7 f1749a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ boolean f1750b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ s f1751c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ t6 f1752d;

    public m6(t6 t6Var, y7 y7Var, boolean z10, s sVar) {
        this.f1752d = t6Var;
        this.f1749a = y7Var;
        this.f1750b = z10;
        this.f1751c = sVar;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        t6 t6Var = this.f1752d;
        v2 v2Var = t6Var.f2003d;
        if (v2Var == null) {
            e3 e3Var = ((i4) t6Var.f2115a).f1635j;
            i4.e(e3Var);
            e3Var.f.a("Discarding data. Failed to send event to service");
        } else {
            y7 y7Var = this.f1749a;
            r3.r.i(y7Var);
            t6Var.g(v2Var, this.f1750b ? null : this.f1751c, y7Var);
            t6Var.s();
        }
    }
}
