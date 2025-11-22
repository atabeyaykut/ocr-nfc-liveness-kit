package rf;

import c5.v;
import c5.w;
import nc.a0;
import nc.f0;
import rf.c;
import x9.p;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.dashboard.favorite.FavoriteServicesViewModel$fetchFavoriteList$1", f = "FavoriteServicesViewModel.kt", l = {29}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class h extends r9.i implements p<a0, p9.d<? super l9.m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public int f14654a;

    /* renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f14655b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ g f14656c;

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.dashboard.favorite.FavoriteServicesViewModel$fetchFavoriteList$1$job$1", f = "FavoriteServicesViewModel.kt", l = {27}, m = "invokeSuspend")
    public static final class a extends r9.i implements p<a0, p9.d<? super l9.m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public int f14657a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ g f14658b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(g gVar, p9.d<? super a> dVar) {
            super(2, dVar);
            this.f14658b = gVar;
        }

        @Override // r9.a
        public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
            return new a(this.f14658b, dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super l9.m> dVar) {
            return ((a) create(a0Var, dVar)).invokeSuspend(l9.m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            q9.a aVar = q9.a.COROUTINE_SUSPENDED;
            int r12 = this.f14657a;
            if (r12 == 0) {
                w.F(obj);
                c cVar = this.f14658b.f14652h;
                c.a aVar2 = new c.a();
                this.f14657a = 1;
                if (cVar.d(aVar2, this) == aVar) {
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

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(g gVar, p9.d<? super h> dVar) {
        super(2, dVar);
        this.f14656c = gVar;
    }

    @Override // r9.a
    public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
        h hVar = new h(this.f14656c, dVar);
        hVar.f14655b = obj;
        return hVar;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(a0 a0Var, p9.d<? super l9.m> dVar) {
        return ((h) create(a0Var, dVar)).invokeSuspend(l9.m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        q9.a aVar = q9.a.COROUTINE_SUSPENDED;
        int r12 = this.f14654a;
        if (r12 == 0) {
            w.F(obj);
            a0 a0Var = (a0) this.f14655b;
            g gVar = this.f14656c;
            f0 f0VarN = v.n(a0Var, gVar.f14652h.f14639c, new a(gVar, null), 2);
            this.f14654a = 1;
            if (f0VarN.m0(this) == aVar) {
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
