package nf;

import c5.v;
import c5.w;
import nc.a0;
import nc.f0;
import rf.n;
import x9.p;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.dashboard.barcode.BarcodeServicesViewModel$unFavoriteOperation$1", f = "BarcodeServicesViewModel.kt", l = {90}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class j extends r9.i implements p<a0, p9.d<? super l9.m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public int f10930a;

    /* renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f10931b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ e f10932c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f10933d;

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.dashboard.barcode.BarcodeServicesViewModel$unFavoriteOperation$1$job$1", f = "BarcodeServicesViewModel.kt", l = {88}, m = "invokeSuspend")
    public static final class a extends r9.i implements p<a0, p9.d<? super l9.m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public int f10934a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ e f10935b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ int f10936c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(e eVar, int r22, p9.d<? super a> dVar) {
            super(2, dVar);
            this.f10935b = eVar;
            this.f10936c = r22;
        }

        @Override // r9.a
        public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
            return new a(this.f10935b, this.f10936c, dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super l9.m> dVar) {
            return ((a) create(a0Var, dVar)).invokeSuspend(l9.m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            q9.a aVar = q9.a.COROUTINE_SUSPENDED;
            int r12 = this.f10934a;
            if (r12 == 0) {
                w.F(obj);
                rf.n nVar = this.f10935b.f10911j;
                n.a aVar2 = new n.a(this.f10936c);
                this.f10934a = 1;
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
    public j(e eVar, int r22, p9.d<? super j> dVar) {
        super(2, dVar);
        this.f10932c = eVar;
        this.f10933d = r22;
    }

    @Override // r9.a
    public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
        j jVar = new j(this.f10932c, this.f10933d, dVar);
        jVar.f10931b = obj;
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
        int r12 = this.f10930a;
        if (r12 == 0) {
            w.F(obj);
            a0 a0Var = (a0) this.f10931b;
            e eVar = this.f10932c;
            f0 f0VarN = v.n(a0Var, eVar.f10911j.f14677c, new a(eVar, this.f10933d, null), 2);
            this.f10930a = 1;
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
