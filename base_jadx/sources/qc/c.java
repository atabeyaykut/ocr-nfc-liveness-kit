package qc;

import c5.w;
import nc.a0;
import pc.u;

@r9.e(c = "kotlinx.coroutines.flow.internal.ChannelFlow$collect$2", f = "ChannelFlow.kt", l = {123}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class c extends r9.i implements x9.p<a0, p9.d<? super l9.m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public int f13487a;

    /* renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f13488b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ kotlinx.coroutines.flow.g<Object> f13489c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ e<Object> f13490d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(p9.d dVar, kotlinx.coroutines.flow.g gVar, e eVar) {
        super(2, dVar);
        this.f13489c = gVar;
        this.f13490d = eVar;
    }

    @Override // r9.a
    public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
        c cVar = new c(dVar, this.f13489c, this.f13490d);
        cVar.f13488b = obj;
        return cVar;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(a0 a0Var, p9.d<? super l9.m> dVar) {
        return ((c) create(a0Var, dVar)).invokeSuspend(l9.m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object obj2 = q9.a.COROUTINE_SUSPENDED;
        int r12 = this.f13487a;
        if (r12 == 0) {
            w.F(obj);
            u<Object> uVarF = this.f13490d.f((a0) this.f13488b);
            this.f13487a = 1;
            Object objA = kotlinx.coroutines.flow.i.a(this.f13489c, uVarF, true, this);
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
            w.F(obj);
        }
        return l9.m.f9594a;
    }
}
