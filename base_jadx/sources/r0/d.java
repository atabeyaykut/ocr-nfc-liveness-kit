package r0;

import nc.b1;

@r9.e(c = "com.airbnb.mvrx.CoroutinesStateStore$setupTriggerFlushQueues$1", f = "CoroutinesStateStore.kt", l = {59}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class d extends r9.i implements x9.p<nc.a0, p9.d<? super l9.m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public /* synthetic */ Object f13724a;

    /* renamed from: b, reason: collision with root package name */
    public int f13725b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ c f13726c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(c cVar, p9.d dVar) {
        super(2, dVar);
        this.f13726c = cVar;
    }

    @Override // r9.a
    public final p9.d<l9.m> create(Object obj, p9.d<?> completion) {
        kotlin.jvm.internal.h.f(completion, "completion");
        d dVar = new d(this.f13726c, completion);
        dVar.f13724a = obj;
        return dVar;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(nc.a0 a0Var, p9.d<? super l9.m> dVar) {
        return ((d) create(a0Var, dVar)).invokeSuspend(l9.m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        nc.a0 a0Var;
        q9.a aVar = q9.a.COROUTINE_SUSPENDED;
        int r12 = this.f13725b;
        if (r12 == 0) {
            c5.w.F(obj);
            a0Var = (nc.a0) this.f13724a;
        } else {
            if (r12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            a0Var = (nc.a0) this.f13724a;
            c5.w.F(obj);
        }
        do {
            nc.b1 b1Var = (nc.b1) a0Var.getCoroutineContext().get(b1.b.f10784a);
            if (!(b1Var == null ? true : b1Var.b())) {
                return l9.m.f9594a;
            }
            this.f13724a = a0Var;
            this.f13725b = 1;
        } while (this.f13726c.d(this) != aVar);
        return aVar;
    }
}
