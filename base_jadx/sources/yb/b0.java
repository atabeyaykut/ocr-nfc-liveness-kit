package yb;

/* loaded from: classes2.dex */
public final class b0 extends kotlin.jvm.internal.j implements x9.a<qb.g<?>> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ z f19382a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ gb.m f19383b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ac.k f19384c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b0(z zVar, gb.m mVar, ac.k kVar) {
        super(0);
        this.f19382a = zVar;
        this.f19383b = mVar;
        this.f19384c = kVar;
    }

    @Override // x9.a
    public final qb.g<?> invoke() {
        z zVar = this.f19382a;
        g0 g0VarA = zVar.a(zVar.f19492a.f19466c);
        kotlin.jvm.internal.h.c(g0VarA);
        d<na.c, qb.g<?>> dVar = zVar.f19492a.f19464a.f19446e;
        cc.e0 returnType = this.f19384c.getReturnType();
        kotlin.jvm.internal.h.e(returnType, "property.returnType");
        return dVar.g(g0VarA, this.f19383b, returnType);
    }
}
