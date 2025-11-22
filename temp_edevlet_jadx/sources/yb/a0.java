package yb;

import java.util.List;

/* loaded from: classes2.dex */
public final class a0 extends kotlin.jvm.internal.j implements x9.a<List<? extends na.c>> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ z f19374a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ mb.p f19375b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ c f19376c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a0(z zVar, mb.p pVar, c cVar) {
        super(0);
        this.f19374a = zVar;
        this.f19375b = pVar;
        this.f19376c = cVar;
    }

    @Override // x9.a
    public final List<? extends na.c> invoke() {
        z zVar = this.f19374a;
        g0 g0VarA = zVar.a(zVar.f19492a.f19466c);
        List<na.c> listF = g0VarA != null ? zVar.f19492a.f19464a.f19446e.f(g0VarA, this.f19375b, this.f19376c) : null;
        return listF == null ? m9.v.f10173a : listF;
    }
}
