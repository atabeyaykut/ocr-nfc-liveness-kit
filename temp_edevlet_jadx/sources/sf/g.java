package sf;

import c5.v;
import c5.w;
import nc.a0;
import nc.f0;
import sf.m;
import x9.p;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.dashboard.mostused.MostUsedServicesViewModel$fetchMostUsedList$1", f = "MostUsedServicesViewModel.kt", l = {32}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class g extends r9.i implements p<a0, p9.d<? super l9.m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public int f15422a;

    /* renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f15423b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ d f15424c;

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.dashboard.mostused.MostUsedServicesViewModel$fetchMostUsedList$1$job$1", f = "MostUsedServicesViewModel.kt", l = {30}, m = "invokeSuspend")
    public static final class a extends r9.i implements p<a0, p9.d<? super l9.m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public int f15425a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ d f15426b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(d dVar, p9.d<? super a> dVar2) {
            super(2, dVar2);
            this.f15426b = dVar;
        }

        @Override // r9.a
        public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
            return new a(this.f15426b, dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super l9.m> dVar) {
            return ((a) create(a0Var, dVar)).invokeSuspend(l9.m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            q9.a aVar = q9.a.COROUTINE_SUSPENDED;
            int r12 = this.f15425a;
            if (r12 == 0) {
                w.F(obj);
                m mVar = this.f15426b.f15409h;
                m.a aVar2 = new m.a();
                this.f15425a = 1;
                if (mVar.d(aVar2, this) == aVar) {
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
    public g(d dVar, p9.d<? super g> dVar2) {
        super(2, dVar2);
        this.f15424c = dVar;
    }

    @Override // r9.a
    public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
        g gVar = new g(this.f15424c, dVar);
        gVar.f15423b = obj;
        return gVar;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(a0 a0Var, p9.d<? super l9.m> dVar) {
        return ((g) create(a0Var, dVar)).invokeSuspend(l9.m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        q9.a aVar = q9.a.COROUTINE_SUSPENDED;
        int r12 = this.f15422a;
        if (r12 == 0) {
            w.F(obj);
            a0 a0Var = (a0) this.f15423b;
            d dVar = this.f15424c;
            f0 f0VarN = v.n(a0Var, dVar.f15409h.f15446c, new a(dVar, null), 2);
            this.f15422a = 1;
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
