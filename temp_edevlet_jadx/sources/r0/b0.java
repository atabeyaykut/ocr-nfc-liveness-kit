package r0;

@r9.e(c = "com.airbnb.mvrx.MavericksViewModel$execute$10", f = "MavericksViewModel.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class b0 extends r9.i implements x9.p<Object, p9.d<? super l9.m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public /* synthetic */ Object f13702a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ z f13703b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ x9.p f13704c;

    public static final class a extends kotlin.jvm.internal.j implements x9.l<p, p> {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Object f13706b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Object obj) {
            super(1);
            this.f13706b = obj;
        }

        @Override // x9.l
        public final p invoke(p pVar) {
            p receiver = pVar;
            kotlin.jvm.internal.h.f(receiver, "$receiver");
            return (p) b0.this.f13704c.mo7invoke(receiver, new c1(this.f13706b));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b0(z zVar, x9.p pVar, p9.d dVar) {
        super(2, dVar);
        this.f13703b = zVar;
        this.f13704c = pVar;
    }

    @Override // r9.a
    public final p9.d<l9.m> create(Object obj, p9.d<?> completion) {
        kotlin.jvm.internal.h.f(completion, "completion");
        b0 b0Var = new b0(this.f13703b, this.f13704c, completion);
        b0Var.f13702a = obj;
        return b0Var;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(Object obj, p9.d<? super l9.m> dVar) {
        return ((b0) create(obj, dVar)).invokeSuspend(l9.m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        c5.w.F(obj);
        this.f13703b.c(new a(this.f13702a));
        return l9.m.f9594a;
    }
}
