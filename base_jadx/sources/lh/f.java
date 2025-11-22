package lh;

import c5.v;
import c5.w;
import l9.m;
import lh.a;
import nc.a0;
import nc.f0;
import x9.p;

@r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.merge.guest.MobileAccidentGenerateQRViewModel$checkQRControl$1", f = "MobileAccidentGenerateQRViewModel.kt", l = {54}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class f extends r9.i implements p<a0, p9.d<? super m>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public int f9838a;

    /* renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f9839b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ e f9840c;

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.merge.guest.MobileAccidentGenerateQRViewModel$checkQRControl$1$job$1", f = "MobileAccidentGenerateQRViewModel.kt", l = {52}, m = "invokeSuspend")
    public static final class a extends r9.i implements p<a0, p9.d<? super m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public int f9841a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ e f9842b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(e eVar, p9.d<? super a> dVar) {
            super(2, dVar);
            this.f9842b = eVar;
        }

        @Override // r9.a
        public final p9.d<m> create(Object obj, p9.d<?> dVar) {
            return new a(this.f9842b, dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super m> dVar) {
            return ((a) create(a0Var, dVar)).invokeSuspend(m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            q9.a aVar = q9.a.COROUTINE_SUSPENDED;
            int r12 = this.f9841a;
            if (r12 == 0) {
                w.F(obj);
                lh.a aVar2 = this.f9842b.f9837i;
                a.C0181a c0181a = new a.C0181a();
                this.f9841a = 1;
                if (aVar2.d(c0181a, this) == aVar) {
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
    public f(e eVar, p9.d<? super f> dVar) {
        super(2, dVar);
        this.f9840c = eVar;
    }

    @Override // r9.a
    public final p9.d<m> create(Object obj, p9.d<?> dVar) {
        f fVar = new f(this.f9840c, dVar);
        fVar.f9839b = obj;
        return fVar;
    }

    @Override // x9.p
    /* renamed from: invoke */
    public final Object mo7invoke(a0 a0Var, p9.d<? super m> dVar) {
        return ((f) create(a0Var, dVar)).invokeSuspend(m.f9594a);
    }

    @Override // r9.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        q9.a aVar = q9.a.COROUTINE_SUSPENDED;
        int r12 = this.f9838a;
        if (r12 == 0) {
            w.F(obj);
            a0 a0Var = (a0) this.f9839b;
            e eVar = this.f9840c;
            f0 f0VarN = v.n(a0Var, eVar.f9837i.f9816c, new a(eVar, null), 2);
            this.f9838a = 1;
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
