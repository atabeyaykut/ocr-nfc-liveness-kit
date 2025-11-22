package la;

import cc.m0;
import ma.b0;
import ma.d0;

/* loaded from: classes2.dex */
public final class l extends kotlin.jvm.internal.j implements x9.a<m0> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ k f9645a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ bc.l f9646b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l(k kVar, bc.l lVar) {
        super(0);
        this.f9645a = kVar;
        this.f9646b = lVar;
    }

    @Override // x9.a
    public final m0 invoke() {
        k kVar = this.f9645a;
        b0 b0Var = kVar.g().f9626a;
        e.f9615d.getClass();
        return ma.t.c(b0Var, e.f9618h, new d0(this.f9646b, kVar.g().f9626a)).q();
    }
}
