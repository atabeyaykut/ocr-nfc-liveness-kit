package yb;

/* loaded from: classes2.dex */
public final class d0 extends kotlin.jvm.internal.j implements x9.a<qb.g<?>> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ z f19393a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ gb.m f19394b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ac.k f19395c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d0(z zVar, gb.m mVar, ac.k kVar) {
        super(0);
        this.f19393a = zVar;
        this.f19394b = mVar;
        this.f19395c = kVar;
    }

    @Override // x9.a
    public final qb.g<?> invoke() {
        z zVar = this.f19393a;
        g0 g0VarA = zVar.a(zVar.f19492a.f19466c);
        kotlin.jvm.internal.h.c(g0VarA);
        d<na.c, qb.g<?>> dVar = zVar.f19492a.f19464a.f19446e;
        cc.e0 returnType = this.f19395c.getReturnType();
        kotlin.jvm.internal.h.e(returnType, "property.returnType");
        return dVar.d(g0VarA, this.f19394b, returnType);
    }
}
