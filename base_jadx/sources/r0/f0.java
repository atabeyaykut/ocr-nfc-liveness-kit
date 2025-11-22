package r0;

@r9.e(c = "com.airbnb.mvrx.MavericksViewModel$resolveSubscription$flow$1", f = "MavericksViewModel.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class f0 extends r9.i implements x9.p<Object, p9.d<? super Boolean>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public /* synthetic */ Object f13741a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f13742b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f0(Object obj, p9.d dVar) {
        super(2, dVar);
        this.f13742b = obj;
    }

    @Override // r9.a
    public final p9.d<l9.m> create(Object obj, p9.d<?> completion) {
        kotlin.jvm.internal.h.f(completion, "completion");
        f0 f0Var = new f0(this.f13742b, completion);
        f0Var.f13741a = obj;
        return f0Var;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(Object obj, p9.d<? super Boolean> dVar) {
        return ((f0) create(obj, dVar)).invokeSuspend(l9.m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        c5.w.F(obj);
        return Boolean.valueOf(kotlin.jvm.internal.h.a(this.f13741a, this.f13742b));
    }
}
