package rf;

import c5.v;
import c5.w;
import nc.a0;
import nc.f0;
import rf.n;
import x9.p;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.dashboard.favorite.FavoriteServicesViewModel$unFavoriteOperation$1", f = "FavoriteServicesViewModel.kt", l = {60}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class j extends r9.i implements p<a0, p9.d<? super l9.m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public int f14662a;

    /* renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f14663b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ g f14664c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f14665d;

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.dashboard.favorite.FavoriteServicesViewModel$unFavoriteOperation$1$job$1", f = "FavoriteServicesViewModel.kt", l = {58}, m = "invokeSuspend")
    public static final class a extends r9.i implements p<a0, p9.d<? super l9.m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public int f14666a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ g f14667b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ int f14668c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(g gVar, int r22, p9.d<? super a> dVar) {
            super(2, dVar);
            this.f14667b = gVar;
            this.f14668c = r22;
        }

        @Override // r9.a
        public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
            return new a(this.f14667b, this.f14668c, dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super l9.m> dVar) {
            return ((a) create(a0Var, dVar)).invokeSuspend(l9.m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            q9.a aVar = q9.a.COROUTINE_SUSPENDED;
            int r12 = this.f14666a;
            if (r12 == 0) {
                w.F(obj);
                n nVar = this.f14667b.f14653i;
                n.a aVar2 = new n.a(this.f14668c);
                this.f14666a = 1;
                if (nVar.d(aVar2, this) == aVar) {
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
    public j(g gVar, int r22, p9.d<? super j> dVar) {
        super(2, dVar);
        this.f14664c = gVar;
        this.f14665d = r22;
    }

    @Override // r9.a
    public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
        j jVar = new j(this.f14664c, this.f14665d, dVar);
        jVar.f14663b = obj;
        return jVar;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(a0 a0Var, p9.d<? super l9.m> dVar) {
        return ((j) create(a0Var, dVar)).invokeSuspend(l9.m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        q9.a aVar = q9.a.COROUTINE_SUSPENDED;
        int r12 = this.f14662a;
        if (r12 == 0) {
            w.F(obj);
            a0 a0Var = (a0) this.f14663b;
            g gVar = this.f14664c;
            f0 f0VarN = v.n(a0Var, gVar.f14653i.f14677c, new a(gVar, this.f14665d, null), 2);
            this.f14662a = 1;
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
