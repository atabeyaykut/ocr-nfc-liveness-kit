package r0;

@r9.e(c = "com.airbnb.mvrx.MavericksViewModelExtensionsKt$_internal1$2", f = "MavericksViewModelExtensions.kt", l = {27}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class m0 extends r9.i implements x9.p<t<Object>, p9.d<? super l9.m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public /* synthetic */ Object f13832a;

    /* renamed from: b, reason: collision with root package name */
    public int f13833b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ x9.p f13834c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m0(x9.p pVar, p9.d dVar) {
        super(2, dVar);
        this.f13834c = pVar;
    }

    @Override // r9.a
    public final p9.d<l9.m> create(Object obj, p9.d<?> completion) {
        kotlin.jvm.internal.h.f(completion, "completion");
        m0 m0Var = new m0(this.f13834c, completion);
        m0Var.f13832a = obj;
        return m0Var;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(t<Object> tVar, p9.d<? super l9.m> dVar) {
        return ((m0) create(tVar, dVar)).invokeSuspend(l9.m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        q9.a aVar = q9.a.COROUTINE_SUSPENDED;
        int r12 = this.f13833b;
        if (r12 == 0) {
            c5.w.F(obj);
            A a10 = ((t) this.f13832a).f13864a;
            this.f13833b = 1;
            if (this.f13834c.mo7invoke(a10, this) == aVar) {
                return aVar;
            }
        } else {
            if (r12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            c5.w.F(obj);
        }
        return l9.m.f9594a;
    }
}
