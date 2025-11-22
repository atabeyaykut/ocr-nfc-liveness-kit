package dh;

import c5.v;
import c5.w;
import dh.n;
import nc.a0;
import nc.f0;
import x9.p;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.driver.MobileAccidentDriverViewModel$provideListOfCar$1", f = "MobileAccidentDriverViewModel.kt", l = {32}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class g extends r9.i implements p<a0, p9.d<? super l9.m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public int f4945a;

    /* renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f4946b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ f f4947c;

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.driver.MobileAccidentDriverViewModel$provideListOfCar$1$job$1", f = "MobileAccidentDriverViewModel.kt", l = {30}, m = "invokeSuspend")
    public static final class a extends r9.i implements p<a0, p9.d<? super l9.m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public int f4948a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ f f4949b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(f fVar, p9.d<? super a> dVar) {
            super(2, dVar);
            this.f4949b = fVar;
        }

        @Override // r9.a
        public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
            return new a(this.f4949b, dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super l9.m> dVar) {
            return ((a) create(a0Var, dVar)).invokeSuspend(l9.m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            q9.a aVar = q9.a.COROUTINE_SUSPENDED;
            int r12 = this.f4948a;
            if (r12 == 0) {
                w.F(obj);
                n nVar = this.f4949b.f4942h;
                n.a aVar2 = new n.a();
                this.f4948a = 1;
                if (nVar.d(aVar2, this) == aVar) {
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
    public g(f fVar, p9.d<? super g> dVar) {
        super(2, dVar);
        this.f4947c = fVar;
    }

    @Override // r9.a
    public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
        g gVar = new g(this.f4947c, dVar);
        gVar.f4946b = obj;
        return gVar;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(a0 a0Var, p9.d<? super l9.m> dVar) {
        return ((g) create(a0Var, dVar)).invokeSuspend(l9.m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        q9.a aVar = q9.a.COROUTINE_SUSPENDED;
        int r12 = this.f4945a;
        if (r12 == 0) {
            w.F(obj);
            a0 a0Var = (a0) this.f4946b;
            f fVar = this.f4947c;
            f0 f0VarN = v.n(a0Var, fVar.f4942h.f4973c, new a(fVar, null), 2);
            this.f4945a = 1;
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
