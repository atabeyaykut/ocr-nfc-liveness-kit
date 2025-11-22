package c5;

/* loaded from: classes.dex */
public final class k6 extends l {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ t6 f1686e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k6(t6 t6Var, z4 z4Var) {
        super(z4Var);
        this.f1686e = t6Var;
    }

    @Override // c5.l
    public final void b() {
        t6 t6Var = this.f1686e;
        t6Var.b();
        if (t6Var.n()) {
            e3 e3Var = ((i4) t6Var.f2115a).f1635j;
            i4.e(e3Var);
            e3Var.f1513p.a("Inactivity, disconnecting from the service");
            t6Var.w();
        }
    }
}
