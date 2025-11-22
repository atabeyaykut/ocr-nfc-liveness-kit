package rh;

import c5.v;
import c5.w;
import nc.a0;
import nc.f0;
import rh.s;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.myreport.completed.MobileAccidentCompletedReportViewModel$provideReportDetails$1", f = "MobileAccidentCompletedReportViewModel.kt", l = {123}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class k extends r9.i implements x9.p<a0, p9.d<? super l9.m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public int f14779a;

    /* renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f14780b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ d f14781c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f14782d;

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.myreport.completed.MobileAccidentCompletedReportViewModel$provideReportDetails$1$job$1", f = "MobileAccidentCompletedReportViewModel.kt", l = {121}, m = "invokeSuspend")
    public static final class a extends r9.i implements x9.p<a0, p9.d<? super l9.m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public int f14783a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ d f14784b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ String f14785c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(d dVar, String str, p9.d<? super a> dVar2) {
            super(2, dVar2);
            this.f14784b = dVar;
            this.f14785c = str;
        }

        @Override // r9.a
        public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
            return new a(this.f14784b, this.f14785c, dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super l9.m> dVar) {
            return ((a) create(a0Var, dVar)).invokeSuspend(l9.m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            q9.a aVar = q9.a.COROUTINE_SUSPENDED;
            int r12 = this.f14783a;
            if (r12 == 0) {
                w.F(obj);
                s sVar = this.f14784b.f14737k;
                s.a aVar2 = new s.a(this.f14785c);
                this.f14783a = 1;
                if (sVar.d(aVar2, this) == aVar) {
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
    public k(d dVar, String str, p9.d<? super k> dVar2) {
        super(2, dVar2);
        this.f14781c = dVar;
        this.f14782d = str;
    }

    @Override // r9.a
    public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
        k kVar = new k(this.f14781c, this.f14782d, dVar);
        kVar.f14780b = obj;
        return kVar;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(a0 a0Var, p9.d<? super l9.m> dVar) {
        return ((k) create(a0Var, dVar)).invokeSuspend(l9.m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        q9.a aVar = q9.a.COROUTINE_SUSPENDED;
        int r12 = this.f14779a;
        if (r12 == 0) {
            w.F(obj);
            a0 a0Var = (a0) this.f14780b;
            d dVar = this.f14781c;
            f0 f0VarN = v.n(a0Var, dVar.f14737k.f14817c, new a(dVar, this.f14782d, null), 2);
            this.f14779a = 1;
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
