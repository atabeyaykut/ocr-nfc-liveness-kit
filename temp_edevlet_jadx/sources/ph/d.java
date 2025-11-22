package ph;

import c5.v;
import c5.w;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import kotlinx.coroutines.flow.f;
import l9.m;
import nc.a0;
import nc.f0;
import ph.e;
import r0.z;
import r9.i;
import tr.gov.turkiye.edevlet.kapisi.core.di.viewmodel.DaggerMvRxViewModelFactory;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.ControlConfirmationRequestModel;
import x9.p;

/* loaded from: classes3.dex */
public final class d extends af.c<ph.c> {

    /* renamed from: h, reason: collision with root package name */
    public final e f13242h;

    public static final class a extends DaggerMvRxViewModelFactory<d, ph.c> {
        public a(kotlin.jvm.internal.d dVar) {
            super(d.class);
        }
    }

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.merge.waiting.MobileAccidentWaitingApprovalViewModel$checkApproval$1", f = "MobileAccidentWaitingApprovalViewModel.kt", l = {27}, m = "invokeSuspend")
    public static final class b extends i implements p<a0, p9.d<? super m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public int f13243a;

        /* renamed from: b, reason: collision with root package name */
        public /* synthetic */ Object f13244b;

        @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.merge.waiting.MobileAccidentWaitingApprovalViewModel$checkApproval$1$job$1", f = "MobileAccidentWaitingApprovalViewModel.kt", l = {25}, m = "invokeSuspend")
        public static final class a extends i implements p<a0, p9.d<? super m>, Object> {

            /* renamed from: a, reason: collision with root package name */
            public int f13246a;

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ d f13247b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(d dVar, p9.d<? super a> dVar2) {
                super(2, dVar2);
                this.f13247b = dVar;
            }

            @Override // r9.a
            public final p9.d<m> create(Object obj, p9.d<?> dVar) {
                return new a(this.f13247b, dVar);
            }

            @Override // x9.p
            /* renamed from: invoke */
            public final Object mo7invoke(a0 a0Var, p9.d<? super m> dVar) {
                return ((a) create(a0Var, dVar)).invokeSuspend(m.f9594a);
            }

            @Override // r9.a
            public final Object invokeSuspend(Object obj) throws Throwable {
                q9.a aVar = q9.a.COROUTINE_SUSPENDED;
                int r12 = this.f13246a;
                if (r12 == 0) {
                    w.F(obj);
                    e eVar = this.f13247b.f13242h;
                    e.a aVar2 = new e.a();
                    this.f13246a = 1;
                    if (eVar.d(aVar2, this) == aVar) {
                        return aVar;
                    }
                } else {
                    if (r12 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    w.F(obj);
                }
                return m.f9594a;
            }
        }

        public b(p9.d<? super b> dVar) {
            super(2, dVar);
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            b bVar = d.this.new b(dVar);
            bVar.f13244b = obj;
            return bVar;
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super m> dVar) {
            return ((b) create(a0Var, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            q9.a aVar = q9.a.COROUTINE_SUSPENDED;
            int r12 = this.f13243a;
            if (r12 == 0) {
                w.F(obj);
                a0 a0Var = (a0) this.f13244b;
                d dVar = d.this;
                f0 f0VarN = v.n(a0Var, dVar.f13242h.f13252c, new a(dVar, null), 2);
                this.f13243a = 1;
                if (f0VarN.m0(this) == aVar) {
                    return aVar;
                }
            } else {
                if (r12 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                w.F(obj);
            }
            return m.f9594a;
        }
    }

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.merge.waiting.MobileAccidentWaitingApprovalViewModel$checkApproval$2", f = "MobileAccidentWaitingApprovalViewModel.kt", l = {}, m = "invokeSuspend")
    public static final class c extends i implements p<f<? extends Result<ControlConfirmationRequestModel>>, p9.d<? super m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public /* synthetic */ Object f13248a;

        public static final class a extends j implements p<ph.c, r0.b<? extends Result<ControlConfirmationRequestModel>>, ph.c> {

            /* renamed from: a, reason: collision with root package name */
            public static final a f13250a = new a();

            public a() {
                super(2);
            }

            @Override // x9.p
            /* renamed from: invoke */
            public final ph.c mo7invoke(ph.c cVar, r0.b<? extends Result<ControlConfirmationRequestModel>> bVar) {
                ph.c execute = cVar;
                r0.b<? extends Result<ControlConfirmationRequestModel>> result = bVar;
                h.f(execute, "$this$execute");
                h.f(result, "result");
                try {
                    Result<ControlConfirmationRequestModel> resultA = result.a();
                    ControlConfirmationRequestModel orThrow = resultA != null ? resultA.getOrThrow() : null;
                    return orThrow != null ? new ph.c(result, orThrow) : ph.c.copy$default(execute, result, null, 2, null);
                } catch (Throwable th2) {
                    return ph.c.copy$default(execute, new r0.i(null, th2), null, 2, null);
                }
            }
        }

        public c(p9.d<? super c> dVar) {
            super(2, dVar);
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            c cVar = d.this.new c(dVar);
            cVar.f13248a = obj;
            return cVar;
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(f<? extends Result<ControlConfirmationRequestModel>> fVar, p9.d<? super m> dVar) {
            return ((c) create(fVar, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            w.F(obj);
            z.a(d.this, (f) this.f13248a, a.f13250a);
            return m.f9594a;
        }
    }

    static {
        new a(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(ph.c state, e mobileAccidentWaitingApprovalWork) {
        super(state);
        h.f(state, "state");
        h.f(mobileAccidentWaitingApprovalWork, "mobileAccidentWaitingApprovalWork");
        this.f13242h = mobileAccidentWaitingApprovalWork;
        d();
    }

    public final void d() {
        b bVar = new b(null);
        a0 a0Var = this.f13883c;
        v.C(a0Var, null, 0, bVar, 3);
        v.D(a0Var, this.f13242h, new c(null));
    }
}
