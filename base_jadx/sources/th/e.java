package th;

import c5.v;
import c5.w;
import l9.m;
import nc.a0;
import nc.f0;
import r9.i;
import th.a;
import x9.p;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.onboarding.MobileAccidentOnboardingViewModel$checkClarification$1", f = "MobileAccidentOnboardingViewModel.kt", l = {62}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class e extends i implements p<a0, p9.d<? super m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public int f15749a;

    /* renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f15750b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ d f15751c;

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.onboarding.MobileAccidentOnboardingViewModel$checkClarification$1$job$1", f = "MobileAccidentOnboardingViewModel.kt", l = {56}, m = "invokeSuspend")
    public static final class a extends i implements p<a0, p9.d<? super m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public int f15752a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ d f15753b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(d dVar, p9.d<? super a> dVar2) {
            super(2, dVar2);
            this.f15753b = dVar;
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            return new a(this.f15753b, dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super m> dVar) {
            return ((a) create(a0Var, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            q9.a aVar = q9.a.COROUTINE_SUSPENDED;
            int r12 = this.f15752a;
            if (r12 == 0) {
                w.F(obj);
                th.a aVar2 = this.f15753b.f15740i;
                a.C0256a c0256a = new a.C0256a();
                this.f15752a = 1;
                if (aVar2.d(c0256a, this) == aVar) {
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

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(d dVar, p9.d<? super e> dVar2) {
        super(2, dVar2);
        this.f15751c = dVar;
    }

    @Override // r9.a
    public final p9.d<m> create(Object obj, p9.d<?> dVar) {
        e eVar = new e(this.f15751c, dVar);
        eVar.f15750b = obj;
        return eVar;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(a0 a0Var, p9.d<? super m> dVar) {
        return ((e) create(a0Var, dVar)).invokeSuspend(m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        q9.a aVar = q9.a.COROUTINE_SUSPENDED;
        int r12 = this.f15749a;
        if (r12 == 0) {
            w.F(obj);
            a0 a0Var = (a0) this.f15750b;
            d dVar = this.f15751c;
            f0 f0VarN = v.n(a0Var, dVar.f15740i.f15723c, new a(dVar, null), 2);
            this.f15749a = 1;
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
