package nf;

import c5.v;
import c5.w;
import nc.a0;
import nc.f0;
import nf.m;
import x9.p;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.dashboard.barcode.BarcodeServicesViewModel$fetchBarcodeServices$1", f = "BarcodeServicesViewModel.kt", l = {32}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class h extends r9.i implements p<a0, p9.d<? super l9.m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public int f10922a;

    /* renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f10923b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ e f10924c;

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.dashboard.barcode.BarcodeServicesViewModel$fetchBarcodeServices$1$job$1", f = "BarcodeServicesViewModel.kt", l = {30}, m = "invokeSuspend")
    public static final class a extends r9.i implements p<a0, p9.d<? super l9.m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public int f10925a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ e f10926b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(e eVar, p9.d<? super a> dVar) {
            super(2, dVar);
            this.f10926b = eVar;
        }

        @Override // r9.a
        public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
            return new a(this.f10926b, dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super l9.m> dVar) {
            return ((a) create(a0Var, dVar)).invokeSuspend(l9.m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            q9.a aVar = q9.a.COROUTINE_SUSPENDED;
            int r12 = this.f10925a;
            if (r12 == 0) {
                w.F(obj);
                m mVar = this.f10926b.f10909h;
                m.a aVar2 = new m.a();
                this.f10925a = 1;
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
    public h(e eVar, p9.d<? super h> dVar) {
        super(2, dVar);
        this.f10924c = eVar;
    }

    @Override // r9.a
    public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
        h hVar = new h(this.f10924c, dVar);
        hVar.f10923b = obj;
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
        int r12 = this.f10922a;
        if (r12 == 0) {
            w.F(obj);
            a0 a0Var = (a0) this.f10923b;
            e eVar = this.f10924c;
            f0 f0VarN = v.n(a0Var, eVar.f10909h.f10943c, new a(eVar, null), 2);
            this.f10922a = 1;
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
