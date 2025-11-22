package zg;

import c5.v;
import c5.w;
import nc.a0;
import nc.f0;
import org.jmrtd.cbeff.ISO781611;
import zg.b;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.approve.MobileAccidentApproveViewModel$makeConfirmationRequestForGuest$1", f = "MobileAccidentApproveViewModel.kt", l = {138}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class m extends r9.i implements x9.p<a0, p9.d<? super l9.m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public int f20396a;

    /* renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f20397b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ l f20398c;

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.approve.MobileAccidentApproveViewModel$makeConfirmationRequestForGuest$1$job$1", f = "MobileAccidentApproveViewModel.kt", l = {ISO781611.CREATOR_OF_BIOMETRIC_REFERENCE_DATA}, m = "invokeSuspend")
    public static final class a extends r9.i implements x9.p<a0, p9.d<? super l9.m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public int f20399a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ l f20400b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(l lVar, p9.d<? super a> dVar) {
            super(2, dVar);
            this.f20400b = lVar;
        }

        @Override // r9.a
        public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
            return new a(this.f20400b, dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super l9.m> dVar) {
            return ((a) create(a0Var, dVar)).invokeSuspend(l9.m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            q9.a aVar = q9.a.COROUTINE_SUSPENDED;
            int r12 = this.f20399a;
            if (r12 == 0) {
                w.F(obj);
                b bVar = this.f20400b.f20373l;
                b.a aVar2 = new b.a();
                this.f20399a = 1;
                if (bVar.d(aVar2, this) == aVar) {
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
    public m(l lVar, p9.d<? super m> dVar) {
        super(2, dVar);
        this.f20398c = lVar;
    }

    @Override // r9.a
    public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
        m mVar = new m(this.f20398c, dVar);
        mVar.f20397b = obj;
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
        int r12 = this.f20396a;
        if (r12 == 0) {
            w.F(obj);
            a0 a0Var = (a0) this.f20397b;
            l lVar = this.f20398c;
            f0 f0VarN = v.n(a0Var, lVar.f20373l.f20295c, new a(lVar, null), 2);
            this.f20396a = 1;
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
