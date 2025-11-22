package qc;

import c5.w;

@r9.e(c = "kotlinx.coroutines.flow.internal.ChannelFlowOperator$collectWithContextUndispatched$2", f = "ChannelFlow.kt", l = {152}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class f extends r9.i implements x9.p<kotlinx.coroutines.flow.g<Object>, p9.d<? super l9.m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public int f13497a;

    /* renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f13498b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ g<Object, Object> f13499c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(g<Object, Object> gVar, p9.d<? super f> dVar) {
        super(2, dVar);
        this.f13499c = gVar;
    }

    @Override // r9.a
    public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
        f fVar = new f(this.f13499c, dVar);
        fVar.f13498b = obj;
        return fVar;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(kotlinx.coroutines.flow.g<Object> gVar, p9.d<? super l9.m> dVar) {
        return ((f) create(gVar, dVar)).invokeSuspend(l9.m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        q9.a aVar = q9.a.COROUTINE_SUSPENDED;
        int r12 = this.f13497a;
        if (r12 == 0) {
            w.F(obj);
            kotlinx.coroutines.flow.g<? super Object> gVar = (kotlinx.coroutines.flow.g) this.f13498b;
            this.f13497a = 1;
            if (this.f13499c.g(gVar, this) == aVar) {
                return aVar;
            }
        } else {
            if (r12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            w.F(obj);
        }
        return l9.m.f9594a;
    }
}
