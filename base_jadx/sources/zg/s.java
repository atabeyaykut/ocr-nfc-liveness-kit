package zg;

import c5.v;
import c5.w;
import nc.a0;
import nc.f0;
import zg.u;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.approve.MobileAccidentApproveViewModel$provideReportDetails$1", f = "MobileAccidentApproveViewModel.kt", l = {34}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class s extends r9.i implements x9.p<a0, p9.d<? super l9.m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public int f20424a;

    /* renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f20425b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ l f20426c;

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.approve.MobileAccidentApproveViewModel$provideReportDetails$1$job$1", f = "MobileAccidentApproveViewModel.kt", l = {32}, m = "invokeSuspend")
    public static final class a extends r9.i implements x9.p<a0, p9.d<? super l9.m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public int f20427a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ l f20428b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(l lVar, p9.d<? super a> dVar) {
            super(2, dVar);
            this.f20428b = lVar;
        }

        @Override // r9.a
        public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
            return new a(this.f20428b, dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super l9.m> dVar) {
            return ((a) create(a0Var, dVar)).invokeSuspend(l9.m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            q9.a aVar = q9.a.COROUTINE_SUSPENDED;
            int r12 = this.f20427a;
            if (r12 == 0) {
                w.F(obj);
                u uVar = this.f20428b.f20369h;
                u.a aVar2 = new u.a();
                this.f20427a = 1;
                if (uVar.d(aVar2, this) == aVar) {
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
    public s(l lVar, p9.d<? super s> dVar) {
        super(2, dVar);
        this.f20426c = lVar;
    }

    @Override // r9.a
    public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
        s sVar = new s(this.f20426c, dVar);
        sVar.f20425b = obj;
        return sVar;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(a0 a0Var, p9.d<? super l9.m> dVar) {
        return ((s) create(a0Var, dVar)).invokeSuspend(l9.m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        q9.a aVar = q9.a.COROUTINE_SUSPENDED;
        int r12 = this.f20424a;
        if (r12 == 0) {
            w.F(obj);
            a0 a0Var = (a0) this.f20425b;
            l lVar = this.f20426c;
            f0 f0VarN = v.n(a0Var, lVar.f20369h.f20433c, new a(lVar, null), 2);
            this.f20424a = 1;
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
