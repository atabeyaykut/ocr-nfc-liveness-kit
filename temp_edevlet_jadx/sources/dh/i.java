package dh;

import c5.v;
import c5.w;
import dh.c;
import nc.a0;
import nc.f0;
import x9.p;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.driver.MobileAccidentDriverViewModel$saveDriver$1", f = "MobileAccidentDriverViewModel.kt", l = {61}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class i extends r9.i implements p<a0, p9.d<? super l9.m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public int f4953a;

    /* renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f4954b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ f f4955c;

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.driver.MobileAccidentDriverViewModel$saveDriver$1$job$1", f = "MobileAccidentDriverViewModel.kt", l = {59}, m = "invokeSuspend")
    public static final class a extends r9.i implements p<a0, p9.d<? super l9.m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public int f4956a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ f f4957b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(f fVar, p9.d<? super a> dVar) {
            super(2, dVar);
            this.f4957b = fVar;
        }

        @Override // r9.a
        public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
            return new a(this.f4957b, dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super l9.m> dVar) {
            return ((a) create(a0Var, dVar)).invokeSuspend(l9.m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            q9.a aVar = q9.a.COROUTINE_SUSPENDED;
            int r12 = this.f4956a;
            if (r12 == 0) {
                w.F(obj);
                c cVar = this.f4957b.f4943i;
                c.a aVar2 = new c.a();
                this.f4956a = 1;
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
    public i(f fVar, p9.d<? super i> dVar) {
        super(2, dVar);
        this.f4955c = fVar;
    }

    @Override // r9.a
    public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
        i iVar = new i(this.f4955c, dVar);
        iVar.f4954b = obj;
        return iVar;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(a0 a0Var, p9.d<? super l9.m> dVar) {
        return ((i) create(a0Var, dVar)).invokeSuspend(l9.m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        q9.a aVar = q9.a.COROUTINE_SUSPENDED;
        int r12 = this.f4953a;
        if (r12 == 0) {
            w.F(obj);
            a0 a0Var = (a0) this.f4954b;
            f fVar = this.f4955c;
            f0 f0VarN = v.n(a0Var, fVar.f4943i.f4931c, new a(fVar, null), 2);
            this.f4953a = 1;
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
