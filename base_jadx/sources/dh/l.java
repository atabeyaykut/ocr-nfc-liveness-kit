package dh;

import c5.v;
import c5.w;
import dh.d;
import nc.a0;
import nc.f0;
import x9.p;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.driver.MobileAccidentDriverViewModel$saveVehicle$2", f = "MobileAccidentDriverViewModel.kt", l = {92}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class l extends r9.i implements p<a0, p9.d<? super l9.m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public int f4962a;

    /* renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f4963b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ f f4964c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f4965d;

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.driver.MobileAccidentDriverViewModel$saveVehicle$2$job$1", f = "MobileAccidentDriverViewModel.kt", l = {90}, m = "invokeSuspend")
    public static final class a extends r9.i implements p<a0, p9.d<? super l9.m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public int f4966a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ f f4967b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ int f4968c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(f fVar, int r22, p9.d<? super a> dVar) {
            super(2, dVar);
            this.f4967b = fVar;
            this.f4968c = r22;
        }

        @Override // r9.a
        public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
            return new a(this.f4967b, this.f4968c, dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super l9.m> dVar) {
            return ((a) create(a0Var, dVar)).invokeSuspend(l9.m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            q9.a aVar = q9.a.COROUTINE_SUSPENDED;
            int r12 = this.f4966a;
            if (r12 == 0) {
                w.F(obj);
                d dVar = this.f4967b.f4944j;
                d.a aVar2 = new d.a(this.f4968c);
                this.f4966a = 1;
                if (dVar.d(aVar2, this) == aVar) {
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
    public l(f fVar, int r22, p9.d<? super l> dVar) {
        super(2, dVar);
        this.f4964c = fVar;
        this.f4965d = r22;
    }

    @Override // r9.a
    public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
        l lVar = new l(this.f4964c, this.f4965d, dVar);
        lVar.f4963b = obj;
        return lVar;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(a0 a0Var, p9.d<? super l9.m> dVar) {
        return ((l) create(a0Var, dVar)).invokeSuspend(l9.m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        q9.a aVar = q9.a.COROUTINE_SUSPENDED;
        int r12 = this.f4962a;
        if (r12 == 0) {
            w.F(obj);
            a0 a0Var = (a0) this.f4963b;
            f fVar = this.f4964c;
            f0 f0VarN = v.n(a0Var, fVar.f4944j.f4934c, new a(fVar, this.f4965d, null), 2);
            this.f4962a = 1;
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
