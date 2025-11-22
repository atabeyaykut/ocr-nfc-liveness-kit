package r0;

@r9.e(c = "com.airbnb.mvrx.MavericksViewModelExtensionsKt$_internal3$2", f = "MavericksViewModelExtensions.kt", l = {56}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class q0 extends r9.i implements x9.p<v<Object, Object, Object>, p9.d<? super l9.m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public /* synthetic */ Object f13858a;

    /* renamed from: b, reason: collision with root package name */
    public int f13859b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ x9.r f13860c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q0(x9.r rVar, p9.d dVar) {
        super(2, dVar);
        this.f13860c = rVar;
    }

    @Override // r9.a
    public final p9.d<l9.m> create(Object obj, p9.d<?> completion) {
        kotlin.jvm.internal.h.f(completion, "completion");
        q0 q0Var = new q0(this.f13860c, completion);
        q0Var.f13858a = obj;
        return q0Var;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(v<Object, Object, Object> vVar, p9.d<? super l9.m> dVar) {
        return ((q0) create(vVar, dVar)).invokeSuspend(l9.m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        q9.a aVar = q9.a.COROUTINE_SUSPENDED;
        int r12 = this.f13859b;
        if (r12 == 0) {
            c5.w.F(obj);
            v vVar = (v) this.f13858a;
            A a10 = vVar.f13869a;
            this.f13859b = 1;
            if (this.f13860c.invoke(a10, vVar.f13870b, vVar.f13871c, this) == aVar) {
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
