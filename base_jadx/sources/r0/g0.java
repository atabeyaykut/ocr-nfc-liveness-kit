package r0;

@r9.e(c = "com.airbnb.mvrx.MavericksViewModel$resolveSubscription$flow$2", f = "MavericksViewModel.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class g0 extends r9.i implements x9.p<Object, p9.d<? super l9.m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public /* synthetic */ Object f13743a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ z f13744b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ h f13745c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g0(z zVar, h hVar, p9.d dVar) {
        super(2, dVar);
        this.f13744b = zVar;
        this.f13745c = hVar;
    }

    @Override // r9.a
    public final p9.d<l9.m> create(Object obj, p9.d<?> completion) {
        kotlin.jvm.internal.h.f(completion, "completion");
        g0 g0Var = new g0(this.f13744b, this.f13745c, completion);
        g0Var.f13743a = obj;
        return g0Var;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(Object obj, p9.d<? super l9.m> dVar) {
        return ((g0) create(obj, dVar)).invokeSuspend(l9.m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        c5.w.F(obj);
        this.f13744b.f13885e.put(((e1) this.f13745c).f13738a, this.f13743a);
        return l9.m.f9594a;
    }
}
