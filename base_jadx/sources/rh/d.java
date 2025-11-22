package rh;

import c5.v;
import c5.w;
import nc.a0;
import nc.f0;
import r0.z;
import rh.p;
import tr.gov.turkiye.edevlet.kapisi.core.di.viewmodel.DaggerMvRxViewModelFactory;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.CompletedReportListModel;

/* loaded from: classes3.dex */
public final class d extends af.c<rh.c> {

    /* renamed from: h, reason: collision with root package name */
    public final q f14734h;

    /* renamed from: i, reason: collision with root package name */
    public final p f14735i;

    /* renamed from: j, reason: collision with root package name */
    public final rh.a f14736j;

    /* renamed from: k, reason: collision with root package name */
    public final s f14737k;

    /* renamed from: l, reason: collision with root package name */
    public final r f14738l;

    /* renamed from: m, reason: collision with root package name */
    public final zg.j f14739m;

    public static final class a extends DaggerMvRxViewModelFactory<d, rh.c> {
        public a(kotlin.jvm.internal.d dVar) {
            super(d.class);
        }
    }

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.myreport.completed.MobileAccidentCompletedReportViewModel$provideCompletedReportList$1", f = "MobileAccidentCompletedReportViewModel.kt", l = {63}, m = "invokeSuspend")
    public static final class b extends r9.i implements x9.p<a0, p9.d<? super l9.m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public int f14740a;

        /* renamed from: b, reason: collision with root package name */
        public /* synthetic */ Object f14741b;

        @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.myreport.completed.MobileAccidentCompletedReportViewModel$provideCompletedReportList$1$job$1", f = "MobileAccidentCompletedReportViewModel.kt", l = {61}, m = "invokeSuspend")
        public static final class a extends r9.i implements x9.p<a0, p9.d<? super l9.m>, Object> {

            /* renamed from: a, reason: collision with root package name */
            public int f14743a;

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ d f14744b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(d dVar, p9.d<? super a> dVar2) {
                super(2, dVar2);
                this.f14744b = dVar;
            }

            @Override // r9.a
            public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
                return new a(this.f14744b, dVar);
            }

            @Override // x9.p
            /* renamed from: invoke */
            public final Object mo7invoke(a0 a0Var, p9.d<? super l9.m> dVar) {
                return ((a) create(a0Var, dVar)).invokeSuspend(l9.m.f9594a);
            }

            @Override // r9.a
            public final Object invokeSuspend(Object obj) throws Throwable {
                q9.a aVar = q9.a.COROUTINE_SUSPENDED;
                int r12 = this.f14743a;
                if (r12 == 0) {
                    w.F(obj);
                    p pVar = this.f14744b.f14735i;
                    p.a aVar2 = new p.a();
                    this.f14743a = 1;
                    if (pVar.d(aVar2, this) == aVar) {
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

        public b(p9.d<? super b> dVar) {
            super(2, dVar);
        }

        @Override // r9.a
        public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
            b bVar = d.this.new b(dVar);
            bVar.f14741b = obj;
            return bVar;
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super l9.m> dVar) {
            return ((b) create(a0Var, dVar)).invokeSuspend(l9.m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            q9.a aVar = q9.a.COROUTINE_SUSPENDED;
            int r12 = this.f14740a;
            if (r12 == 0) {
                w.F(obj);
                a0 a0Var = (a0) this.f14741b;
                d dVar = d.this;
                f0 f0VarN = v.n(a0Var, dVar.f14735i.f14808c, new a(dVar, null), 2);
                this.f14740a = 1;
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

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.myreport.completed.MobileAccidentCompletedReportViewModel$provideCompletedReportList$2", f = "MobileAccidentCompletedReportViewModel.kt", l = {}, m = "invokeSuspend")
    public static final class c extends r9.i implements x9.p<kotlinx.coroutines.flow.f<? extends Result<CompletedReportListModel>>, p9.d<? super l9.m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public /* synthetic */ Object f14745a;

        public static final class a extends kotlin.jvm.internal.j implements x9.p<rh.c, r0.b<? extends Result<CompletedReportListModel>>, rh.c> {

            /* renamed from: a, reason: collision with root package name */
            public static final a f14747a = new a();

            public a() {
                super(2);
            }

            @Override // x9.p
            /* renamed from: invoke */
            public final rh.c mo7invoke(rh.c cVar, r0.b<? extends Result<CompletedReportListModel>> bVar) {
                rh.c cVar2;
                rh.c cVarCopy$default;
                rh.c execute = cVar;
                r0.b<? extends Result<CompletedReportListModel>> result = bVar;
                kotlin.jvm.internal.h.f(execute, "$this$execute");
                kotlin.jvm.internal.h.f(result, "result");
                try {
                    Result<CompletedReportListModel> resultA = result.a();
                    CompletedReportListModel orThrow = resultA != null ? resultA.getOrThrow() : null;
                    try {
                        if (orThrow != null) {
                            cVar2 = execute;
                            cVarCopy$default = rh.c.copy$default(execute, null, null, result, orThrow, null, null, null, null, null, null, null, null, 4083, null);
                        } else {
                            cVar2 = execute;
                            cVarCopy$default = rh.c.copy$default(cVar2, null, null, result, null, null, null, null, null, null, null, null, null, 4091, null);
                        }
                        return cVarCopy$default;
                    } catch (Throwable th2) {
                        th = th2;
                        return rh.c.copy$default(cVar2, null, null, new r0.i(null, th), null, null, null, null, null, null, null, null, null, 4091, null);
                    }
                } catch (Throwable th3) {
                    th = th3;
                    cVar2 = execute;
                }
            }
        }

        public c(p9.d<? super c> dVar) {
            super(2, dVar);
        }

        @Override // r9.a
        public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
            c cVar = d.this.new c(dVar);
            cVar.f14745a = obj;
            return cVar;
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(kotlinx.coroutines.flow.f<? extends Result<CompletedReportListModel>> fVar, p9.d<? super l9.m> dVar) {
            return ((c) create(fVar, dVar)).invokeSuspend(l9.m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            w.F(obj);
            z.a(d.this, (kotlinx.coroutines.flow.f) this.f14745a, a.f14747a);
            return l9.m.f9594a;
        }
    }

    static {
        new a(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(rh.c state, q mobileAccidentInProgressReportWork, p mobileAccidentCompletedReportWork, rh.a mobileAccidentCompletedReportDownloadWork, s mobileAccidentReportDetailsWork, r mobileAccidentMergedReportDetailsWork, zg.j mobileAccidentApproveSaveReportWork) {
        super(state);
        kotlin.jvm.internal.h.f(state, "state");
        kotlin.jvm.internal.h.f(mobileAccidentInProgressReportWork, "mobileAccidentInProgressReportWork");
        kotlin.jvm.internal.h.f(mobileAccidentCompletedReportWork, "mobileAccidentCompletedReportWork");
        kotlin.jvm.internal.h.f(mobileAccidentCompletedReportDownloadWork, "mobileAccidentCompletedReportDownloadWork");
        kotlin.jvm.internal.h.f(mobileAccidentReportDetailsWork, "mobileAccidentReportDetailsWork");
        kotlin.jvm.internal.h.f(mobileAccidentMergedReportDetailsWork, "mobileAccidentMergedReportDetailsWork");
        kotlin.jvm.internal.h.f(mobileAccidentApproveSaveReportWork, "mobileAccidentApproveSaveReportWork");
        this.f14734h = mobileAccidentInProgressReportWork;
        this.f14735i = mobileAccidentCompletedReportWork;
        this.f14736j = mobileAccidentCompletedReportDownloadWork;
        this.f14737k = mobileAccidentReportDetailsWork;
        this.f14738l = mobileAccidentMergedReportDetailsWork;
        this.f14739m = mobileAccidentApproveSaveReportWork;
    }

    public final void d() {
        b bVar = new b(null);
        a0 a0Var = this.f13883c;
        v.C(a0Var, null, 0, bVar, 3);
        v.D(a0Var, this.f14735i, new c(null));
    }
}
