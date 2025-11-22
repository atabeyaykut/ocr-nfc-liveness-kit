package r0;

@r9.e(c = "com.airbnb.mvrx.MavericksViewModel$execute$9", f = "MavericksViewModel.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class d0 extends r9.i implements x9.q<kotlinx.coroutines.flow.g<Object>, Throwable, p9.d<? super l9.m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public /* synthetic */ Throwable f13727a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ z f13728b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ x9.p f13729c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ da.l f13730d;

    public static final class a extends kotlin.jvm.internal.j implements x9.l<p, p> {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Throwable f13732b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Throwable th2) {
            super(1);
            this.f13732b = th2;
        }

        @Override // x9.l
        public final p invoke(p pVar) {
            b bVar;
            p receiver = pVar;
            kotlin.jvm.internal.h.f(receiver, "$receiver");
            d0 d0Var = d0.this;
            x9.p pVar2 = d0Var.f13729c;
            da.l lVar = d0Var.f13730d;
            return (p) pVar2.mo7invoke(receiver, new i((lVar == null || (bVar = (b) lVar.get(receiver)) == null) ? null : bVar.a(), this.f13732b));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d0(z zVar, x9.p pVar, da.l lVar, p9.d dVar) {
        super(3, dVar);
        this.f13728b = zVar;
        this.f13729c = pVar;
        this.f13730d = lVar;
    }

    @Override // x9.q
    public final Object i(kotlinx.coroutines.flow.g<Object> gVar, Throwable th2, p9.d<? super l9.m> dVar) {
        kotlinx.coroutines.flow.g<Object> create = gVar;
        Throwable error = th2;
        p9.d<? super l9.m> continuation = dVar;
        kotlin.jvm.internal.h.f(create, "$this$create");
        kotlin.jvm.internal.h.f(error, "error");
        kotlin.jvm.internal.h.f(continuation, "continuation");
        d0 d0Var = new d0(this.f13728b, this.f13729c, this.f13730d, continuation);
        d0Var.f13727a = error;
        return d0Var.invokeSuspend(l9.m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        c5.w.F(obj);
        this.f13728b.c(new a(this.f13727a));
        return l9.m.f9594a;
    }
}
