package sf;

import c5.v;
import c5.w;
import nc.a0;
import nc.f0;
import rf.n;
import x9.p;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.dashboard.mostused.MostUsedServicesViewModel$unFavoriteOperation$1", f = "MostUsedServicesViewModel.kt", l = {90}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class i extends r9.i implements p<a0, p9.d<? super l9.m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public int f15430a;

    /* renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f15431b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ d f15432c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f15433d;

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.dashboard.mostused.MostUsedServicesViewModel$unFavoriteOperation$1$job$1", f = "MostUsedServicesViewModel.kt", l = {88}, m = "invokeSuspend")
    public static final class a extends r9.i implements p<a0, p9.d<? super l9.m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public int f15434a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ d f15435b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ int f15436c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(d dVar, int r22, p9.d<? super a> dVar2) {
            super(2, dVar2);
            this.f15435b = dVar;
            this.f15436c = r22;
        }

        @Override // r9.a
        public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
            return new a(this.f15435b, this.f15436c, dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super l9.m> dVar) {
            return ((a) create(a0Var, dVar)).invokeSuspend(l9.m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            q9.a aVar = q9.a.COROUTINE_SUSPENDED;
            int r12 = this.f15434a;
            if (r12 == 0) {
                w.F(obj);
                n nVar = this.f15435b.f15411j;
                n.a aVar2 = new n.a(this.f15436c);
                this.f15434a = 1;
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
    public i(d dVar, int r22, p9.d<? super i> dVar2) {
        super(2, dVar2);
        this.f15432c = dVar;
        this.f15433d = r22;
    }

    @Override // r9.a
    public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
        i iVar = new i(this.f15432c, this.f15433d, dVar);
        iVar.f15431b = obj;
        return iVar;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(a0 a0Var, p9.d<? super l9.m> dVar) {
        return ((i) create(a0Var, dVar)).invokeSuspend(l9.m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        q9.a aVar = q9.a.COROUTINE_SUSPENDED;
        int r12 = this.f15430a;
        if (r12 == 0) {
            w.F(obj);
            a0 a0Var = (a0) this.f15431b;
            d dVar = this.f15432c;
            f0 f0VarN = v.n(a0Var, dVar.f15411j.f14677c, new a(dVar, this.f15433d, null), 2);
            this.f15430a = 1;
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
