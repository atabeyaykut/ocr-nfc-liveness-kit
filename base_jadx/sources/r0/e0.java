package r0;

@r9.e(c = "com.airbnb.mvrx.MavericksViewModel$resolveSubscription$1", f = "MavericksViewModel.kt", l = {438, 439}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class e0 extends r9.i implements x9.p<nc.a0, p9.d<? super l9.m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public int f13735a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ kotlinx.coroutines.flow.f f13736b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ x9.p f13737c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e0(kotlinx.coroutines.flow.f fVar, x9.p pVar, p9.d dVar) {
        super(2, dVar);
        this.f13736b = fVar;
        this.f13737c = pVar;
    }

    @Override // r9.a
    public final p9.d<l9.m> create(Object obj, p9.d<?> completion) {
        kotlin.jvm.internal.h.f(completion, "completion");
        return new e0(this.f13736b, this.f13737c, completion);
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(nc.a0 a0Var, p9.d<? super l9.m> dVar) {
        return ((e0) create(a0Var, dVar)).invokeSuspend(l9.m.f9594a);
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00ae A[RETURN] */
    @Override // r9.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r12) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 227
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: r0.e0.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
