package qc;

import c5.w;

/* loaded from: classes2.dex */
public final class r<T> implements kotlinx.coroutines.flow.g<T> {

    /* renamed from: a, reason: collision with root package name */
    public final p9.f f13535a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f13536b;

    /* renamed from: c, reason: collision with root package name */
    public final a f13537c;

    @r9.e(c = "kotlinx.coroutines.flow.internal.UndispatchedContextCollector$emitRef$1", f = "ChannelFlow.kt", l = {212}, m = "invokeSuspend")
    public static final class a extends r9.i implements x9.p<T, p9.d<? super l9.m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public int f13538a;

        /* renamed from: b, reason: collision with root package name */
        public /* synthetic */ Object f13539b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ kotlinx.coroutines.flow.g<T> f13540c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public a(kotlinx.coroutines.flow.g<? super T> gVar, p9.d<? super a> dVar) {
            super(2, dVar);
            this.f13540c = gVar;
        }

        @Override // r9.a
        public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
            a aVar = new a(this.f13540c, dVar);
            aVar.f13539b = obj;
            return aVar;
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(Object obj, p9.d<? super l9.m> dVar) {
            return ((a) create(obj, dVar)).invokeSuspend(l9.m.f9594a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            q9.a aVar = q9.a.COROUTINE_SUSPENDED;
            int r12 = this.f13538a;
            if (r12 == 0) {
                w.F(obj);
                Object obj2 = this.f13539b;
                this.f13538a = 1;
                if (this.f13540c.emit(obj2, this) == aVar) {
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

    public r(kotlinx.coroutines.flow.g<? super T> gVar, p9.f fVar) {
        this.f13535a = fVar;
        this.f13536b = kotlinx.coroutines.internal.w.b(fVar);
        this.f13537c = new a(gVar, null);
    }

    @Override // kotlinx.coroutines.flow.g
    public final Object emit(T t10, p9.d<? super l9.m> dVar) {
        Object objH = a6.a.H(this.f13535a, t10, this.f13536b, this.f13537c, dVar);
        return objH == q9.a.COROUTINE_SUSPENDED ? objH : l9.m.f9594a;
    }
}
