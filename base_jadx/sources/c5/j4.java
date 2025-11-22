package c5;

/* loaded from: classes.dex */
public final class j4 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ b f1659a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ y7 f1660b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ w4 f1661c;

    public j4(w4 w4Var, b bVar, y7 y7Var) {
        this.f1661c = w4Var;
        this.f1659a = bVar;
        this.f1660b = y7Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        w4 w4Var = this.f1661c;
        w4Var.f2101a.a();
        b bVar = this.f1659a;
        Object objE = bVar.f1402c.E();
        y7 y7Var = this.f1660b;
        if (objE == null) {
            w4Var.f2101a.n(bVar, y7Var);
        } else {
            w4Var.f2101a.q(bVar, y7Var);
        }
    }
}
