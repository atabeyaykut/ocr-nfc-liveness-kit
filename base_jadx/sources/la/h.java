package la;

import la.g;

/* loaded from: classes2.dex */
public final class h extends kotlin.jvm.internal.j implements x9.a<g.a> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ g f9628a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(g gVar) {
        super(0);
        this.f9628a = gVar;
    }

    @Override // x9.a
    public final g.a invoke() {
        g gVar = this.f9628a;
        x9.a<g.a> aVar = gVar.f;
        if (aVar == null) {
            throw new AssertionError("JvmBuiltins instance has not been initialized properly");
        }
        g.a aVarInvoke = aVar.invoke();
        gVar.f = null;
        return aVarInvoke;
    }
}
