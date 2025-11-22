package zg;

import c5.v;
import c5.w;
import nc.a0;
import nc.f0;
import zg.f;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.approve.MobileAccidentApproveViewModel$provideHostLocation$1", f = "MobileAccidentApproveViewModel.kt", l = {59}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class q extends r9.i implements x9.p<a0, p9.d<? super l9.m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public int f20414a;

    /* renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f20415b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ l f20416c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f20417d;

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.approve.MobileAccidentApproveViewModel$provideHostLocation$1$job$1", f = "MobileAccidentApproveViewModel.kt", l = {57}, m = "invokeSuspend")
    public static final class a extends r9.i implements x9.p<a0, p9.d<? super l9.m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public int f20418a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ l f20419b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ String f20420c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(l lVar, String str, p9.d<? super a> dVar) {
            super(2, dVar);
            this.f20419b = lVar;
            this.f20420c = str;
        }

        @Override // r9.a
        public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
            return new a(this.f20419b, this.f20420c, dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super l9.m> dVar) {
            return ((a) create(a0Var, dVar)).invokeSuspend(l9.m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            q9.a aVar = q9.a.COROUTINE_SUSPENDED;
            int r12 = this.f20418a;
            if (r12 == 0) {
                w.F(obj);
                f fVar = this.f20419b.f20370i;
                f.a aVar2 = new f.a(this.f20420c);
                this.f20418a = 1;
                if (fVar.d(aVar2, this) == aVar) {
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
    public q(l lVar, String str, p9.d<? super q> dVar) {
        super(2, dVar);
        this.f20416c = lVar;
        this.f20417d = str;
    }

    @Override // r9.a
    public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
        q qVar = new q(this.f20416c, this.f20417d, dVar);
        qVar.f20415b = obj;
        return qVar;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(a0 a0Var, p9.d<? super l9.m> dVar) {
        return ((q) create(a0Var, dVar)).invokeSuspend(l9.m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        q9.a aVar = q9.a.COROUTINE_SUSPENDED;
        int r12 = this.f20414a;
        if (r12 == 0) {
            w.F(obj);
            a0 a0Var = (a0) this.f20415b;
            l lVar = this.f20416c;
            f0 f0VarN = v.n(a0Var, lVar.f20370i.f20304c, new a(lVar, this.f20417d, null), 2);
            this.f20414a = 1;
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
