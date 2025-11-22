package zg;

import c5.v;
import c5.w;
import nc.a0;
import nc.f0;
import zg.c;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.approve.MobileAccidentApproveViewModel$makeConfirmationRequestForHost$1", f = "MobileAccidentApproveViewModel.kt", l = {111}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class o extends r9.i implements x9.p<a0, p9.d<? super l9.m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public int f20404a;

    /* renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f20405b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ l f20406c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f20407d;

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.approve.MobileAccidentApproveViewModel$makeConfirmationRequestForHost$1$job$1", f = "MobileAccidentApproveViewModel.kt", l = {107}, m = "invokeSuspend")
    public static final class a extends r9.i implements x9.p<a0, p9.d<? super l9.m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public int f20408a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ l f20409b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ String f20410c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(l lVar, String str, p9.d<? super a> dVar) {
            super(2, dVar);
            this.f20409b = lVar;
            this.f20410c = str;
        }

        @Override // r9.a
        public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
            return new a(this.f20409b, this.f20410c, dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super l9.m> dVar) {
            return ((a) create(a0Var, dVar)).invokeSuspend(l9.m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            q9.a aVar = q9.a.COROUTINE_SUSPENDED;
            int r12 = this.f20408a;
            if (r12 == 0) {
                w.F(obj);
                c cVar = this.f20409b.f20372k;
                c.a aVar2 = new c.a(this.f20410c);
                this.f20408a = 1;
                if (cVar.d(aVar2, this) == aVar) {
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
    public o(l lVar, String str, p9.d<? super o> dVar) {
        super(2, dVar);
        this.f20406c = lVar;
        this.f20407d = str;
    }

    @Override // r9.a
    public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
        o oVar = new o(this.f20406c, this.f20407d, dVar);
        oVar.f20405b = obj;
        return oVar;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(a0 a0Var, p9.d<? super l9.m> dVar) {
        return ((o) create(a0Var, dVar)).invokeSuspend(l9.m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        q9.a aVar = q9.a.COROUTINE_SUSPENDED;
        int r12 = this.f20404a;
        if (r12 == 0) {
            w.F(obj);
            a0 a0Var = (a0) this.f20405b;
            l lVar = this.f20406c;
            f0 f0VarN = v.n(a0Var, lVar.f20372k.f20298c, new a(lVar, this.f20407d, null), 2);
            this.f20404a = 1;
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
