package za;

import pa.l0;

/* loaded from: classes2.dex */
public final class q extends kotlin.jvm.internal.j implements x9.a<bc.j<? extends qb.g<?>>> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ o f20003a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ cb.n f20004b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ l0 f20005c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q(o oVar, cb.n nVar, xa.f fVar) {
        super(0);
        this.f20003a = oVar;
        this.f20004b = nVar;
        this.f20005c = fVar;
    }

    @Override // x9.a
    public final bc.j<? extends qb.g<?>> invoke() {
        o oVar = this.f20003a;
        return oVar.f19974b.b().f(new p(oVar, this.f20004b, this.f20005c));
    }
}
