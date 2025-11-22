package qc;

import c5.w;

@r9.e(c = "kotlinx.coroutines.flow.internal.ChannelFlow$collectToFun$1", f = "ChannelFlow.kt", l = {60}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class d extends r9.i implements x9.p<pc.r<Object>, p9.d<? super l9.m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public int f13491a;

    /* renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f13492b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ e<Object> f13493c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(e<Object> eVar, p9.d<? super d> dVar) {
        super(2, dVar);
        this.f13493c = eVar;
    }

    @Override // r9.a
    public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
        d dVar2 = new d(this.f13493c, dVar);
        dVar2.f13492b = obj;
        return dVar2;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(pc.r<Object> rVar, p9.d<? super l9.m> dVar) {
        return ((d) create(rVar, dVar)).invokeSuspend(l9.m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        q9.a aVar = q9.a.COROUTINE_SUSPENDED;
        int r12 = this.f13491a;
        if (r12 == 0) {
            w.F(obj);
            pc.r<? super Object> rVar = (pc.r) this.f13492b;
            this.f13491a = 1;
            if (this.f13493c.c(rVar, this) == aVar) {
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
