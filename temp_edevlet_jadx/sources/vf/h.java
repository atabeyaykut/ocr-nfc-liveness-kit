package vf;

import c5.v;
import c5.w;
import l9.m;
import nc.a0;
import nc.f0;
import rf.n;
import x9.p;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.dashboard.newest.NewestServicesViewModel$unFavoriteOperation$1", f = "NewestServicesViewModel.kt", l = {93}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class h extends r9.i implements p<a0, p9.d<? super m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public int f18612a;

    /* renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f18613b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ c f18614c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f18615d;

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.dashboard.newest.NewestServicesViewModel$unFavoriteOperation$1$job$1", f = "NewestServicesViewModel.kt", l = {91}, m = "invokeSuspend")
    public static final class a extends r9.i implements p<a0, p9.d<? super m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public int f18616a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ c f18617b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ int f18618c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(c cVar, int r22, p9.d<? super a> dVar) {
            super(2, dVar);
            this.f18617b = cVar;
            this.f18618c = r22;
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            return new a(this.f18617b, this.f18618c, dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super m> dVar) {
            return ((a) create(a0Var, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            q9.a aVar = q9.a.COROUTINE_SUSPENDED;
            int r12 = this.f18616a;
            if (r12 == 0) {
                w.F(obj);
                n nVar = this.f18617b.f18593j;
                n.a aVar2 = new n.a(this.f18618c);
                this.f18616a = 1;
                if (nVar.d(aVar2, this) == aVar) {
                    return aVar;
                }
            } else {
                if (r12 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                w.F(obj);
            }
            return m.f9594a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(c cVar, int r22, p9.d<? super h> dVar) {
        super(2, dVar);
        this.f18614c = cVar;
        this.f18615d = r22;
    }

    @Override // r9.a
    public final p9.d<m> create(Object obj, p9.d<?> dVar) {
        h hVar = new h(this.f18614c, this.f18615d, dVar);
        hVar.f18613b = obj;
        return hVar;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(a0 a0Var, p9.d<? super m> dVar) {
        return ((h) create(a0Var, dVar)).invokeSuspend(m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        q9.a aVar = q9.a.COROUTINE_SUSPENDED;
        int r12 = this.f18612a;
        if (r12 == 0) {
            w.F(obj);
            a0 a0Var = (a0) this.f18613b;
            c cVar = this.f18614c;
            f0 f0VarN = v.n(a0Var, cVar.f18593j.f14677c, new a(cVar, this.f18615d, null), 2);
            this.f18612a = 1;
            if (f0VarN.m0(this) == aVar) {
                return aVar;
            }
        } else {
            if (r12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            w.F(obj);
        }
        return m.f9594a;
    }
}
