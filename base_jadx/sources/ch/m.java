package ch;

import c5.v;
import c5.w;
import ch.o;
import nc.a0;
import nc.f0;
import x9.p;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.dashpoint.MobileAccidentDashPointViewModel$saveDashPoint$1", f = "MobileAccidentDashPointViewModel.kt", l = {24}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class m extends r9.i implements p<a0, p9.d<? super l9.m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public int f2447a;

    /* renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f2448b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ l f2449c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f2450d;

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.dashpoint.MobileAccidentDashPointViewModel$saveDashPoint$1$job$1", f = "MobileAccidentDashPointViewModel.kt", l = {22}, m = "invokeSuspend")
    public static final class a extends r9.i implements p<a0, p9.d<? super l9.m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public int f2451a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ l f2452b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ String f2453c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(l lVar, String str, p9.d<? super a> dVar) {
            super(2, dVar);
            this.f2452b = lVar;
            this.f2453c = str;
        }

        @Override // r9.a
        public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
            return new a(this.f2452b, this.f2453c, dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super l9.m> dVar) {
            return ((a) create(a0Var, dVar)).invokeSuspend(l9.m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            q9.a aVar = q9.a.COROUTINE_SUSPENDED;
            int r12 = this.f2451a;
            if (r12 == 0) {
                w.F(obj);
                o oVar = this.f2452b.f2446h;
                o.a aVar2 = new o.a(this.f2453c);
                this.f2451a = 1;
                if (oVar.d(aVar2, this) == aVar) {
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
    public m(l lVar, String str, p9.d<? super m> dVar) {
        super(2, dVar);
        this.f2449c = lVar;
        this.f2450d = str;
    }

    @Override // r9.a
    public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
        m mVar = new m(this.f2449c, this.f2450d, dVar);
        mVar.f2448b = obj;
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
        int r12 = this.f2447a;
        if (r12 == 0) {
            w.F(obj);
            a0 a0Var = (a0) this.f2448b;
            l lVar = this.f2449c;
            f0 f0VarN = v.n(a0Var, lVar.f2446h.f2458c, new a(lVar, this.f2450d, null), 2);
            this.f2447a = 1;
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
