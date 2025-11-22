package r0;

/* loaded from: classes.dex */
public final class c0 extends kotlin.jvm.internal.j implements x9.l<p, p> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ x9.p f13721a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ da.l f13722b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c0(x9.p pVar, da.l lVar) {
        super(1);
        this.f13721a = pVar;
        this.f13722b = lVar;
    }

    @Override // x9.l
    public final p invoke(p pVar) {
        b bVar;
        p receiver = pVar;
        kotlin.jvm.internal.h.f(receiver, "$receiver");
        da.l lVar = this.f13722b;
        return (p) this.f13721a.mo7invoke(receiver, new k((lVar == null || (bVar = (b) lVar.get(receiver)) == null) ? null : bVar.a()));
    }
}
