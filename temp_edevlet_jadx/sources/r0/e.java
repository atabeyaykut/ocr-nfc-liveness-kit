package r0;

@r9.e(c = "com.airbnb.mvrx.DefaultViewModelDelegateFactory$createLazyViewModel$1$1$1", f = "ViewModelDelegateProvider.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class e extends r9.i implements x9.p<Object, p9.d<? super l9.m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ f f13734a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(p9.d dVar, f fVar) {
        super(2, dVar);
        this.f13734a = fVar;
    }

    @Override // r9.a
    public final p9.d<l9.m> create(Object obj, p9.d<?> completion) {
        kotlin.jvm.internal.h.f(completion, "completion");
        return new e(completion, this.f13734a);
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(Object obj, p9.d<? super l9.m> dVar) {
        return ((e) create(obj, dVar)).invokeSuspend(l9.m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        c5.w.F(obj);
        ((w) this.f13734a.f13740b).w();
        return l9.m.f9594a;
    }
}
