package th;

import c5.v;
import c5.w;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import l9.m;
import nc.a0;
import nc.f0;
import r0.z;
import r9.i;
import th.g;
import tr.gov.turkiye.edevlet.kapisi.core.di.viewmodel.DaggerMvRxViewModelFactory;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.TwoFactorModel;
import x9.p;

/* loaded from: classes3.dex */
public final class d extends af.c<th.c> {

    /* renamed from: h, reason: collision with root package name */
    public final g f15739h;

    /* renamed from: i, reason: collision with root package name */
    public final th.a f15740i;

    public static final class a extends DaggerMvRxViewModelFactory<d, th.c> {
        public a(kotlin.jvm.internal.d dVar) {
            super(d.class);
        }
    }

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.onboarding.MobileAccidentOnboardingViewModel$checkLoginLevel$1", f = "MobileAccidentOnboardingViewModel.kt", l = {29}, m = "invokeSuspend")
    public static final class b extends i implements p<a0, p9.d<? super m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public int f15741a;

        /* renamed from: b, reason: collision with root package name */
        public /* synthetic */ Object f15742b;

        @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.onboarding.MobileAccidentOnboardingViewModel$checkLoginLevel$1$job$1", f = "MobileAccidentOnboardingViewModel.kt", l = {27}, m = "invokeSuspend")
        public static final class a extends i implements p<a0, p9.d<? super m>, Object> {

            /* renamed from: a, reason: collision with root package name */
            public int f15744a;

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ d f15745b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(d dVar, p9.d<? super a> dVar2) {
                super(2, dVar2);
                this.f15745b = dVar;
            }

            @Override // r9.a
            public final p9.d<m> create(Object obj, p9.d<?> dVar) {
                return new a(this.f15745b, dVar);
            }

            @Override // x9.p
            /* renamed from: invoke */
            public final Object mo7invoke(a0 a0Var, p9.d<? super m> dVar) {
                return ((a) create(a0Var, dVar)).invokeSuspend(m.f9594a);
            }

            @Override // r9.a
            public final Object invokeSuspend(Object obj) throws Throwable {
                q9.a aVar = q9.a.COROUTINE_SUSPENDED;
                int r12 = this.f15744a;
                if (r12 == 0) {
                    w.F(obj);
                    g gVar = this.f15745b.f15739h;
                    g.a aVar2 = new g.a();
                    this.f15744a = 1;
                    if (gVar.d(aVar2, this) == aVar) {
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
            bVar.f15742b = obj;
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
            int r12 = this.f15741a;
            if (r12 == 0) {
                w.F(obj);
                a0 a0Var = (a0) this.f15742b;
                d dVar = d.this;
                f0 f0VarN = v.n(a0Var, dVar.f15739h.f15758c, new a(dVar, null), 2);
                this.f15741a = 1;
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

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.onboarding.MobileAccidentOnboardingViewModel$checkLoginLevel$2", f = "MobileAccidentOnboardingViewModel.kt", l = {}, m = "invokeSuspend")
    public static final class c extends i implements p<kotlinx.coroutines.flow.f<? extends Result<TwoFactorModel>>, p9.d<? super m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public /* synthetic */ Object f15746a;

        public static final class a extends j implements p<th.c, r0.b<? extends Result<TwoFactorModel>>, th.c> {

            /* renamed from: a, reason: collision with root package name */
            public static final a f15748a = new a();

            public a() {
                super(2);
            }

            @Override // x9.p
            /* renamed from: invoke */
            public final th.c mo7invoke(th.c cVar, r0.b<? extends Result<TwoFactorModel>> bVar) {
                th.c execute = cVar;
                r0.b<? extends Result<TwoFactorModel>> result = bVar;
                h.f(execute, "$this$execute");
                h.f(result, "result");
                try {
                    Result<TwoFactorModel> resultA = result.a();
                    TwoFactorModel orThrow = resultA != null ? resultA.getOrThrow() : null;
                    return orThrow != null ? th.c.copy$default(execute, result, true, orThrow, null, null, 24, null) : th.c.copy$default(execute, result, true, null, null, null, 28, null);
                } catch (Throwable th2) {
                    return th.c.copy$default(execute, new r0.i(null, th2), true, null, null, null, 28, null);
                }
            }
        }

        public c(p9.d<? super c> dVar) {
            super(2, dVar);
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            c cVar = d.this.new c(dVar);
            cVar.f15746a = obj;
            return cVar;
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(kotlinx.coroutines.flow.f<? extends Result<TwoFactorModel>> fVar, p9.d<? super m> dVar) {
            return ((c) create(fVar, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            w.F(obj);
            z.a(d.this, (kotlinx.coroutines.flow.f) this.f15746a, a.f15748a);
            return m.f9594a;
        }
    }

    static {
        new a(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(th.c state, g mobileAccidentOnboardingWork, th.a mobileAccidentOnboardingClarificationWork) {
        super(state);
        h.f(state, "state");
        h.f(mobileAccidentOnboardingWork, "mobileAccidentOnboardingWork");
        h.f(mobileAccidentOnboardingClarificationWork, "mobileAccidentOnboardingClarificationWork");
        this.f15739h = mobileAccidentOnboardingWork;
        this.f15740i = mobileAccidentOnboardingClarificationWork;
    }

    public final void d() {
        b bVar = new b(null);
        a0 a0Var = this.f13883c;
        v.C(a0Var, null, 0, bVar, 3);
        v.D(a0Var, this.f15739h, new c(null));
    }
}
