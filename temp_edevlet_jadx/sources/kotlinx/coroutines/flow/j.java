package kotlinx.coroutines.flow;

@r9.e(c = "kotlinx.coroutines.flow.FlowKt__CollectKt$launchIn$1", f = "Collect.kt", l = {50}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class j extends r9.i implements x9.p<nc.a0, p9.d<? super l9.m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public int f9071a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ f<Object> f9072b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(f<Object> fVar, p9.d<? super j> dVar) {
        super(2, dVar);
        this.f9072b = fVar;
    }

    @Override // r9.a
    public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
        return new j(this.f9072b, dVar);
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(nc.a0 a0Var, p9.d<? super l9.m> dVar) {
        return ((j) create(a0Var, dVar)).invokeSuspend(l9.m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object obj2 = q9.a.COROUTINE_SUSPENDED;
        int r12 = this.f9071a;
        if (r12 == 0) {
            c5.w.F(obj);
            this.f9071a = 1;
            Object objA = this.f9072b.a(qc.l.f13522a, this);
            if (objA != obj2) {
                objA = l9.m.f9594a;
            }
            if (objA == obj2) {
                return obj2;
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
