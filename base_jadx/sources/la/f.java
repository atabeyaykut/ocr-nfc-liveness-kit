package la;

import m9.x;
import ma.a0;
import ma.b0;

/* loaded from: classes2.dex */
public final class f extends kotlin.jvm.internal.j implements x9.a<pa.n> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ e f9622a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ bc.l f9623b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(e eVar, bc.l lVar) {
        super(0);
        this.f9622a = eVar;
        this.f9623b = lVar;
    }

    @Override // x9.a
    public final pa.n invoke() {
        e eVar = this.f9622a;
        x9.l<b0, ma.j> lVar = eVar.f9620b;
        b0 b0Var = eVar.f9619a;
        pa.n nVar = new pa.n(lVar.invoke(b0Var), e.f9617g, a0.ABSTRACT, 2, b8.f.S(b0Var.m().f()), this.f9623b);
        nVar.K0(new a(this.f9623b, nVar), x.f10175a, null);
        return nVar;
    }
}
