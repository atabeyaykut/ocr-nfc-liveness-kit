package sf;

import c5.v;
import c5.w;
import nc.a0;
import nc.f0;
import rf.d;
import x9.p;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.dashboard.mostused.MostUsedServicesViewModel$favoriteOperation$1", f = "MostUsedServicesViewModel.kt", l = {56}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class e extends r9.i implements p<a0, p9.d<? super l9.m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public int f15412a;

    /* renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f15413b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ d f15414c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f15415d;

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.dashboard.mostused.MostUsedServicesViewModel$favoriteOperation$1$job$1", f = "MostUsedServicesViewModel.kt", l = {54}, m = "invokeSuspend")
    public static final class a extends r9.i implements p<a0, p9.d<? super l9.m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public int f15416a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ d f15417b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ int f15418c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(d dVar, int r22, p9.d<? super a> dVar2) {
            super(2, dVar2);
            this.f15417b = dVar;
            this.f15418c = r22;
        }

        @Override // r9.a
        public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
            return new a(this.f15417b, this.f15418c, dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super l9.m> dVar) {
            return ((a) create(a0Var, dVar)).invokeSuspend(l9.m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            q9.a aVar = q9.a.COROUTINE_SUSPENDED;
            int r12 = this.f15416a;
            if (r12 == 0) {
                w.F(obj);
                rf.d dVar = this.f15417b.f15410i;
                d.a aVar2 = new d.a(this.f15418c);
                this.f15416a = 1;
                if (dVar.d(aVar2, this) == aVar) {
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
    public e(d dVar, int r22, p9.d<? super e> dVar2) {
        super(2, dVar2);
        this.f15414c = dVar;
        this.f15415d = r22;
    }

    @Override // r9.a
    public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
        e eVar = new e(this.f15414c, this.f15415d, dVar);
        eVar.f15413b = obj;
        return eVar;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(a0 a0Var, p9.d<? super l9.m> dVar) {
        return ((e) create(a0Var, dVar)).invokeSuspend(l9.m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        q9.a aVar = q9.a.COROUTINE_SUSPENDED;
        int r12 = this.f15412a;
        if (r12 == 0) {
            w.F(obj);
            a0 a0Var = (a0) this.f15413b;
            d dVar = this.f15414c;
            f0 f0VarN = v.n(a0Var, dVar.f15410i.f14642c, new a(dVar, this.f15415d, null), 2);
            this.f15412a = 1;
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
