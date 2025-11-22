package kotlinx.coroutines.flow;

/* loaded from: classes2.dex */
public final class h implements f<Object> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ pc.e f9064a;

    public h(pc.m mVar) {
        this.f9064a = mVar;
    }

    @Override // kotlinx.coroutines.flow.f
    public final Object a(g<? super Object> gVar, p9.d<? super l9.m> dVar) {
        Object objA = i.a(gVar, this.f9064a.u(), true, dVar);
        q9.a aVar = q9.a.COROUTINE_SUSPENDED;
        if (objA != aVar) {
            objA = l9.m.f9594a;
        }
        return objA == aVar ? objA : l9.m.f9594a;
    }
}
