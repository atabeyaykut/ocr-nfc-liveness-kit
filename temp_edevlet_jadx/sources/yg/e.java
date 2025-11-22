package yg;

import c5.v;
import c5.w;
import l9.m;
import nc.a0;
import nc.f0;
import x9.p;
import yg.a;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.agreement.MobileAccidentAgreementViewModel$confirmClarification$1", f = "MobileAccidentAgreementViewModel.kt", l = {55}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class e extends r9.i implements p<a0, p9.d<? super m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public int f19707a;

    /* renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f19708b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ d f19709c;

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.agreement.MobileAccidentAgreementViewModel$confirmClarification$1$job$1", f = "MobileAccidentAgreementViewModel.kt", l = {53}, m = "invokeSuspend")
    public static final class a extends r9.i implements p<a0, p9.d<? super m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public int f19710a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ d f19711b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(d dVar, p9.d<? super a> dVar2) {
            super(2, dVar2);
            this.f19711b = dVar;
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            return new a(this.f19711b, dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super m> dVar) {
            return ((a) create(a0Var, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            q9.a aVar = q9.a.COROUTINE_SUSPENDED;
            int r12 = this.f19710a;
            if (r12 == 0) {
                w.F(obj);
                yg.a aVar2 = this.f19711b.f19706i;
                a.C0308a c0308a = new a.C0308a();
                this.f19710a = 1;
                if (aVar2.d(c0308a, this) == aVar) {
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
        this.f19709c = dVar;
    }

    @Override // r9.a
    public final p9.d<m> create(Object obj, p9.d<?> dVar) {
        e eVar = new e(this.f19709c, dVar);
        eVar.f19708b = obj;
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
        int r12 = this.f19707a;
        if (r12 == 0) {
            w.F(obj);
            a0 a0Var = (a0) this.f19708b;
            d dVar = this.f19709c;
            f0 f0VarN = v.n(a0Var, dVar.f19706i.f19686c, new a(dVar, null), 2);
            this.f19707a = 1;
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
