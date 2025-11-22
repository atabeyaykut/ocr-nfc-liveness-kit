package kotlinx.coroutines.flow;

import nc.b1;

@r9.e(c = "kotlinx.coroutines.flow.SharedFlowImpl", f = "SharedFlow.kt", l = {373, 380, 383}, m = "collect$suspendImpl")
/* loaded from: classes2.dex */
public final class b0 extends r9.c {

    /* renamed from: a, reason: collision with root package name */
    public a0 f9030a;

    /* renamed from: b, reason: collision with root package name */
    public g f9031b;

    /* renamed from: c, reason: collision with root package name */
    public c0 f9032c;

    /* renamed from: d, reason: collision with root package name */
    public b1 f9033d;

    /* renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object f9034e;
    public final /* synthetic */ a0<Object> f;

    /* renamed from: g, reason: collision with root package name */
    public int f9035g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b0(a0<Object> a0Var, p9.d<? super b0> dVar) {
        super(dVar);
        this.f = a0Var;
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.f9034e = obj;
        this.f9035g |= Integer.MIN_VALUE;
        a0.h(this.f, null, this);
        return q9.a.COROUTINE_SUSPENDED;
    }
}
