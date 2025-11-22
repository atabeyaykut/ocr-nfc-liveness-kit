package ja;

import pa.g0;

/* loaded from: classes2.dex */
public final class j implements x9.a<Void> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ g0 f8324a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ k f8325b;

    public j(la.g gVar, g0 g0Var) {
        this.f8325b = gVar;
        this.f8324a = g0Var;
    }

    @Override // x9.a
    public final Void invoke() {
        k kVar = this.f8325b;
        g0 g0Var = kVar.f8327a;
        g0 g0Var2 = this.f8324a;
        if (g0Var == null) {
            kVar.f8327a = g0Var2;
            return null;
        }
        throw new AssertionError("Built-ins module is already set: " + kVar.f8327a + " (attempting to reset to " + g0Var2 + ")");
    }
}
