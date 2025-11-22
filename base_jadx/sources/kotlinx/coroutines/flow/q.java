package kotlinx.coroutines.flow;

/* loaded from: classes2.dex */
public final class q implements f<Object> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ f f9103a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ x9.p f9104b;

    public q(m mVar, r0.f0 f0Var) {
        this.f9103a = mVar;
        this.f9104b = f0Var;
    }

    @Override // kotlinx.coroutines.flow.f
    public final Object a(g<? super Object> gVar, p9.d<? super l9.m> dVar) {
        Object objA = this.f9103a.a(new r(new kotlin.jvm.internal.t(), gVar, this.f9104b), dVar);
        return objA == q9.a.COROUTINE_SUSPENDED ? objA : l9.m.f9594a;
    }
}
