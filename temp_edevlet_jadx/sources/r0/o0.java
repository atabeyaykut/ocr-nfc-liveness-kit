package r0;

@r9.e(c = "com.airbnb.mvrx.MavericksViewModelExtensionsKt$_internal2$2", f = "MavericksViewModelExtensions.kt", l = {41}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class o0 extends r9.i implements x9.p<u<Object, Object>, p9.d<? super l9.m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public /* synthetic */ Object f13846a;

    /* renamed from: b, reason: collision with root package name */
    public int f13847b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ x9.q f13848c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o0(x9.q qVar, p9.d dVar) {
        super(2, dVar);
        this.f13848c = qVar;
    }

    @Override // r9.a
    public final p9.d<l9.m> create(Object obj, p9.d<?> completion) {
        kotlin.jvm.internal.h.f(completion, "completion");
        o0 o0Var = new o0(this.f13848c, completion);
        o0Var.f13846a = obj;
        return o0Var;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(u<Object, Object> uVar, p9.d<? super l9.m> dVar) {
        return ((o0) create(uVar, dVar)).invokeSuspend(l9.m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        q9.a aVar = q9.a.COROUTINE_SUSPENDED;
        int r12 = this.f13847b;
        if (r12 == 0) {
            c5.w.F(obj);
            u uVar = (u) this.f13846a;
            A a10 = uVar.f13866a;
            this.f13847b = 1;
            if (this.f13848c.i(a10, uVar.f13867b, this) == aVar) {
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
