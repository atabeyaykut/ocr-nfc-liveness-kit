package rh;

import c5.v;
import c5.w;
import nc.a0;
import nc.f0;
import zg.j;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.myreport.completed.MobileAccidentCompletedReportViewModel$saveReport$1", f = "MobileAccidentCompletedReportViewModel.kt", l = {179}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class m extends r9.i implements x9.p<a0, p9.d<? super l9.m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public int f14789a;

    /* renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f14790b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ d f14791c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f14792d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f14793e;
    public final /* synthetic */ String f;

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.myreport.completed.MobileAccidentCompletedReportViewModel$saveReport$1$job$1", f = "MobileAccidentCompletedReportViewModel.kt", l = {171}, m = "invokeSuspend")
    public static final class a extends r9.i implements x9.p<a0, p9.d<? super l9.m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public int f14794a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ d f14795b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ String f14796c;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ String f14797d;

        /* renamed from: e, reason: collision with root package name */
        public final /* synthetic */ String f14798e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(d dVar, String str, String str2, String str3, p9.d<? super a> dVar2) {
            super(2, dVar2);
            this.f14795b = dVar;
            this.f14796c = str;
            this.f14797d = str2;
            this.f14798e = str3;
        }

        @Override // r9.a
        public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
            return new a(this.f14795b, this.f14796c, this.f14797d, this.f14798e, dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super l9.m> dVar) {
            return ((a) create(a0Var, dVar)).invokeSuspend(l9.m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            q9.a aVar = q9.a.COROUTINE_SUSPENDED;
            int r12 = this.f14794a;
            if (r12 == 0) {
                w.F(obj);
                zg.j jVar = this.f14795b.f14739m;
                j.a aVar2 = new j.a(this.f14796c, this.f14797d, this.f14798e);
                this.f14794a = 1;
                if (jVar.d(aVar2, this) == aVar) {
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
    public m(d dVar, String str, String str2, String str3, p9.d<? super m> dVar2) {
        super(2, dVar2);
        this.f14791c = dVar;
        this.f14792d = str;
        this.f14793e = str2;
        this.f = str3;
    }

    @Override // r9.a
    public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
        m mVar = new m(this.f14791c, this.f14792d, this.f14793e, this.f, dVar);
        mVar.f14790b = obj;
        return mVar;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(a0 a0Var, p9.d<? super l9.m> dVar) {
        return ((m) create(a0Var, dVar)).invokeSuspend(l9.m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        q9.a aVar = q9.a.COROUTINE_SUSPENDED;
        int r12 = this.f14789a;
        if (r12 == 0) {
            w.F(obj);
            a0 a0Var = (a0) this.f14790b;
            d dVar = this.f14791c;
            f0 f0VarN = v.n(a0Var, dVar.f14739m.f20351c, new a(dVar, this.f14792d, this.f14793e, this.f, null), 2);
            this.f14789a = 1;
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
