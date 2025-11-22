package rh;

import c5.v;
import c5.w;
import nc.a0;
import nc.f0;
import rh.r;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.myreport.completed.MobileAccidentCompletedReportViewModel$provideMergedReportDetails$1", f = "MobileAccidentCompletedReportViewModel.kt", l = {148}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class i extends r9.i implements x9.p<a0, p9.d<? super l9.m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public int f14769a;

    /* renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f14770b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ d f14771c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f14772d;

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.myreport.completed.MobileAccidentCompletedReportViewModel$provideMergedReportDetails$1$job$1", f = "MobileAccidentCompletedReportViewModel.kt", l = {146}, m = "invokeSuspend")
    public static final class a extends r9.i implements x9.p<a0, p9.d<? super l9.m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public int f14773a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ d f14774b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ String f14775c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(d dVar, String str, p9.d<? super a> dVar2) {
            super(2, dVar2);
            this.f14774b = dVar;
            this.f14775c = str;
        }

        @Override // r9.a
        public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
            return new a(this.f14774b, this.f14775c, dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super l9.m> dVar) {
            return ((a) create(a0Var, dVar)).invokeSuspend(l9.m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            q9.a aVar = q9.a.COROUTINE_SUSPENDED;
            int r12 = this.f14773a;
            if (r12 == 0) {
                w.F(obj);
                r rVar = this.f14774b.f14738l;
                r.a aVar2 = new r.a(this.f14775c);
                this.f14773a = 1;
                if (rVar.d(aVar2, this) == aVar) {
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
    public i(d dVar, String str, p9.d<? super i> dVar2) {
        super(2, dVar2);
        this.f14771c = dVar;
        this.f14772d = str;
    }

    @Override // r9.a
    public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
        i iVar = new i(this.f14771c, this.f14772d, dVar);
        iVar.f14770b = obj;
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
        int r12 = this.f14769a;
        if (r12 == 0) {
            w.F(obj);
            a0 a0Var = (a0) this.f14770b;
            d dVar = this.f14771c;
            f0 f0VarN = v.n(a0Var, dVar.f14738l.f14814c, new a(dVar, this.f14772d, null), 2);
            this.f14769a = 1;
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
