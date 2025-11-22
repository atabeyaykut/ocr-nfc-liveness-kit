package pa;

/* loaded from: classes2.dex */
public final class f0 extends kotlin.jvm.internal.j implements x9.l<lb.c, ma.i0> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ g0 f12892a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f0(g0 g0Var) {
        super(1);
        this.f12892a = g0Var;
    }

    @Override // x9.l
    public final ma.i0 invoke(lb.c cVar) {
        lb.c fqName = cVar;
        kotlin.jvm.internal.h.f(fqName, "fqName");
        g0 g0Var = this.f12892a;
        return g0Var.f.a(g0Var, fqName, g0Var.f12894c);
    }
}
