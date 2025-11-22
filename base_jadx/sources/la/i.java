package la;

import pa.g0;

/* loaded from: classes2.dex */
public final class i extends kotlin.jvm.internal.j implements x9.a<k> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ g f9629a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ bc.l f9630b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(g gVar, bc.c cVar) {
        super(0);
        this.f9629a = gVar;
        this.f9630b = cVar;
    }

    @Override // x9.a
    public final k invoke() {
        g gVar = this.f9629a;
        g0 builtInsModule = gVar.l();
        kotlin.jvm.internal.h.e(builtInsModule, "builtInsModule");
        return new k(builtInsModule, this.f9630b, new h(gVar));
    }
}
