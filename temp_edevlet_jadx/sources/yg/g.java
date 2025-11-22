package yg;

import c5.v;
import c5.w;
import l9.m;
import nc.a0;
import nc.f0;
import x9.p;
import yg.i;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.agreement.MobileAccidentAgreementViewModel$provideAgreementText$1", f = "MobileAccidentAgreementViewModel.kt", l = {29}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class g extends r9.i implements p<a0, p9.d<? super m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public int f19715a;

    /* renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f19716b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ d f19717c;

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.agreement.MobileAccidentAgreementViewModel$provideAgreementText$1$job$1", f = "MobileAccidentAgreementViewModel.kt", l = {27}, m = "invokeSuspend")
    public static final class a extends r9.i implements p<a0, p9.d<? super m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public int f19718a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ d f19719b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(d dVar, p9.d<? super a> dVar2) {
            super(2, dVar2);
            this.f19719b = dVar;
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            return new a(this.f19719b, dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super m> dVar) {
            return ((a) create(a0Var, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            q9.a aVar = q9.a.COROUTINE_SUSPENDED;
            int r12 = this.f19718a;
            if (r12 == 0) {
                w.F(obj);
                i iVar = this.f19719b.f19705h;
                i.a aVar2 = new i.a();
                this.f19718a = 1;
                if (iVar.d(aVar2, this) == aVar) {
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
    public g(d dVar, p9.d<? super g> dVar2) {
        super(2, dVar2);
        this.f19717c = dVar;
    }

    @Override // r9.a
    public final p9.d<m> create(Object obj, p9.d<?> dVar) {
        g gVar = new g(this.f19717c, dVar);
        gVar.f19716b = obj;
        return gVar;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(a0 a0Var, p9.d<? super m> dVar) {
        return ((g) create(a0Var, dVar)).invokeSuspend(m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        q9.a aVar = q9.a.COROUTINE_SUSPENDED;
        int r12 = this.f19715a;
        if (r12 == 0) {
            w.F(obj);
            a0 a0Var = (a0) this.f19716b;
            d dVar = this.f19717c;
            f0 f0VarN = v.n(a0Var, dVar.f19705h.f19724c, new a(dVar, null), 2);
            this.f19715a = 1;
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
