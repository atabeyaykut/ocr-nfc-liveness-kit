package kotlinx.coroutines.flow;

@r9.e(c = "kotlinx.coroutines.flow.FlowKt__MergeKt$mapLatest$1", f = "Merge.kt", l = {214, 214}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class s extends r9.i implements x9.q<g<Object>, Object, p9.d<? super l9.m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public int f9113a;

    /* renamed from: b, reason: collision with root package name */
    public /* synthetic */ g f9114b;

    /* renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f9115c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ x9.p<Object, p9.d<Object>, Object> f9116d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public s(x9.p<Object, ? super p9.d<Object>, ? extends Object> pVar, p9.d<? super s> dVar) {
        super(3, dVar);
        this.f9116d = pVar;
    }

    @Override // x9.q
    public final Object i(g<Object> gVar, Object obj, p9.d<? super l9.m> dVar) {
        s sVar = new s(this.f9116d, dVar);
        sVar.f9114b = gVar;
        sVar.f9115c = obj;
        return sVar.invokeSuspend(l9.m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        g gVar;
        q9.a aVar = q9.a.COROUTINE_SUSPENDED;
        int r12 = this.f9113a;
        if (r12 == 0) {
            c5.w.F(obj);
            gVar = this.f9114b;
            Object obj2 = this.f9115c;
            this.f9114b = gVar;
            this.f9113a = 1;
            obj = this.f9116d.mo7invoke(obj2, this);
            if (obj == aVar) {
                return aVar;
            }
        } else {
            if (r12 != 1) {
                if (r12 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c5.w.F(obj);
                return l9.m.f9594a;
            }
            gVar = this.f9114b;
            c5.w.F(obj);
        }
        this.f9114b = null;
        this.f9113a = 2;
        if (gVar.emit(obj, this) == aVar) {
            return aVar;
        }
        return l9.m.f9594a;
    }
}
